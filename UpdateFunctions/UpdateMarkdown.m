%% Update Markdown
% clear all; close all; clc;
%%
load('SERIES.mat')
load('ScoringResults.mat')
[SCORES] = Scores();
filename = 'index.md';
fileID = fopen(filename,'w');

%% Top Section

fprintf(fileID,'# Office NHL Bracket Challenge\n');
fprintf(fileID,'![StanleyCup](Results/StanleyCup.png)\n');
fprintf(fileID,'\n');
fprintf(fileID,'Thank you everyone who submitted a bracket. I enjoyed making this page and I hope you enjoy it as well.\n');
fprintf(fileID,'\n');
fprintf(fileID,'## Stanley Cup Results\n');
fprintf(fileID,'### Bracket\n');
fprintf(fileID,'![MasterBracket](Results/UpdatedBrackets/MasterBracket.png)\n');
fprintf(fileID,'\n');
fprintf(fileID,'\n');

%% NHL Game Scores Section
%%%%%%%%% Stanley Cup
fprintf(fileID,'### Stanley Cup Finals  \n');
fprintf(fileID,'\n');

% Loop through the first round series
for i = 15
    % Find the home and away colors
    for j = 1:16
        if strcmp(SERIES(i).HomeTeam , TEAMS(j).Name)
            homeColor = TEAMS(j).Color;
            homeTextColor = TEAMS(j).TextColor;
        end
        if strcmp(SERIES(i).AwayTeam , TEAMS(j).Name)
            awayColor = TEAMS(j).Color;
            awayTextColor = TEAMS(j).TextColor;
        end        
    end
    % Make Table
    fprintf(fileID,'<table>\n');
    fprintf(fileID,'  <tr>\n');
    fprintf(fileID,'    <th> </th>\n');
    fprintf(fileID,'    <th>Game 1</th>\n');
    fprintf(fileID,'    <th>Game 2</th>\n');
    fprintf(fileID,'    <th>Game 3</th>\n');
    fprintf(fileID,'    <th>Game 4</th>\n');
    fprintf(fileID,'    <th>Game 5</th>\n');
    fprintf(fileID,'    <th>Game 6</th>\n');
    fprintf(fileID,'    <th>Game 7</th>\n');
    fprintf(fileID,'    <th>Total Wins</th>\n');
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'  <tr>\n');
    if strcmp(SERIES(i).HomeTeam , SERIES(i).Winner)
        fprintf(fileID,['    <td style="background-color: ' homeColor ';color: ' homeTextColor '">' SERIES(i).HomeTeam '</td>\n']);
    else
        fprintf(fileID,['    <td>' SERIES(i).HomeTeam '</td>\n']);
    end
    for j = 1:7
        if isnan(SCORES(1,j,i))
            fprintf(fileID,'    <td> </td>\n');
        else
            if SCORES(1,j,i) > SCORES(2,j,i)
                fprintf(fileID,['    <td style="background-color: ' homeColor ';color: ' homeTextColor '">' num2str(SCORES(1,j,i)) '</td>\n']);
            else
                fprintf(fileID,['    <td>' num2str(SCORES(1,j,i)) '</td>\n']);
            end
        end
    end
    fprintf(fileID,['    <td>' num2str(SERIES(i).HomeWins) '</td>\n']);
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'  <tr>\n');
    if strcmp(SERIES(i).AwayTeam , SERIES(i).Winner)
        fprintf(fileID,['    <td style="background-color: ' awayColor ';color: ' awayTextColor '">' SERIES(i).AwayTeam '</td>\n']);
    else
        fprintf(fileID,['    <td>' SERIES(i).AwayTeam '</td>\n']);
    end
    for j = 1:7
        if isnan(SCORES(2,j,i))
            fprintf(fileID,'    <td> </td>\n');
        else
            if SCORES(2,j,i) > SCORES(1,j,i)
                fprintf(fileID,['    <td style="background-color: ' awayColor ';color: ' awayTextColor '">' num2str(SCORES(2,j,i)) '</td>\n']);
            else
                fprintf(fileID,['    <td>' num2str(SCORES(2,j,i)) '</td>\n']);
            end
        end
    end
    fprintf(fileID,['    <td>' num2str(SERIES(i).AwayWins) '</td>\n']);
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'</table>\n');
    fprintf(fileID,'\n');
    fprintf(fileID,'\n');
end

%%%%%%%%% Loop through the first round series
fprintf(fileID,'### Round 1  \n');
fprintf(fileID,'\n');

