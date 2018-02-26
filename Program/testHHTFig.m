function rslt = testHHTFig(tname, data)
figure; 
rslt=eemd(data,0,8);
plot(rslt(:,2)); axis([0 150 -10 10]);ylabel('amplitude');
title(tname);
