function sierpinski(depth)
s = 1; c= [0;0];
clf ; axis([c(1)-s/2,c(1)+s/2,c(2)-s/2,c(2)+s/2],'equal');
title(sprintf('sierpinski triangle with depth = %d',depth))
hold on;
plot(1/2*[-1,0,1,-1],sqrt(3)/4*[-1,1,-1,-1],'r--');
sier(depth,s,c);
hold off
end
function sier(d,s,c)
if d==0 
    plot(c(1)-[s,0,-s,s]/2,c(2)-[s,-s,s,s]*sqrt(3)/4,'k');
else
    s= s/2;
    h = s*sqrt(3)/2;
    sier(d-1,s,c-[s;h]/2);
    sier(d-1,s,c+[0;h]/2);
    sier(d-1,s,c+[s;-h]/2);
end
end
