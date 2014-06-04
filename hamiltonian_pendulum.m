function pendulum = hamiltonian_pendulum()
	pendulum = model_hamiltonian();
	
	pendulum.function                       = @(x) 0.5 * x(2) .^ 2 - cos(x(1));
	pendulum.function_derivatives          = @(x) [x(2), - sin(x(1))];
	pendulum.function_derivatives_gradient = @(x) [0,1; -cos(x(2)),0];;
	pendulum.step_size                     = 0.02;
	pendulum.initial_values                = [1, 0]; %p, q
	pendulum.end_time                      = 4000;
end