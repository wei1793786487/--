function [ out_x,out_y ] = comp(tmp,x1,y1,x2,y2)



%ͼ����תΪ�Ҷ�ͼ��
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



%�����һ�������
c = normxcorr2(tmp,img);
%figure, surf(c), shading flat

%�ҵ�ͼ�е���ߵ�
maximum_correlation_value=max(c(:));

%���һ����ϵ�����ֵ
[ypeak, xpeak] = find(c==maximum_correlation_value);

%��ƥ���ת��Ϊ100��
max_value=maximum_correlation_value*100;
if(max_value<90)
     out_x=-1;
     out_y=-1;
     disp('û�ҵ�')
     disp(max_value)
     %С�������ֵ ˵��û�ҵ� ֱ�ӷ��� 
     return 
end

%���㲹��ֵ.
yoffSet = ypeak-size(tmp,1);
xoffSet = xpeak-size(tmp,2);

%��ʾƥ������

%figure

%imshow(img);
%h=size(tmp,2);
%l=size(tmp,1);
%imrect(gca, [xoffSet+1, yoffSet+1,h ,l]);

out_x=xoffSet;
out_y=yoffSet;


end

