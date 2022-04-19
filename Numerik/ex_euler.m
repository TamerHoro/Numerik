function [t,y] = ex_euler(f,t0,y0,tmax,N,f_,tol)

yplus = y+ -h*mu*(y-cos(t))