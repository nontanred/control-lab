figure(1)
fig=get(gcf);
if (isempty(fig.Children)||(~ishold))
    plot(data_pos(:,1),data_pos(:,2),data_pos(:,1),data_pos(:,3));
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
            colorExp='y';
        case 6
            colorExp='g';
        otherwise
            colorExp='k';
    end
    plot(data_pos(:,1),data_pos(:,3),colorExp);
    number=number+1;
end
grid on
title('Motor Position');
xlabel('Time [sec]');
ylabel('Angle [deg]');