%% This code belongs to the following paper:
% Al-Ameen, Z. Adapted type-II fuzzy algorithm to process images with non-uniform illumination. 
% Signal, Image and Video Processing (2024). Springer. 
% https://doi.org/10.1007/s11760-023-02974-5
%% Email: qizohair@uomosul.edu.iq

clear all; clc; close all;

x=im2double(imread('4.jpg')); 
HSV = rgb2hsv(x);
Beta = 1.7;
tic; HSV(:,:,3) = ATF(HSV(:,:,3), Beta); toc;
out = hsv2rgb(HSV);
figure; imshow([x,out])

%imwrite(out,'4_ATF.jpg')