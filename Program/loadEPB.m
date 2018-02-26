function [ ve tt ] = loadEPB(epbFile )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

epb = load(epbFile);
ve = epb(:,1)';
tt = epb(:,2)';
end

