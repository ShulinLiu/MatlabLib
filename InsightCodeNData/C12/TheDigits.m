function D = TheDigits()
% D is a 10-by-1 cell array.
% D{k} is a 7-by-5 matrix that encodes the digit k. (D{10} encodes 0.)

  D = cell(10,1);
  D{1}  = [0 0 1 0 0;...
           0 1 1 0 0;...
           0 0 1 0 0;...
           0 0 1 0 0;...
           0 0 1 0 0;...
           0 0 1 0 0;...
           0 1 1 1 0];
     
  D{2} =  [0 1 1 1 0;...
           1 0 0 0 1;...
           0 0 0 0 1;...
           0 0 0 1 0;...
           0 0 1 0 0;...
           0 1 0 0 0;...
           1 1 1 1 1];
     
  D{3} =  [0 1 1 1 0;...
           1 0 0 0 1;...
           0 0 0 0 1;...
           0 0 1 1 0;...
           0 0 0 0 1;...
           1 0 0 0 1;...
           0 1 1 1 0];
     
  D{4} =  [1 0 0 0 1;...
           1 0 0 0 1;...
           1 0 0 0 1;...
           1 1 1 1 1;...
           0 0 0 0 1;...
           0 0 0 0 1;...
           0 0 0 0 1];
     
  D{5} =  [1 1 1 1 1;...
           1 0 0 0 0;...
           1 0 0 0 0;...
           1 1 1 1 0;...
           0 0 0 0 1;...
           1 0 0 0 1;...
           0 1 1 1 0];
     
  D{6} =  [0 1 1 1 0;...
           1 0 0 0 0;...
           1 0 0 0 0;...
           1 1 1 1 0;...
           1 0 0 0 1;...
           1 0 0 0 1;...
           0 1 1 1 0];
     
  D{7} =  [1 1 1 1 1;...
           0 0 0 0 1;...
           0 0 0 1 0;...
           0 0 1 0 0;...
           0 0 1 0 0;...
           0 0 1 0 0;...
           0 0 1 0 0];
     
  D{8} =  [0 1 1 1 0;...
           1 0 0 0 1;...
           1 0 0 0 1;...
           0 1 1 1 0;...
           1 0 0 0 1;...
           1 0 0 0 1;...
           0 1 1 1 0];
     
  D{9} =  [0 1 1 1 0;...
           1 0 0 0 1;...
           1 0 0 0 1;...
           0 1 1 1 1;...
           0 0 0 0 1;...
           0 0 0 0 1;...
           0 1 1 1 0];
     
  D{10} = [0 1 1 1 0;...
           1 0 0 0 1;...
           1 0 0 0 1;...
           1 0 0 0 1;...
           1 0 0 0 1;...
           1 0 0 0 1;...
           0 1 1 1 0];