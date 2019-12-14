%{
	closeness = calculateCloseness(edgeMatrix)
	
	Returns the Closeness Centrality for all nodes
	in the graph


%}

function closeness = calculateCloseness(edgeMatrix)

n = size(edgeMatrix,1);
g = graph(edgeMatrix);
closeness = centrality(g,'closeness');
closeness = (n-1)*closeness;

end
