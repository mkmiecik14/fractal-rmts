% MATLab script to develop fractal patterns based on Miyashita et al. 1991
clear;

% Paramaters
superposition = 3;  % Controls how many fractals will be superimposed
recursion = [1 4];  % Bigger range will make more complicated images
depth = randi(recursion, 1, 1); % Selects random amount of recursion
gaMin = -3;         % Amplifies intermediate coordinates
gaMax = 3;          % Amplifies intermediate coordinates
cmap = gray(20);    % Define the colormap
cmapRange = [2 (size(cmap, 1))];    % Gives range for the colormap

% Bank of polygons are stored in MATLab structure
% Rows = polygons 
% Column 1 = text string as to which polygon the row refers to
% Column 2 = x coordinates 
% Column 3 = y coordinates
polygons = {'square',   [-2 2 2 -2],    [2 2 -2 -2];    ... 
            'trianlge', [0 2 -2],       [2 -2 -2];      ...
            'vertline', [0 0],          [2 -2];         ...
            'horzline', [2 -2],         [0 0];          ...
            'diamond',  [0 2 0 -2],     [2 0 -2 0];     ...
            'house1',   [-2 -2 2 2 0],  [0 2 2 0 -2];   ...
            'house2',   [-2 0 2 2 -2],  [0 2 0 -2 -2]};

numImages = input('How many images do you want?... ');
numVersion = input('What version is this?... ');

for l = 1:numImages
    
    for k = 1:superposition
        
        randPoly = randi([1 size(polygons,1)], [1, 1]); % Picks polygon
        
        polyX = polygons{randPoly, 2}; % X coordinates for randPoly
        polyY = polygons{randPoly, 3}; % Y coordinates for randPoly
        
        for i = 1:depth
            
            polyX = [polyX; zeros(size(polyX))]; % Puts zeros in between
            polyX = polyX(1:end-1);              % Gets rid of last zero
            
            polyY = [polyY; zeros(size(polyY))]; % Puts zeros in between
            polyY = polyY(1:end-1);              % Gets rid of last zero
            
            sizePoly = size(polyX, 2) - 2;
            
            %GA = gaMin + rand(1,1)*(gaMax-gaMin); It may be useful to have
            %                                      this line up here.
            
            % Deflect edges
            for j = 1:2:sizePoly
                
                GA = gaMin + rand(1,1)*(gaMax-gaMin);
                
                mx = (polyX(j) + polyX(j + 2))/2;
                my = (polyY(j) + polyY(j + 2))/2;
                dx = polyX(j + 2) - polyX(j);
                dy = polyY(j + 2) - polyY(j);
                theta = atan(dy/dx);
                polyX(j + 1) = mx + GA * sin(theta);
                polyY(j + 1) = my - GA * cos(theta);
                
            end
            
        end
        
        randomRow = randi(cmapRange, [1, 1]); % Pick 1 color row @ random
        randomColor = cmap(randomRow, :);  % Extract the row from color map
        
        fractal = fill(polyX, polyY, randomColor);  % Draws superposition
        set(gcf, 'color', 'black');                 % Black background
        fractal.EdgeColor = randomColor;            % Sets edges to color
        set(gcf, 'GraphicsSmoothing', 'on');
        axis off;                                   % Turns off axis
        set(gcf, 'InvertHardcopy', 'off');          % Black background
        
        hold on % Holds drawn image for next superposition
        
    end
    
    hold off
    % Saves image
    print('-dpng',strcat('fractal',num2str(l), '_', num2str(numVersion))); 
    figure('visible', 'off');   % Suppresses graphical output
    
end
