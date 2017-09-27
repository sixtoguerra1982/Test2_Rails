class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		@tasks_made = Task.where("user_id=#{current_user.id}").count
  		@histories_total = Historie.count
  	end
  	@historias = Historie.all
  end
end
