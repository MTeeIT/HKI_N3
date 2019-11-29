I = imread('giaothong.png');
X = imread('X.png');

X = rgb2gray(X);
I = rgb2gray(I);

histX = histogram(X);

startdong = 0;
startcot = 0;
enddong = 64;
endcot = 64;

Thres = 5000;
Py = 1;
Px = 1;
[Yd Yc] = size(Y);
for i =1:Yd-Xd-700
    for j=1,Yc-Xc-1000
    A = Y(i:i+Xd, j:j+Xc);
    Ha = imhist(A);
    Hb = imhist(B);
    d = Dis(Ha, Hb);
       if d < Thres
           Thres = d;
            Px=i;
            Py=j;
       end
   end
end
dongkhung(I,Px,Py,64,64);