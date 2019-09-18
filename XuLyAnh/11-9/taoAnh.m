% Khai bao ham tao anh
function kq=taoAnh(r,g,b,row,col)
    % khoi tao mang bang ham zeros
    Red   = zeros(row,col);
    Green = zeros(row,col);
    Blue  = zeros(row,col);
    
    % gan gia tri cho mang
    Red   = Red + r;
    Green = Green + g;
    Blue  = Blue + b;
    
    % khoi tao anh
    I = zeros(row,col,3);
    
    % gan gia tri cho cac kenh
    I(:,:,1) = Red;
    I(:,:,2) = Green;
    I(:,:,3) = Blue;
    
    % ep kieu
    kq = uint8(I);
end
