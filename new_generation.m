function p = new_generation(pop, fit, survival_rate=0.25, mutation_rate=0.5)
% Creates a new generation given an old population and fitness function
% Fitness function takes a given member of the population and returns a fitness

  pop_size = size(pop, 2);

  costs = zeros(pop_size, 1);

  for i = 1:pop_size
    costs(i) = fit({pop{:, i}}');
  end

  average_cost = median(costs)

  costs = costs <= prctile(costs, survival_rate * 100);

  p = cell(size(pop));

  survivors = 0;

  for i = 1:pop_size
    if(costs(i))
      survivors += 1;
      if(rand() >= mutation_rate)
        p(:, survivors) = {pop{:, i}}';
      else
        p(:, survivors) = mutate({pop{:, i}}');
      end
    endif
  end

  survivors

  for i = (survivors + 1):pop_size
    p(:, i) = breed({p{:, floor((rand()*survivors)) + 1}}', {p{:, floor((rand()*survivors)) + 1}}');
  end

end
