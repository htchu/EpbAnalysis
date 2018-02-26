function [ve_uphalf ] = sliceUp(ve)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[maxV maxPos] = max(ve);
%minV  = min(ve);
%beginV =  minV*2/3 +maxV/3;
%beginPos = 1;
%for i=1:maxPos
%    if ve(i) >= beginV
%        beginPos = i;
%        break;
%    end
%end
beginPos = maxPos - 200;
if beginPos < 1
    beginPos = 1;
end
ve_uphalf = ve(beginPos:maxPos);
%ve_uphalf = ve(1:maxPos);
end

