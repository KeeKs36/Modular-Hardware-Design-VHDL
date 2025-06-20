# Modular Hardware Design in VHDL

A scalable digital hardware system integrating computational units (CUs), 4x1 multiplexers, and 8x1 multiplexers—designed and verified using VHDL. This project demonstrates modular design principles, flexible data routing, and comprehensive simulation-based verification.


## Design Overview

- **Top-Level Module:** Integrates multiple computational units and multiplexers for flexible data routing and processing.
- **Computational Unit (CU):** Supports 21 operations, including arithmetic, logical, shift, and comparison functions.
- **4x1 and 8x1 Multiplexers:** Used for dynamic data selection and routing between CUs.
- **Modularity:** All components are instantiated and interconnected structurally, enabling scalability and maintainability.

## Results

- **Simulation:** Testbenches for the top-level module, CUs, and multiplexers confirm correct operation for all test cases.
- **Verification:** Outputs from simulation match expected values, demonstrating robust functionality and data integrity.


## Usage

1. **Clone the repository:**
2. **Simulate the design:**
- Open the VHDL files in your preferred simulator (e.g., ModelSim, Vivado).
- Run the testbench(s) to verify functionality.


## License

This project is available under the [MIT License](LICENSE).

---

**For questions or contributions, please open an issue or submit a pull request.**
