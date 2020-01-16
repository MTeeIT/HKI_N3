soAnh = 9;
soAnhCuaMotAnh = 1;

gnd = zeros(soAnh * soAnhCuaMotAnh ,1);
fea = zeros(soAnh * soAnhCuaMotAnh, 1024);
gnd = int32(gnd);
fea = int32(fea);
for i = 1 : soAnh  
    for j = 1 : soAnhCuaMotAnh
        nameFile = strcat(char(i+48), char(j+48));
        %nameFile = strcat('Logo/RotateLogo/', nameFile);
        file = strcat(nameFile, '.jpg');
        I = imread(file);
        I2 = I(:,:,1);
        I2 = chuyen1dong(I2);
        viTri = (i-1) + j;
        gnd(viTri, 1) = int32(i);
        for m = 1 : 1024
            fea(viTri, m) = int32(I2(1, m));
        end
    end
end
save('logo.mat','gnd', 'fea');  






%if(i==10)nameFile = strcat('10', char(j+48));

