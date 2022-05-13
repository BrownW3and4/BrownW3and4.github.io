%% Initialize Series

function []   = InitializeSeries()
%%

%% Series 1
SERIES(1).Name           = 'Series 1';
SERIES(1).HomeTeam       = 'Avalanche';
SERIES(1).AwayTeam       = 'Predators';
SERIES(1).HomeWins       = [];
SERIES(1).AwayWins       = [];
SERIES(1).HomePrevSeries = 1;
SERIES(1).AwayPrevSeries = 2;
SERIES(1).isMatchupSet   = true;  
SERIES(1).isComplete     = false;  
SERIES(1).Winner         = [];
SERIES(1).XYPos          = [800 550];

%% Series 2
SERIES(2).Name           = 'Series 2';
SERIES(2).HomeTeam       = 'Wild';
SERIES(2).AwayTeam       = 'Blues';
SERIES(2).HomeWins       = [];
SERIES(2).AwayWins       = [];
SERIES(2).HomePrevSeries = 3;
SERIES(2).AwayPrevSeries = 4;
SERIES(2).isMatchupSet   = true; 
SERIES(2).isComplete     = false;  
SERIES(2).Winner         = [];
SERIES(2).XYPos          = [800 1850];

%% Series 3
SERIES(3).Name           = 'Series 3';
SERIES(3).HomeTeam       = 'Flames';
SERIES(3).AwayTeam       = 'Stars';
SERIES(3).HomeWins       = [];
SERIES(3).AwayWins       = [];
SERIES(3).HomePrevSeries = 5;
SERIES(3).AwayPrevSeries = 6;
SERIES(3).isMatchupSet   = true;
SERIES(3).isComplete     = false;  
SERIES(3).Winner         = [];
SERIES(3).XYPos          = [800 3350];

%% Series 4
SERIES(4).Name           = 'Series 4';
SERIES(4).HomeTeam       = 'Oilers';
SERIES(4).AwayTeam       = 'Kings';
SERIES(4).HomeWins       = [];
SERIES(4).AwayWins       = [];
SERIES(4).HomePrevSeries = 7;
SERIES(4).AwayPrevSeries = 8;
SERIES(4).isMatchupSet   = true;
SERIES(4).isComplete     = false;  
SERIES(4).Winner         = [];
SERIES(4).XYPos          = [800 4650];

%% Series 5
SERIES(5).Name           = 'Series 5';
SERIES(5).HomeTeam       = 'Panthers';
SERIES(5).AwayTeam       = 'Capitals';
SERIES(5).HomeWins       = [];
SERIES(5).AwayWins       = [];
SERIES(5).HomePrevSeries = 9;
SERIES(5).AwayPrevSeries = 10;
SERIES(5).isMatchupSet   = true;
SERIES(5).isComplete     = false;  
SERIES(5).Winner         = [];
SERIES(5).XYPos          = [4400 550];

%% Series 6
SERIES(6).Name           = 'Series 6';
SERIES(6).HomeTeam       = 'Maple Leafs';
SERIES(6).AwayTeam       = 'Lightning';
SERIES(6).HomeWins       = [];
SERIES(6).AwayWins       = [];
SERIES(6).HomePrevSeries = 11;
SERIES(6).AwayPrevSeries = 12;
SERIES(6).isMatchupSet   = true;
SERIES(6).isComplete     = false;  
SERIES(6).Winner         = [];
SERIES(6).XYPos          = [4400 1850];

%% Series 7
SERIES(7).Name           = 'Series 7';
SERIES(7).HomeTeam       = 'Hurricanes';
SERIES(7).AwayTeam       = 'Bruins';
SERIES(7).HomeWins       = [];
SERIES(7).AwayWins       = [];
SERIES(7).HomePrevSeries = 13;
SERIES(7).AwayPrevSeries = 14;
SERIES(7).isMatchupSet   = true;
SERIES(7).isComplete     = false;  
SERIES(7).Winner         = [];
SERIES(7).XYPos          = [4400 3350];

