%%
% clear all; close all; clc;
%% XYPos for the Round 1 teams ( Not series)
Rd1_XY = [
    200,  200
    200,  900
    200,  1500
    200,  2200
    200,  3000
    200,  3700
    200,  4300
    200,  5000
    5000, 200
    5000, 900
    5000, 1500
    5000, 2200
    5000, 3000
    5000, 3700
    5000, 4300
    5000, 5000];

%% Load Data
load('SERIES.mat');


%% Load initial image
filename = 'BracketMasterInitial.png';
[X_Base,~,Trans_Base] = imread(filename);
len_Base = length(X_Base);

X_new = X_Base;
Trans_new = Trans_Base;
%% Edit Image
for i = 1:length(SERIES)
    if SERIES(i).isComplete
        HomeTeamWon = strcmp(SERIES(i).HomeTeam , SERIES(i).Winner);
        if HomeTeamWon
            %Grey out away team
            filename = [SERIES(i).AwayTeam , 'CircleGrey.png'];
            [X_L,~,Trans_L] = imread(filename);
            len_L = length(X_L);
            if i < 9
                ULC_Pos_L = Rd1_XY(SERIES(i).AwayPrevSeries, :);
            else
                ULC_Pos_L = SERIES(SERIES(i).AwayPrevSeries).XYPos;
            end
            
            %Place home team logo on series (i)
            filename = [SERIES(i).HomeTeam , 'Circle.png'];
            [X_W,~,Trans_W] = imread(filename);
            len_W = length(X_W);
            ULC_Pos_W = SERIES(i).XYPos;
        else
            %Grey out home
            filename = [SERIES(i).HomeTeam , 'CircleGrey.png'];
            [X_L,~,Trans_L] = imread(filename);
            len_L = length(X_L);
            if i < 9
                ULC_Pos_L = Rd1_XY(SERIES(i).HomePrevSeries, :);
            else
                ULC_Pos_L = SERIES(SERIES(i).HomePrevSeries).XYPos;
            end
            
            %Place away team logo on series (i)
            filename = [SERIES(i).AwayTeam , 'Circle.png'];
            [X_W,~,Trans_W] = imread(filename);
            len_W = length(X_W);
            ULC_Pos_W = SERIES(i).XYPos;
        end
        
        % Edit the base image with new image data for loser
        for idx = 1:len_L
            for jdx = 1:len_L
                for kdx = 1:3
                    %                     if isNONTransparent(idx,jdx)
                    X_new(jdx+ULC_Pos_L(2) , idx+ULC_Pos_L(1) , kdx) = X_L(jdx,idx,kdx);
                    Trans_new(jdx+ULC_Pos_L(2) , idx+ULC_Pos_L(1)) = Trans_L(jdx,idx);
                    %                     end
                end
            end
        end
        % Edit the base image with new image data for winner
        for idx = 1:len_W
            for jdx = 1:len_W
                for kdx = 1:3
                    %                     if isNONTransparent(idx,jdx)
                    X_new(jdx+ULC_Pos_W(2) , idx+ULC_Pos_W(1) , kdx) = X_W(jdx,idx,kdx);
                    Trans_new(jdx+ULC_Pos_W(2) , idx+ULC_Pos_W(1)) = Trans_W(jdx,idx);
                    %                     end
                end
            end
        end
    end
end
%% Save Image
% image(X_new,'AlphaData',Trans_new)
imwrite(X_new,['Results' filesep 'UpdatedBrackets' filesep 'MasterBracket.png'],'Alpha',Trans_new)

