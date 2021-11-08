clear ; close all; clc
load ('sample.mat');
type_num = size(unique(Y),1);

elm = [];
for i = 1:5
[trainX,trainY,testX,testY] = dividSample(X,Y,i);
[trainX, mu, sigma] = featureCentralize(trainX);
testX = bsxfun(@minus, testX, mu);
testX = bsxfun(@rdivide, testX, sigma);
TrainingData = [trainY trainX];
TestingData = [testY testX];
aver_elm = [];
    for j = 1:10
        [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy,elm_pred] = ELM(TrainingData, TestingData, 1, 5000, 'sig', 10^5);%1, 5000, 'sig', 10^5);
        aver_elm = [aver_elm TestingAccuracy*100];
    end
elm = [elm mean(aver_elm)];
end
fprintf('\nelm Accuracy: %f\n', mean(elm));

method = [];
method.mode = 'pca';
method.K = 140;
elm = [];
for i = 1:5
[trainX,trainY,testX,testY] = dividSample(X,Y,i);
[trainX, mu, sigma] = featureCentralize(trainX);
testX = bsxfun(@minus, testX, mu);
testX = bsxfun(@rdivide, testX, sigma);
[trainZ,U] = featureExtract(trainX,trainY,method,type_num);
testZ = projectData(testX, U, method.K);
TrainingData = [trainY trainZ];
TestingData = [testY testZ];
aver_elm = [];
    for j = 1:10
        [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy,elm_pred] = ELM(TrainingData, TestingData, 1, 5000, 'sig', 10^5);%1, 5000, 'sig', 10^5);
        aver_elm = [aver_elm TestingAccuracy*100];
    end
elm = [elm mean(aver_elm)];
end
fprintf('\npca+elm Accuracy: %f\n', mean(elm));
 
method = [];
method.mode = 'lpp';
method.K = 150;
method.weightmode = 'binary';
method.knn_k = 6;
elm = [];
time_lpps = [];
for i = 1:5
[trainX,trainY,testX,testY] = dividSample(X,Y,i);
[trainX, mu, sigma] = featureCentralize(trainX);
testX = bsxfun(@minus, testX, mu);
testX = bsxfun(@rdivide, testX, sigma);
[trainZ,U] = featureExtract(trainX,trainY,method,type_num);
testZ = projectData(testX, U, method.K);
TrainingData = [trainY trainZ];
TestingData = [testY testZ];
aver_elm = [];
    for j = 1:10
        [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy,elm_pred] = ELM(TrainingData, TestingData, 1, 5000, 'sig', 10^5);%1, 5000, 'sig', 10^5);
        aver_elm = [aver_elm TestingAccuracy*100];
    end
elm = [elm mean(aver_elm)];
end
fprintf('\nlpp+elm Accuracy: %f\n', mean(elm));

method = [];
method.mode = 'lpp';
method.K = 145;
method.weightmode = 'heatkernel';
method.t = 0.001;
method.knn_k = 6;
elm = [];
for i = 1:5
[trainX,trainY,testX,testY] = dividSample(X,Y,i);
[trainX, mu, sigma] = featureCentralize(trainX);
testX = bsxfun(@minus, testX, mu);
testX = bsxfun(@rdivide, testX, sigma);
[trainZ,U] = featureExtract(trainX,trainY,method,type_num);
testZ = projectData(testX, U, method.K);
TrainingData = [trainY trainZ];
TestingData = [testY testZ];
aver_elm = [];
    for j = 1:10
        [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy,elm_pred] = ELM(TrainingData, TestingData, 1, 5000, 'sig', 10^5);%1, 5000, 'sig', 10^5);
        aver_elm = [aver_elm TestingAccuracy*100];
    end
elm = [elm mean(aver_elm)];
end
fprintf('\nlpp with heatkernel+elm Accuracy: %f\n', mean(elm));
 
method = [];
method.mode = 'lda';
method.K = 145;
elm = [];
for i = 1:5
[trainX,trainY,testX,testY] = dividSample(X,Y,i);
[trainX, mu, sigma] = featureCentralize(trainX);
testX = bsxfun(@minus, testX, mu);
testX = bsxfun(@rdivide, testX, sigma);
[trainZ,U] = featureExtract(trainX,trainY,method,type_num);
testZ = projectData(testX, U, method.K);
TrainingData = [trainY trainZ];
TestingData = [testY testZ];
aver_elm = [];
    for j = 1:10
        [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy,elm_pred] = ELM(TrainingData, TestingData, 1, 5000, 'sig', 10^5);%1, 5000, 'sig', 10^5);
        aver_elm = [aver_elm TestingAccuracy*100];
    end
