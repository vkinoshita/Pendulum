function next_position = method_stormer_verlet(current_position, hamiltonian)
	DF_half = @(x) eye(2) - 0.5 * hamiltonian.step_size * hamiltonian.function_derivatives_gradient([x(1), current_position(2)]);
	f_half = @(x) x - current_position - 0.5 * hamiltonian.step_size * hamiltonian.function_derivatives([x(1), current_position(2)]);
	r_half = find_root_by_newton(f_half, DF_half, current_position);

	DF = @(x) eye(2) - 0.5 * hamiltonian.step_size * (hamiltonian.function_derivatives_gradient([r_half(1), current_position(2)]) + hamiltonian.function_derivatives_gradient([r_half(1), x(2)]));
	f = @(x) x - current_position - 0.5 * hamiltonian.step_size * (hamiltonian.function_derivatives([r_half(1), current_position(2)]) + hamiltonian.function_derivatives([r_half(1), x(2)]));
	r = find_root_by_newton(f, DF, current_position);

	derivatives = hamiltonian.function_derivatives([r_half(1), r(2)]);
    next_position = [r_half(1) + 0.5 * hamiltonian.step_size * derivatives(1), r(2)];
end