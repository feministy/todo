require_relative 'managedata'
require_relative 'viewdata'
require_relative 'list'
require_relative 'task' 

class Manage
  attr_reader :filename, :list, :list_array, :view

  def initialize(filename, list = ManageData.new, view = ViewData.new)
    @filename = filename
    @list = list
    @view = view
    @list_array = list.load(filename)
  end

  def save
    list.prep_save(filename, list_array.list_array)
    view.saved
  end

  def display
    view.header
    view.list(list_array.list_array)
  end

  def add(task)
    new_task = list.make_task(["0", "#{task}\n"])
    list_array.add(new_task)
  end 

  def delete(task_number)
    task = list_array.delete(task_number.to_i - 1)
    view.deleted(task)
  end 

  def complete(task_number)
    task = list_array.list_array[task_number.to_i - 1]
    view.completed(task)
    task.complete
  end 
end