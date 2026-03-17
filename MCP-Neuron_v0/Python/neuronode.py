# MCP Neuron Simulator
# Mimics a McCulloch-Pitts neuron: sums binary inputs and fires if threshold is met

# Manual summation of input list
def sum(inp):
    total = 0
    for val in inp:
        total = total + val  # Accumulate each input value
    return total

# Neuron logic: returns 1 (fire) if total input meets or exceeds threshold
def mcp_neuron(inputs, threshold):
    total = sum(inputs)
    if total >= threshold:
        return 1  # Threshold met, neuron fires
    else:
        return 0  # Below threshold, neuron stays silent

# All possible combinations of two binary inputs
input_combinations = [
    [0, 0],
    [0, 1],
    [1, 0],
    [1, 1]
]

print("OR Emulation -> Threshold = 1")
print("AND Emulation -> Threshold = 2")

threshold = int(input("Enter threshold: "))  # User selects firing threshold

print("----------------")
print("Inputs -> Output")

# Test neuron against every input combination
for inputs in input_combinations:
    output = mcp_neuron(inputs, threshold)
    print(f"{inputs}-> {output}")

print("----------------")
