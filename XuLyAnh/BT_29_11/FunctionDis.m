function Res = Dis(A,B)
A = double(A);
B = double(B);
[row col]=size(A);

sum = double(0);
for i = 1:row
    for j = 1:col
        sum = sum + (A(i,j)-B(i,j))^2;
    end
end
Res = sqrt(sum);
end
