%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	graphDensity = calculateGraphDensity(edgeMatrix)
	
	Returns the density of the graph


%}
function graphDensity = calculateGraphDensity(edgeMatrix)

graphDensity = nnz(edgeMatrix) / (size(edgeMatrix,1)*size(edgeMatrix,1)) ;

end
