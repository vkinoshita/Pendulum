% =========================================================================
%       Filename:  face.m
%          Usage:  >> y0 = face(N)
%                  % Draws some points in shape of a smiling face
%                  % - N  : number of points
%                  %
%                  % the function will return:
%                  % - y0 : the coordinates of the points 
%                  %        plot them with plot(y0(:,1), y0(:,2), '.')
%        Created:  Thu May 23 2013
%         Author:  (2013), Tobias Jahnke
% =========================================================================
function y0 = face(N)

    x=[1:3*N]'*2*pi/(3*N);
    y=[cos(x),sin(x)];

    x=[1:N]'*2*pi/N;
    u=[cos(x),sin(x)];
    u1=0.2*u+ones(N,1)*[-0.3,0.3];
    u2=0.2*u+ones(N,1)*[0.3,0.3];

    x=1.5*pi+[-N:2:N-1]'/N;
    u3=0.5*[cos(x),sin(x)];

    y0=[y;u1;u2;u3];

    y0=0.4*y0;
    y0(:,1)=y0(:,1)+1;
    y0(:,2)=y0(:,2);
end
% --- EOF -----------------------------------------------------------------
