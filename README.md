# 🤖 Two-Link Robotic Manipulator Control

This project involves modeling and controlling a 2-link robotic manipulator using MATLAB and Simulink. The goal is to drive the joint angles from an initial configuration to a desired position using various control strategies.

We implemented and compared the performance of:
- **PD (Proportional-Derivative) Controller**
- **PI (Proportional-Integral) Controller**
- **PID (Proportional-Integral-Derivative) Controller**

The dynamic model is derived using Lagrangian mechanics, and simulations are carried out using `ode45` in MATLAB and Simulink block diagrams. Each controller's effectiveness is evaluated based on response time, overshoot, and steady-state accuracy.
