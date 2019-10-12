%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	nodeDegree = calculateNodeDegree(edgeMatrix)
	
	Returns the degree of all nodes in the graph

%}
function nodeDegree = calculateNodeDegree(edgeMatrix)

g = graph(edgeMatrix);
nodeDegree = centrality(g,'degree');

end
