%{
	nodeDegree = calculateNodeDegree(edgeMatrix)
	
	Returns the degree of all nodes in the graph

%}
function nodeDegree = calculateNodeDegree(edgeMatrix)

g = graph(edgeMatrix);
nodeDegree = centrality(g,'degree');

end
