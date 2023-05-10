function retval = pmatrix(t,p)


% using optimal stationary control policy
u1 = 0; % u*(1)
u3 = 1; %u*(3)
r54 = 0.0001;
r41 = 0.01;
r34 = 0.05 + u3*0.01; 
r35 = (1-u3)*0.01;
r24 = 0.2;
r12 = 0.2+u1*0.05;
r13 = 0.05*(1-u1);
k = 0.3; % either 0 or 0.3
% gamma value
y = (3*r12) +(3*r13) + r24 + r34 + r35 + r41 + r54; 

% converted markov chain
   mat = [-((r12/y)*((p(2) + p(3))^k) + (r13/y)*((p(2) + p(3))^k)), (r12/y)*(p(2)+p(3)^k), (r13/y)*((p(2)+p(3))^k), 0, 0;
0, -r24/y, 0, r24/y, 0;
0, 0, -((r34/y)+(r35/y)), r34/y, r35/y;
r41/y, 0,0,-r41/y, 0;
0,0,0,r54/y, -r54/y];


retval = transpose(transpose(p)*mat);
end

