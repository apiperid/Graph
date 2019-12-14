%{
	[nodesLabels,edgeMatrix] = fromTextToEdgeMatrix(nodesLabelsTxt,edgeListCSV)
	
	Returns the edgeMatrix which shows the connections of the nodes
	and the IDs of all nodes of the graph
	
	nodesLabels : a .txt file which contains the IDs of the nodes
	edgeListCSV : the .csv file of the edges


%}
function [nodesLabels,edgeMatrix] = fromTextToEdgeMatrix(nodesLabelsTxt,edgeListCSV)

nodesLabels = uint16(load(nodesLabelsTxt));
edgeMatrix = false(size(nodesLabels,1));
edgeList = csvread(edgeListCSV);


for i = 1:size(edgeList,1)
    for j = 1:size(edgeList,2)
        for k = 1:size(nodesLabels,1)
            if edgeList(i,j) == nodesLabels(k)
                edgeList(i,j) = k;
            end
        end
    end
end

for i = 1:size(edgeList,1)
    edgeMatrix(edgeList(i,1),edgeList(i,2)) = true;
end


end
