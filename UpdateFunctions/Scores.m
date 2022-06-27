%% Scores
function [SCORES] = Scores()  

%% Series 1 Avs/Preds
SCORES(:,:,1) = ...
   [7 2 7 5 NaN NaN NaN   % Avs
    2 1 3 3 NaN NaN NaN]; % Preds

%% Series 2 Wild/Blues
SCORES(:,:,2) = ...
   [0 6 5 2 2 1 NaN   % Wild
    4 2 1 5 5 5 NaN]; % Blues

%% Series 3 Flames/Stars
SCORES(:,:,3) = ...
   [1 0 2 4 3 2 3   % Flames
    0 2 4 1 1 4 2]; % Stars

%% Series 4 Oilers/Kings
SCORES(:,:,4) = ...
   [3 6 8 0 4 4 2   % Oilers
    4 0 2 4 5 2 0]; % Kings

%% Series 5 Panthers/Caps
SCORES(:,:,5) = ...
   [2 5 1 3 5 4 NaN   % Panthers
    4 1 6 2 3 3 NaN]; % Caps

%% Series 6 Leafs/Lightning
SCORES(:,:,6) = ...
   [5 3 5 3 4 3 1   % Leafs
    0 5 2 7 3 4 2]; % Lightning

%% Series 7 Canes/Bruins
SCORES(:,:,7) = ...
   [5 5 2 2 5 2 3   % Canes
    1 2 4 5 1 5 2]; % Bruins

%% Series 8 Rangers/Penguins
SCORES(:,:,8) = ...
   [3 5 4 2 5 5 4   % Rangers
    4 2 7 7 3 3 3]; % Penguins

%% Series 9 Avs/Blues
SCORES(:,:,9) = ...
   [3 1 5 6 4 3 NaN   % Avs
    2 4 2 3 5 2 NaN]; % Blues

%% Series 10 Flames/Oilers
SCORES(:,:,10) = ...
   [9 3 1 3 4 NaN NaN   % Flames
    6 5 4 5 5 NaN NaN]; % Oilers

%% Series 11 Panthers/Lightning
SCORES(:,:,11) = ...
   [1 1 1 0 NaN NaN NaN   % Panthers
    4 2 5 2 NaN NaN NaN]; % Lightning

%% Series 12 Hurricanes/Rangers
SCORES(:,:,12) = ...
   [2 2 1 1 3 2 2   % Hurricanes
    1 0 3 4 1 5 6]; % Rangers

%% Series 13 /
SCORES(:,:,13) = ...
   [8 4 4 6 NaN NaN NaN   % Avs
    6 0 2 5 NaN NaN NaN]; % Oilers

%% Series 14 /
SCORES(:,:,14) = ...
   [6 3 2 1 1 1 NaN   % Rangers
    2 2 3 4 3 2 NaN]; % Lightning

%% Series 15 /
SCORES(:,:,15) = ...
   [4 7 2 3 2 2 NaN   % Avs
    3 0 6 2 3 1 NaN]; % Lightning

end