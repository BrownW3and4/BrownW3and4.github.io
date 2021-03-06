%%


%% People
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

%% Load Series and Teams
load('TEAMS.mat');
load('SERIES.mat');

%% Points Awarded
% Round 1: 10  , Series  1 -  8 , Division
% Round 2: 25  , Series  9 - 12 , Division
% Round 3: 50  , Series 13 - 14 , Conference
% Round 4: 100 , Series 15      , Stanley Cup
Scoring = [10 10 10 10 10 10 10 10 25 25 25 25 50 50 100];


%% Initialize Array
Points = cell(length(People),4);
ChoiceMatrix = cell(length(People),16);
for i = 1:length(People)
Points{i,1} = People{i};
ChoiceMatrix{i,1} = People{i};
end

P.Name      = 1;
P.Aquired   = 2;
P.Potential = 3;
P.TPP       = 4;

%% Perform Calcs
%if a series is complete, then the points go toward their aquired points
%if series is not complete, points go toward potential points
% sum of potential and aquired is their total possible points

%%% For the graphics, there will be 3 options
% 1 : They chose correctly
% 0 : That team has been eliminated
% NaN: Their choice has not won nor has been eliminated


for i = 1:length(People)
    Aquired = 0;
    Potential = 0;
    load(['Bracket' People{i} '.mat'])
    for j = 1:15
        if SERIES(j).isComplete
            if strcmp(SERIES(j).Winner , Choice{j})
                Aquired = Aquired + Scoring(j);
                ChoiceMatrix{i,j+1} = 1;
            else
                ChoiceMatrix{i,j+1} = 0;
            end
        else
            if ~TEAMS(find(strcmp(Choice{j}, teamNames))).isEliminated
                Potential = Potential + Scoring(j);
                ChoiceMatrix{i,j+1} = NaN;
            else
                ChoiceMatrix{i,j+1} = 0;
            end
        end
        TPP = Aquired + Potential;
    end
    Points{i,P.Aquired} = Aquired;
    Points{i,P.Potential} = Potential;
    Points{i,P.TPP} = TPP;
end

%% Sort
Points_Names         = sortrows(Points,P.Name);
Points_PointsAquired = sortrows(Points,[P.Aquired,P.TPP],'descend');
Points_PointsTPP     = sortrows(Points,[P.TPP,P.Aquired],'descend');

Points_Names         = Points_Names(:,[P.Name , P.Aquired ,P.TPP]);
Points_PointsAquired = Points_PointsAquired(:,[P.Name , P.Aquired ,P.TPP]);
Points_PointsTPP     = Points_PointsTPP(:,[P.Name , P.Aquired ,P.TPP]);
%% Save Data
save(['Results' filesep 'ScoringResults.mat'],'Points','Points_Names','Points_PointsAquired','Points_PointsTPP','ChoiceMatrix')


%% Sorting Function
function [Sorted] = sortResults(unsorted , c)
for i = 1:length(unsorted)
    
end
end