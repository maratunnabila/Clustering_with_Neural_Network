# Clustering_with_Neural_Network
Fundamentals of Intelligence Course Project of Clustering Points using Neural Network

This is a project using Multi Layer Perceptron to cluster points.

The first tab, the INPUT tab.
It is used to first define the position of the points we will cluster.
There are 3 clusters where each point in each cluster is randomized on a coordinate with a standard deviation value.
After the points are defined, the point file will be saved as a txt file. This is intended so that the position of the point does not change as a result of the 'random' function. 
Next, load the file.
We can see the depiction of these points in the Cartesian plane.
Next, we will define how many nodes will be used in each layer. In this project, layers are initiated by a number of 3, excluding the input and output layers
By clicking RANDOM button, we random the threshold on each nodes and we can see the flow from input to output in the first forward stage.

In the second tab, the LEARNING tab, we set the parameters of activation function (using sigmoid) in terms of miu and alpha.
Epsilon is the error you are expected in the learning process so that the points are clustered appropriately. A learning process will never reach the error of 0, but we can determine it as small as possible as long as it does not touch the absolute 0. Press the start button so the learning start. The smaller the epsilon, the longer it is to learn.
The output layer for this clustering has been set to 3 node. Where result in (1,0,0) mean cluster 1, (0,1,0) cluster 2, and (0,0,1) cluster 3.
Learning complete when the graph, iteration, and MSE stop.
Safe the optimum value.

In the last tab, the UNIVERSAL RESULT tab, input a coordinate of your desire.
Load the optimum value that just been saved.
This cluster stage will only have a single forward pass, because we have set a certain number for each node in each layer.
The Cluster where the point belong will shown in the lower left of the GUI.
Since there are only 3 cluster, with any score in (x,y) coordinate, this program will only cluster to 3.
