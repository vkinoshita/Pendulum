function next_position = method_midpoint_rule(current_position, hamiltonian)
	DF = @(x) eye(2) - 0.5 * hamiltonian.step_size * hamiltonian.function_derivatives_gradient((x + current_position) * 0.5);
	f = @(x) x - current_position - hamiltonian.step_size * hamiltonian.function_derivatives((x + current_position) * 0.5);
	next_position = find_root_by_newton(f, DF, current_position);
end