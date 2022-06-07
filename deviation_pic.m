function [ deviation_x,deviation_y ] = deviation_pic(  )
m=getPicture();
base_url='D:\pic\';
image=[base_url,m];
imshow(imread(image));
[x,y] = ginput(2);
disp(x(1))
disp(y(1))
disp(x(2))
disp(y(2))

deviation_x=x(2)-x(1);
deviation_y=y(2)-y(1);


end

