%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	avgClusteringCoefficient = averageClusteringCoefficient(edgeMatrix)
	
	Returns the average Clustering Coefficient of all the Graph G

    First we calculate for each node its local clustering coefficient
    and finally the mean value of all nodes.

%}
function avgClusteringCoefficient = averageClusteringCoefficient(edgeMatrix)

nodeDegree = calculateNodeDegree(edgeMatrix);
localClusteringCoefficient = zeros(size(nodeDegree,1),1);

for i = 1:size(localClusteringCoefficient,1)
    if nodeDegree(i) <= 1
        localClusteringCoefficient(i) = 0;
    else
        nodesIDsConnectedWith = [];
        for j = 1:size(localClusteringCoefficient,1)
            if edgeMatrix(i,j) == 1
                nodesIDsConnectedWith = [nodesIDsConnectedWith ; j];
            end
        end

        existingEdges = 0;
        for nodeI = 1:size(nodesIDsConnectedWith,1)
            for nodeJ = 1:size(nodesIDsConnectedWith,1)
                if edgeMatrix(nodesIDsConnectedWith(nodeI),nodesIDsConnectedWith(nodeJ)) == 1
                    existingEdges = existingEdges + 1;
                end
            end
        end
        existingEdges = existingEdges/2;
        
        localClusteringCoefficient(i) = (2*existingEdges) / (nodeDegree(i)*(nodeDegree(i)-1));
        
    end
end

if nnz(localClusteringCoefficient) == 0
    avgClusteringCoefficient = 0;
else
    avgClusteringCoefficient = mean(localClusteringCoefficient);
end

end