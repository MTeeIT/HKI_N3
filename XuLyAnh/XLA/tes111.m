function [opt_sigma, F] = sigma_selection_for_svdd(x, sigmas)
% ERPHM LAB Codes
% 2019-11-06 created by Dr. Zhiliang Liu, Deng Pan, and Jinlong Kang
% This function implements the VSRMR-based sigma selection method (proposed in [1]) for the support vector data description (SVDD) that is a one-class classification tool.
% Please cite the reference [1] if you use this method in your research work. If you have any problems, feel free to contact Zhiliang_Liu@uestc.edu.cn
%
% Inputs:
% [1] x - the training samples
% [2] sigmas - the row vector that contains all the candidate sigma values,
% defualt 0.01:0.01:10
%
% Outputs:
% [1] opt_sigma - the optimal sigma
% [2] F - the objective function values of all candidate sigmas.
%
% References:
% [1] Zhiliang Liu*, Jinlong Kang, Xuejun Zhao, Ming J Zuo, Yong Qin, and Limin Jia. Modelling of the safe region based on support vector data description for health assessment of wheelset bearings. Applied Mathematical Modelling, 73: 19-39, 2019.
% Example:
% clc; clear all;
% load fisheriris;
% x = meas(strcmp(species,'setosa'),1:2);
% scatter(x(:,1),x(:,2));
% [opt_sigma, F] = sigma_selection_for_svdd(x,[0.01:0.01:10]);
if nargin < 1 
    Error('no enough input arguments!'); 
end
if nargin < 2 
    sigmas = 0.01:0.01:10;
end
K_s = zeros; K_mean = zeros;
n = length(sigmas);
v = sum(x.^2,2);
N = length(v);
uv = bsxfun(@plus,v,v')-2*(x*x');
for i = 1:n
    iSigma = sigmas(i);
    K = exp(-(1/(2*iSigma^2))*uv);
    K(1:N+1:end) = [];
    K_mean(i) = mean(K);
    K_s(i) = var(K);
end
F = K_s./(K_mean.^0.5);
[~, idx] = max(F);
opt_sigma = sigmas(idx);
% opt_K = exp(-(1/(2*opt_sigma^2))*uv);
end