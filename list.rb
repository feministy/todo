class List
  attr_reader :list_array

  def initialize(list_array)
    @list_array = list_array
  end 

  def delete(task)
    list_array.delete_at(task)
  end 

  def add(task)
    list_array << task
  end 
end