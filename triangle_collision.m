close all
clearvars

x = [1.5,2,2];
y = [1.5,1,2];
P1 = [x;y]';
x = [3,3,4];
y = [2,4,3];
P2 = [x;y]';

hold on

line([P1(:,1)' P1(1,1)],[P1(:,2)' P1(1,2)],'Color','r')
line([P2(:,1)' P2(1,1)],[P2(:,2)' P2(1,2)],'Color','b')

flag = triangle_intersection(P1,P2);
str1="Intersection";
str2="No Intersection";
dim = [.2 .5 .3 .3];
if flag == 1
    disp(str1)
    annotation('textbox',dim,'String',str1,'FitBoxToText','on');
else
    disp(str2)
    annotation('textbox',dim,'String',str2,'FitBoxToText','on');
end