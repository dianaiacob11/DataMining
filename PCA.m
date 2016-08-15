tic

clear all;
close all;
clc;

%% DATA
addpath(genpath('./../Data_MATLAB'))

load('data_train.mat')
load('y_training.mat')
load('data_test.mat')
load('y_test.mat')

%% PCA
cov_matrix = cov(Xtrain); % build covariance matrix
[V, D] = eig(cov_matrix); % V right eigenvector, D eigenvalues
stem( diag(D) );

Vp = V( :, end-19:end);
Xtrain = Xtrain*Vp; % reduced dimensional data
Xtest = Xtest*Vp;



toc

