%% Initialize Teams

function [] = InitializeTeams()
%% Avalanche
TEAMS(1).Name = 'Avalanche';
TEAMS(1).DivisionRank = 1;
TEAMS(1).RegSeasonRank = 2;
TEAMS(1).isEliminated = false;
TEAMS(1).Color = '#6B253D';
TEAMS(1).TextColor = '#ffffff';

%% Predators
TEAMS(2).Name          = 'Predators';
TEAMS(2).DivisionRank  = 5;
TEAMS(2).RegSeasonRank = 16;
TEAMS(2).isEliminated  = false;
TEAMS(2).Color = '#F7BA13';
TEAMS(2).TextColor = '#000000';

%% Wild
TEAMS(3).Name          = 'Wild';
TEAMS(3).DivisionRank  = 2;
TEAMS(3).RegSeasonRank = 5;
TEAMS(3).isEliminated  = false;
TEAMS(3).Color = '#A81B20';
TEAMS(3).TextColor = '#000000';

%% Blues
TEAMS(4).Name          = 'Blues';
TEAMS(4).DivisionRank  = 4;
TEAMS(4).RegSeasonRank = 9;
TEAMS(4).isEliminated  = false;
TEAMS(4).Color = '#103089';
TEAMS(4).TextColor = '#ffffff';

%% Flames
TEAMS(5).Name          = 'Flames';
TEAMS(5).DivisionRank  = 1;
TEAMS(5).RegSeasonRank = 6;
TEAMS(5).isEliminated  = false;
TEAMS(5).Color = '#C50920';
TEAMS(5).TextColor = '#000000';

%% Stars
TEAMS(6).Name          = 'Stars';
TEAMS(6).DivisionRank  = 4;
TEAMS(6).RegSeasonRank = 15;
TEAMS(6).isEliminated  = false;
TEAMS(6).Color = '#3E8758';
TEAMS(6).TextColor = '#000000';

%% Oilers
TEAMS(7).Name          = 'Oilers';
TEAMS(7).DivisionRank  = 2;
TEAMS(7).RegSeasonRank = 11;
TEAMS(7).isEliminated  = false;
TEAMS(7).Color = '#F24A00';
TEAMS(7).TextColor = '#000000';

%% Kings
TEAMS(8).Name          = 'Kings';
TEAMS(8).DivisionRank  = 3;
TEAMS(8).RegSeasonRank = 14;
TEAMS(8).isEliminated  = false;
TEAMS(8).Color = '#9FA6A9';
TEAMS(8).TextColor = '#000000';

%% Panthers
TEAMS(9).Name          = 'Panthers';
TEAMS(9).DivisionRank  = 1;
TEAMS(9).RegSeasonRank = 1;
TEAMS(9).isEliminated  = false;
TEAMS(9).Color = '#E00024';
TEAMS(9).TextColor = '#000000';

%% Capitals
TEAMS(10).Name          = 'Capitals';
TEAMS(10).DivisionRank  = 4;
TEAMS(10).RegSeasonRank = 13;
TEAMS(10).isEliminated  = false;
TEAMS(10).Color = '#091E42';
TEAMS(10).TextColor = '#ffffff';

%% Maple Leafs
TEAMS(11).Name          = 'Maple Leafs';
TEAMS(11).DivisionRank  = 2;
TEAMS(11).RegSeasonRank = 4;
TEAMS(11).isEliminated  = false;
TEAMS(11).Color = '#08215D';
TEAMS(11).TextColor = '#ffffff';

%% Lightning
TEAMS(12).Name          = 'Lightning';
TEAMS(12).DivisionRank  = 3;
TEAMS(12).RegSeasonRank = 8;
TEAMS(12).isEliminated  = false;
TEAMS(12).Color = '#0B296A';
TEAMS(12).TextColor = '#ffffff';

%% Hurricanes
TEAMS(13).Name          = 'Hurricanes';
TEAMS(13).DivisionRank  = 1;
TEAMS(13).RegSeasonRank = 3;
TEAMS(13).isEliminated  = false;
TEAMS(13).Color = '#D9001E';
TEAMS(13).TextColor = '#000000';

%% Bruins
TEAMS(14).Name          = 'Bruins';
TEAMS(14).DivisionRank  = 4;
TEAMS(14).RegSeasonRank = 10;
TEAMS(14).isEliminated  = false;
TEAMS(14).Color = '#F6B400';
TEAMS(14).TextColor = '#000000';

%% Rangers
TEAMS(15).Name          = 'Rangers';
TEAMS(15).DivisionRank  = 2;
TEAMS(15).RegSeasonRank = 7;
TEAMS(15).isEliminated  = false;
TEAMS(15).Color = '#1434A3';
TEAMS(15).TextColor = '#ffffff';

%% Penguins
TEAMS(16).Name          = 'Penguins';
TEAMS(16).DivisionRank  = 3;
TEAMS(16).RegSeasonRank = 12;
TEAMS(16).isEliminated  = false;
TEAMS(16).Color = '#F6B400';
TEAMS(16).TextColor = '#000000';

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