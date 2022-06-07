function [ output_args ] = getFindPic()
%裁图 图像是要识别的示例图
m=getPicture();
base_url='D:\pic\';
image=[base_url,m];
A = imread(image);
figure('numbertitle','off','name','请选择裁截位置','color','white');
RGB=imcrop(A);
out_url=[base_url,'findPic\',m];
imwrite(RGB,out_url)
%imshow(RGB)
sprintf('截取的地图为%s',A);
output_args=out_url;
end

