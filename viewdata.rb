class ViewData
  def header
    puts "#. [ ] Task"
    puts "-" * 40
  end 

  def list(list_array)
    item_num = 0
    list_array.each do |task|
      puts "#{item_num +=1}. [#{task.status}] #{task.todo}"
    end 
  end 

  def deleted(task)
    puts "'#{task.todo}' deleted" # Line space issue
  end 

  def completed(task)
    puts "'#{task.todo}' completed" # Line space issue
  end 

  def saved
    puts "Todo list saved"
  end 
end