%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	randomEdgeMatrix = createRandomGraph(nodes,wiringPropability)
	
	Returns a random graph.

    we choose how many nodes we want in our graph.
    we choose also the wiring propability in range of [0,1]
    the wiring propability is the propability of connecting to edges i and
    j

%}
function randomEdgeMatrix = createRandomGraph(nodes,wiringPropability)

if wiringPropability < 0 || wiringPropability > 1
    disp('Wiring Propability must be in [0,1]');
    return;
end

randomEdgeMatrix = false(nodes);

for i = 1:nodes
    for j = 1:nodes
        if rand <= wiringPropability
            randomEdgeMatrix(i,j) = 1;
        end 
    end
end

randomEdgeMatrix = omitSelfLoops(randomEdgeMatrix);
randomEdgeMatrix = makeLogicalMatrixSymmetric(randomEdgeMatrix);

g = graph(randomEdgeMatrix);
figure;
fig = plot(g,'layout','force');
highlight(fig,1:nodes,'NodeColor','r');
title(['Random Graph With ' num2str(nodes) ' Nodes and Wiring Propability = ' num2str(wiringPropability)]);

end