%% Initialize Teams

function [] = InitializeTeams()
%% Avalanche
TEAMS(1).Name = 'Avalanche';
TEAMS(1).DivisionRank = 1;
TEAMS(1).RegSeasonRank = 2;
TEAMS(1).isEliminated = false;

%% Predators
TEAMS(2).Name          = 'Predators';
TEAMS(2).DivisionRank  = 5;
TEAMS(2).RegSeasonRank = 16;
TEAMS(2).isEliminated  = false;

%% Wild
TEAMS(3).Name          = 'Wild';
TEAMS(3).DivisionRank  = 2;
TEAMS(3).RegSeasonRank = 5;
TEAMS(3).isEliminated  = false;

%% Blues
TEAMS(4).Name          = 'Blues';
TEAMS(4).DivisionRank  = 4;
TEAMS(4).RegSeasonRank = 9;
TEAMS(4).isEliminated  = false;

%% Flames
TEAMS(5).Name          = 'Flames';
TEAMS(5).DivisionRank  = 1;
TEAMS(5).RegSeasonRank = 6;
TEAMS(5).isEliminated  = false;

%% Stars
TEAMS(6).Name          = 'Stars';
TEAMS(6).DivisionRank  = 4;
TEAMS(6).RegSeasonRank = 15;
TEAMS(6).isEliminated  = false;

%% Oilers
TEAMS(7).Name          = 'Oilers';
TEAMS(7).DivisionRank  = 2;
TEAMS(7).RegSeasonRank = 11;
TEAMS(7).isEliminated  = false;

%% Kings
TEAMS(8).Name          = 'Kings';
TEAMS(8).DivisionRank  = 3;
TEAMS(8).RegSeasonRank = 14;
TEAMS(8).isEliminated  = false;

%% Panthers
TEAMS(9).Name          = 'Panthers';
TEAMS(9).DivisionRank  = 1;
TEAMS(9).RegSeasonRank = 1;
TEAMS(9).isEliminated  = false;

%% Capitals
TEAMS(10).Name          = 'Capitals';
TEAMS(10).DivisionRank  = 4;
TEAMS(10).RegSeasonRank = 13;
TEAMS(10).isEliminated  = false;

%% Maple Leafs
TEAMS(11).Name          = 'Maple Leafs';
TEAMS(11).DivisionRank  = 2;
TEAMS(11).RegSeasonRank = 4;
TEAMS(11).isEliminated  = false;

%% Lightning
TEAMS(12).Name          = 'Lightning';
TEAMS(12).DivisionRank  = 3;
TEAMS(12).RegSeasonRank = 8;
TEAMS(12).isEliminated  = false;

%% Hurricanes
TEAMS(13).Name          = 'Hurricanes';
TEAMS(13).DivisionRank  = 1;
TEAMS(13).RegSeasonRank = 3;
TEAMS(13).isEliminated  = false;

%% Bruins
TEAMS(14).Name          = 'Bruins';
TEAMS(14).DivisionRank  = 4;
TEAMS(14).RegSeasonRank = 10;
TEAMS(14).isEliminated  = false;

%% Rangers
TEAMS(15).Name          = 'Rangers';
TEAMS(15).DivisionRank  = 2;
TEAMS(15).RegSeasonRank = 7;
TEAMS(15).isEliminated  = false;

%% Penguins
TEAMS(16).Name          = 'Penguins';
TEAMS(16).DivisionRank  = 3;
TEAMS(16).RegSeasonRank = 12;
TEAMS(16).isEliminated  = false;

%% Make array of teams
teamNames = {'Avalanche' 
             'Predators'
             'Wild'
             'Blues'
             'Flames'
             'Stars'
             'Oilers'
             'Kings'
             'Panthers'
             'Capitals'
             'Maple Leafs'
             'Lightning'
             'Hurricanes'
             'Bruins'
             'Rangers'
             'Penguins'};
%% Save Data
save('TEAMS.mat','TEAMS','teamNames')
end