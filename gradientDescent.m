  function [theta, j_history] = gradientDescent(X, y, theta, alpha, num_iters)
    
    m = length(y);
    J_history = zeros(num_iters, 1);
    for iter = 1:num_iters
      delta=1/m*(X'*X*theta-X'*y);
      theta=theta-alpha.*delta;
      j_history(iter) = computeCost(X, y, theta);
     
    endfor
   J_history;
  endfunction
