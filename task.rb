class Task
  attr_reader :todo
  attr_accessor :status

  def initialize(task_array)
    @task = {}
    @task[:status] = task_array[0]
    @task[:todo] = task_array[1]
    @status = @task[:status]
    @todo = @task[:todo]
  end 
  
  def complete
    @status = "X"
  end 
end