%% Series 8
SERIES(8).Name           = 'Series 8';
SERIES(8).HomeTeam       = 'Rangers';
SERIES(8).AwayTeam       = 'Penguins';
SERIES(8).HomeWins       = [];
SERIES(8).AwayWins       = [];
SERIES(8).HomePrevSeries = 15;
SERIES(8).AwayPrevSeries = 16;
SERIES(8).isMatchupSet   = true;
SERIES(8).isComplete     = false;  
SERIES(8).Winner         = [];
SERIES(8).XYPos          = [4400 4650];

%% Series 9
SERIES(9).Name           = 'Series 9';
SERIES(9).HomeTeam       = '';
SERIES(9).AwayTeam       = '';
SERIES(9).HomeWins       = [];
SERIES(9).AwayWins       = [];
SERIES(9).HomePrevSeries = 0;
SERIES(9).AwayPrevSeries = 0;
SERIES(9).isMatchupSet   = false;
SERIES(9).isComplete     = false;  
SERIES(9).Winner         = [];
SERIES(9).XYPos          = [1400 1200];

%% Series 10
SERIES(10).Name           = 'Series 10';
SERIES(10).HomeTeam       = '';
SERIES(10).AwayTeam       = '';
SERIES(10).HomeWins       = [];
SERIES(10).AwayWins       = [];
SERIES(10).HomePrevSeries = 0;
SERIES(10).AwayPrevSeries = 0;
SERIES(10).isMatchupSet   = false;
SERIES(10).isComplete     = false;  
SERIES(10).Winner         = [];
SERIES(10).XYPos          = [1400 4000];

%% Series 11
SERIES(11).Name           = 'Series 11';
SERIES(11).HomeTeam       = '';
SERIES(11).AwayTeam       = '';
SERIES(11).HomeWins       = [];
SERIES(11).AwayWins       = [];
SERIES(11).HomePrevSeries = 0;
SERIES(11).AwayPrevSeries = 0;
SERIES(11).isMatchupSet   = false;
SERIES(11).isComplete     = false;  
SERIES(11).Winner         = [];
SERIES(11).XYPos          = [3800 1200];

%% Series 12
SERIES(12).Name           = 'Series 12';
SERIES(12).HomeTeam       = '';
SERIES(12).AwayTeam       = '';
SERIES(12).HomeWins       = [];
SERIES(12).AwayWins       = [];
SERIES(12).HomePrevSeries = 0;
SERIES(12).AwayPrevSeries = 0;
SERIES(12).isMatchupSet   = false;
SERIES(12).isComplete     = false;  
SERIES(12).Winner         = [];
SERIES(12).XYPos          = [3800 4000];

%% Series 13
SERIES(13).Name           = 'Series 13';
SERIES(13).HomeTeam       = '';
SERIES(13).AwayTeam       = '';
SERIES(13).HomeWins       = [];
SERIES(13).AwayWins       = [];
SERIES(13).HomePrevSeries = 0;
SERIES(13).AwayPrevSeries = 0;
SERIES(13).isMatchupSet   = false;
SERIES(13).isComplete     = false;  
SERIES(13).Winner         = [];
SERIES(13).XYPos          = [2000 2600];

%% Series 14
SERIES(14).Name           = 'Series 14';
SERIES(14).HomeTeam       = '';
SERIES(14).AwayTeam       = '';
SERIES(14).HomeWins       = [];
SERIES(14).AwayWins       = [];
SERIES(14).HomePrevSeries = 0;
SERIES(14).AwayPrevSeries = 0;
SERIES(14).isMatchupSet   = false;
SERIES(14).isComplete     = false;  
SERIES(14).Winner         = [];
SERIES(14).XYPos          = [3200 2600];

%% Series 15
SERIES(15).Name           = 'Series 15';
SERIES(15).HomeTeam       = '';
SERIES(15).AwayTeam       = '';
SERIES(15).HomeWins       = [];
SERIES(15).AwayWins       = [];
SERIES(15).HomePrevSeries = 0;
SERIES(15).AwayPrevSeries = 0;
SERIES(15).isMatchupSet   = false;
SERIES(15).isComplete     = false;  
SERIES(15).Winner         = [];
SERIES(15).XYPos          = [2600 4856];

%%
RoundComplete.ONE     = false;
RoundComplete.TWO     = false;
RoundComplete.THREE   = false;

%% Save Data
save('SERIES.mat','SERIES','RoundComplete')
end