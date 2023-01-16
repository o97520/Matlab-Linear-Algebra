function tff()
 N = 1e6*(1:10);
 for ii = 1:length(N)
     t(ii) = timeit(@() fastflip(1:N(ii)));
     fprintf('time for %8d = %.4f\n', N(ii), t(ii));
 end
 plot(N,t,N,t,'r*');