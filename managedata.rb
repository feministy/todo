class ManageData
  def load(filename)
    list_array = parse(filename)
    initiatlize_list(list_array)    
  end 

 def parse(filename, list_array = [])
    File.open(filename).each_line { |l| list_array << make_task(l.split("-")) }
    list_array
  end

  def initiatlize_list(list_array)
    List.new(list_array)
  end

  def make_task(task_array)
    Task.new(task_array)
  end

  def prep_save(filename, array)
    listy = make_array(array)
    save(filename, listy)
  end

  def make_array(array)
    listy = ""
    array.each do |task|
      listy << "#{task.status}-#{task.todo}"
    end 
    listy
  end

  def save(filename, list)
    File.open(filename, "w") do |f|
      f.write list
    end
  end   
end 