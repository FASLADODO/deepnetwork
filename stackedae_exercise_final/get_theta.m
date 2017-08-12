%% Initialization
clc
clear
%��������������㷨�󣬽��������������result_save.mat
load('result_save.mat');

%% ΢��ǰ
feature_Size = [inputSize, hiddenSizeL1, hiddenSizeL2];
pre_theta = cell(2,1);
tail = 0;
for layerNum = 1:numel(pre_theta)
    head = tail+1;
    tail = head-1 + feature_Size(layerNum)*feature_Size(layerNum+1);
    pre_theta{layerNum}.w = reshape(stackedAETheta(head:tail), feature_Size(layerNum+1), feature_Size(layerNum));

    head = tail+1;
    tail = head-1 + feature_Size(layerNum+1);
    pre_theta{layerNum}.b = reshape(stackedAETheta(head:tail), feature_Size(layerNum+1), 1);
end

%% ΢����
featureSize = [inputSize, hiddenSizeL1, hiddenSizeL2];
post_theta = cell(2,1);
tail = 0;
for layerNum = 1:numel(post_theta)
    head = tail+1;
    tail = head-1 + featureSize(layerNum)*featureSize(layerNum+1);
    post_theta{layerNum}.w = reshape(stackedAEOptTheta(head:tail), featureSize(layerNum+1), featureSize(layerNum));

    head = tail+1;
    tail = head-1 + featureSize(layerNum+1);
    post_theta{layerNum}.b = reshape(stackedAEOptTheta(head:tail), featureSize(layerNum+1), 1);
end

%% ���������������һ�𣬲�������
save('all_theta.mat', 'pre_theta', 'post_theta')
