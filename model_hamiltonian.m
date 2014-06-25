function hamiltonian = model_hamiltonian()
	hamiltonian = struct(
		"function"                      , @(x) 0,
		"function_derivatives"          , @(x) 0,
		"function_derivatives_gradient" , @(x) 0,
		"step_size"                     , 0,
		"p"                             , 0,
		"q"                             , 0,
		"end_time"                      , 0
		);
end