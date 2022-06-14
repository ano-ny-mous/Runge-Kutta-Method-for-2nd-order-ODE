clear all;
clc;

#f=@(x,y,z) z;
#g=@(x,y,z) x*(z^2)-(y^2);

display("----------Runga Kutta Method For Second Order Differential Equation---------\n");

fun_of_f=input("Enter funtion f(x,y,z)\ne.g @(x,y,z) z : \n","s");
f=str2func(fun_of_f);

fun_of_g=input("\nEnter funtion g(x,y,z)\ne.g @(x,y,z) x+y-z : \n","s");
g=str2func(fun_of_g);

x(1) = input("\nEnter the inital value x0 : ");
y(1) = input("Enter the inital value y0 : ");
z(1) = input("Enter the inital value z0 : ");
h = input("Enter the value of h : ");
xfinal=input("Enter the value of xn : ");
N=(xfinal-x(1))/h;
for j=1:N
    fprintf("\nIteration %d:\n",j);
    x(j+1)=x(j)+h;
    k1=f(x(j),y(j),z(j));
    fprintf("\nk1=h*f(x0,y0,z0)\nk1=%f\n\n",k1);
    l1=g(x(j),y(j),z(j));
    fprintf("l1=h*g(x0,y0,z0)\nl1=%f\n\n",l1);
    k2=f(x(j)+h/2,y(j)+h/2*k1,z(j)+h/2*l1);
    fprintf("k2=h*f(x0+(h/2),y0+(k1/2),z0+(l1/2))\nk2=%f\n\n",k2);
    l2=g(x(j)+h/2,y(j)+h/2*k1,z(j)+h/2*l1);
    fprintf("l2=h*g(x0+(h/2),y0+(k1/2),z0+(l1/2))\nl2=%f\n\n",l2);
    k3=f(x(j)+h/2,y(j)+h/2*k2,z(j)+h/2*l2);
    fprintf("k3=h*f(x0+(h/2),y0+(k2/2),z0+(l2/2))\nk3=%f\n\n",k3);
    l3=g(x(j)+h/2,y(j)+h/2*k2,z(j)+h/2*l2);
    fprintf("l3=h*g(x0+(h/2),y0+(k2/2),z0+(l2/2))\nl3=%f\n\n",l3);
    k4=f(x(j)+h,y(j)+h*k3,z(j)+h*l3);
    fprintf("k4=h*f(x0+h,y0+k3,z0+l3)\nk4=%f\n\n",k4);
    l4=g(x(j)+h,y(j)+h*k3,z(j)+h*l3);
    fprintf("l4=h*g(x0+h,y0+k3,z0+l3)\nl4=%f\n\n",l4);
    y(j+1)=y(j)+h/6*(k1+2*k2+2*k3+k4);
    fprintf("Y(x%d+h))=y0+(1/6)*(k1+2*k2+2*k3+k4)\n",j-1);
    fprintf("y(%.1f)=%.4f\n\n",x(j)+h,y(j+1));
    z(j+1)=z(j)+h/6*(l1+2*l2+2*l3+l4);
    fprintf("Z(x%d+h))=z0+(1/6)*(l1+2*l2+2*l3+l4)\n",j-1);
    fprintf("Z(%.1f)=%.4f\n",x(j)+h,z(j+1));
end
disp(y(N+1));
figure;
plot(x,y,'*',x,y);
hold;
plot(x,z,'+',x,z);
xlabel('X');
ylabel('Y');