for i = 1:8
    % Find the home and away colors
    for j = 1:16
        if strcmp(SERIES(i).HomeTeam , TEAMS(j).Name)
            homeColor = TEAMS(j).Color;
            homeTextColor = TEAMS(j).TextColor;
        end
        if strcmp(SERIES(i).AwayTeam , TEAMS(j).Name)
            awayColor = TEAMS(j).Color;
            awayTextColor = TEAMS(j).TextColor;
        end        
    end
    % Make Table
    fprintf(fileID,'<table>\n');
    fprintf(fileID,'  <tr>\n');
    fprintf(fileID,'    <th> </th>\n');
    fprintf(fileID,'    <th>Game 1</th>\n');
    fprintf(fileID,'    <th>Game 2</th>\n');
    fprintf(fileID,'    <th>Game 3</th>\n');
    fprintf(fileID,'    <th>Game 4</th>\n');
    fprintf(fileID,'    <th>Game 5</th>\n');
    fprintf(fileID,'    <th>Game 6</th>\n');
    fprintf(fileID,'    <th>Game 7</th>\n');
    fprintf(fileID,'    <th>Total Wins</th>\n');
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'  <tr>\n');
    if strcmp(SERIES(i).HomeTeam , SERIES(i).Winner)
        fprintf(fileID,['    <td style="background-color: ' homeColor ';color: ' homeTextColor '">' SERIES(i).HomeTeam '</td>\n']);
    else
        fprintf(fileID,['    <td>' SERIES(i).HomeTeam '</td>\n']);
    end
    for j = 1:7
        if isnan(SCORES(1,j,i))
            fprintf(fileID,'    <td> </td>\n');
        else
            if SCORES(1,j,i) > SCORES(2,j,i)
                fprintf(fileID,['    <td style="background-color: ' homeColor ';color: ' homeTextColor '">' num2str(SCORES(1,j,i)) '</td>\n']);
            else
                fprintf(fileID,['    <td>' num2str(SCORES(1,j,i)) '</td>\n']);
            end
        end
    end
    fprintf(fileID,['    <td>' num2str(SERIES(i).HomeWins) '</td>\n']);
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'  <tr>\n');
    if strcmp(SERIES(i).AwayTeam , SERIES(i).Winner)
        fprintf(fileID,['    <td style="background-color: ' awayColor ';color: ' awayTextColor '">' SERIES(i).AwayTeam '</td>\n']);
    else
        fprintf(fileID,['    <td>' SERIES(i).AwayTeam '</td>\n']);
    end
    for j = 1:7
        if isnan(SCORES(2,j,i))
            fprintf(fileID,'    <td> </td>\n');
        else
            if SCORES(2,j,i) > SCORES(1,j,i)
                fprintf(fileID,['    <td style="background-color: ' awayColor ';color: ' awayTextColor '">' num2str(SCORES(2,j,i)) '</td>\n']);
            else
                fprintf(fileID,['    <td>' num2str(SCORES(2,j,i)) '</td>\n']);
            end
        end
    end
    fprintf(fileID,['    <td>' num2str(SERIES(i).AwayWins) '</td>\n']);
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'</table>\n');
    fprintf(fileID,'\n');
    fprintf(fileID,'\n');
end

%%%%%%%%% Round 2
fprintf(fileID,'### Round 2  \n');
fprintf(fileID,'\n');

