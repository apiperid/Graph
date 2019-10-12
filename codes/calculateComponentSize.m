%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	componentSize = calculateComponentSize(components,nodeComponentID)
	
	Returns how many nodes each component of the graph has
	
	components : How many components the graph has
	nodeComponentID : In which component each nodeID belongs


%}
function componentSize = calculateComponentSize(components,nodeComponentID)

componentSize = zeros(components,1);

for i = 1:size(nodeComponentID,1)
    componentSize(nodeComponentID(i)+1) = componentSize(nodeComponentID(i)+1) + 1;
end

end
