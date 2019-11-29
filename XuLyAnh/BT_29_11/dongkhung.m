function dongkhung (I,Px,Py,dx,dy)
figure,imshow(I);
hold on

P1 = [Px, Py];
P2 = [Px,Py+dy];
P3 = [Px+dx,Py];
P4 = [px+dx,Py+dy];

Plot([P1(2),P2(2)],[P1(1) P2(1)],'Color','r','LineWidth',2)
Plot([P1(2),P3(2)],[P1(1) P3(1)],'Color','r','LineWidth',2)
Plot([P2(2),P4(2)],[P2(1) P4(1)],'Color','r','LineWidth',2)
Plot([P3(2),P4(2)],[P3(1) P4(1)],'Color','r','LineWidth',2)
end