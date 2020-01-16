function imgGray = chuyen_32x32(img)
    I = zeros(650,1400);
    chay = int32(1);
    for i = 1: 650
        for j=1:1400
            I(i, j) = img(1,chay);
            chay = chay +1;
        end
    end 
    imgGray =I;
end