
% A car is followed by a truck with probability 1/3
% A truck is follwed by a car with probability 1/2
% Goal of code is to find fracton of cars on a one lane road

car = 0;
state = 0; % 0 for car, 1 for truck
n = 10000000;
for i = 1:n
    p = rand;
    if state == 0 % car
        if p > 1/3 % followed by car
            state = 0;
            car = car + 1;
        else 
            state = 1; % followed by truck
        end
        
    else % truck
        if p > 1/2
            state = 0; % followed by car
            car = car + 1;
        else 
            state = 1; % followed by truck
        end 
    end
end

fraction = car/n