class TasksController < ApplicationController
  before_action :authenticate_user!
  def create
  	 Task.create(user_id: params[:user_id].to_i, historie_id: params[:histories_id].to_i, state: params[:state])
     redirect_to home_index_path		
  end

  def desmarcar
  	 @task = Task.where("user_id=#{current_user.id}").where("historie_id=#{params[:histories_id]}").first
  	 unless @task.nil?
  	 	@task.destroy
  	 end	
     redirect_to home_index_path
  end

  def index
     @tasks_made = Task.where("user_id=#{current_user.id}").count
     @histories_total = Historie.count
     @tasks = Task.where("historie_id=#{params[:history_id]}")
     @historia = Historie.where("id=#{params[:history_id]}").first
  end
end


