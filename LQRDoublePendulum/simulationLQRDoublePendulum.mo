
model simulationLQRDoublePendulum

  parameter Real Aforce = 5;
  parameter Real freq = 0.5;
  parameter Real noiseStd = 5;

  penduloDobleInvertido plant(
    theta10 = 0.1,
    theta20 = -0.1,
    xc0 = 0.1
  );

  LQRControllerDoublePendulum controller;

  Modelica.Blocks.Sources.Sine sineForce(
    amplitude = Aforce,
    f = freq);

  Modelica.Blocks.Noise.NormalNoise noise(
    samplePeriod = 0.01,
    mu = 0,
    sigma = noiseStd);
  Real NoiseForce;

equation

  connect(plant.xc, controller.x);
  connect(plant.dxc, controller.dx);
  connect(plant.theta1, controller.theta1);
  connect(plant.dtheta1, controller.dtheta1);
  connect(plant.theta2, controller.theta2);
  connect(plant.dtheta2, controller.dtheta2);

  NoiseForce = sineForce.y + noise.y;
  plant.F = controller.F + NoiseForce;
  

end simulationLQRDoublePendulum;
