function [  ] = tap(point_x,point_y)
SC=sprintf('%s%s%s','adb shell input tap ',num2str(point_x),' ',num2str(point_y));
disp(SC)
system(SC);
end

