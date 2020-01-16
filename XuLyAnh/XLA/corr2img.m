function check = corr2img(img1,img2)
%Correlation
%I = rgb2gray(img);
    [r, c, ch] = size(img1);
    G1 = imresize(rgb2gray(img2),[r, c]);
    check = corr2(img1, G1);
end