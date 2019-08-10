# dyson_schwinger_algorithm_for_-QED
Computation of QEDs square matrix element by implementing the Dyson-Schwinger Recursive Algorithm

The algorithm is a base for computing the cross section in a multi-process event generator HELAC-PHEGAS [arXiv:0710.2427]
specifically developed in details in [arXiv:hep-ph/0002082]. 

This rendition is for the simple case for QED processes compare to the real one for QCD and electroweak processes. 
It is restricted to Leading Order (LO).

The inputs for the program is the numerical values of the 4-momentum incoming and outgoing particles and the identity of the 
incoming and ongoing particles.

In this repository, there are 6 QED processes considered indicated by the name of the .nb files. Each program calculate the number
of possible Feynmann diagrams for QED processes, amplitude scattering and the total squared matrix element.

There is a folder contains the general program for different processes. The main interface is Dyson_Schwinger.nb. By changing the inputs, the result for 6 different processes in each .nb files can be recovered. 

N.B : The computational time increases with the increasing of number of particles involved in the processes.
