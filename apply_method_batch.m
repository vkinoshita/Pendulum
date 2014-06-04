function solution = apply_method_batch(hamiltonian, list_of_initial_values, method)
	if isempty(method)
		m = @(X) apply_method_bdf2(X);
	else
		m = @(X) apply_method(X, method);
	end
    s = size(list_of_initial_values);
    solution = zeros(s(1), 2);
    for i = 1 : s(1)
        hamiltonian.initial_values = [list_of_initial_values(i, 1), list_of_initial_values(i, 2)];
        method_solution = m(hamiltonian);
        solution_size = size(method_solution);
        solution(i, 1) = method_solution(solution_size(1), 2);
        solution(i, 2) = method_solution(solution_size(1), 3);
    end
end