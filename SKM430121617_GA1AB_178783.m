%CHROMATICITY HISTOGRAM
%CONVERT RGB COLOR TO CIE LAB COLOR SPACE

clc;
clear;
close all;

I = imread('C:\Group3\408.jpg');

%Convert RGB color to LAB color
labTransformation = makecform('srgb2lab');
labI = applycform(I,labTransformation);

%Seperate L,A,B
L = labI(:,:,1); %luminance / lightness
A = labI(:,:,2); %red-green axis
B = labI(:,:,3); %blue-yellow axis

%Find the MEAN for L,A,B
LMean = mean2(labI(:, :, 1)); %mean for L
AMean = mean2(labI(:, :, 2)); %mean for A
BMean = mean2(labI(:, :, 3)); %mean for B

%Arrange and display the images
subplot (1,3,1); imshow(L) , title('L(luminance)');
subplot (1,3,2); imshow(A) , title('A(red-green axis)');
subplot (1,3,3);imshow(B) , title('B(blue-yellow axis)');
