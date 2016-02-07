module GraphsHelper

def sales_success(graph)
if graph.sales == nil
	puts 
"Please enter your sales. Without the numbers, we just feel lost inside."
else

if graph.sales < 10000
"It was a bad week, but you'll do better next time"

else
if graph.sales > 20000
"Wow, this week went mind-blowingly good, you sales machine, you!"

else
"Meh, this week was decent but you can do better."	
end
end	
end
end


def graph_status(sales)
if sales != nil
    return 'none'
else
	return 'overdue'
end
end


end
