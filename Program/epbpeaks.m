function ans = epbpeaks(fn)
testname = strrep(fn, '.txt', '');
epb = load(fn);
ve = epb(:,1)';
tt= epb(:,2)';
[veL ttL]= sliceUp(ve, tt);
[ve2 t2]=arfilter(testname, veL);

rslt=eemd(ve2,0,8);

testname = strrep(fn, '.txt', '');
figure;
subplot(3,2,1); plot(t2, rslt(:,1)); ylabel('amplitude');
subplot(3,2,2); plot(t2, rslt(:,2)); ylabel('amplitude');
subplot(3,2,3); plot(t2, rslt(:,3)); ylabel('amplitude');
subplot(3,2,4); plot(t2, rslt(:,4)); ylabel('amplitude');
subplot(3,2,5); plot(t2, rslt(:,5)); ylabel('amplitude');
subplot(3,2,6); plot(t2, rslt(:,6)); ylabel('amplitude');
axes_handle = get(gcf, 'children');
axes(axes_handle(6)); title('Source');
axes(axes_handle(5)); title('IMF C1');
axes(axes_handle(4)); title('IMF C2');
axes(axes_handle(3)); title('IMF C3');
axes(axes_handle(2)); title('IMF C4');
axes(axes_handle(1)); title('IMF C5');
%suptitle(testname);
suptitle('Empirical mode decomposition of ventilations Ve');
p0 = mspeaks(t2, rslt(:,1)'); 
p1 = mspeaks(t2, rslt(:,2)'); 
p2 = mspeaks(t2, rslt(:,3)'); 
p3 = mspeaks(t2, rslt(:,4)'); 
p4 = mspeaks(t2, rslt(:,5)'); 
p5 = mspeaks(t2, rslt(:,6)'); 

ans=[length(p0), length(p1), length(p2), length(p3), length(p4), length(p5) ];
