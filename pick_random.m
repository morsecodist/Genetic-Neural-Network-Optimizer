function r = pick_random(one, two)
  % A utility function to pick from 2 random variables
  
  if (rand() >= 0.5)
    r = one;
  else
    r = two;
  endif
end
