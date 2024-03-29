% Script Eg12_1
% Illustrates MakeColorMap
  
close all
% The endpoint colors...
B = [0 0 0; ... 
     1 0 0; ...
     1 1 0; ...
     0 1 0; ...
     0 1 1; ...
     0 0 1; ...
     1 0 1; ...
     1 0 0; ...
     0 0 0];

 % The in-between color counts...
q = [1 9 7 8 12 8 9 1];

% Generate and display the color map...
C = MakeColorMap(B,q);
ShowColorMap(C)