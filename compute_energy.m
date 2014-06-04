function energy = compute_energy(solution, hamiltonian)
    solution_size = size(solution);
    energy = zeros(solution_size(1), 2);
    initial_energy = hamiltonian.function([solution(1,2), solution(1,3)]);
    for i =  2 : solution_size(1)
        energy(i, 1) = solution(i, 1);
        energy(i, 2) = hamiltonian.function([solution(i,2), solution(i, 3)]) - initial_energy;
    end
end