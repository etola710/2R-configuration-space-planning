load cspace.mat

start_coords = [16, 11];
end_coords = [166, 46];

route =  DijkstraTorus (cspace, start_coords, end_coords);
[i,j] = ind2sub (size(cspace), route);

theta1_range = 0:2:360;
theta2_range = 0:2:360;

y = theta2_range(i);
x = theta1_range(j);

% Plot point in configuration space
figure(1);
subplot(1,2,2);
hold on;
h = plot (x(1), y(1), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'red');
hold off;

n = length(x);

for i = 1:n
    fv = TwoLinkRobot ([x(i), y(i)]);
    p.Vertices = fv.vertices;
    
    h.XData = x(i);
    h.YData = y(i);
    
    drawnow;
end
