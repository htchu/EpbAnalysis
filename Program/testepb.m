function rslt = testepb(data)
rslt=eemd(data,0,8);
subplot(3,2,1); plot(rslt(:,1));
subplot(3,2,2); plot(rslt(:,2));
subplot(3,2,3); plot(rslt(:,3));
subplot(3,2,4); plot(rslt(:,4));
subplot(3,2,5); plot(rslt(:,5));
subplot(3,2,6); plot(rslt(:,6));
