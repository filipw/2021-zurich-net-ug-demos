using System;
using System.Linq;
using System.Threading.Tasks;
using Lib;
using Microsoft.Quantum.Simulation.Simulators;

namespace CSharpHost
{
    class Program
    {
        static async Task Main(string[] args)
        {
            using var qsim = new QuantumSimulator();
            var randomUInt16 = await RandomNumberGenerator.Run(qsim);
            Console.WriteLine($"Quantum generated random uint16: {randomUInt16}");
        }
    }
}