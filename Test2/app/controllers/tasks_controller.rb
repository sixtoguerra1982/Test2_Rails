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

end



