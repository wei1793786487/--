function [  ] = find_and_tip(pic_name,deviation_x,deviation_y,istip)
%У����û��ƫ��ֵ
if nargin==1
    disp('һ������')
    istip=true;
    deviation_x=0;
    deviation_y=0;
elseif nargin==2
    %������ֻ�������Ƿ���
    deviation_x=0;
    deviation_y=0;

elseif nargin==3
     disp('Я���Ƿ���')
     istip=true;
else    
    disp('ƫ��')
    disp(deviation_x)
    disp(deviation_x)
 
end

while true
[x,y]=comp(pic_name,0,0,0,0);
 if(x~=-1)
  disp(pic_name) 
  disp('�ҵ���')
  if istip
    tap(x+deviation_x,y+deviation_y)
  else
     disp('�����')
  end
  break;
 end 
 pause(0.1);
end


end

