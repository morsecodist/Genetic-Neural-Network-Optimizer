# Genetic Neural Network Optimizer

# About

This trains neural networks gentically. A population of random networks is created, each one is scored, the best scoring networks are kept bred to form the next generation. Random mutations also occur between generations. All of the layers of the neural networks use the sigmoid activation function. This genetic approach is less efficient than using a gradient optimization technique with Backpropigation. This was made as a fun small project to explore neural networks.

# Demos

## Learn XOR

This is a very basic function to learn and it is a proof of concept for the approach. To run the XOR training:

`octave XOR.m`

## Replicate a deeper random network

In this demo, a random neural network is created with depth 4. A random input matrix is propagated to create an output matrix. Then, a neural network with depth 3 is trained on this input and output to replicate the deeper network. To run this demo:

`octave ReplicationTest.m`

This demo also prints out the difference between actual and predicted for the first 4 rows.

# Usage

To train your own neural network:

```
X = % some input matrix
Y = % some output matrix

depth = % depth, default 3
popsize = % population size, default 100
breadth = % ratio of the hidden layer widths to the input layer width, default 2
threshold = % some threshold, when the standard deviation of the last 10 costs is below this value convergence is reached, default 1e-5
survival_rate = % percentile of networks that survive each generation, default 0.25
mutation_rate = % chance a network will have a point mutation

net = train(X, Y, depth=depth, breadth=breadth, popsize=popsize, threshold=threshold, survival_rate=survival_rate, mutation_rate=survival_rate);

```
