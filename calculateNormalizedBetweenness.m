%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	betweenness = calculateNormalizedBetweenness(edgeMatrix)
	
	Returns the Normalized Betweenness Centrality for all nodes
	of the graph


%}
function betweenness = calculateNormalizedBetweenness(edgeMatrix)

n = size(edgeMatrix,1);
g = graph(edgeMatrix);
betweenness = centrality(g,'betweenness');
betweenness = (2*betweenness)/((n-2)*(n-1));

end