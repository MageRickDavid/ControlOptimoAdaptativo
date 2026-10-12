model LQRController
  Modelica.Blocks.Interfaces.RealInput x annotation(Placement(visible = true, iconTransformation(origin = {-110, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput dx annotation(Placement(visible = true, iconTransformation(origin = {-110, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput theta annotation(Placement(visible = true, iconTransformation(origin = {-110, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput dtheta annotation(Placement(visible = true, iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput F  annotation(Placement(visible = true, iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

equation
F = 10*x
  + 15.8194*dx
  - 252.8571*theta
  - 64.3126*dtheta;
end LQRController;