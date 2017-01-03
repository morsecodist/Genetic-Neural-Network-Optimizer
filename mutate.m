function c = mutate(c)
  % Mutates a neural network, making random changes

  s = 0;
  for i = 1:size(c,1)
    s = s + numel(c{i});
  end
  site = floor(s*rand());
  for i = 1:size(c,1)
    for j = 1:size(c{i}, 1)
      for k = 1:size(c{i}, 2)
        if(site != 0)
          site -= 1;
        else
          c{i}(j, k) = random_range(100);
          site -= 1;
        endif
      end
    end
  end
end
