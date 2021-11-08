clear ; close all; clc
load ('sample.mat');
type_num = size(unique(Y),1);

method = [];
method.mode = 'pca';
method.K = 50;
kelm = [];
for i = 1:5
[trainX,trainY,testX,testY] = dividSample(X,Y,i);
[trainX, mu, sigma] = featureCentralize(trainX);
testX = bsxfun(@minus, testX, mu);
testX = bsxfun(@rdivide, testX, sigma);
[trainZ,U] = featureExtract(trainX,trainY,method,type_num);
testZ = projectData(testX, U, method.K);
TrainingData = [trainY trainZ];
TestingData = [testY testZ];
[TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy,elm_pred] = elm_kernel(TrainingData, TestingData, 1, 10^5, 'RBF_kernel', 100);
kelm = [kelm TestingAccuracy*100];
end
fprintf('\npca+kelm Accuracy: %f\n', mean(kelm) );