% Loop through the first round series
for i = 9:12
    % Find the home and away colors
    for j = 1:16
        if strcmp(SERIES(i).HomeTeam , TEAMS(j).Name)
            homeColor = TEAMS(j).Color;
            homeTextColor = TEAMS(j).TextColor;
        end
        if strcmp(SERIES(i).AwayTeam , TEAMS(j).Name)
            awayColor = TEAMS(j).Color;
            awayTextColor = TEAMS(j).TextColor;
        end        
    end
    % Make Table
    fprintf(fileID,'<table>\n');
    fprintf(fileID,'  <tr>\n');
    fprintf(fileID,'    <th> </th>\n');
    fprintf(fileID,'    <th>Game 1</th>\n');
    fprintf(fileID,'    <th>Game 2</th>\n');
    fprintf(fileID,'    <th>Game 3</th>\n');
    fprintf(fileID,'    <th>Game 4</th>\n');
    fprintf(fileID,'    <th>Game 5</th>\n');
    fprintf(fileID,'    <th>Game 6</th>\n');
    fprintf(fileID,'    <th>Game 7</th>\n');
    fprintf(fileID,'    <th>Total Wins</th>\n');
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'  <tr>\n');
    if strcmp(SERIES(i).HomeTeam , SERIES(i).Winner)
        fprintf(fileID,['    <td style="background-color: ' homeColor ';color: ' homeTextColor '">' SERIES(i).HomeTeam '</td>\n']);
    else
        fprintf(fileID,['    <td>' SERIES(i).HomeTeam '</td>\n']);
    end
    for j = 1:7
        if isnan(SCORES(1,j,i))
            fprintf(fileID,'    <td> </td>\n');
        else
            if SCORES(1,j,i) > SCORES(2,j,i)
                fprintf(fileID,['    <td style="background-color: ' homeColor ';color: ' homeTextColor '">' num2str(SCORES(1,j,i)) '</td>\n']);
            else
                fprintf(fileID,['    <td>' num2str(SCORES(1,j,i)) '</td>\n']);
            end
        end
    end
    fprintf(fileID,['    <td>' num2str(SERIES(i).HomeWins) '</td>\n']);
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'  <tr>\n');
    if strcmp(SERIES(i).AwayTeam , SERIES(i).Winner)
        fprintf(fileID,['    <td style="background-color: ' awayColor ';color: ' awayTextColor '">' SERIES(i).AwayTeam '</td>\n']);
    else
        fprintf(fileID,['    <td>' SERIES(i).AwayTeam '</td>\n']);
    end
    for j = 1:7
        if isnan(SCORES(2,j,i))
            fprintf(fileID,'    <td> </td>\n');
        else
            if SCORES(2,j,i) > SCORES(1,j,i)
                fprintf(fileID,['    <td style="background-color: ' awayColor ';color: ' awayTextColor '">' num2str(SCORES(2,j,i)) '</td>\n']);
            else
                fprintf(fileID,['    <td>' num2str(SCORES(2,j,i)) '</td>\n']);
            end
        end
    end
    fprintf(fileID,['    <td>' num2str(SERIES(i).AwayWins) '</td>\n']);
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'</table>\n');
    fprintf(fileID,'\n');
    fprintf(fileID,'\n');
end

%%%%%%%%% Conference Finals
fprintf(fileID,'### Conference Finals  \n');
fprintf(fileID,'\n');

% Loop through the first round series
for i = 13:14
    % Find the home and away colors
    for j = 1:16
        if strcmp(SERIES(i).HomeTeam , TEAMS(j).Name)
            homeColor = TEAMS(j).Color;
            homeTextColor = TEAMS(j).TextColor;
        end
        if strcmp(SERIES(i).AwayTeam , TEAMS(j).Name)
            awayColor = TEAMS(j).Color;
            awayTextColor = TEAMS(j).TextColor;
        end        
    end
    % Make Table
    fprintf(fileID,'<table>\n');
    fprintf(fileID,'  <tr>\n');
    fprintf(fileID,'    <th> </th>\n');
    fprintf(fileID,'    <th>Game 1</th>\n');
    fprintf(fileID,'    <th>Game 2</th>\n');
    fprintf(fileID,'    <th>Game 3</th>\n');
    fprintf(fileID,'    <th>Game 4</th>\n');
    fprintf(fileID,'    <th>Game 5</th>\n');
    fprintf(fileID,'    <th>Game 6</th>\n');
    fprintf(fileID,'    <th>Game 7</th>\n');
    fprintf(fileID,'    <th>Total Wins</th>\n');
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'  <tr>\n');
    if strcmp(SERIES(i).HomeTeam , SERIES(i).Winner)
        fprintf(fileID,['    <td style="background-color: ' homeColor ';color: ' homeTextColor '">' SERIES(i).HomeTeam '</td>\n']);
    else
        fprintf(fileID,['    <td>' SERIES(i).HomeTeam '</td>\n']);
    end
    for j = 1:7
        if isnan(SCORES(1,j,i))
            fprintf(fileID,'    <td> </td>\n');
        else
            if SCORES(1,j,i) > SCORES(2,j,i)
                fprintf(fileID,['    <td style="background-color: ' homeColor ';color: ' homeTextColor '">' num2str(SCORES(1,j,i)) '</td>\n']);
            else
                fprintf(fileID,['    <td>' num2str(SCORES(1,j,i)) '</td>\n']);
            end
        end
    end
    fprintf(fileID,['    <td>' num2str(SERIES(i).HomeWins) '</td>\n']);
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'  <tr>\n');
    if strcmp(SERIES(i).AwayTeam , SERIES(i).Winner)
        fprintf(fileID,['    <td style="background-color: ' awayColor ';color: ' awayTextColor '">' SERIES(i).AwayTeam '</td>\n']);
    else
        fprintf(fileID,['    <td>' SERIES(i).AwayTeam '</td>\n']);
    end
    for j = 1:7
        if isnan(SCORES(2,j,i))
            fprintf(fileID,'    <td> </td>\n');
        else
            if SCORES(2,j,i) > SCORES(1,j,i)
                fprintf(fileID,['    <td style="background-color: ' awayColor ';color: ' awayTextColor '">' num2str(SCORES(2,j,i)) '</td>\n']);
            else
                fprintf(fileID,['    <td>' num2str(SCORES(2,j,i)) '</td>\n']);
            end
        end
    end
    fprintf(fileID,['    <td>' num2str(SERIES(i).AwayWins) '</td>\n']);
    fprintf(fileID,'  </tr>\n');
    fprintf(fileID,'</table>\n');
    fprintf(fileID,'\n');
    fprintf(fileID,'\n');
