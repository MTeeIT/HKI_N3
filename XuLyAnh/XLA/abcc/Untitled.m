soAnh = 9;
soAnhCuaMotAnh = 2;

gnd = zeros(soAnh * soAnhCuaMotAnh ,1);
fea = zeros(soAnh * soAnhCuaMotAnh, 910000);
gnd = int32(gnd);
fea = int32(fea);
for i = 1 : soAnh  % 100 is number of images
    for j = 1 : soAnhCuaMotAnh
        if(i==10)
            nameFile = strcat('10', char(j+48));
        else nameFile = strcat(char(i+48), char(j+48));
        end
        %nameFile = strcat('32x32/', nameFile);
        file = strcat(nameFile, '.jpg');
        I = imread(file);
        I2 = I(:,:,1);
        I2 = chuyen1dong(I2);
        viTri = (i-1)*2 + j;
        gnd(viTri, 1) = int32(i);
        for m = 1 : 1024
            fea(viTri, m) = int32(I2(1, m));
        end
    end
end
save('features.mat','gnd', 'fea');   % create database
% database2 = load('features.mat');
% 
% 
% %tap train
% for i=1:3
%     for j=1:3
%         k=5;
%         row = (i-1)*4+j;
%         row_fea = fea(row, :);
%         img_fea = reshape(row_fea, 1, 1024);
%         if (i == 1) && (j==1)
%             train_set = img_fea;
%             idx_train = row;
%         else
%             train_set = [train_set; img_fea];
%             idx_train = [idx_train; row];
%         end
%     end
% end
% 
% fprintf('Xoq tap train\n');
% 
% %tap test
% for i=1:3
%     for j=4:4 
%         row = (i-1)*4+j;
%         row_fea = fea(row, :);
%         img_fea = reshape(row_fea, 1, 1024);
%         if (i == 1) && (j==4)
%             test_set = img_fea;
%             idx_test = row;
%         else
%             test_set = [test_set; img_fea];
%             idx_test = [idx_test; row];
%         end
%     end
% end
% 
% fprintf('Xoq tap test\n');
% count = 0;
% for i=1:3
%     x_test = test_set(i, :);
%     x_test = repmat(x_test, 9, 1);
%     dist = x_test - train_set;
%     euclid_dist = sqrt(sum(dist.^2,2));
%     [sort_value, rank_idx] = sort(euclid_dist);
%     knn = uint8(3);
%     %lay 15 kq nho nhat
% 
%     predict_labels = gnd(rank_idx(1:knn));
%     %dem so lan khop hinh nhieu nhat
%     fprintf('%d Hinh %d  ', i, predict_labels);
%     
%     %tim so hinh xuat hien nhieu nhat
%     max = 0;
%     for k=1:knn
%         x = predict_labels(k);
%         max_replace = 0;
%         for j=1:knn
%             if x == predict_labels(j)
%                 max_replace = max_replace + 1;
%             end
%         end
%         
%         if(max_replace > max)
%             max = max_replace;
%             max_value = x;
%         end
%     end
%     
%     predict_label = max_value;
%     if predict_label == gnd(idx_test(i))
%         count = count + 1;
%         fprintf('Dung\n');
%     end
%     
%     fprintf('hinh gan giong la %d\n', max_value);
%     
%     ImgS = chuyen_32x32(fea(idx_test(i),:));
%     rgbImageSource = uint8(cat(3, ImgT, ImgT, ImgT));
%     subplot(2,1,1);
%     imshow(rgbImageSource);
%     
%     
%     ImgT = chuyen_32x32(fea(max_value,:));
%     rgbImageTarget = uint8(cat(3, ImgT, ImgT, ImgT));
%     subplot(2,1,2);
%     imshow(rgbImageTarget);
%     %subplot(5,2,((i * 2) - 1)); image(reshape(fea(idx_test(i),:), 32, 32));
%     %subplot(5,2,i * 2); image(reshape(fea(max_value,:), 32, 32));
% end
%     fprintf('Do chinh xac la %d/%d\n', count, length(idx_test));
% 
% 
%     