%{
	[edgeMatrix,nodesLabels] = removeNode(edgeMatrix,nodesInput,nodeID)
	
	Returns the updated edge Matrix and the updated node IDs after the 
	removal of a node
	
	nodesInput : the IDs of all nodes before the removal
	nodeID : the ID of the node you want to remove


%}
function [edgeMatrix,nodesLabels] = removeNode(edgeMatrix,nodesInput,nodeID)

nodesLabels = nodesInput;
g = graph(edgeMatrix);

for i = 1:size(nodesInput,1)
   if nodesInput(i) == nodeID
       g = rmnode(g,i);
       nodesLabels(i) = [];
   end
end

edges = table2array(g.Edges);
edgeMatrix = false(size(nodesLabels,1));

for i = 1:size(edges,1)
    edgeMatrix(edges(i,1),edges(i,2)) = true;
end

edgeMatrix = makeLogicalMatrixSymmetric(edgeMatrix);

end
