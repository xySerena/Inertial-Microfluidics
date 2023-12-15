function inertialmicro_2dstreamlinereonstruction

% x                       y                        u (m/s) @ 1: rho=150, alpha=3 v (m/s) @ 1: rho=150, alpha=3 u (m/s) @ 2: rho=150, alpha=3.1111 v (m/s) @ 2: rho=150, alpha=3.1111 u (m/s) @ 3: rho=150, alpha=3.2222 v (m/s) @ 3: rho=150, alpha=3.2222 u (m/s) @ 4: rho=150, alpha=3.3333 v (m/s) @ 4: rho=150, alpha=3.3333 u (m/s) @ 5: rho=150, alpha=3.4444 v (m/s) @ 5: rho=150, alpha=3.4444 u (m/s) @ 6: rho=150, alpha=3.5556 v (m/s) @ 6: rho=150, alpha=3.5556 u (m/s) @ 7: rho=150, alpha=3.6667 v (m/s) @ 7: rho=150, alpha=3.6667 u (m/s) @ 8: rho=150, alpha=3.7778 v (m/s) @ 8: rho=150, alpha=3.7778 u (m/s) @ 9: rho=150, alpha=3.8889 v (m/s) @ 9: rho=150, alpha=3.8889 u (m/s) @ 10: rho=150, alpha=4 v (m/s) @ 10: rho=150, alpha=4 u (m/s) @ 11: rho=300, alpha=3 v (m/s) @ 11: rho=300, alpha=3 u (m/s) @ 12: rho=300, alpha=3.1111 v (m/s) @ 12: rho=300, alpha=3.1111 u (m/s) @ 13: rho=300, alpha=3.2222 v (m/s) @ 13: rho=300, alpha=3.2222 u (m/s) @ 14: rho=300, alpha=3.3333 v (m/s) @ 14: rho=300, alpha=3.3333 u (m/s) @ 15: rho=300, alpha=3.4444 v (m/s) @ 15: rho=300, alpha=3.4444 u (m/s) @ 16: rho=300, alpha=3.5556 v (m/s) @ 16: rho=300, alpha=3.5556 u (m/s) @ 17: rho=300, alpha=3.6667 v (m/s) @ 17: rho=300, alpha=3.6667 u (m/s) @ 18: rho=300, alpha=3.7778 v (m/s) @ 18: rho=300, alpha=3.7778 u (m/s) @ 19: rho=300, alpha=3.8889 v (m/s) @ 19: rho=300, alpha=3.8889 u (m/s) @ 20: rho=300, alpha=4 v (m/s) @ 20: rho=300, alpha=4 u (m/s) @ 21: rho=500, alpha=3 v (m/s) @ 21: rho=500, alpha=3 u (m/s) @ 22: rho=500, alpha=3.1111 v (m/s) @ 22: rho=500, alpha=3.1111 u (m/s) @ 23: rho=500, alpha=3.2222 v (m/s) @ 23: rho=500, alpha=3.2222 u (m/s) @ 24: rho=500, alpha=3.3333 v (m/s) @ 24: rho=500, alpha=3.3333 u (m/s) @ 25: rho=500, alpha=3.4444 v (m/s) @ 25: rho=500, alpha=3.4444 u (m/s) @ 26: rho=500, alpha=3.5556 v (m/s) @ 26: rho=500, alpha=3.5556 u (m/s) @ 27: rho=500, alpha=3.6667 v (m/s) @ 27: rho=500, alpha=3.6667 u (m/s) @ 28: rho=500, alpha=3.7778 v (m/s) @ 28: rho=500, alpha=3.7778 u (m/s) @ 29: rho=500, alpha=3.8889 v (m/s) @ 29: rho=500, alpha=3.8889 u (m/s) @ 30: rho=500, alpha=4 v (m/s) @ 30: rho=500, alpha=4

% data is formatted as follows:

% column 1 + 2: x and y
% column 3 + 4: u and v at Re=150 and alpha = 3
% column 5 + 6: u and v at Re=150 and alpha = 3.111
% and so on through 10 values of alpha
% next set of columns go through the same values of alpha for Re=300 then for Re=500

veldatafile = 'C:\Users\Admin\Documents\Comsol\Serena\centrifuge_data\velocity_field-2d_re_alpha_sweep.txt';

