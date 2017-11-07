function [times, gps] = simulate(scalingRatio,offset)
    SDK_path = 'C:/Users/Cody Simons/Documents/EE175/MATLAB/robotcar-dataset-sdk-master/'
    f = fopen('D:/stereo.timestamps');
    
    for i=1:offset
        img_timestamp = fgetl(f);
    end
    
    [l_fx,l_fy,l_cx,l_cy,l_G_camera_image,l_LUT] = ReadCameraModel('D:/stereo/left/',strcat(SDK_path,'models/'));
    l_cx = l_cx*scalingRatio;
    l_cy = l_cy*scalingRatio;
    l_fx = l_fx*scalingRatio;
    l_fy = l_fy*scalingRatio;
    [r_fx,r_fy,r_cx,r_cy,r_G_camera_image,r_LUT] = ReadCameraModel('D:/stereo/right/',strcat(SDK_path,'models/'));
    r_cx = r_cx*scalingRatio;
    r_cy = r_cy*scalingRatio;
    r_fx = r_fx*scalingRatio;
    r_fy = r_fy*scalingRatio;
    [c_fx,c_fy,c_cx,c_cy,c_G_camera_image,c_LUT] = ReadCameraModel('D:/stereo/centre/',strcat(SDK_path,'models/'));
    c_cx = c_cx*scalingRatio;
    c_cy = c_cy*scalingRatio;
    c_fx = c_fx*scalingRatio;
    c_fy = c_fy*scalingRatio;
    
    pixel_size = 3.75*10^-6; %meters per pixel
    focal_length = 3.8*10^-3;
    
    img_timestamp = fgetl(f);
    img_timestamp = img_timestamp(1:16);
    is_calibrated = false;
    sz = [];
    while(ischar(img_timestamp))
        left = LoadImage('D:/stereo/left/',str2double(img_timestamp),l_LUT);
        left = imresize(left,scalingRatio);
        right = LoadImage('D:/stereo/right',str2double(img_timestamp),r_LUT);
        right = imresize(right,scalingRatio);
        center = LoadImage('D:/stereo/centre',str2double(img_timestamp),c_LUT);
        center = imresize(center,scalingRatio);
        
        if isempty(sz)
            sz =size(left);
        end
        
        left_gray = rgb2gray(left);
        right_gray = rgb2gray(right);
        center_gray = rgb2gray(center);
        
        tic
        
%         if ~is_calibrated
%             tform_lr = calibrate(left_gray,right_gray);
%             tform_lc = calibrate(left_gray,center_gray);
%             tform_cr = calibrate(center_gray,right_gray);
%             is_calibrated = true;
%         end
        
%         [lr_left, lr_right] = rectifyStereoImages(left_gray, right_gray, tform_lr(1), tform_lr(2));
%         [lc_left, lc_center] = rectifyStereoImages(left_gray, center_gray, tform_lc(1), tform_lc(2));
%         [cr_center, cr_right] = rectifyStereoImages(center_gray, right_gray, tform_cr(1), tform_cr(2));
        
        l_features = detectFASTFeatures(left_gray);
        r_features = detectFASTFeatures(right_gray);
        c_features = detectFASTFeatures(center_gray);
        
        [fl,vptsl] = extractFeatures(left_gray,l_features);
        [fr,vptsr] = extractFeatures(right_gray,r_features);
        [fc,vptsc] = extractFeatures(center_gray,c_features);
        
        pair_lr = matchFeatures(fl,fr);
        pair_lc = matchFeatures(fl,fc);
        pair_cr = matchFeatures(fc,fr);
        
        points_l = ((vptsl.Location - [l_cx l_cy])./[l_fx l_fy]).*(pixel_size/scalingRatio);
        points_r = ((vptsr.Location - [r_cx r_cy])./[r_fx r_fy]).*(pixel_size/scalingRatio);
        points_c = ((vptsc.Location - [c_cx c_cy])./[c_fx c_fy]).*(pixel_size/scalingRatio);
        
        points3_lr = ones([4,size(pair_lr,1)]);
        points3_lr(3,:) = (focal_length*0.24)./(points_l(pair_lr(:,1),1)-points_r(pair_lr(:,2),1));
        points3_lr(1,:) = (points3_lr(3,:)./focal_length).*points_l(pair_lr(:,1),1);
        points3_lr(2,:) = (points3_lr(3,:)./focal_length).*points_l(pair_lr(:,1),2);
        points3_lr = points3_lr(:,points3_lr(3,:) ~= inf);
        points3_lr = l_G_camera_image*points3_lr;
%         points3_lc = ones([4,size(pair_lc,1)]);
%         points3_lc(1,:) = (l_fx.*points_l(1,pair_lc(:,1)));
%         points3_lc(2,:) = (l_fy.*points_l(2,pair_lc(:,1)));
%         points3_lc(3,:) = (l_fx*0.12)./(points_l(1,pair_lc(:,1))-points_c(1,pair_lc(:,2)));
%         points3_lc = l_G_camera_image*points3_lc;
%         points3_cr = ones([4,size(pair_cr,1)]);
%         points3_cr(1,:) = (c_fx.*points_c(1,pair_cr(:,1)));
%         points3_cr(2,:) = (c_fy.*points_c(2,pair_cr(:,1)));
%         points3_cr(3,:) = (c_fx*0.12)./(points_c(1,pair_cr(:,1))-points_r(1,pair_cr(:,2)));
%         points3_cr = c_G_camera_image*points3_cr;
        
        toc
        
        figure(1);
        xlabel({'X','(in meters)'})
        ylabel({'Y','(in meters)'})
        zlabel({'Z','(in meters)'})
        scatter3(points3_lr(1,:),points3_lr(2,:),points3_lr(3,:),'or');
        hold on
%        scatter3(points3_lc(1,:),points3_lc(2,:),points3_lc(3,:),'og');
%        scatter3(points3_cr(1,:),points3_cr(2,:),points3_cr(3,:),'om');
        hold off
        
        figure(2)
        imshow([left center right]);
        size(points_l,2)
        size(points_c,2)
        size(points_r,2)
        hold on
        scatter(vptsl.Location(pair_lr(:,1),1),vptsl.Location(pair_lr(:,1),2),'or','LineWidth',2);
        scatter(vptsr.Location(pair_lr(:,2),1)+sz(2)*2,vptsr.Location(pair_lr(:,2),2),'or','LineWidth',2);
%        scatter(vptsl.Location(pair_lc(:,1),1),vptsl.Location(pair_lc(:,1),2),'og','LineWidth',2);
%        scatter(vptsc.Location(pair_lc(:,2),1)+sz(2),vptsc.Location(pair_lc(:,2),2),'og','LineWidth',2);
%        scatter(vptsc.Location(pair_cr(:,1),1)+sz(2),vptsc.Location(pair_cr(:,1),2),'om','LineWidth',2);
%        scatter(vptsr.Location(pair_cr(:,2),1)+sz(2)*2,vptsr.Location(pair_cr(:,2),2),'om','LineWidth',2);
        pause(0.01);
        
        img_timestamp = fgetl(f);
        img_timestamp = img_timestamp(1:16);
    end
end