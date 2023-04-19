close all;
clear all;
clc;

n=4;
w=3;
h=3;

x=linspace(0,w, n);
y=linspace(0,h,n);

T=zeros(n);

T(1,1:n)=100; %Top
T(n,1:n)=300; %Bottom
T(1:n,1)=500; %Left
T(1:n,n)=200; %Right

tol=1e-6;
error=1;
counter=0

while error > tol
    counter=counter+1
    Told=T
        for i = 2:n-1;
            for j = 2:n-1;
                T(i, j) = .25 * (T(i,j-1) + T(i-1,j) + T(i,j+1));
            end
        end
        error = max(max(abs(Told-T)));
end
                
    
    
    
    
    
    
    
    
    
    
    
    