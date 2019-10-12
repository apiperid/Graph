%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	[isComplete,completeness] = calculateCompleteness(edgeMatrix)
	
	Returns if a graph is completed or not.Also return the
    completeness

    if a graph has n nodes then a fully complete graph has 
    n*(n-1)/2 edges , is it is not completed it has edges lower than 
    n*(n-1)/2.

%}
function [isComplete,completeness] = calculateCompleteness(edgeMatrix)

n = size(edgeMatrix,1);
g = graph(edgeMatrix);
edges = size(g.Edges,1);

if ( edges == n*(n-1)/2 )
    isComplete = "YES";
    completeness = 1;
else
    isComplete = "NO";
    completeness = edges / (n*(n-1)/2);
end

end
