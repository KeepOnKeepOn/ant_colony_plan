Drow=20;
Dcol=20;
% G=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
%    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
%    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; 
%    0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0; 
%    0 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0; 
%    0 0 1 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0; 
%    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
%    0 0 1 0 0 0 0 0 1 1 1 1 0 0 1 1 0 0 1 1; 
%    0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0; 
%    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0; 
%    0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 1 0 0 0 0; 
%    0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 1 0 0 0 0; 
%    0 0 0 0 0 1 0 0 1 0 0 0 0 0 1 1 0 0 0 0; 
%    0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0; 
%    0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0; 
%    0 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0; 
%    0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0; 
%    0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0; 
%    0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0; 
%    0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0;];
G=[0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 1 0 0 0; 
   0 1 1 0 0 0 1 1 1 0 0 0 0 0 0 0 1 1 0 0; 
   0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0; 
   0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 1 1 0 0 0; 
   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0; 
   0 0 1 0 1 0 1 1 1 0 0 0 0 0 0 0 1 1 0 0; 
   0 0 1 0 1 0 0 0 0 0 0 1 1 0 0 0 1 0 0 0;
   0 0 1 1 1 0 1 1 1 0 0 1 1 0 0 1 1 0 0 0; 
   0 1 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0; 
   0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0; 
   0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 1 0 0; 
   0 1 1 0 0 0 0 1 1 1 1 0 0 1 0 0 0 1 0 0; 
   0 1 1 0 0 0 0 0 0 0 0 0 0 1 0 1 1 1 1 0; 
   0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 1 1 0; 
   1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0; 
   1 1 1 1 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0; 
   0 0 0 0 0 0 1 1 1 1 1 1 0 0 1 0 0 1 1 0; 
   0 0 1 1 0 0 0 0 0 0 1 1 0 0 1 0 0 1 1 0; 
   0 0 1 1 0 0 0 0 0 0 1 1 0 0 1 0 0 0 0 0; 
   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;];
MM=size(G,1);          	   % G ����ͼΪ01�������Ϊ1��ʾ�ϰ��� 

K=50;                       	   %����������ָ���ϳ������ٲ���
M=20;                        	   %���ϸ���

a=1;                     %С�������صı߳�
S=1 ;                    %���·������ʼ��
Sx=a*(mod(S,MM)-0.5);    %��ʼ�������
if Sx==-0.5 
Sx=MM-0.5; 
end 
Sy=a*(MM+0.5-ceil(S/MM)); %��ʼ��������
E=(Drow-1)*MM+Dcol;                %���·����Ŀ�ĵ�
Alpha=1;                      	   % Alpha ������Ϣ����Ҫ�̶ȵĲ���
Beta=7;                       	   % Beta ��������ʽ������Ҫ�̶ȵĲ���
Rho=0.3;                      	   % Rho ��Ϣ������ϵ��
Rho1=0.3;                  % Rho1 ��Ϣ����ϵ��
Q1=1.2;                               % Q1 ·��������Ϣ������ǿ��ϵ�� 
Q2=1.5;
Q3=1.2;                             %Q3����������Ϣ������ǿ��ϵ��
Phi1=10/pi;
Phi2=2;
minkl=inf;
minBend=inf;
mink=0; 
minl=0; 
D=G2D(G); 
N=size(D,1);               %N��ʾ����Ĺ�ģ�����ظ�����

Ex=a*(mod(E,MM)-0.5);    %��ֹ�������
if Ex==-0.5 
Ex=MM-0.5; 
end 
Ey=a*(MM+0.5-ceil(E/MM)); %��ֹ��������

Tau=ones(MM*MM,MM*MM);        % Tau ��ʼ��Ϣ�ؾ���
Tau_max=(1/((1-Rho)*((Sx-Ex)^0.5+(Sy-Ey)^0.5)));
Tau_min=Tau_max/50;
Tau=(Tau_max).*Tau; 

ROUTES=cell(K,M);     %��ϸ���ṹ�洢ÿһ����ÿһֻ���ϵ�����·��
PL=zeros(K,M);         %�þ���洢ÿһ����ÿһֻ���ϵ�����·�߳���
                      %����K��������ʳ���ÿ���ɳ�Mֻ����
for k=1:K 
for m=1:M 
%״̬��ʼ��
W=S;                  %��ǰ�ڵ��ʼ��Ϊ��ʼ��
Path=S;                %����·�߳�ʼ��
PLkm=0;               %����·�߳��ȳ�ʼ��
TABUkm=ones(N,1);       %���ɱ��ʼ��
TABUkm(S)=0;          %�Ѿ��ڳ�ʼ���ˣ����Ҫ�ų�
DD=D;                 %�ڽӾ����ʼ��
Cost_bend_array=[];%�������ӳ�ʼ��
%��һ������ǰ���Ľڵ�
DW=DD(W,:); 
DW1=find(DW);%��Χ���ϰ��Ľڵ����� 
for j=1:length(DW1) 
   if TABUkm(DW1(j))==0 
      DW(DW1(j))=0; %�޳����ɱ��е��ڽӽڵ�
  end 
