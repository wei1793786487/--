function [ pic ] = getPicture(  )


name = datestr(now,'ddyyyyHHMMSSFFF');
name=[name,'.jpg'];
pic_name=['/sdcard/pic/',name];

SC=['adb shell screencap -p ',pic_name];
%����
system(SC);


SC_2=['adb pull ',pic_name,' D:/pic/',name];
%��ͼ

system(SC_2);

SC_3=['adb shell rm ',pic_name];

system(SC_3);

pic=name;
end

