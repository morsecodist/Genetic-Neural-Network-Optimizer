function cs = init_population(pop_size, inputs, outputs, depth, breadth)
% Creates an initial population of neural networks

  cs = cell(max(2, depth), pop_size);

  for i = 1:pop_size
    for j = 1:depth
      cs{j, i} = cluster(inputs, outputs, depth, breadth){j, 1};
    end
  end
end
