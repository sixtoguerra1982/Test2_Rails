module TasksHelper
	def no_existe_historia_para_usuario? user,historie
		@task = Task.where("user_id=#{user.id}").where("historie_id=#{historie.id}")
		if @task.count == 0
			true
		else
		    false
		end
	end
	def contador_total_de_usuario task
   	 	@contador_total_de_usuario = Task.where("user_id=#{task.user_id}").count
    end

    def contador_total_de_historia
    	@contador_total_de_historia = Historie.count 
    end

end
