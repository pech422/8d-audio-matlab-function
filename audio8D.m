% Program created for the Audio Competition - Aerospace Engineering - UPV
% Alvaro Perez Pecharroman - Last update: 17/04/2023
% It is necessary the use of headphones!!
function [VAc] = audio8D(VA, Fs, w)
    x = linspace(0,length(VA)/Fs*w,length(VA));
    A1=cos(x+pi)+1+0.5*sin(x);
    A2=cos(x)+1+0.5*sin(x);
    s=size(VA);
    VAc=zeros(s(1),2);
    r = Fs*0.000133;
    for n=1:length(VA)    
        VAc(n,1)=max(-1,min(1,A1(n)*VA(max(1,min(length(VA),n-round(cos(x(n)+pi)*r))),1)));
        VAc(n,2)=max(-1,min(1,A2(n)*VA(max(1,min(length(VA),n-round(cos(x(n))*r))),s(2)))); 
    end
end