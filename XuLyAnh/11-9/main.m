% khoi tao gia tri cho cac thuoc tinh
r = 0;
g = 0;
b = 0;
row = 150;
col = 250;

% tao 4 anh voi 4 mau khac nhau
I1 = taoAnh(r+255, g, b, row, col);
I2 = taoAnh(r, g+255, b, row, col);
I3 = taoAnh(r, g, b+255, row, col);
I4 = taoAnh(r+255, g+0, b+255, row, col);

% tao anh I mau den
I = taoAnh(r,g,b,row,col);

% 2 bien gia tri tang theo i va j cho den =75 va =125 (de thay doi mau)
x = 1;
y = 1;

for i=1:row
    for j=1:col
        if(i<=75 && j<=125)
            I(i,j,1) = I1(x,y,1);
            I(i,j,2) = I1(x,y,2);
            I(i,j,3) = I1(x,y,3);
        end
        if(i<=75 && j>125)
            I(i,j,1) = I2(x,y,1);
            I(i,j,2) = I2(x,y,2);
            I(i,j,3) = I2(x,y,3);
        end
        if(i>75 && j<=125)
            I(i,j,1) = I3(x,y,1);
            I(i,j,2) = I3(x,y,2);
            I(i,j,3) = I3(x,y,3);
        end
        if(i>75 && j>125)
            I(i,j,1) = I4(x,y,1);
            I(i,j,2) = I4(x,y,2);
            I(i,j,3) = I4(x,y,3);
        end
        
    end
end

imshow(I);








