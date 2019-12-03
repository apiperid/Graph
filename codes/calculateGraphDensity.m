%{
	graphDensity = calculateGraphDensity(edgeMatrix)
	
	Returns the density of the graph


%}
function graphDensity = calculateGraphDensity(edgeMatrix)

graphDensity = nnz(edgeMatrix) / (size(edgeMatrix,1)*size(edgeMatrix,1)) ;

end
