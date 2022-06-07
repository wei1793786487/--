function [ out_x,out_y ] = comp(tmp,x1,y1,x2,y2)



%图像需转为灰度图像
base_url='D:\pic\findPic\';
tmp_img=[base_url,tmp];
disp(tmp_img)

find_img=getPicture();
base_img_url='D:\pic\';

tmp = rgb2gray(imread(tmp_img));

tmp_size=size(tmp);
disp(tmp_size);

img = rgb2gray(imread([base_img_url,find_img]));


if(x1==0&&y1==0&&x2==0&&y2==0)
   img=img;
else
   img=imcrop(img,[x1,y1,x2,y2]);
end



%计算归一化互相关
c = normxcorr2(tmp,img);
%figure, surf(c), shading flat

%找到图中的最高点
maximum_correlation_value=max(c(:));

%查找互相关系数最大值
[ypeak, xpeak] = find(c==maximum_correlation_value);

%把匹配的转换为100的
max_value=maximum_correlation_value*100;
if(max_value<90)
     out_x=-1;
     out_y=-1;
     disp('没找到')
     disp(max_value)
     %小于这个阈值 说明没找到 直接返回 
     return 
end

%计算补偿值.
yoffSet = ypeak-size(tmp,1);
xoffSet = xpeak-size(tmp,2);

%显示匹配区域

%figure

%imshow(img);
%h=size(tmp,2);
%l=size(tmp,1);
%imrect(gca, [xoffSet+1, yoffSet+1,h ,l]);

out_x=xoffSet;
out_y=yoffSet;


end

