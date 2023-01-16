function index = binarysearach(v,e,f,l)
if nargin < 3
    f =1 ;
    l = length(v);
end

mid= fix((f + l)/2);
if ~(f <= l)
    index = 0;
    elseif (e == v(mid))
    index = mid;
    elseif (e < v(mid))
        index = binarysearach(v,e,f,mid-1);
else
        index = binarysearach(v,e,mid+1,l);
end
end
