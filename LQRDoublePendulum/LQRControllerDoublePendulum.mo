model LQRControllerDoublePendulum
  Modelica.Blocks.Interfaces.RealInput x;
  Modelica.Blocks.Interfaces.RealInput dx;
  Modelica.Blocks.Interfaces.RealInput theta1;
  Modelica.Blocks.Interfaces.RealInput dtheta1;
  Modelica.Blocks.Interfaces.RealInput theta2;
  Modelica.Blocks.Interfaces.RealInput dtheta2;

  Modelica.Blocks.Interfaces.RealOutput F;

equation
  F = -1*x
    - 6*dx
    + 2010.1*theta1
    + 132.9*dtheta1
    - 2022.8*theta2
    - 194.4*dtheta2;
end LQRControllerDoublePendulum;