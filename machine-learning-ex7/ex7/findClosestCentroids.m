function [idx]=findClosestCentroids(X, initial_centroids)

    X_size=size(X,1);
    K_size=size(initial_centroids,1);
    for i=1:X_size
        xi=X(i,:);
        len=100000000000;
        for j=1:K_size
            ki=initial_centroids(j,:);
            if sum((xi-ki).^2)<len
                len=sum((xi-ki).^2);
                idx(i)=j;
            end
        end
            
    end
end