function solution = apply_method_bdf2(hamiltonian)
    total_iterations = hamiltonian.end_time / hamiltonian.step_size;
    solution = zeros(total_iterations + 1, 3);
    last_solution = hamiltonian.initial_values;
    solution(1,1) = 0;
    solution(1,2) = hamiltonian.initial_values(1);
    solution(1,3) = hamiltonian.initial_values(2);

    %method_implicit_euler to get the second value
    current_solution = method_implicit_euler([solution(1, 2), solution(1, 3)], hamiltonian);
    solution(2, 1) = solution(1, 1) + hamiltonian.step_size;
    solution(2, 2) = current_solution(1);
    solution(2, 3) = current_solution(2);

    %method_bdf2
    for i = 3 : total_iterations + 1
    	DF = @(x) eye(2) - (2/3) * hamiltonian.step_size * hamiltonian.function_derivatives_gradient(x);
		f = @(x) x - (4/3) * current_solution + (1/3) * last_solution - (2/3) * hamiltonian.step_size * hamiltonian.function_derivatives(x);
        result = find_root_by_newton(f, DF, current_solution);
		last_solution = current_solution;
		current_solution = result;
        solution(i, 1) = solution(i - 1, 1) + hamiltonian.step_size;
        solution(i, 2) = current_solution(1);
        solution(i, 3) = current_solution(2);
    end
end