function c = cluster(inputs, outputs, depth, breadth)
% Creates a neural network with the given inputs outputs and depth
% Hidden layers are sized based on breadth the size of the input layer

  c = cell(max(2, depth), 1);

  int1 = inputs * breadth;
  if(depth <= 2)
    c{1} = random_range(100, outputs, inputs + 1);
  else
    c{1} = random_range(100, int1, inputs + 1);
  endif
  int2 = outputs;
  for i = 2:(depth - 1)
    int2 = inputs * breadth;
    c{i} = random_range(100, int2, int1 + 1);
  end
  c{max(2, depth)} = random_range(100, outputs, int2 + 1);

end
