function [trainX,trainY,testX,testY] = dividSample(X,Y,i)
    
    ind = [];
    group_pos = [1 23;24 45;46 68;69 91;92 114];
    ind = group_pos(i,1):group_pos(i,2);
    testX = X(ind,:);
    testY = Y(ind);
    X(ind,:) = [];
    Y(ind,:) = [];
    trainX = X;
    trainY = Y;

end