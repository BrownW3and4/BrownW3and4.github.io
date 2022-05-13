%%
clear all;
% close all;
clc;

%%
% People = {'Tyler'};

People = {
    'Allie'
    'Allison'
    'Caroline'
    'Corey'
    'Daniel'
    'Felix'
    'Gus'
    'Isabella'
    'Jackson'
    'Jordan'
    'Lydia'
    'Megan'
    'Mike'
    'Rob'
    'Sarah'
    'Tyler'
    'Xander'};

%% Load Series Data (for the xy points)
load('SERIES.mat');

%% Load Base Image
filename = 'BracketBase.png';
[X_Base,~,Trans_Base] = imread(filename);
len_Base = length(X_Base);



%% Load People's Data
for i = 1:length(People)
    X_new = X_Base;
    Trans_new = Trans_Base;
    load(['Bracket' People{i} '.mat'])
    for j = 1:length(Choice)
        % Grab image data related to the choice
        filename = [Choice{j} , 'Circle.png'];
        [X,~,Trans] = imread(filename);
        len = length(X);
        
        % Find starting x and y index
        ULC_Pos = SERIES(j).XYPos;
        
        % Edit the base image with new image data
        for idx = 1:len
            for jdx = 1:len
                for kdx = 1:3
                    X_new(jdx+ULC_Pos(2) , idx+ULC_Pos(1) , kdx) = X(jdx,idx,kdx);
                    Trans_new(jdx+ULC_Pos(2) , idx+ULC_Pos(1)) = Trans(jdx,idx);
                end
            end
        end
    end
    % Add Name to the top
    filename = [People{i} '.png'];
    [X,~,Trans] = imread(filename);
    size_X = size(X);
    
    len_x = size_X(2);
    len_y = size_X(1);
    
    start_x = round((len_Base - len_x)/2);
    start_y = 200;
    for idx = 1:len_x
        for jdx = 1:len_y
            for kdx = 1:3
                X_new(jdx+start_y , idx+start_x , kdx) = X(jdx,idx,kdx);
                Trans_new(jdx+start_y , idx+start_x) = Trans(jdx,idx);
            end
        end
    end
    
% Save Image
% image(X_new,'AlphaData',Trans_new)
imwrite(X_new,['InitialData' filesep 'OfficeBrackets' filesep 'InitialBracket_' People{i} '.png'],'Alpha',Trans_new)    

end








