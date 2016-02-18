class GraphsController < ApplicationController

def index
	@graphs = Graph.all.order("id DESC").all
	@charts = Graph.all
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
	@graph = Graph.find(params[:id])
end

def update
	@graph = Graph.find(params[:id])
	graph_params = params.require(:graph).			   
	permit(:title, :sales, :sales_goal)
	@graph.update(graph_params)
	redirect_to @graph
end

def destroy
	@graph = Graph.find(params[:id])
	@graph.destroy
	redirect_to root_path
end

private
def graph_params
	params.require(:graph).
	permit(:title, :sales, :sales_goal)
 end

end
