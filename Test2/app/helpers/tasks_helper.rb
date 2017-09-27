module TasksHelper
	def no_existe_historia_para_usuario? user,historie
		@task = Task.where("user_id=#{user.id}").where("historie_id=#{historie.id}")
		if @task.count == 0
			true
		else
		    false
		end
	end
end
