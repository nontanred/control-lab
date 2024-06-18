figure(1)
fig=get(gcf);
if (isempty(fig.Children)||(~ishold))
    plot(ScopeData(:,1),ScopeData(:,2),ScopeData(:,1),ScopeData(:,3),'LineWidth',2);
    number=2;
    hold on
else    
    switch number
        case 1
            colorExp='b';
        case 2
            colorExp='r';
        case 3
            colorExp='c';
        case 4
            colorExp='m';
        case 5
            colorExp='g';
        case 6
            colorExp='y';
        otherwise
            colorExp='k';
    end
    plot(ScopeData(:,1),ScopeData(:,3),colorExp,'LineWidth',2);
    number=number+1;
end
grid on
title('Motor Position');
xlabel('Time [sec]');
ylabel('Angular Velocity , Motor Voltage');