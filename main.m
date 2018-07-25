clc;clear all;close all

fn1=[1 6 8 9 10 11 12];
fn2=[3 4 7 5 5 3 5];
for n1=1:length(fn1)
    for n2=1:length(fn2)
        fn=['az-ag-' num2str(fn1(n1)) '(' num2str(fn2(2)) '),jpg'];
thr=255/2;
C=2;
x=imread('az-ag-8-7.jpg');
x = imresize(x, 0.2);
l=round(2.03/29*size(x,1));
r=3;
x=double(rgb2gray(x));
x(x>thr)=255;
x(x<=thr)=0;

y=x(l:end,l:end-r);
[m n]=size(y);
for i=C+1:m-C
    for j=C+1:n-C
        if y(i,j)==255
            y(i,j)=round(mean(mean(y(i-C:i+C,j-C:j+C)))/255)*255;
        end
    end
end
        
disp(['area(in cm2)= ' num2str(sum(sum(y==0))/625)])
imshow(y)
    end
end