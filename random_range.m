function r = random_range(mag, n = 1, m = 1)
  % Utility function that creates a random matrix with uniform distribution from -mag/2 to mag/2
  % If the matrix is 1x1 return a number instead
  
  r = (rand(n, m) * mag * 2) - mag;
  if(n == 1 && m == 1)
    r = r = r(1,1);
  endif
end
