function veTest( filename )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
testname = strrep(filename, '.txt', '');
%testname = strrep(testname, '_', '-');
[ve tt] = loadEPB(filename);
veL = sliceUp(ve);
ve2=arfilter(testname, veL);
testHHT(testname, ve2);
end

