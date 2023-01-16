function f = rfact(n)
if ~isscalar(n) || n ~= fix(n) || n < 0
    error('non negative')
end

if n == 0
    f =1;
else
    f= n*rfact(n-1);
end
end
