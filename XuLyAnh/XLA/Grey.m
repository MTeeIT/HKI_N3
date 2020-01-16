RGB = imread('tienVN.jpg');
%Gray
I = rgb2gray(RGB);
%BW
level = graythresh(I);
I3= im2bw(I, level);

% chia cot
% subplot(1,3,1);
% imshow(RGB);
% subplot(1,3,2);
% imshow(I);
% subplot(1,3,3);
% imshow(I3);

%Thu?t toán 
 I5 = edge(I3,'Prewitt');
I4= edge(I3,'Canny');
% imshow(I4);

%show hai c?nh g?n nhau
imshowpair(I4,I5,'montage');

%feature
%   corners = detectHarrisFeatures(I);
%   [features, valid_corners] = extractFeatures(I, corners);
%   figure; imshow(I); hold on
%   plot(valid_corners);


