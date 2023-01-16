function A = rootingE(v,w)
rv = nthroot(v,1:length(v));
rw = nthroot(w,1:length(w));
A = rv' * rw;
end
