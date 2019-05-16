%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	leafVector = countLeaf(edgeMatrix)
	
	Returns the vector of the leaves

    we count how many leaves a graph has
    as leaf we mean a node which's degree is 1.

%}
function leafVector = countLeaf(edgeMatrix)

leafVector = [];
nodeDegree = calculateNodeDegree(edgeMatrix);
for i = 1:size(nodeDegree,1)
    if nodeDegree(i) == 1
        leafVector = [leafVector ; i];
    end
end

if size(leafVector,1) == 0
    disp('This graph has no leaves');
else
    g = graph(edgeMatrix);
    figure;
    fig = plot(g,'layout','force');
    highlight(fig,leafVector,'MarkerSize',2,'NodeColor','r');
    title('Leaves of the Graph');
end

end