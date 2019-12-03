%{
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
