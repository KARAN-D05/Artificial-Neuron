def sum(inp):
    total = 0
    for val in inp:
        total = total + val
    return total

def mcp_neuron(inputs, threshold):
    total = sum(inputs)
    if total >= threshold:
        return 1
    else:
        return 0

input_combinations = [
    [0, 0],
    [0, 1],
    [1, 0],
    [1, 1]
]

print("OR Emulation -> Threshold = 1")
print("AND Emulation -> Threshold = 2")

threshold = int(input("Enter threshold: "))

print("----------------")
print("Inputs -> Output")
for inputs in input_combinations:
    output = mcp_neuron(inputs, threshold)
    print(f"{inputs}-> {output}")
print("----------------")