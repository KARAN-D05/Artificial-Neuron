## 🧬 The McCulloch-Pitts Artificial Neuron
- A simple computational model of a biological neuron
- `Biological neuron:`
   - receives inputs via its tree-like projections called dendrites
   - The cell body then performs computation on these inputs
   - Based on results of the computation, it may send an electrical signal through the axon toward axon-terminals which in turn communicate it to other neurons
   - This forms a biological neural network
- `MCP Neuron:`
   - Warren McCulloch and Walter Pitts proposed a simple logical model of a neuron
   - It sums the inputs say A and B where A,B ∈ {0,1}: M = A + B
   - It has a threshold θ, if:
      - M ≥ θ -> Neuron Fires, Output = 1
      - M < θ -> Neuron Doesn't Fires, Output = 0
   - Based on the value of θ, we can implement any logic gate like AND, OR
   - For AND gate θ = 2, so the neuron will only output 1 if both the inputs are 1. ( 1(A) + 1(B) ≥ 2(θ) ), similarly for OR gate θ = 1

<p align="center">
  <img src="images/Waveform.png" width="1500"
</p>

<p align ="center">
  MCP Neuron Waveform Analysis
</p>  
