load('weight.mat')
load('mnist_all.mat')
test_set=[test0;test1;test2;test3;test4;test5;test6;test7;test8;test9];
test_set=double(test_set')/255.0;% normalization
% here we can replace the test_set with any digit feature, 
% the shape should be(784,n), where n is the sample size, 
% 784 is the dims of feature, there we use the test set to 
% check whether our program goes right. (index-1) is the
% final result.
hidden=sigmoid(w_1*test_set);
out=sigmoid(w_2*hidden);
[value,index]=max(out,[],1);
index-1;
