class Graph < ActiveRecord::Base

def difference
	1-(sales_goal-sales)-1
end

def ratio
	(sales/sales_goal)*100
end

end
