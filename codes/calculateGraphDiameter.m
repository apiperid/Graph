%{
	[source,target,maxHops] = calculateGraphDiameter(edgeMatrix)
	
	Returns the the largest of the shortests paths in the graph.
    Also return as two vectors between who nodes (source and target)
    we have the largest shortest path (maxHops).

%}
function [source,target,maxHops] = calculateGraphDiameter(edgeMatrix)

source = [];
target = [];
g = graph(edgeMatrix);

shortestPathMatrix = distances(g,'Method','unweighted');
maxHops = max(shortestPathMatrix(:));

for i = 1:size(edgeMatrix,1)
    for j = i:size(edgeMatrix,1)
        if shortestPathMatrix(i,j) == maxHops
            source = [source ; i];
            target = [target ; j];
        end
    end
end

figure;
fig = plot(g,'layout','force');

for i = 1:size(source,1)
    path = shortestpath(g,source(i),target(i));
    highlight(fig,path,'EdgeColor','r');
    highlight(fig,path,'LineWidth',3);
    highlight(fig,path,'NodeColor','r');
    highlight(fig,path,'MarkerSize',6);
end

end
