%{
	[isRegular,regularDegree] = regular(edgeMatrix)
	
	Returns if a graph is regular or not.
    Also if it is regular it returns the k-regular degree 
    and if it is not regular the k-regular degree is -1.

%}
function [isRegular,regularDegree] = regular(edgeMatrix)

nodeDegree = calculateNodeDegree(edgeMatrix);
maxDegree = max(nodeDegree);
nodeDegree = nodeDegree - maxDegree;

if nnz(nodeDegree) == 0
    isRegular = "YES";
    regularDegree = maxDegree;
else
    isRegular = "NO";
    regularDegree = -1;
end

end
