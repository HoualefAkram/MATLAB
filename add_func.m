function newX = add_func(t, x, k, n)
    set(0,'RecursionLimit',n)
    if k < n
        y = x + (4/(k*pi))*sin(2*pi*k*t);
        k = k + 2;
        newX = add_func(t, y, k, n);
    else
        newX = x;
    end
end