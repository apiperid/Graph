%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	nodesCauseDisconnection = vertexConnecitivity(edgeMatrix)
	
	Returns the nodes as a vector which if we remove our graph
    will split into components.

    for each node we count in how many components our graph will split
    if we remove it.

%}
function nodesCauseDisconnection = vertexConnecitivity(edgeMatrix)

nodesCauseDisconnection = [];

initialGraph = graph(edgeMatrix);

for nodeI = 1:size(edgeMatrix,1)
    tempGraph = rmnode(initialGraph,nodeI);
    componentVector = conncomp(tempGraph);
    if max(componentVector) ~= 1
        nodesCauseDisconnection = [nodesCauseDisconnection nodeI];
    end
end

if size(nodesCauseDisconnection,1) == 0
    disp('There is no node which will cause disconnection to your graph');
else
    g = graph(edgeMatrix);
    figure;
    fig = plot(g,'layout','force');
    highlight(fig,nodesCauseDisconnection,'NodeColor','r','MarkerSize',3);
    title('Nodes which can cause disconnection to the Graph');
end

end
