function [filtered_ve filtered_ts]=arfilter(testname, ve, timeserial, p)
%function filtered_ve=arfilter(ve, timeserial, p)
%Input:
%ve: Ventination 
%timeserial: time in seconds
%order p for autoregressive model AR(p)
%Output:
%filtered_ve: filtered ve

ve = reshape(ve,1,[]);
if nargin < 3 || isempty(timeserial)
    timeserial = 1:length(ve);
else
    timeserial = reshape(timeserial,1,[]);
end

if nargin < 4 || isempty(p)
    p = 10;
end

ss=ve(1:p);
tt=timeserial(1:p);
uu=[];
vv=[];
t1=[];
for m=p+1:length(ve)-1
    coeffs = aryule(ss, p);
    ve_m_predict = -coeffs(2:end) * ss(end:-1:end-p+1)';
    tt=[tt timeserial(m)];
    if  (ve(m-1) - ve(m) > 0) && (ve(m+1) - ve(m) > 0) && ( ve_m_predict - ve(m) > 5) && (ve(m)  < 0.8 * ve_m_predict)
        ss=[ss ve_m_predict];
        uu=[uu ve(m)];
        vv=[vv timeserial(m)];
    else
        ss=[ss ve(m)];
    end
end
figure;
plot(timeserial, ve, '-', tt, ss, '--r', vv, uu, 'og');
title(testname);
filtered_ve = ss;
filtered_ts = tt;
end


