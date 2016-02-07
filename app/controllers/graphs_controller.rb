class GraphsController < ApplicationController

def index
	@graphs = Graph.all.order("id DESC").all

end

def new
	@graph = Graph.new
end

def create
	@graph = Graph.new(graph_params)	
	if @graph.save
	redirect_to @graph
	else
	render 'new'
end
end


def show
	@graph = Graph.find(params[:id])
end

def edit
end


private
def graph_params
	params.require(:graph).
	permit(:title, :sales, :sales_goal)
 end

end
