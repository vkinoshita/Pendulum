function next_position = method_trapezoidal_rule(current_position, hamiltonian)
	DF = @(x) eye(2) - 0.5 * hamiltonian.step_size * hamiltonian.function_derivatives_gradient(x);
	f = @(x) x - current_position - 0.5 * hamiltonian.step_size * (hamiltonian.function_derivatives(x) + hamiltonian.function_derivatives(current_position));
	next_position = find_root_by_newton(f, DF, current_position);
end