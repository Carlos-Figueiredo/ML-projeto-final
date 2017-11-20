% import data

data = dlmread("16PF.noUp/data.csv",'\t',1,0);

y = data(:,164);
data(:,164) = [];
X = data;

for i = [1:size(X,2)]
  X(:,i) = (X(:,i) - mean(X(:,i)))/std(X(:,i));
end

X;

lambda = 0;
m = size(X, 1)
[theta] = trainLinearReg([ones(m, 1) X], y, lambda);
