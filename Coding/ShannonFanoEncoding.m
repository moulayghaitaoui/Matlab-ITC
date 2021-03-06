function ShannonFanoEncoding(p,varargin)
%This function accept a row vectore with probablities of occurence
%of different messages.
%Optional second argument is name or character of the message.
[~,nc] = size(p);
if(nargin==1)
    x = 1:1:nc ;
else 
    x = varargin{1};
end

% include helper functions in helper directory
addpath(genpath('helpers'))

%Following lines will initialize a output vectore.
%This is required for compatblity reason.
o={' ' , ' '};
for n=1:nc
    o{n} = ' ' ;
    p(n) = round(p(n),4,'significant');
end

[p,x] = bubbleSortD(p,x);

o=ShannonFano(p,o,1,nc);

%Output of result
for n=1:nc
    output = [x(n),p(n),o(n)];
    disp(output);
% disp(x);
% disp(o);
end