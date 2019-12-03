%{
	Hubs = findHubs(edgeMatrix,multiplicationFactor)
	
	Returns the Hubs of the graph

    we find which nodes have node Degree very higher than the average node
    Degree of the graph. Also we give how many times higher from the
    average we want to search for ( multiplicationFactor ).

    Example 
    if we say that a node is called Hub if it has degree at least 5
    times the average degree then we give multiplicationFactor = 5.

%}
function Hubs = findHubs(edgeMatrix,multiplicationFactor)

Hubs = [];

nodeDegree = calculateNodeDegree(edgeMatrix);
avgDegree = mean(nodeDegree);

for i = 1:size(nodeDegree,1)
    if nodeDegree(i) >=  multiplicationFactor * avgDegree
        Hubs = [Hubs ; i];
    end
end

if size(Hubs,1) == 0
    disp('There are no Hubs in the Graph with such node Degree');
else
    g = graph(edgeMatrix);
    figure;
    fig = plot(g,'layout','force');
    highlight(fig,Hubs,'NodeColor','r','MarkerSize',4);
    title(['Hubs in Graph with node Degree at least : ' num2str(multiplicationFactor*avgDegree)]);
end

end
