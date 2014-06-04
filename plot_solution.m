function plot_solution(solution, title, position_in_plot)
    subplot(position_in_plot(1), position_in_plot(2), position_in_plot(3));
    plot(solution(1,:), solution(2,:));
    title(title);
end