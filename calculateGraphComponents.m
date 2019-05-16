%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	[components,nodeComponentID] = calculateGraphComponents(edgeMatrix)
	
	Returns how many components exist in the graph ( components )
	and in which component nodes belong ( nodeComponentID )


%}
function [components,nodeComponentID] = calculateGraphComponents(edgeMatrix)

g = graph(edgeMatrix);
nodeComponentID = conncomp(g) - 1;
nodeComponentID = nodeComponentID.';
components = max(nodeComponentID) + 1;

end