end 
LJD=find(DW); %��һ����ѡ�ڵ�����
Len_LJD=length(LJD);%��ѡ�ڵ�ĸ���

while W~=E && Len_LJD>=1 
%����δ����ʳ�������������ͬ������ʳֹͣ
     Eta=zeros(N,1);             %����ʽ��Ϣ��ȡΪ��Ŀ����ֱ�߾���ĵ���
     Wx=a*(mod(W,MM)-0.5); 
       if Wx==-0.5 
            Wx=MM-0.5; 
       end 
     Wy=a*(MM+0.5-ceil(W/MM));

    %ת�ֶķ�ѡ����һ����ô��
    PP=zeros(Len_LJD); 
    for i=1:Len_LJD 
       %��������ʽ��Ϣ����
       Next=LJD(i);
       Next_x=a*(mod(Next,MM)-0.5); 
       if Next_x==-0.5 
            Next_x=MM-0.5; 
       end 
       Next_y=a*(MM+0.5-ceil(Next/MM));
       if length(Path)>1
           Last=Path(end-1);
           Last_x=a*(mod(Last,MM)-0.5); 
           if Last_x==-0.5 
                Last_x=MM-0.5; 
           end 
           Last_y=a*(MM+0.5-ceil(Last/MM));
           thita=abs(atan2(Next_y-Wy,Next_x-Wx)-atan2(Wy-Last_y,Wx-Last_x));
           if thita>1e-5
               turn=1;
           else
               turn=0;
           end
           Cost_bend=Phi1*thita+Phi2*turn;
       else
           Cost_bend=0;
       end
       FAStar=((Next_x-Ex)^2+(Next_y-Ey)^2)^0.5;%+((Next_x-Sx)^2+(Next_y-Sy)^2)^0.5;
       Eta(LJD(i))=Q2/(FAStar+Cost_bend);

       PP(i)=(Tau(W,LJD(i))^Alpha)*((Eta(LJD(i)))^Beta); 
    end 
    sumpp=sum(PP); 
    PP=PP./sumpp;%�������ʷֲ�
    Pcum=zeros(Len_LJD,1);
    Pcum(1)=PP(1); 
      for i=2:Len_LJD 
        Pcum(i)=Pcum(i-1)+PP(i); 
      end 
    Select=find(Pcum>=rand); 
    if length(Select)>0
        to_visit=LJD(Select(1)); 
    else
        to_visit=LJD(1);
    end
    %״̬���ºͼ�¼
    Path=[Path,to_visit];       		 %·������
    PLkm=PLkm+DD(W,to_visit);    %·����������
    if length(Path)>2
       Next_x=a*(mod(to_visit,MM)-0.5); 
       if Next_x==-0.5 
            Next_x=MM-0.5; 
       end 
       Next_y=a*(MM+0.5-ceil(to_visit/MM));
       Last=Path(end-2);
       Last_x=a*(mod(Last,MM)-0.5); 
       if Last_x==-0.5 
            Last_x=MM-0.5; 
       end 
       Last_y=a*(MM+0.5-ceil(Last/MM));
        thita=abs(atan2(Next_y-Wy,Next_x-Wx)-atan2(Wy-Last_y,Wx-Last_x));
        if thita>1e-5
            turn=1;
        else
            turn=0;
        end
        Cost_bend_array=[Cost_bend_array,Phi1*thita+Phi2*turn];
    else
        Cost_bend_array=[Cost_bend_array,0];
    end
    W=to_visit;                   %�����Ƶ���һ���ڵ�
       for kk=1:N 
          if TABUkm(kk)==0 
          DD(W,kk)=0; 
          DD(kk,W)=0; 
          end 
       end 
    TABUkm(W)=0;				%�ѷ��ʹ��Ľڵ�ӽ��ɱ���ɾ��
    DW=DD(W,:); 
    DW1=find(DW); 
    for j=1:length(DW1) 
        if TABUkm(DW1(j))==0 
           DW(j)=0; 
        end 
      end 
    LJD=find(DW); 
    Len_LJD=length(LJD);%��ѡ�ڵ�ĸ���
 end 
%����ÿһ��ÿһֻ���ϵ���ʳ·�ߺ�·�߳���
 ROUTES{k,m}=Path; 
   if Path(end)==E 
      PL(k,m)=PLkm; 
      Bend=sum(Cost_bend_array);
      Fvalue=PLkm+Bend;