elm = [elm mean(aver_elm)];
end
fprintf('\nlda+elm Accuracy: %f\n', mean(elm));

method = [];
method.mode = 'lpdp';
method.K = 75;
method.mu = 1000;
method.weightmode = 'binary';
method.knn_k = 5;
elm = [];
for i = 1:5
[trainX,trainY,testX,testY] = dividSample(X,Y,i);
[trainX, mu, sigma] = featureCentralize(trainX);
testX = bsxfun(@minus, testX, mu);
testX = bsxfun(@rdivide, testX, sigma);
[trainZ,U] = featureExtract(trainX,trainY,method,type_num);
testZ = projectData(testX, U, method.K);
TrainingData = [trainY trainZ];
TestingData = [testY testZ];
aver_elm = [];
    for j = 1:10
        [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy,elm_pred] = ELM(TrainingData, TestingData, 1, 5000, 'sig', 10^5);%1, 5000, 'sig', 10^5);
        aver_elm = [aver_elm TestingAccuracy*100];
    end
elm = [elm mean(aver_elm)];
end
fprintf('\nlpdp+elm Accuracy: %f\n', mean(elm));

method = [];
method.mode = 'lpdp';
method.K = 70;
method.mu = 1000;
method.weightmode = 'heatkernel';
method.t = 1;
method.knn_k = 5;
elm = [];
for i = 1:5
[trainX,trainY,testX,testY] = dividSample(X,Y,i);
[trainX, mu, sigma] = featureCentralize(trainX);
testX = bsxfun(@minus, testX, mu);
testX = bsxfun(@rdivide, testX, sigma);
[trainZ,U] = featureExtract(trainX,trainY,method,type_num);
testZ = projectData(testX, U, method.K);
TrainingData = [trainY trainZ];
TestingData = [testY testZ];
aver_elm = [];
    for j = 1:10
        [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy,elm_pred] = ELM(TrainingData, TestingData, 1, 5000, 'sig', 10^5);%1, 5000, 'sig', 10^5);
        aver_elm = [aver_elm TestingAccuracy*100];
    end
elm = [elm mean(aver_elm)];
end
fprintf('\nlpdp with heatkernel+elm Accuracy: %f\n', mean(elm));
 
method = [];
method.mode = 'ldpp';
method.K = 110;
method.mu = 10;
method.gamma = 0.1;
method.ratio_b = 0.9;
method.ratio_w = 0.9;
method.weightmode = 'binary';
method.knn_k = 5;
elm = [];
for i = 1:5
[trainX,trainY,testX,testY] = dividSample(X,Y,i);
[trainX, mu, sigma] = featureCentralize(trainX);
testX = bsxfun(@minus, testX, mu);
testX = bsxfun(@rdivide, testX, sigma);
[trainZ,U] = featureExtract(trainX,trainY,method,type_num);
testZ = projectData(testX, U, method.K);
TrainingData = [trainY trainZ];
TestingData = [testY testZ];
aver_elm = [];
    for j = 1:10
        [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy,elm_pred] = ELM(TrainingData, TestingData, 1, 5000, 'sig', 10^5);%1, 5000, 'sig', 10^5);
        aver_elm = [aver_elm TestingAccuracy*100];
    end
elm = [elm mean(aver_elm)];
end
fprintf('\nldpp with binary+elm Accuracy: %f\n', mean(elm));

method = [];
method.mode = 'ldpp';
method.K = 120;
method.mu = 1;
method.gamma = 100;
method.ratio_b = 0.9;
method.ratio_w = 0.9;
method.weightmode = 'heatkernel';
method.t = 100;
method.knn_k = 5;
elm = [];
for i = 1:5
[trainX,trainY,testX,testY] = dividSample(X,Y,i);
[trainX, mu, sigma] = featureCentralize(trainX);
testX = bsxfun(@minus, testX, mu);
testX = bsxfun(@rdivide, testX, sigma);
[trainZ,U] = featureExtract(trainX,trainY,method,type_num);
testZ = projectData(testX, U, method.K);
TrainingData = [trainY trainZ];
TestingData = [testY testZ];
aver_elm = [];
    for j = 1:10
        [TrainingTime, TestingTime, TrainingAccuracy, TestingAccuracy,elm_pred] = ELM(TrainingData, TestingData, 1, 5000, 'sig', 10^5);%1, 5000, 'sig', 10^5);
        aver_elm = [aver_elm TestingAccuracy*100];
    end
elm = [elm mean(aver_elm)];
end
fprintf('\nldpp with heatkernel+elm Accuracy: %f\n', mean(elm));