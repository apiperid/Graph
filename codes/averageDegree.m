%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	avgDegree = averageDegree(edgeMatrix)
	
	Returns the average degree of the graph.

    first we calculate the degree of all nodes
    and then we take the mean value.

%}
function avgDegree = averageDegree(edgeMatrix)

nodeDegree = calculateNodeDegree(edgeMatrix);
avgDegree = mean(nodeDegree);

end
