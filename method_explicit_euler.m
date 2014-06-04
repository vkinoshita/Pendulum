function next_position = method_explicit_euler(current_position, hamiltonian)
    next_position = current_position + hamiltonian.step_size * hamiltonian.function_derivatives(current_position);
end