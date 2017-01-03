function net = train(X, Y, depth=3, breadth=2, popsize=100, threshold=1e-5, survival_rate=0.25, mutation_rate=0.5)
  % Train a population of neural networks with genetic optimization
  
  pop = init_population(popsize, size(X, 2), size(Y, 2), depth, breadth);

  costs = zeros(size(pop, 1), 1);
  parfor i = 1:size(pop, 1)
    costs(i) = fitness_function({pop{:, i}}', X, Y);
  end
  totalcosts = [median(costs)];
  while std(totalcosts(max(length(totalcosts)-10, 1):length(totalcosts))) > threshold || length(totalcosts) < 10
    pop = new_generation(pop, @(unit) fitness_function(unit, X, Y), survival_rate=0.25, mutation_rate=0.5);
    parfor i = 1:size(pop, 1)
      costs(i) = fitness_function({pop{:, i}}', X, Y, 0);
    end
    totalcosts = [totalcosts ; median(costs)];
    std(totalcosts(max(length(totalcosts)-10, 1):length(totalcosts)))
    threshold
    std(totalcosts(max(length(totalcosts)-10, 1):length(totalcosts))) > threshold
  end

  disp(strcat("Lowest Cost: ", num2str(fitness_function({pop{:, 1}}', X, Y, 0))));

  net = {pop{:, 1}}';

end
