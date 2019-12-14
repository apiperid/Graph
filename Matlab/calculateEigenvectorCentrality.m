%{
	eigenvectorCentrality = calculateEigenvectorCentrality(edgeMatrix)
	
	Returns the eigenvector Centrality for all nodes
	in the graph
	the sum of this vector must be 1


%}
function eigenvectorCentrality = calculateEigenvectorCentrality(edgeMatrix)

g = graph(edgeMatrix);
eigenvectorCentrality = centrality(g,'eigenvector','MaxIterations',100);

end
