% Yeshwantrao Chavan College of Engineering
% Department of Electronics and Telecommunication Engineering
% Session EVEN 2023-24
% Name of Student:Rutuja Saharkar
clc;
clear all;
close all;
%% Experiment 10 :
% To find Histogram,Normalised Histogram,Mean,Variance,
% Skewness and Kurtosis of an image
%% Exercise-01
% Read the image
I = imread('FIG3.gif');
% Convert the image to double precision using im2double
I = im2double(I);
% Find its histogram
hist1= imhist(I);
% Find its normalised histogram
[nk,z] = imhist(I);
n = numel(I);
pz = nk./n;
% Display the Original Image,Histogram and Normalised Histogram
subplot(2,2,1),
imshow(I), 
title('Original Image')
subplot(2,2,2)
stem(hist1)
title("Histogram")
subplot(2,2,[3,4]),
stem(pz)
title("Normalised Histogram")
% Calculate mean
mean_value = sum((0:255) .*pz');
mean=mean2(I(:));
fprintf('Mean: %f\n',mean_value);
fprintf('Mean: %f\n',mean);
% Calculate variance
Variance_value = sum(((0:255) - mean_value).^2 .*pz')
Variance=var(I(:));
fprintf('Variance: %f\n',Variance_value);
fprintf('Variance: %f\n',Variance);
% Calculate skewness
Skewness_value = sum(((0:255) - mean_value).^3 .*pz') / (Variance_value^(3/2));
Skewness=skewness(I(:));
fprintf('Skewness: %f\n',Skewness_value);
fprintf('Skewness: %f\n',Skewness);
% Calculate kurtosis
kurtosis_value = sum(((0:255) - mean_value).^4 .*pz') / (Variance_value^2);
kurtosis=kurtosis(I(:));
fprintf('Kurtosis: %f\n',kurtosis_value);
fprintf('Kurtosis: %f\n',kurtosis);
%% Exercise-03
% Read the image
I = imread('FIG1.gif');
% Convert the image to double precision using im2double
I = im2double(I);
% Find its histogram
hist1= imhist(I);
% Find its normalised histogram
[nk,z] = imhist(I);
n = numel(I);
pz = nk./n;
% Display the Original Image,Histogram and Normalised Histogram
subplot(2,2,1),
imshow(I), 
title('Original Image')
subplot(2,2,2)
stem(hist1)
title("Histogram")
subplot(2,2,[3,4]),
stem(pz)
title(" Normalised Histogram")
% Calculate mean
mean_value = sum((0:255) .*pz');
fprintf('Mean: %f\n',mean_value);
% Calculate variance
Variance_value = sum(((0:255) - mean_value).^2 .*pz')
fprintf('Variance: %f\n',Variance_value);
% Calculate skewness
Skewness_value = sum(((0:255) - mean_value).^3 .*pz') / (Variance_value^(3/2));
fprintf('Skewness: %f\n',Skewness_value);
% Calculate kurtosis
kurtosis_value = sum(((0:255) - mean_value).^4 .*pz') / (Variance_value^2);
fprintf('Kurtosis: %f\n',kurtosis_value);


