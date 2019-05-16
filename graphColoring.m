%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	nodes = graphColoring(edgeMatrix,nodeDegreeThreshold,nodeBetweennessThreshold,
                          nodeEigenvectorThreshold,nodeClosenessThreshold,MarkerSize,NodeColor)
	
	Returns the nodes which have properties above a threshold given
	simultaneously and also coloring them into our graph

    for all nodes we calculate:

    Degree
    Normalized Betweenness Centrality
    Closeness Centrality

    and of all of them we see which nodes have the above properties above
    a threshold given.
    finally we find the intersection of all of them in order to find
    which nodes have all the properties above their thresholds
    simultaneously.
    if there is at least one node , we color it to our graph.

%}
function nodes = graphColoring(edgeMatrix,nodeDegreeThreshold,nodeBetweennessThreshold,nodeClosenessThreshold,MarkerSize,NodeColor)

nodeDegree = calculateNodeDegree(edgeMatrix);
betweenness = calculateNormalizedBetweenness(edgeMatrix);
closeness = calculateCloseness(edgeMatrix);

nodesAboveDegreeThreshold = uint16([]);
nodesAboveBetweennessThreshold = uint16([]);
nodesAboveEigenvectorThreshold = uint16([]);
nodesAboveClosenessThreshold = uint16([]);

for i = 1:size(edgeMatrix,1)
    if nodeDegree(i) >= nodeDegreeThreshold
        nodesAboveDegreeThreshold = [nodesAboveDegreeThreshold ; i];
    end
    if betweenness(i) >= nodeBetweennessThreshold
        nodesAboveBetweennessThreshold = [nodesAboveBetweennessThreshold ; i];
    end
    if closeness(i) >= nodeClosenessThreshold
        nodesAboveClosenessThreshold = [nodesAboveClosenessThreshold ; i];
    end
end

nodes = intersect(nodesAboveDegreeThreshold,nodesAboveBetweennessThreshold);
nodes = intersect(nodes,nodesAboveClosenessThreshold);

if size(nodes,1) == 0
    disp('There are no nodes having all these properties simultaneously');
else
    g = graph(edgeMatrix);
    figure;
    fig = plot(g,'layout','force');
    highlight(fig,nodes,'MarkerSize',MarkerSize,'NodeColor',NodeColor);
end


end