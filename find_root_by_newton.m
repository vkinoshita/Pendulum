function root = find_root_by_newton(equation, gradient_of_equation, initial_position)
	error = 0.0000000001;
	root = initial_position;
	delta_x = - inv(gradient_of_equation(root)) * equation(root)';
	root = root + delta_x';
	while norm(delta_x) >= error
		delta_x = - inv(gradient_of_equation(root)) * equation(root)';
		root = root + delta_x';
    end
end