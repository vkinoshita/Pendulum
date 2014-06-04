function next_position = method_runge(current_position, hamiltonian)
    next_position = current_position + hamiltonian.step_size * hamiltonian.function_derivatives(current_position + 0.5 * hamiltonian.step_size * hamiltonian.function_derivatives(current_position));
end