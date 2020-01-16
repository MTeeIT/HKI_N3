clc;
close all;
clear all;
%% Training Side
% random three class data with target matrix -- [9X3] 9 observation with 3 features
data = [10 0 0;
        10 0 1;
        10 1 0;
        2 10 0;
        2 10 1;
        2 11 0;
        5 0 10;
        5 0 11;
        5 1 10];
target = [1;1;1;2;2;2;3;3;3];
% Create a radial basis neural network
% Train the Network
net = newrb(data',target'); % net is the trained model. save it at end for doing testing
save('net.mat','net');
% train performance
y = sim(net,data');
y=round(y);
performance = sum(target==y')/size(target,1)
%% Testing Side
% for testing load the trained model
load('net.mat');
testdata = [10 0 0]; % take 1 new unknown observation and give to trained model
y = sim(net,testdata');
y=round(y);