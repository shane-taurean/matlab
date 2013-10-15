%Clear all;
%select all;
%open the xls file
%data=xlsread('matlab.xlsx');
x=[1 2 3 4 5 6];
y=[1 2 3 4 5 6];
%y=linspace(2,12,2);
 
%x=data(:,19);
%y=data(:,9);

%min_x=16; max_x=120;
%min_y=20; max_y=35;
%s='.5';
%scatter(x,y);
plot(x,y,'o');
%plot(x,y,'k-','LineSpec'); hold on; set(gca);
set(gca,'FontSize',12,'FontName','Arial','FontWeight','bold');
Title('Susc Silt');
p=polyfit(x,y,1);   
p = 1 1e^10-5
R=corrcoef(x,y);
R(1,2)





