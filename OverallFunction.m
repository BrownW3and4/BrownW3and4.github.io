%% Run all scripts
clear all; close all; clc;

%% Initializations
% GenerateBracketData
% InitializeOfficeBrackets

InitializeSeries
InitializeTeams

%% Run Data Updates
UpdateMasterBracket % Round 1
UpdateMasterBracket % Round 2
UpdateMasterBracket % Round 3
UpdateMasterBracket % Round 4

UpdateOfficePoints

%% Run Graphic Updates
UpdateMasterGraphics
UpdateOfficeGraphics