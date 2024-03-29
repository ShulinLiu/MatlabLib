%% if-else Test
a = input('Enter a:');
b = input('Enter b:');
c = input('Enter c:');
if(a~=b&&b~=c&&c~=a)
    disp('不是等腰三角形')
else
    if(a==b&&b==c)
        disp('等边三角形')
    else
        disp('等腰三角形')
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%calculate Pi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% for-loop Test
N1 = 0;
n = input('Number: ');
for k = 1:n;
    m = floor(sqrt(n^2-k^2));
   N1 = N1 + m; 
end
rho_n = 4*N1/(n^2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% error compare
n = input('Please enter number: ');
p = 0;
t = 0;
u = 0;
for k=1:n
    p = p + (-1)^(k+1)/(2*k-1);
end
error1 = pi - 4*p;
for k=1:n
    t = t + 1/(k^2);
end
error2 = pi - sqrt(6*t);
for k=1:n
    u = u + 1/k^4;
end
fprintf('erro1 = %1.5f\n',error1);
fprintf('erro2 = %1.5f\n',error2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Pi Via Polygons

% Input the iteration parameters...
clc
delta = input('Enter the error tolerance:');
nMax  = input('Enter the iteration bound:');

% The triangle case...
n = 3;                        % Number of Polygon Edges
A_n = (n/2)*sin(2*pi/n);      % Inscribed Area
B_n = n*tan(pi/n);            % Circumscribed Area
ErrorBound = B_n - A_n;       % The error bound

% Iterate while error too big and n sufficiently small...
while (ErrorBound  > delta  && n < nMax)
    n = n+1;
    A_n = (n/2)*sin(2*pi/n);
    B_n = n*tan(pi/n);
    ErrorBound = B_n - A_n;
end

% Display the final approximation...
nStar = n;
rho_nStar = (A_n + B_n)/2;
clc
fprintf(' delta = %10.3e\n nStar = %1d\n nMax  = %1d\n\n',...
                                               delta,nStar,nMax)
fprintf(' rho_nStar = %20.15f\n Pi        = %20.15f\n',...
            
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Pi Via Tiling

% Enter the disk radius...
clc
n = input('Enter an  integral radius n: ');

% Tile just the first quadrant, then multiply by four...
N1 = 0;
for k = 1:n
    % Add in the number of uncut tiles in row k...
    m = floor(sqrt(n^2 - k^2));
    N1 = N1 + m;
end

% Display the estimate...
rho_n = 4*N1/n^2;
clc
fprintf('n      = %1d\n',n)
fprintf('rho_n  = %12.8f\n',rho_n)
fprintf('Error  = %12.8f\n',abs(pi-rho_n))

%% Pi Via frac
%clear the command window and acquire M
clc
M = input('Enter M: ');
pBest = 1;
qBest = 1;
err_pq = pi - 1;
for q = 1:M
    for p = 1:M
        if(abs(p/q - pi) < err_pq)
            pBest = p;
            qBest = q;
            err_pq = abs(p/q - pi);
        end
    end
end
MyPi = pBest/qBest;
fprintf('M=%1d\npBest=%1d\nqBest=%1d\n',M,pBest,qBest);
fprintf('MyPi=%17.15f\npi=%17.15f\nerror=%17.15f\n',MyPi,pi,err_pq); 

%% Pi Via frac(faster)
%clear the command window and acquire M
clc
M = input('Enter M: ');
pBest = 1;
qBest = 1;
err_pq = pi - 1;
for q = 1:ceil(M/pi)
    for p = floor(pi*q):ceil(pi*q)
        if(abs(p/q - pi) < err_pq)
            pBest = p;
            qBest = q;
            err_pq = abs(p/q - pi);
        end
    end
end
MyPi = pBest/qBest;
fprintf('M=%1d\npBest=%1d\nqBest=%1d\n',M,pBest,qBest);
fprintf('MyPi=%17.15f\npi=%17.15f\nerror=%17.15f\n',MyPi,pi,err_pq); 
