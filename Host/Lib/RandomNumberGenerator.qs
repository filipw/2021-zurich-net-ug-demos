﻿namespace Lib {

    open Microsoft.Quantum.Arithmetic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Preparation;
    
    operation RandomNumberGenerator() : Int {
        use qubits = Qubit[16];
        ApplyToEach(H, qubits);

        // create a QPU register
        let register = LittleEndian(qubits);

        // measure the entire register to retrieve the integer
        let randomNumber = MeasureInteger(register);
        
        return randomNumber;
    }  
}