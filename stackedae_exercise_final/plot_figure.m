%% ����ͼ�����
% ΢��ǰ��΢����ÿ��ϡ��������ȡ������ͼ������

%% ��������
clc
clear
load('all_theta.mat');

num = 6;

%% ΢��ǰ��һ����ӻ�ͼ��
data = pre_theta{1}.w;
display_network(data(1:num^2, :)', true, true, num, true); 

%% ΢��ǰ�ڶ�����ӻ�ͼ��
data = pre_theta{2}.w * pre_theta{1}.w;
display_network(data(1:num^2, :)', true, true, num, true); 

%% ΢�����һ����ӻ�ͼ��
data = post_theta{1}.w;
display_network(data(1:num^2, :)', true, true, num, true); 

data = post_theta{2}.w * post_theta{1}.w;
%% ΢����ڶ�����ӻ�ͼ��
display_network(data(1:num^2, :)', true, true, num, true); 

