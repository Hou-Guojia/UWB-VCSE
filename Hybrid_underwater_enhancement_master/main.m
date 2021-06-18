%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    File: UWB_VCSE.m                                         %
%    Author: XinJie_Li                                       %
%    Date: Feb/2020                                          %
%    A Hybrid Framework for Underwater Image enhancement     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
close all;
tic;

I = im2double(imread('.\te.png')); 
[m n z]=size(I);
% I=imresize(I,[m+1./2 n+1./2]);
%----------------------------------
%Parameter configurations
para.alpha=0.2;
para.beta=0.06;
para.lambda =6;

para.t=0.5; % 0<t<1,the step size.
% __________________________________
Op=UWB_VCSE(I,para);
% Op=strech_color(Op);%Histogram streching

figure, imshow([I Op], 'Border','tight');
toc;