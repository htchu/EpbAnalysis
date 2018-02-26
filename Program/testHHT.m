function rslt = testHHT(tname, data)
figure; 
rslt=eemd(data,0,8);
subplot(3,2,1); plot(rslt(:,1)); axis([0 150 0 60]);ylabel('amplitude');
subplot(3,2,2); plot(rslt(:,2)); axis([0 150 -10 10]);ylabel('amplitude');
subplot(3,2,3); plot(rslt(:,3));axis([0 150 -10 10]);ylabel('amplitude');
subplot(3,2,4); plot(rslt(:,4));axis([0 150 -10 10]);ylabel('amplitude');
subplot(3,2,5); plot(rslt(:,5));axis([0 150 -10 10]);ylabel('amplitude');
subplot(3,2,6); plot(rslt(:,6));axis([0 150 -10 10]);ylabel('amplitude');
axes_handle = get(gcf, 'children');
axes(axes_handle(6)); title('Source');
axes(axes_handle(5)); title('IMF C1');
axes(axes_handle(4)); title('IMF C2');
axes(axes_handle(3)); title('IMF C3');
axes(axes_handle(2)); title('IMF C4');
axes(axes_handle(1)); title('IMF C5');
c1=abs(rslt(:,2));
Vmean1=mean(c1);
Vmax1=max(c1);
c2=abs(rslt(:,3));
Vmean2=mean(c2);
Vmax2=max(c2);
sprintf('%7.3f %7.3f %7.3f %7.3f', Vmean1, Vmax1, Vmean2, Vmax2)
suptitle(tname);
