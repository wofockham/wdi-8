Task.destroy_all

t1 = Task.create :title => 'Task the first', :description => 'Number one task'
t2 = Task.create :title => 'Task the second', :description => '222'
t3 = Task.create :title => 'Task the third', :description => '333'
t4 = Task.create :title => 'Task the fourth', :description => '444', :completed => true
