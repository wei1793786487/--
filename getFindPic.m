function [ output_args ] = getFindPic()
%��ͼ ͼ����Ҫʶ���ʾ��ͼ
m=getPicture();
base_url='D:\pic\';
image=[base_url,m];
A = imread(image);
figure('numbertitle','off','name','��ѡ��ý�λ��','color','white');
RGB=imcrop(A);
out_url=[base_url,'findPic\',m];
imwrite(RGB,out_url)
%imshow(RGB)
sprintf('��ȡ�ĵ�ͼΪ%s',A);
output_args=out_url;
end

