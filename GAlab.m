clear
clc

population_size=10;
bounds=[0,31];
pop_init=randi(bounds,1,population_size)
%encode
binary=de2bi(pop_init);
%get objective function values 
z=func(binary);
%obtain maximum values of fitness
[max_fitness,max_index]=max(z);
max_fitness
max_sol=pop_init(1,max_index)
selected_indices=prop_selection(z);
selected_solutions=[];
for i=1:length(selected_indices)
    selected_solutions=[selected_solutions,pop_init(selected_indices(i))];
end
selected_solutions

