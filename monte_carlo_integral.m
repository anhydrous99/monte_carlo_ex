fun = @(x) exp(x.^2);

% Number of guesses
n = 1000;

% Range of integral in x axes
xlow = 0;
xhigh = 1;
% Range in y axes
ylow = 0;
yhigh = fun(xhigh);

% Count of guesses under curve
j = 0;

for i = 1:n
  x = xlow + (xhigh - xlow) * rand();
  gy = ylow + (yhigh - ylow) * rand();
  fx = fun(x);
  
  if (gy < fx)
    j = j + 1;
  endif
endfor

frac = j / n;
area = (xhigh - xlow) * (yhigh - ylow);
value = frac * area