end

%% Office Brackets Points
fprintf(fileID,'## Bracket Standings\n');
fprintf(fileID,'How the scoring works\n');
fprintf(fileID,'* 10 : Correct Round 1 Winners\n');
fprintf(fileID,'* 25 : Correct Round 2 Winners\n');
fprintf(fileID,'* 50 : Correct Conference Finals Champions\n');
fprintf(fileID,'* 100: Correct Stanley Cup Champion\n');
fprintf(fileID,'\n');
fprintf(fileID,'TPP: Total Points Possible\n');
fprintf(fileID,'### Sorted by Name\n');

    fprintf(fileID,'<table>\n');
    fprintf(fileID,'  <tr>\n');
    fprintf(fileID,'    <th>Name</th>\n');
    fprintf(fileID,'    <th>Points</th>\n');
    fprintf(fileID,'    <th>TPP</th>\n');
    fprintf(fileID,'  </tr>\n');
    for i = 1:length(Points_Names)
        fprintf(fileID,'  <tr>\n');
        j = 1;
        fprintf(fileID,['    <td>' Points_Names{i,j} '</td>\n']);
        for j = 2:3
            fprintf(fileID,['    <td>' num2str(Points_Names{i,j}) '</td>\n']);
        end
        fprintf(fileID,'  </tr>\n');
    end
    fprintf(fileID,'</table>\n');
    fprintf(fileID,'\n');
    
fprintf(fileID,'\n');
fprintf(fileID,'### Sorted by Points\n');

    fprintf(fileID,'<table>\n');
    fprintf(fileID,'  <tr>\n');
    fprintf(fileID,'    <th>Name</th>\n');
    fprintf(fileID,'    <th>Points</th>\n');
    fprintf(fileID,'    <th>TPP</th>\n');
    fprintf(fileID,'  </tr>\n');
    for i = 1:length(Points_Names)
        fprintf(fileID,'  <tr>\n');
        j = 1;
        fprintf(fileID,['    <td>' Points_PointsAquired{i,j} '</td>\n']);
        for j = 2:3
            fprintf(fileID,['    <td>' num2str(Points_PointsAquired{i,j}) '</td>\n']);
        end
        fprintf(fileID,'  </tr>\n');
    end
    fprintf(fileID,'</table>\n');
    fprintf(fileID,'\n');
    
fprintf(fileID,'\n');
    

fprintf(fileID,'### Sorted by Total Possible Points\n');
fprintf(fileID,'\n');

    fprintf(fileID,'<table>\n');
    fprintf(fileID,'  <tr>\n');
    fprintf(fileID,'    <th>Name</th>\n');
    fprintf(fileID,'    <th>Points</th>\n');
    fprintf(fileID,'    <th>TPP</th>\n');
    fprintf(fileID,'  </tr>\n');
    for i = 1:length(Points_Names)
        fprintf(fileID,'  <tr>\n');
        j = 1;
        fprintf(fileID,['    <td>' Points_PointsTPP{i,j} '</td>\n']);
        for j = 2:3
            fprintf(fileID,['    <td>' num2str(Points_PointsTPP{i,j}) '</td>\n']);
        end
        fprintf(fileID,'  </tr>\n');
    end
    fprintf(fileID,'</table>\n');
    fprintf(fileID,'\n');
    
fprintf(fileID,'\n');
    
%% Office Brackets Graphics
fprintf(fileID,'## Individual Brackets\n');
for i = 1:length(Points)
    fprintf(fileID,['### ' Points{i,1} '\n']);
    fprintf(fileID,['![Bracket_' Points{i,1} '](Results/UpdatedBrackets/Bracket_' Points{i,1} '.png)\n']);
    fprintf(fileID,'\n');
end

%% Close File
fclose(fileID);