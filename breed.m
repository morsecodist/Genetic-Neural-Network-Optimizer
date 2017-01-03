function c = breed(one, two)
% Randomly crosses two neural networks with the same morphology

  c = cell(size(one));
  for i = 1:size(one, 1)
    c{i} = zeros(size(one{i}));
    for j = 1:size(one{i},1)
      for k = 1:size(one{i},2)
        c{i}(j, k) = pick_random(one{i}(j, k), two{i}(j, k));
      end
    end
  end
end
