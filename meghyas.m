clc;clear all;close all

tool=imread('tool.jpg');
arz=imread('arz.jpg');

tool = imresize(tool, 0.2);
arz = imresize(arz, 0.2);
cm1=round((size(tool,2)+size(arz,1))/2);
display(['1 cm= ' num2str(cm1) 'pixels'])
display(['1 cm^2= ' num2str(cm1^2) 'pixels'])