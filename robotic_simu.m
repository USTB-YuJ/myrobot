%% 参数定义
clear;
close all;
clc;
 
%角度转换
angle=pi/180;  %转化为角度制
 
%D-H参数表
theta1 = 0;   D1 = 60;   A1 = 0; alpha1 = 0; offset1 = 0;
theta2 = pi/2;D2 = 0;     A2 = 0;  alpha2 = pi/2;    offset2 = 0;
theta3 = -pi/2;   D3 = 0;     A3 = 360; alpha3 = 0; offset3 = 0;
theta4 = 0;   D4 = 420; A4 = 0;     alpha4 = -pi/2; offset4 = 0;
theta5 = pi;  D5 = 95;     A5 = 0;     alpha5 = pi/2; offset5 = 0;
theta6 = 0;   D6 = 100;  A6 = 0;     alpha6 = -pi/2;    offset6 = 0;
theta7 = 0;   D7 = 60;  A7 = 0;     alpha7 = pi/2;    offset7 = 0;
 
%% DH法建立模型,关节转角，关节距离，连杆长度，连杆转角
L(1) = Link([theta1, D1, A1, alpha1, offset1], 'modified')
L(2) = Link([theta2, D2, A2, alpha2, offset2], 'modified')
L(3) = Link([theta3, D3, A3, alpha3, offset3], 'modified')
L(4) = Link([theta4, D4, A4, alpha4, offset4], 'modified')
L(5) = Link([theta5, D5, A5, alpha5, offset5], 'modified')
L(6) = Link([theta6, D6, A6, alpha6, offset6], 'modified')
L(7) = Link([theta7, D7, A7, alpha7, offset7], 'modified')
 
% 定义关节范围
L(1).qlim =[-180*angle, 180*angle];
L(2).qlim =[0*angle, 180*angle];
L(3).qlim =[-180*angle, 45*angle];
L(4).qlim =[-180*angle, 180*angle];
L(5).qlim =[-180*angle, 180*angle];
L(6).qlim =[-180*angle, 180*angle];
L(7).qlim =[-180*angle, 180*angle];
 
%% 显示机械臂
robot0 = SerialLink(L,'name','yurobot');
robot0.teach();
theta = [0 0 0 0 0 0 0];				%初始关节角度[0 pi/2 -pi/2 0 0 0 0]
view(3)
figure(1)
robot0.plot(theta);
title('机械臂模型');