require_relative 'lib/reporter'
require_relative 'lib/array_list'
require_relative 'lib/linked_list'


def title_line(str)
  "\e[47;1m#{str}\e[0m"
end

#Create a report testing adding to the front of a list
def report_insert_front(n)
  puts title_line("Testing add to front of list #{n} times")
  Reporter.report_on("Adding to front w/ linked lists") do
    ll = LinkedList.new
    n.times do |i|
      ll.insert(0, "test element #{i+1}")
    end
  end

  Reporter.report_on("Adding to front w/ array lists") do
    al = ArrayList.new
    n.times do |i|
      al.insert(0, "test element #{i+1}")
    end
  end
end

#Create a report testing adding to the front of a list
def report_insert_end(n)
  puts title_line("Testing add to end of list #{n} times")
  Reporter.report_on("Adding to end w/ linked lists") do
    ll = LinkedList.new
    n.times do |i|
      ll.add("test element #{i+1}")
    end
  end

  Reporter.report_on("Adding to end w/ array lists") do
    al = ArrayList.new
    n.times do |i|
      al.add("test element #{i+1}")
    end
  end
end

#Create a report testing adding to the front of a list
def report_insert_middle(size)
  puts title_line("Testing inserting into the middle of a list of size #{size}")

  ll = LinkedList.new
  size.times do |i|
    ll.add("test element #{i+1}")
  end

  Reporter.report_on("Inserting into middle of linked list") do
    ll.insert(size/2, "inserted-element")
  end

  al = ArrayList.new
  size.times do |i|
    al.add("test element #{i+1}")
  end

  Reporter.report_on("Inserting into middle of array list") do
    al.insert(size/2, "inserted-element")
  end
end

def report_get_first_element(size)
  puts title_line("Testing retrieving first element in list of size #{size}")
  ll = LinkedList.new
  size.times do
    ll.insert(0, "test")
  end

  Reporter.report_on("Getting first item in linked list") do
    ll.get(0)
  end

  al = ArrayList.new
  size.times do
    al.insert(0, "test")
  end

  Reporter.report_on("Getting first item in array list") do
    al.get(0)
  end
end

def report_get_last_element(size)
  puts title_line("Testing retrieving last element in list of size #{size}")
  ll = LinkedList.new
  size.times do
    ll.insert(0, "test")
  end

  Reporter.report_on("Getting last item in linked list") do
    ll.get(size-1)
  end

  al = ArrayList.new
  size.times do
    al.insert(0, "test")
  end

  Reporter.report_on("Getting last item in array list") do
    al.get(size-1)
  end
end

def report_set_first_element(size)
  puts title_line("Testing setting first element in list of size #{size}")
  ll = LinkedList.new
  size.times do
    ll.insert(0, "test")
  end

  Reporter.report_on("Setting first item in linked list") do
    ll.set(0, "test2")
  end

  al = ArrayList.new
  size.times do
    al.insert(0, "test")
  end

  Reporter.report_on("Setting first item in array list") do
    al.set(0, "test2")
  end
end

def report_set_last_element(size)
  puts title_line("Testing setting last element in list of size #{size}")
  ll = LinkedList.new
  size.times do
    ll.insert(0, "test")
  end

  Reporter.report_on("Getting last item in linked list") do
    ll.set(size-1, "test2")
  end

  al = ArrayList.new
  size.times do
    al.insert(0, "test")
  end

  Reporter.report_on("Getting last item in array list") do
    al.set(size-1, "test2")
  end
end

report_insert_front(20)
report_insert_end(20)
report_insert_middle(100)
report_get_first_element(100)
report_get_last_element(100)
report_set_first_element(100)
report_set_last_element(100)
