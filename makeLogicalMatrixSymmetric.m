%{
    BROADBAND NETWORKS 2018
	ISP ROUTER TOPOLOGY
	PIPERIDIS ANESTIS
	AEM : 8689
	SEMESTER : 9
	apiperid@auth.gr
	
	symmetricLogicalMatrix = makeLogicalMatrixSymmetric(Matrix)
	
	Returns a symmetric matrix


%}
function symmetricLogicalMatrix = makeLogicalMatrixSymmetric(Matrix)

if  size(Matrix,1) ~= size(Matrix,2)
    disp('Matrix Must Be Square');
    return
end

symmetricLogicalMatrix = logical((Matrix + Matrix.')/2) ;

end