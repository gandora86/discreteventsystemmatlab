%p0 = [(2/3), 0, (1/3), 0, 0]; %part B.1.1
%type equation1.m
%fun = @equation1;
%[t,p] = ode45(fun,[1 10000], p0);

%semilogx(t,p(:,1),t,p(:,2),t,p(:,3),t,p(:,4),t,p(:,5))
%title('Population Dynamics for B.1.1, where k = 0.3 and U1, U3 = (0, 0.9)')
%xlabel('time, t');
%ylabel('p(t)');
%legend('p1','p2','p3','p4','p5');

% part b 1.2
%p0 = [2, 0, 1, 0, 0, 0, 0, 0,0, 0, 0, 0,0, 0, 0, 0,0, 0, 0, 0,0, 0, 0, 0,0, 0, 0, 0,0, 0, 0, 0,0, 0, 0]; %part B.1.1
%type part2.m
%fun = @part2;
%[t,p] = ode45(fun,[1 100000], p0);

%semilogx(t,p(:,1),t,p(:,2),t,p(:,3),t,p(:,4),t,p(:,5))
%title('Population Dynamics for B.1.2, where k = 0.3 and U1, U3 = (0, 0)')
%xlabel('time, t');
%ylabel('p(t)');
%legend('p1','p2','p3','p4','p5');

% pmatrix part b.2.1
%p0 = [(2/3), 0, (1/3), 0, 0]; %part B.1.1
%type pmatrix.m
%fun = @pmatrix;
%[t,p] = ode45(fun,[1 10000], p0);

%semilogx(t,p(:,1),t,p(:,2),t,p(:,3),t,p(:,4),t,p(:,5))
%title('Population Dynamics for B.2.1, where k = 0.3 and U*1, U*3 = (0, 1)')
%xlabel('time, t');
%ylabel('p(t)');
%legend('p1','p2','p3','p4','p5');

% part b.2.2
p0 = [2, 0, 1, 0, 0, 0, 0, 0,0, 0, 0, 0,0, 0, 0, 0,0, 0, 0, 0,0, 0, 0, 0,0, 0, 0, 0,0, 0, 0, 0,0, 0, 0];
type part2_2.m
fun = @part2_2;
[t,p] = ode45(fun,[1 10000], p0);

semilogx(t,p(:,1),t,p(:,2),t,p(:,3),t,p(:,4),t,p(:,5))
title('Population Dynamics for B.2.2, where k = 0.3 and U1, U3 = (0, 0.9)')
xlabel('time, t');
ylabel('p(t)');
legend('p1','p2','p3','p4','p5');

