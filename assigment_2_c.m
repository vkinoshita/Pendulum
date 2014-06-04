function assigment_2_c
	pendulum = hamiltonian_pendulum();
    pendulum.end_time = 2;

	initial_values = face(100);

	solution_explicit_euler = initial_values;
	solution_implicit_euler = initial_values;
	solution_sympletic_euler = initial_values;
	solution_midpoint_rule = initial_values;
	solution_trapezoidal_rule = initial_values;
	solution_stormer_verlet = initial_values;
	solution_runge = initial_values;
	solution_bdf2 = initial_values;

	for	i = 1 : 5
		%method_explicit_euler
		solution_explicit_euler = apply_method_batch(pendulum, solution_explicit_euler, @method_explicit_euler);
		plot(solution_explicit_euler(:,1), solution_explicit_euler(:,2), 'r.');
		hold on

		%method_implicit_euler
		solution_implicit_euler = apply_method_batch(pendulum, solution_implicit_euler, @method_implicit_euler);
		plot(solution_implicit_euler(:,1), solution_implicit_euler(:,2), 'g.');
		hold on

		%method_sympletic_euler
		solution_sympletic_euler = apply_method_batch(pendulum, solution_sympletic_euler, @method_sympletic_euler);
		plot(solution_sympletic_euler(:,1), solution_sympletic_euler(:,2), 'b.');
		hold on

		%method_midpoint_rule
%		solution_midpoint_rule = apply_method_batch(pendulum, solution_midpoint_rule, @method_midpoint_rule);
%		plot(solution_midpoint_rule(:,1), solution_midpoint_rule(:,2), 'k.');
%		hold on

		%method_trapezoidal_rule
%		solution_trapezoidal_rule = apply_method_batch(pendulum, solution_trapezoidal_rule, @method_trapezoidal_rule);
%		plot(solution_trapezoidal_rule(:,1), solution_trapezoidal_rule(:,2), 'm.');
%		hold on

		%method_stormer_verlet
%		solution_stormer_verlet = apply_method_batch(pendulum, solution_stormer_verlet, @method_stormer_verlet);
%		plot(solution_stormer_verlet(:,1), solution_stormer_verlet(:,2), 'c.');
%		hold on

		%method_runge
%		solution_runge = apply_method_batch(pendulum, solution_runge, @method_runge);
%		plot(solution_runge(:,1), solution_runge(:,2), 'y.');
	%	hold on

		%method_bdf2
	%	solution_bdf2 = apply_method_batch(pendulum, solution_bdf2, @solution_bdf2);
	%	plot(solution_bdf2(:,1), solution_bdf2(:,2), '.');
		
		hold off
		file_name = strcat('assigment_2_c_', num2str(i * 2) ,'.png');
		print('-dpng', file_name);

	end
end