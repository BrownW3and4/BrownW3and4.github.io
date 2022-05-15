%%
% clear all;
% close all;
% clc;

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
load('ScoringResults.mat');

%% Load People's Data
for i = 1:length(People)
    % Load Initial Image
    filename = ['InitialBracket_' People{i} '.png'];
    [X_Base,~,Trans_Base] = imread(filename);
    len_Base = length(X_Base);
    X_new = X_Base;
    Trans_new = Trans_Base;
    
    % Go through Choice Matrix and Insert the proper image
    N_rounds = 15;
    for j = 1:N_rounds
        if ChoiceMatrix{i,j+1} == 1 % Correct
            % Grab image data related to the choice
            filename = 'GreenCircle.png';
            [X,~,Trans] = imread(filename);
            len = length(X);
            isNONTransparent = Trans>0;
            offset = 50;
            
            % Find starting x and y index
            ULC_Pos = SERIES(j).XYPos;
            
            % Edit the base image with new image data
            for idx = 1:len
                for jdx = 1:len
                    for kdx = 1:3
                        if isNONTransparent(idx,jdx)
                            X_new(jdx+ULC_Pos(2)-offset , idx+ULC_Pos(1)-offset , kdx) = X(jdx,idx,kdx);
                            Trans_new(jdx+ULC_Pos(2)-offset , idx+ULC_Pos(1)-offset) = Trans(jdx,idx);
                        end
                    end
                end
            end
        elseif ChoiceMatrix{i,j+1} == 0 % Wrong
            % Grab image data related to the choice
            filename = 'RedX.png';
            [X,~,Trans] = imread(filename);
            len = length(X);
            isNONTransparent = Trans>0;
            offset = 0;
            
            % Find starting x and y index
            ULC_Pos = SERIES(j).XYPos;
            
            % Edit the base image with new image data
            for idx = 1:len
                for jdx = 1:len
                    for kdx = 1:3
                        if isNONTransparent(idx,jdx)
                            X_new(jdx+ULC_Pos(2)-offset , idx+ULC_Pos(1)-offset , kdx) = X(jdx,idx,kdx);
                            Trans_new(jdx+ULC_Pos(2)-offset , idx+ULC_Pos(1)-offset) = Trans(jdx,idx);
                        end
                    end
                end
            end
        else %NaN
            %Do nothing
        end
        
        
    end
    
    %% Save Image
    %     image(X_new,'AlphaData',Trans_new)
    imwrite(X_new,['Results' filesep 'UpdatedBrackets' filesep 'Bracket_' People{i} '.png'],'Alpha',Trans_new)
    
end