function img = chuyen1dong(imgGray)
    I = zeros(1,910000);
    chay = int32(1);
    for i = 1: 650
        for j=1:1400
            I(1, chay) = imgGray(i,j);
            chay = chay +1;
        end
    end 
    img =I;
end