function [  ] = find_and_tip(pic_name,deviation_x,deviation_y,istip)
%校验有没有偏移值
if nargin==1
    disp('一个参数')
    istip=true;
    deviation_x=0;
    deviation_y=0;
elseif nargin==2
    %这里是只输入了是否点击
    deviation_x=0;
    deviation_y=0;

elseif nargin==3
     disp('携带是否点击')
     istip=true;
else    
    disp('偏移')
    disp(deviation_x)
    disp(deviation_x)
 
end

while true
[x,y]=comp(pic_name,0,0,0,0);
 if(x~=-1)
  disp(pic_name) 
  disp('找到了')
  if istip
    tap(x+deviation_x,y+deviation_y)
  else
     disp('不点击')
  end
  break;
 end 
 pause(0.1);
end


end