veldata = table2array(readtable(veldatafile));
x = veldata(:,1);
y = veldata(:,2);

A = zeros(3,10);

i_alpha = 0;
for alpha = linspace(3,4,10)
    i_alpha = i_alpha+1;
    i_Re = 0;
    for Re = [150 300]
        i_Re = i_Re+1;
        if i_Re == 1
            u = veldata(:,2+(i_Re-1)*20+i_alpha);
            v = veldata(:,2+(i_Re-1)*20+i_alpha+1);
            u_interpolator = scatteredInterpolant(x,y,u);
            v_interpolator = scatteredInterpolant(x,y,v);
            y0_values = linspace(0, 40, 200);
            y0i_values = 0.5*(y0_values(1:end-1)+y0_values(2:end));
            x0_values = -49.99*ones(size(y0_values));
            u_values = u_interpolator(x0_values(1:end-1),y0i_values);
            v_values = v_interpolator(x0_values,y0_values);
            plot(y0_values, v_values);
            
            is_vsignchange = find((v_values(2:end)>0) & (v_values(1:end-1)<0) & u_values<0,1,'last');
            y0_signchange = y0i_values(is_vsignchange);
        
            y0_range = linspace(max(y0_signchange-5,0.5*y0_signchange),min(y0_signchange+3,50),101);
        
            h = zeros(1, length(y0_range));
            index = 2;
            for i = 1:length(y0_range)
                odeopts = odeset('Events',@return2startingx);
                [~,xy_all,~,xy_alle,~] = ode45(@streamline_reconst,[0 1e6],[-48 y0_range(i)],odeopts,u_interpolator,v_interpolator);
                if ~isempty(xy_alle)
                   h(i)= xy_alle(1,2)-y0_range(i);
                else
                   h(i) = xy_all(end,2) - y0_range(i);
                end
            end
            [~,xy_all] = ode45(@streamline_reconst,[0 1e5],[-48 (y0_values(index)+y0_values(index-1))/2],[],u_interpolator,v_interpolator);
            plot(xy_all(:,1),xy_all(:,2));
            A(i_Re, i_alpha) = (y0_values(index)+y0_values(index-1))/2;
        elseif i_Re == 2 && i_alpha == 10
            u = veldata(:,2+(i_Re-1)*20+i_alpha);
            v = veldata(:,2+(i_Re-1)*20+i_alpha+1);
            u_interpolator = scatteredInterpolant(x,y,u);
            v_interpolator = scatteredInterpolant(x,y,v);
            y0_values = linspace(40, 50, 100);
            y0i_values = 0.5*(y0_values(1:end-1)+y0_values(2:end));
            x0_values = -49.99*ones(size(y0_values));
            u_values = u_interpolator(x0_values(1:end-1),y0i_values);
            v_values = v_interpolator(x0_values,y0_values);
            
            is_vsignchange = find((v_values(2:end)>0) & (v_values(1:end-1)<0) & u_values<0,1,'last');
            y0_signchange = y0i_values(is_vsignchange);
        
            y0_range = linspace(max(y0_signchange-5,0.5*y0_signchange),min(y0_signchange+3,50),101);
           
            h = zeros(1, length(y0_range));
            index = 2;
            for i = 1:length(y0_range)
                odeopts = odeset('Events',@return2startingx);
                [~,xy_all,~,xy_alle,~] = ode45(@streamline_reconst,[0 1e6],[-48 y0_range(i)],odeopts,u_interpolator,v_interpolator);
                if ~isempty(xy_alle)
                    h(i)= xy_alle(1,2)-y0_range(i);
                else
                    h(i) = xy_all(end,2) - y0_range(i);
                end
            end
            [~,xy_all] = ode45(@streamline_reconst,[0 1e5],[-48 (y0_values(index)+y0_values(index-1))/2],[],u_interpolator,v_interpolator);
            plot(xy_all(:,1),xy_all(:,2));
            A(i_Re, i_alpha) = (y0_values(index)+y0_values(index-1))/2;
        else
            continue;
        end

    end
end

