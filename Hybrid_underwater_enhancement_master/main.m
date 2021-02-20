%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    File: UWB_VCE.m                                         %
%    Author: XinJie_Li                                       %
%    Date: Feb/2020                                          %
%    A Hybrid Framework for Underwater Image enhancement     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
close all;
tic;

I = im2double(imread('D:\สตั้\raw-890\184_img_.png')); 

%----------------------------------
%Parameter configurations
para.alpha=0.2;
para.beta=0.06;
para.lambda =6;

para.t=0.5; % 0<t<1,the step size.
% __________________________________
Op=UWB_VCE(I,para);
% Op=strech_color(Op);%Histogram streching

figure, imshow([I Op], 'Border','tight');
imwrite(Op,'result2.png')
toc;