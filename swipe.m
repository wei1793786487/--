function [  ] = swipe ( x1,y1,x2,y2 )
SC=sprintf('%s%s %s %s','adb shell input swipe ',num2str(x1),' ',num2str(y1),' ',num2str(x2),' ',num2str(y2));
disp(SC)
system(SC);

end

