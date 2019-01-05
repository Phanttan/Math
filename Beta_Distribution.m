function Beta_Distribution()
%% Function : Bayesian inference in practice - posterior distribution: example Disease prevalence
clear; close all; clc;
%% Beta Distribution
% Beta function
% $B\!\left(a,b\right) = \frac{\left(a - 1\right)! \!\left(b - 1\right)! }{\left(a + b - 1\right)! }$
% Prior Parameters
a = 5;
b = 10;
% Data
N = 10; 
K = 1;
theta = linspace(0,1,100);

% Beta Prior probability density function (betapdf)
Y_prior = betapdf(theta,a,b);
% Likelihood Beta
Y_likelihood = nchoosek(N,K)*(theta.^K).*(1-theta).^(N-K);
% Beta Posterior Probability Density Function 
Y_pos = betapdf(theta, a+K, b+N-K);
%% Display
figure(1);
% Display Prior Beta Probability Density Function
subplot(3,1,1);
plot(theta, Y_prior, 'LineWidth',1);
title('Prior', 'FontSize', 20);
% set(gca,'FrontSize', 20);   % gca : get current axis
ylabel('Pdf');
% Display Likelihood Beta
subplot(3,1,2);
plot(theta,Y_likelihood, 'LineWidth',1);
title('Likelihood', 'FontSize', 20);
% Display Posterior Beta Probability Density Function 
subplot(3,1,3);
plot(theta,Y_pos, 'LineWidth',1);
title('Posterior','FontSize',20);

%% Reference
% Prior/Posterior Probability : https://www.youtube.com/watch?v=R9NQY2Hyl14

end