function [ x ] = relu( x )
    x(find(x<=0)) = 0;
end

