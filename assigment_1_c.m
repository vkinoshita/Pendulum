function assigment_1_c
    pendulum = hamiltonian_pendulum();
    pendulum.end_time = 40;

	%method_explicit_euler
    solution_explicit_euler = apply_method(pendulum, @method_explicit_euler);
    energy_solution_explicit_euler = compute_energy(solution_explicit_euler, pendulum);

    subplot(3,3,1);
	plot(energy_solution_explicit_euler(:,1), energy_solution_explicit_euler(:,2));
    title('explicit euler');

	%method_implicit_euler
	solution_implicit_euler = apply_method(pendulum, @method_implicit_euler);
    energy_solution_implicit_euler = compute_energy(solution_implicit_euler, pendulum);

	subplot(3,3,2);
    plot(solution_implicit_euler(:,1), solution_implicit_euler(:,2));	
	title('implicit euler');

	%method_sympletic_euler
    solution_sympletic_euler = apply_method(pendulum, @method_sympletic_euler);
    energy_solution_sympletic_euler = compute_energy(solution_sympletic_euler, pendulum);

    subplot(3,3,3);
    plot(energy_solution_sympletic_euler(:,1), energy_solution_sympletic_euler(:,2));
    title('sympletic euler');

	%method_midpoint_rule
    solution_midpoint_rule = apply_method(pendulum, @method_midpoint_rule);
    energy_solution_midpoint_rule = compute_energy(solution_midpoint_rule, pendulum);

    subplot(3,3,4);
    plot(energy_solution_midpoint_rule(:,1), energy_solution_midpoint_rule(:,2));
    title('midpoint rule');

	%method_trapezoidal_rule
    solution_trapezoidal_rule = apply_method(pendulum, @method_trapezoidal_rule);
    energy_solution_trapezoidal_rule = compute_energy(solution_trapezoidal_rule, pendulum);

    subplot(3,3,5);
    plot(energy_solution_trapezoidal_rule(:,1), energy_solution_trapezoidal_rule(:,2));
    title('trapezoidal rule');

    %method_stormer_verlet
    solution_stormer_verlet = apply_method(pendulum, @method_stormer_verlet);
    energy_solution_stormer_verlet = compute_energy(solution_stormer_verlet, pendulum);

    subplot(3,3,6);
    plot(energy_solution_stormer_verlet(:,1), energy_solution_stormer_verlet(:,2));
    title('stormer verlet');

    %method_runge
    solution_runge = apply_method(pendulum, @method_runge);
    energy_solution_runge = compute_energy(solution_runge, pendulum);

    subplot(3,3,7);
    plot(energy_solution_runge(:,1), energy_solution_runge(:,2));
    title('runge');

    %method_bdf2
    solution_bdf2 = apply_method_bdf2(pendulum);
    energy_solution_bdf2 = compute_energy(solution_bdf2, pendulum);

    subplot(3,3,8);
    plot(energy_solution_bdf2(:,1), energy_solution_bdf2(:,2));
    title('bdf2');
end