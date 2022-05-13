%% Update the Master Bracket
% clear all;
% close all;
% clc;
%% FLAGS
FLAGS.SaveResults = 1;
FLAGS.UseTestData = 1;

%% Load Teams, Series, and Scores Data
load('TEAMS.mat');
load('SERIES.mat');
if FLAGS.UseTestData
    [SCORES] = ScoresTest();
else
    [SCORES] = Scores();
end

%% Update SERIES
[SERIES , TEAMS] = UpdateSeries(SERIES , TEAMS , SCORES , RoundComplete , teamNames);

%% Check if a round is complete
num_complete = 0;
if ~RoundComplete.THREE
    if ~RoundComplete.TWO
        if ~RoundComplete.ONE
            for i = 1:8
                num_complete = num_complete + SERIES(i).isComplete;
            end
            if num_complete == 8
                RoundComplete.ONE = true;
            end
        else
            for i = 9:12
                num_complete = num_complete + SERIES(i).isComplete;
            end
            if num_complete == 4
                RoundComplete.TWO = true;
            end
        end
    else
        for i = 13:14
            num_complete = num_complete + SERIES(i).isComplete;
        end
        if num_complete == 2
            RoundComplete.THREE = true;
        end
    end
end
%% Save Results
if FLAGS.SaveResults
    save('SERIES.mat','SERIES','RoundComplete')
    save('TEAMS.mat' ,'TEAMS' ,'teamNames')
end

%% 
% ---------------- Helper Functions ---------------- 

%% Update Series
function [SERIES , TEAMS] = UpdateSeries(SERIES , TEAMS , SCORES , RoundComplete , teamNames)
    % See how many series to loop through
    if RoundComplete.ONE
        if RoundComplete.TWO
            if RoundComplete.THREE
                start_idx = 15;
            else
                start_idx = 13;
            end
        else
            start_idx = 9;
        end
    else
        start_idx = 1;
    end
    
    % Setting SERIES dependance
    SeriesDep = ...
        [NaN NaN % 1
         NaN NaN % 2
         NaN NaN % 3
         NaN NaN % 4
         NaN NaN % 5
         NaN NaN % 6
         NaN NaN % 7
         NaN NaN % 8
           1   2 % 9
           3   4 % 10
           5   6 % 11
           7   8 % 12
           9  10 % 13
          11  12 % 14
          13  14 % 15
         ];

    % Loop through series
    for idx = start_idx:15
        % Check if matchup is set
        if SERIES(idx).isMatchupSet
            % Check if series is complete
            if SERIES(idx).isComplete
                % Do nothing and move on
            else 
                % Check scores for winner, update series scores
                SERIES(idx).HomeWins = sum(SCORES(1,:,idx) > SCORES(2,:,idx));
                SERIES(idx).AwayWins = sum(SCORES(2,:,idx) > SCORES(1,:,idx));
                if (SERIES(idx).HomeWins == 4) || (SERIES(idx).AwayWins == 4)
                    SERIES(idx).isComplete = true;
                    if SERIES(idx).HomeWins == 4 % Home team Wins                        
                        SERIES(idx).Winner = SERIES(idx).HomeTeam;
                        % Eliminate Away
                        TEAMS(find(strcmp(SERIES(idx).AwayTeam, teamNames))).isEliminated  = true;
                    elseif SERIES(idx).AwayWins == 4 % Away team wins                        
                        SERIES(idx).Winner = SERIES(idx).AwayTeam;
                        % Eliminate Home
                        TEAMS(find(strcmp(SERIES(idx).HomeTeam, teamNames))).isEliminated  = true;
                    end
                else
                    % Do nothing , move on, need more games
                end
            end
        else
            % Are dep finsihed
            if SERIES(SeriesDep(idx,1)).isComplete && SERIES(SeriesDep(idx,2)).isComplete
                % Update Home and away for the series
                % if it is the second round, divison ranking is used
                % if it is the 3rd or 4th, the the regular season rank is used
                idx_Upper = find(strcmp(SERIES(SeriesDep(idx,1)).Winner , teamNames));
                idx_Lower = find(strcmp(SERIES(SeriesDep(idx,2)).Winner , teamNames));
                if idx < 13 %2nd Round (9-12)
                    % find which winner of dep has better ranking                    
                    if TEAMS(idx_Upper).DivisionRank < TEAMS(idx_Lower).DivisionRank
                        SERIES(idx).HomeTeam = TEAMS(idx_Upper).Name;
                        SERIES(idx).AwayTeam = TEAMS(idx_Lower).Name;
                    else
                        SERIES(idx).HomeTeam = TEAMS(idx_Lower).Name;
                        SERIES(idx).AwayTeam = TEAMS(idx_Upper).Name;
                    end
                else % 3rd or 4th round (13-14) , (15)
                    if TEAMS(idx_Upper).RegSeasonRank < TEAMS(idx_Lower).RegSeasonRank
                        SERIES(idx).HomeTeam = TEAMS(idx_Upper).Name;
                        SERIES(idx).AwayTeam = TEAMS(idx_Lower).Name;
                    else
                        SERIES(idx).HomeTeam = TEAMS(idx_Lower).Name;
                        SERIES(idx).AwayTeam = TEAMS(idx_Upper).Name;
                    end
                end
                % Update which series the home/away team came from
                if find(strcmp(SERIES(SeriesDep(idx,1)).Winner , SERIES(idx).HomeTeam))
                    SERIES(idx).HomePrevSeries = SeriesDep(idx,1);
                    SERIES(idx).AwayPrevSeries = SeriesDep(idx,2);
                else
                    SERIES(idx).HomePrevSeries = SeriesDep(idx,2);
                    SERIES(idx).AwayPrevSeries = SeriesDep(idx,1);
                end
                % Update matchup logic
                SERIES(idx).isMatchupSet = 1;
            else
                %Nothing to do. move on, gotta wait for the other series to finish
            end
        end
    end

end