class Graph < ActiveRecord::Base

belongs_to :user


def difference
	if sales != nil
	1-(sales_goal-sales)-1
		else
    puts "?"
end
end

def ratio
	if sales != nil
	(sales/sales_goal)*100
	else
    puts "?"
end
end


end
