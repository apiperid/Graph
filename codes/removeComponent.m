%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	[edgeMatrix,nodesLabels] = removeComponent(edgeMatrix,nodesInput,nodeComponentID,componentID,componentSize)
	
	Returns the updated edge Matrix and the updated node IDs after the 
	removal of a component.
	
	nodesInput : the IDs of all nodes before the removal
	componentID : the ID of the component you want to remove
	componentSize : how many nodes this component has
	nodeComponentID : in which component nodes belong


%}
function [edgeMatrix,nodesLabels] = removeComponent(edgeMatrix,nodesInput,nodeComponentID,componentID,componentSize)

nodesLabels = nodesInput;
nodesToBeDeleted = zeros(1,componentSize);
g = graph(edgeMatrix);
index = 1;

for i = 1:size(nodeComponentID,1)
    if nodeComponentID(i) == componentID
        nodesToBeDeleted(index) = i;
        index = index + 1;
    end
end

g = rmnode(g,nodesToBeDeleted);
nodesLabels(nodesToBeDeleted) = [];

edges = table2array(g.Edges);
edgeMatrix = false(size(nodesLabels,1));

for i = 1:size(edges,1)
    edgeMatrix(edges(i,1),edges(i,2)) = true;
end

edgeMatrix = makeLogicalMatrixSymmetric(edgeMatrix);

end
