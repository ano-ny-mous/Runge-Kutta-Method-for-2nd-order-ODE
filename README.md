# Runga Kutta Method for Second Order Differential Equation

This MATLAB script implements the Runga Kutta Method to approximate the solution of a second-order differential equation.

## Description

The Runga Kutta Method is a numerical technique used to solve ordinary differential equations (ODEs). In this script, it is applied to a second-order differential equation represented by the functions `f(x, y, z)` and `g(x, y, z)`.

## Usage

1. Open MATLAB.

2. Copy the contents of the `rk_method_second_order_diff_eq.m` file.

3. In the MATLAB command window, paste the copied code.

4. Run the script by pressing the "Run" button or typing `run` in the command window.

5. The script will prompt you to enter the functions `f(x, y, z)` and `g(x, y, z)`. You need to provide these functions in the form of anonymous functions.

6. Enter the initial values `x0`, `y0`, `z0`, the value of `h` (step size), and the final value `xn`.

7. The script will apply the Runga Kutta Method to solve the differential equation and display the intermediate calculations and the results.

8. The solution will be plotted as a graph showing the values of `y` and `z` against `x`.

## Example

```matlab
# Define the differential equations f(x, y, z) and g(x, y, z)
f = @(x, y, z) z;
g = @(x, y, z) x * (z^2) - (y^2);

# Enter the initial values
x(1) = 0;
y(1) = 1;
z(1) = 1;
h = 0.1;
xfinal = 1;

# Run the Runga Kutta Method
rk_method_second_order_diff_eq;
