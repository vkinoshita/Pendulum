function assigment_1_b
    pendulum = hamiltonian_pendulum();
    pendulum.end_time = 4000;

	%method_explicit_euler
    solution_explicit_euler = apply_method(pendulum, @method_explicit_euler);

    subplot(3,3,1);
	plot(solution_explicit_euler(:,1), solution_explicit_euler(:,2));
    title('explicit euler');
    hold on

	%method_implicit_euler
	solution_implicit_euler = apply_method(pendulum, @method_implicit_euler);

	subplot(3,3,2);
    plot(solution_implicit_euler(:,1), solution_implicit_euler(:,2));	
	title('implicit euler');
    hold on

	%method_sympletic_euler
    solution_sympletic_euler = apply_method(pendulum, @method_sympletic_euler);

    subplot(3,3,3);
    plot(solution_sympletic_euler(:,1), solution_sympletic_euler(:,2));
    title('sympletic euler');
    hold on

	%method_midpoint_rule
    solution_midpoint_rule = apply_method(pendulum, @method_midpoint_rule);

    subplot(3,3,4);
    plot(solution_midpoint_rule(:,1), solution_midpoint_rule(:,2));
    title('midpoint rule');
    hold on

	%method_trapezoidal_rule
    solution_trapezoidal_rule = apply_method(pendulum, @method_trapezoidal_rule);

    subplot(3,3,5);
    plot(solution_trapezoidal_rule(:,1), solution_trapezoidal_rule(:,2));
    title('trapezoidal rule');
    hold on

    %method_stormer_verlet
    solution_stormer_verlet = apply_method(pendulum, @method_stormer_verlet);
    
    subplot(3,3,6);
    plot(solution_stormer_verlet(:,1), solution_stormer_verlet(:,2));
    title('stormer verlet');
    hold on

    %method_runge
    solution_runge = apply_method(pendulum, @method_runge);
    
    subplot(3,3,7);
    plot(solution_runge(:,1), solution_runge(:,2));
    title('runge');
    hold on

    %method_bdf2
    solution_bdf2 = apply_method_bdf2(pendulum);
    
    subplot(3,3,8);
    plot(solution_bdf2(:,1), solution_bdf2(:,2));
    title('bdf2');
    hold off

    print('-dpng', 'assigment_1_b.png');

end

