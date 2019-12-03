%{
	edgeMatrix = omitSelfLoops(edgeMatrix)
	
	Returns the same edgeMatrix - input but it omits the 
    1 values in the diagonal.


%}
function edgeMatrix = omitSelfLoops(edgeMatrix)

if  size(edgeMatrix,1) ~= size(edgeMatrix,2)
    disp('Matrix Must Be Square');
    return
end

for i = 1:size(edgeMatrix,1)
    edgeMatrix(i,i) = 0; 
end

end
