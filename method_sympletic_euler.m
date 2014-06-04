function next_position = method_sympletic_euler(current_position, hamiltonian)
	DF = @(x) eye(2) - hamiltonian.step_size * hamiltonian.function_derivatives_gradient([x(1), current_position(2)]);
	f = @(x) x - current_position - hamiltonian.step_size * hamiltonian.function_derivatives([x(1), current_position(2)]);
	r = find_root_by_newton(f, DF, current_position);

	derivatives = hamiltonian.function_derivatives([r(1), current_position(2)]);
    next_position = [r(1), current_position(2) + hamiltonian.step_size * derivatives(2)];
end