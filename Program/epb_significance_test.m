function rslt = epb_significance_test(fn)
testname = strrep(fn, '.txt', '');
epb = load(fn);
ve = epb(:,1)';
tt= epb(:,2)';
[veL ttL]= sliceUp(ve, tt);
[ve2 t2]=arfilter(testname, veL);
rslt=eemd(ve2,0,8);

imfs=rslt(:,2:8);
[sigline95,logep]=significance(imfs,0.05);
[sigline99,logep]=significance(imfs,0.01);
plot(sigline95(:,1),sigline95(:,2));  %  95 percenta line
hold on
plot(sigline99(:,1),sigline99(:,2),'m-');  % 99 percenta line
plot(logep(:,1),logep(:,2),'r*');  
plot(logep(1,1),logep(1,2),'k*');
grid;
xlabel('LOG2 ( Mean Period )');
ylabel('LOG2 ( Mean Normalized Energy )');
title('Significance test of IMFs of MEE-Ve');