i_alpha = 0;
for alpha = linspace(3,4,10)
    i_alpha = i_alpha+1;
    i_Re = 1;
    for Re = [300 500]
        i_Re = i_Re+1;
        
        if i_Re == 3
            u = veldata(:,2+(i_Re-1)*20+i_alpha);
            v = veldata(:,2+(i_Re-1)*20+i_alpha+1);
            u_interpolator = scatteredInterpolant(x,y,u);
            v_interpolator = scatteredInterpolant(x,y,v);
            x0_values = linspace(-15, 25, 200);
            x0i_values = 0.5*(x0_values(1:end-1)+x0_values(2:end));
            y0_values = -49.99*ones(size(x0_values));
            u_values = u_interpolator(x0_values,y0_values);
            v_values = v_interpolator(x0i_values,y0_values(1:end-1));
            
            is_usignchange = find((u_values(2:end)>0) & (u_values(1:end-1)<0) & v_values<0,1,'last');
            x0_signchange = x0i_values(is_usignchange);
        
            x0_range = linspace(max(x0_signchange-5,0.5*x0_signchange),min(x0_signchange+3,50),101);
        
            h = zeros(1, length(x0_range));
            index = 2;
            for i = 1:length(x0_range)
                odeopts = odeset('Events',@return2startingx);
                [~,xy_all,~,xy_alle,~] = ode45(@streamline_reconst,[0 1e6],[-48 x0_range(i)],odeopts,u_interpolator,v_interpolator);
                if ~isempty(xy_alle)
                    h(i) = xy_alle(1,2) - x0_range(i);
                else
                    h(i) = xy_all(end,2) - x0_range(i);
                end
            end
            [~,xy_all] = ode45(@streamline_reconst,[0 1e5],[-48 (y0_values(index)+y0_values(index-1))/2],[],u_interpolator,v_interpolator);
            plot(xy_all(:,1),xy_all(:,2));
%        disp((y0_values(index)+y0_values(index-1))/2);
%        disp(xy_all(10,2));
            A(i_Re, i_alpha) = (y0_values(index)+y0_values(index-1))/2;
        
        elseif i_Re == 2 && i_alpha ~= 10
            u = veldata(:,2+(i_Re-1)*20+i_alpha);
            v = veldata(:,2+(i_Re-1)*20+i_alpha+1);
            u_interpolator = scatteredInterpolant(x,y,u);
            v_interpolator = scatteredInterpolant(x,y,v);
            x0_values = linspace(-50, 0, 200);
            x0i_values = 0.5*(x0_values(1:end-1)+x0_values(2:end));
            y0_values = -49.99*ones(size(x0_values));
            u_values = u_interpolator(x0_values,y0_values);
            v_values = v_interpolator(x0i_values,y0_values(1:end-1));
            
            is_usignchange = find((u_values(2:end)>0) & (u_values(1:end-1)<0) & v_values<0,1,'last');
            x0_signchange = x0i_values(is_usignchange);
        
            x0_range = linspace(max(x0_signchange-5,0.5*x0_signchange),min(x0_signchange+3,50),101);
        
            h = zeros(1, length(x0_range));
            index = 2;
            for i = 1:length(x0_range)
                odeopts = odeset('Events',@return2startingx);
                [~,xy_all,~,xy_alle,~] = ode45(@streamline_reconst,[0 1e6],[-48 x0_range(i)],odeopts,u_interpolator,v_interpolator);
                if ~isempty(xy_alle)
                    h(i) = xy_alle(1,2) - x0_range(i);
                else
                    h(i) = xy_all(end,2) - x0_range(i);
                end
            end
        [~,xy_all] = ode45(@streamline_reconst,[0 1e5],[-48 (y0_values(index)+y0_values(index-1))/2],[],u_interpolator,v_interpolator);
        plot(xy_all(:,1),xy_all(:,2));
%        disp((y0_values(index)+y0_values(index-1))/2);
%        disp(xy_all(10,2));
        A(i_Re, i_alpha) = (y0_values(index)+y0_values(index-1))/2;
        
        else
            continue;
        end
        
        


    end
end

return

function dxydt = streamline_reconst(~,xy,u_interpolator,v_interpolator)

x = xy(1); y = xy(2);
u = u_interpolator(x,y);
v = v_interpolator(x,y);

dxydt = [u; v];

return

function [value,isterminal,direction] = return2startingx(~,xy,u_interpolator,v_interpolator)

x = xy(1);

value = x+47.999;
isterminal = true;
direction = 0;

return






