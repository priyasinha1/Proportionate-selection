
function selected = prop_selection(z)
    avg=mean(z);
    selected=[];
    for i=1:length(z)
        y=round(z(i)/avg);
        for j=1:y
            selected=[selected,i];
        end
    end
    
end