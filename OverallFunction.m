%% Run all scripts
clear all; close all; clc;

%% Flags
FLAGS.Perform_Complete_Initialization = 0;
FLAGS.Series_Teams_Initialization = 1;
FLAGS.Update_Brackets_and_Points = 1;
FLAGS.Update_Graphics = 0;
FLAGS.Update_Markdown = 1;

%% Initializations
if FLAGS.Perform_Complete_Initialization
    % GenerateBracketData;
    % InitializeOfficeBrackets;
end

if FLAGS.Series_Teams_Initialization
    disp('Initializing Series')
    InitializeSeries;
    InitializeTeams;
end

%% Run Data Updates
if FLAGS.Update_Brackets_and_Points
    disp('Updating Results')
    UpdateMasterBracket; % Round 1
    UpdateMasterBracket; % Round 2
    UpdateMasterBracket; % Round 3
    UpdateMasterBracket; % Round 4
    
    UpdateOfficePoints;
end
%% Run Graphic Updates
if FLAGS.Update_Graphics
    disp('Updating Graphics')
    UpdateMasterGraphics;
    UpdateOfficeGraphics;
end

%% Markdown
if FLAGS.Update_Markdown
    disp('Updating Markdown')
    UpdateMarkdown;
end

