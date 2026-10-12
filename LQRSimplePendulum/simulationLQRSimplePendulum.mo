model simulationLQRSimplePendulum
    penduloInvertido plant(
    x0 = 0.7,
    xp0 = 0,
    theta0 = 0.1,
    thetap0 = 0
  );
  LQRController controller;

  parameter Real A_noise = 5 "Sinusoidal disturbance amplitude [N]";
  parameter Real f_noise = 1.0 "Disturbance frequency [Hz]";
  parameter Real sigma = 5 "Gaussian noise standard deviation [N]";

  Modelica.Blocks.Noise.NormalNoise noise(
    samplePeriod = 0.01,
    mu = 0,
    sigma = sigma,
    startTime = 0);

  Real F_noise;

equation
  controller.x = plant.x;
  controller.dx = plant.dx;
  controller.theta = plant.theta;
  controller.dtheta = plant.dtheta;

  F_noise = A_noise*sin(2*Modelica.Constants.pi*f_noise*time)
            + noise.y;

  plant.F = controller.F + F_noise;
end simulationLQRSimplePendulum;