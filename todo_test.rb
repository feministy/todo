require_relative 'todo'

filename = 'tasks.txt'
list = Manage.new(filename)

list.add('Lose my mind')
list.complete('9')
list.complete('13')
list.add('Poop my pants')
list.delete('14')
list.add('Eat some cheesecake')
list.add('Play with Kiwi!')
list.display
list.save