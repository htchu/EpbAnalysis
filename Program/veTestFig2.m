function veTestFig( filename , testname)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[ve tt] = loadEPB(filename);
veL = sliceUp(ve);
ve2=arfilter(testname, veL);
testHHTFig2(testname, ve2);
end

