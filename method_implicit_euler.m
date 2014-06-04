function next_position = method_implicit_euler(current_position, hamiltonian)
	DF = @(x) eye(2) - hamiltonian.step_size * hamiltonian.function_derivatives_gradient(x);
	f = @(x) x - current_position - hamiltonian.step_size * hamiltonian.function_derivatives(x);
	next_position = find_root_by_newton(f, DF, current_position);
end