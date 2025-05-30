% for PD 
m_1 = 10;
m_2 = 5;
l_1 = 0.2;
l_2 = 0.1;
g = 9.81;

kp = 900;
kd = 80;
ki = 0; 

Kp = [kp,kp];
Kd = [kd,kd];
Ki = [ki,ki]; 

q_initial = [0.1; 0.1; 0; 0];
q_desired = [0; 0];

tspan = [0 10]; 
e_int_prev = [0; 0];

options = odeset('RelTol', 1e-6, 'AbsTol', 1e-6);
[t, q] = ode45(@(t, q) Dynamics(t, q, m_1, m_2, l_1, l_2, g, Kp, Ki, Kd, ...
                 q_desired, e_int_prev, tspan), tspan, q_initial, options);

figure;
subplot(2,1,1);
plot(t, q(:, 1), 'r');
xlabel('Time (s)');
ylabel('Joint Angles (rad)');
title("q1 vs t for PD Controller Kp = " + kp + ", Kd = " + kd);

subplot(2,1,2);
plot(t, q(:, 2), 'b');
xlabel('Time (s)');
ylabel('Joint Angles (rad)');
title("q2 vs t for PD Controller Kp = " + kp + ", Kd = " + kd);

e1 = q_desired(1) - q(:,1);
e2 = q_desired(2) - q(:,2);
figure;
subplot(2, 1, 1);
plot(t, e1, 'r');
xlabel('Time (s)');
ylabel('e1 (rad)');
sgtitle('Error in Joint Angles vs. Time (PD Control)');
subplot(2, 1, 2);
plot(t, e2, 'g');
xlabel('Time (s)');
ylabel('e2 (rad)');







