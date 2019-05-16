%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	avgPathLength = averagePathLength(edgeMatrix)
	
	Returns the average path length of the graph

    we calculate the distances of all shortest paths 
    between all nodes i,j and we take the mean value 
    of them.

%}
function avgPathLength = averagePathLength(edgeMatrix)

g = graph(edgeMatrix);
shortestPathMatrix = distances(g,'Method','unweighted');
sum = 0.0;

for i = 1:size(edgeMatrix,1)
    for j = i:size(edgeMatrix,1)
        sum = sum + shortestPathMatrix(i,j);
    end
end

elements = 0;
for i = 1:size(edgeMatrix,1)
    elements = elements + ( size(edgeMatrix,1) - i);
end

avgPathLength = sum / elements ;

end