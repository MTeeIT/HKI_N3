
% ??c ?nh
% I1 = imread('img_lena.png');
% I2 = imread('img1.png');
% I3 = imread('img2.png');
% I4 = imread('img3.png');

% xu?t ?nh: imshow(<tên_bi?n>);

% xu?t nhi?u ?nh cùng lúc b?ng cách dùng hàm subplot() chia dòng và chia c?t.
% subplot(1,4,1);
% imshow(I1);
% 
% subplot(1,4,2);
% imshow(I2);
% 
% subplot(1,4,3);
% imshow(I3);
% 
% subplot(1,4,4);
% imshow(I4);

% 
I = imread('img_lena.png');
Inew = I;
process = Inew(:,:,1);
[rows, cols] = size(process);
additionalBrightness = 100;

for i=1 : rows
    for j=1 : cols
        process(i, j) = process(i, j) + additionalBrightness;
    end
end

subplot(2,1,1);
imshow(Inew);

Inew(:,:,1) = process;

subplot(2,1,2);
imshow(Inew);
