%       if Fvalue<minkl 
%           mink=k;minl=m;minkl=Fvalue;minBend=Bend; 
%       end 
      if PLkm<minkl 
          mink=k;minl=m;minkl=PLkm;minBend=Bend; 
      end 

   else 
      PL(k,m)=0; 
   end 
end 
%������Ϣ��

Delta_Tau=zeros(N,N);%��������ʼ�� 
    ROUT=ROUTES{mink,minl}; 
    TS=length(ROUT)-1;%����
    PL_km=PL(mink,minl); 
    for s=1:TS 
      x=ROUT(s); 
      y=ROUT(s+1); 
      Delta_Tau(x,y)=Delta_Tau(x,y)+Q1/PL_km+Q3/minBend; 
      Delta_Tau(y,x)=Delta_Tau(y,x)+Q1/PL_km+Q3/minBend; 
    end  
Tau_max=1/((1-Rho)*(minkl));
Tau_min=Tau_max/100;
Tau=(1-Rho).*Tau+Rho1.*Delta_Tau;%��Ϣ�ػӷ�һ���֣�������һ����
Tau(find(Tau>Tau_max))=[Tau_max];
Tau(find(Tau<Tau_min))=[Tau_min];
 end 
%%��ͼ
plotif=1;%�Ƿ��ͼ�Ŀ��Ʋ���
 if plotif==1 %����������
    minPL=zeros(K,1); 
   for i=1:K 
     PLK=PL(i,:);  
     PLKPLK=PLK(find(PLK)); 
     minPL(i)=min(PLKPLK); 
   end 
figure(1) 
plot(minPL); 
hold on 
grid on 
title('�Ľ���Ⱥ�㷨�������߱仯����'); 
xlabel('��������'); 
ylabel('��С·������'); %������ͼ
figure(2) 
axis([0,MM,0,MM]) 
for i=1:MM 
for j=1:MM 
if G(i,j)==1 
x1=j-1;y1=MM-i; 
x2=j;y2=MM-i; 
x3=j;y3=MM-i+1; 
x4=j-1;y4=MM-i+1; 
fill([x1,x2,x3,x4],[y1,y2,y3,y4],[0.2,0.2,0.2]); 
hold on 
else 
x1=j-1;y1=MM-i; 
x2=j;y2=MM-i; 
x3=j;y3=MM-i+1; 
x4=j-1;y4=MM-i+1; 
fill([x1,x2,x3,x4],[y1,y2,y3,y4],[1,1,1]); 
hold on 
end 
end 
end 
hold on 
title('�Ľ���Ⱥ�㷨�켣'); 
xlabel('����x'); 
ylabel('����y');
ROUT=ROUTES{mink,minl}; 
LENROUT=length(ROUT); 
Rx=ROUT; 
Ry=ROUT; 
for ii=1:LENROUT 
Rx(ii)=a*(mod(ROUT(ii),MM)-0.5); 
if Rx(ii)==-0.5 
Rx(ii)=MM-0.5; 
end 
Ry(ii)=a*(MM+0.5-ceil(ROUT(ii)/MM)); 
end 
plot(Rx,Ry) 
end 
plotif2=0;%�������������ͼ
if plotif2==1 
figure(3) 
axis([0,MM,0,MM]) 
for i=1:MM 
for j=1:MM 
if G(i,j)==1 
x1=j-1;y1=MM-i; 
x2=j;y2=MM-i; 
x3=j;y3=MM-i+1; 
x4=j-1;y4=MM-i+1; 
fill([x1,x2,x3,x4],[y1,y2,y3,y4],[0.2,0.2,0.2]); 
hold on 
else 
x1=j-1;y1=MM-i; 
x2=j;y2=MM-i; 
x3=j;y3=MM-i+1; 
x4=j-1;y4=MM-i+1; 
fill([x1,x2,x3,x4],[y1,y2,y3,y4],[1,1,1]); 
hold on 
end 
end 
end 
for k=1:K 
PLK=PL(k,:); 
minPLK=min(PLK); 
pos=find(PLK==minPLK); 
m=pos(1); 
ROUT=ROUTES{k,m}; 
LENROUT=length(ROUT); 
Rx=ROUT; 
Ry=ROUT; 
for ii=1:LENROUT 
Rx(ii)=a*(mod(ROUT(ii),MM)-0.5); 
if Rx(ii)==-0.5 
Rx(ii)=MM-0.5; 
end 
Ry(ii)=a*(MM+0.5-ceil(ROUT(ii)/MM)); 
end 
plot(Rx,Ry) 
hold on 
end 
end


