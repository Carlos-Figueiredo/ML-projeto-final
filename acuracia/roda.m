% import data



lambda = 0;
m = size(X, 1)
[theta] = trainLinearReg([ones(m, 1) X], y, lambda);
