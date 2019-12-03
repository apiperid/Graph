%{
	connectivityStatus = checkConnectivity(edgeMatrix)
	
	Returns the connectivity status of a graph

    returns "Connected" if the graph contains only one 
    component
    return "Disconnected" otherwise

%}
function connectivityStatus = checkConnectivity(edgeMatrix)

[components] = calculateGraphComponents(edgeMatrix);

if components == 1
    connectivityStatus = "Connected";
else
    connectivityStatus = "Disconnected";
end

end
