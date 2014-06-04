function assigment_2_b
    pendulum = hamiltonian_pendulum();
    pendulum.end_time = 2;

	initial_values = face(100);

	%method_explicit_euler
	solution_explicit_euler = apply_method_batch(pendulum, initial_values, @method_explicit_euler);
	plot(solution_explicit_euler(:,1), solution_explicit_euler(:,2), 'r.');
	hold on

	%method_implicit_euler
	solution_implicit_euler = apply_method_batch(pendulum, initial_values, @method_implicit_euler);
	plot(solution_implicit_euler(:,1), solution_implicit_euler(:,2), 'g.');
	hold on

	%method_sympletic_euler
	solution_sympletic_euler = apply_method_batch(pendulum, initial_values, @method_sympletic_euler);
	plot(solution_sympletic_euler(:,1), solution_sympletic_euler(:,2), 'b.');
	hold off

	print('-dpng', 'assigment_2_b.png');

	%method_midpoint_rule
%	solution_midpoint_rule = apply_method_batch(pendulum, initial_values, @method_midpoint_rule);
%	plot(solution_midpoint_rule(:,1), solution_midpoint_rule(:,2), '.');

	%method_trapezoidal_rule
%	solution_trapezoidal_rule = apply_method_batch(pendulum, initial_values, @method_trapezoidal_rule);
%	plot(solution_trapezoidal_rule(:,1), solution_trapezoidal_rule(:,2), '.');

	%method_stormer_verlet
%	solution_stormer_verlet = apply_method_batch(pendulum, initial_values, @method_stormer_verlet);
%	plot(solution_stormer_verlet(:,1), solution_stormer_verlet(:,2), '.');

	%method_runge
%	solution_runge = apply_method_batch(pendulum, initial_values, @method_runge);
%	plot(solution_runge(:,1), solution_runge(:,2), '.');

	%method_bdf2
%	solution_bdf2 = apply_method_batch(pendulum, initial_values, @solution_bdf2);
%	plot(solution_bdf2(:,1), solution_bdf2(:,2), '.');
	
	%plot(initial_values(:,1), initial_values(:,2), '.');
end