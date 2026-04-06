% MCP Neuron Simulation - AND and OR gates
% Inputs: x1, x2 in {0,1}
% Output: 1 if (x1 + x2) >= threshold, else 0

inputs = [0 0; 0 1; 1 0; 1 1];  % All input combinations

fprintf('=== AND Gate (threshold = 2) ===\n');
fprintf('x1  x2  Sum  Output\n');
threshold_AND = 2;
for i = 1:4
    x1 = inputs(i,1);
    x2 = inputs(i,2);
    s  = x1 + x2;
    out = s >= threshold_AND;
    fprintf('%d   %d   %d    %d\n', x1, x2, s, out);
end

fprintf('\n=== OR Gate (threshold = 1) ===\n');
fprintf('x1  x2  Sum  Output\n');
threshold_OR = 1;
for i = 1:4
    x1 = inputs(i,1);
    x2 = inputs(i,2);
    s  = x1 + x2;
    out = s >= threshold_OR;
    fprintf('%d   %d   %d    %d\n', x1, x2, s, out);
end
