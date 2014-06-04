function solution = apply_method(hamiltonian, method)
    total_iterations = hamiltonian.end_time / hamiltonian.step_size;
    solution = zeros(total_iterations + 1, 3);
    solution(1,1) = 0;
    solution(1,2) = hamiltonian.initial_values(1);
    solution(1,3) = hamiltonian.initial_values(2);
    for i = 2 : total_iterations + 1
        result = method([solution(i - 1, 2), solution(i - 1, 3)], hamiltonian);
        solution(i, 1) = solution(i - 1, 1) + hamiltonian.step_size;
        solution(i, 2) = result(1);
        solution(i, 3) = result(2);
    end
end