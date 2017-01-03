% Test the optimization algorithm by replicating a deeper random neural network with a trained network with one fewer layer

% Random inputs
X = rand(100, 3);

% Random network
original = cluster(3, 2, 4, 2);

% Use the random network to get output
Y = predict(X, original);

% Train a shallower network on the inputs and outputs
net = train(X, Y, depth=3, breadth=2, popsize=100, threshold=1e-5, survival_rate=0.2, mutation_rate=0.5);

% Display a few of the differences
Y(1:4,:) - predict(X, net)(1:4,:)
