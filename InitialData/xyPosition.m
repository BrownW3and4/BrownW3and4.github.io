%% Calculating x and y positions for bracket

clear all; close all; clc;
%% Scale
scaling = 200*2;

%% X-positions
x_center_circle = [1, 2.5, 4, 5.5, 7, 8.5, 10, 11.5, 13]';
x_ULC = x_center_circle - 0.5;

xact_ULC = x_ULC*scaling

%% Round 1
% Y-Position for the bracket lines
y_pos_frac_center = [1, 2.75, 4.25, 6, 8, 9.75, 11.25, 13]'; %Centered on the circles
y_pos_frac_ULC = y_pos_frac_center - 0.5; %ULC: upper left corner


yact_center = y_pos_frac_center * scaling;
yact_ULC = y_pos_frac_ULC * scaling



%% Round 2
y_pos_frac_center = [1.875, 5.125, 8.875, 12.125]';
y_pos_frac_ULC = y_pos_frac_center - 0.5; %ULC: upper left corner


yact_center = y_pos_frac_center * scaling;
yact_ULC = y_pos_frac_ULC * scaling;

%% Round 3
y_pos_frac_center = [3.5, 10.5]';
y_pos_frac_ULC = y_pos_frac_center - 0.5; %ULC: upper left corner


yact_center = y_pos_frac_center * scaling;
yact_ULC = y_pos_frac_ULC * scaling;

%% Round 4
y_pos_frac_center = [7]';
y_pos_frac_ULC = y_pos_frac_center - 0.5; %ULC: upper left corner


yact_center = y_pos_frac_center * scaling;
yact_ULC = y_pos_frac_ULC * scaling;