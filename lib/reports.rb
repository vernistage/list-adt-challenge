require_relative 'array_list'
require_relative 'linked_list'
require_relative 'reporter'

module Reports
  extend self

  #Create a report testing adding to the front of a list
  def report_insert_front(size)
    puts title_line("Testing add to front of list of size #{size}")

    ll = LinkedList.new
    size.times do |i|
      ll.add("test element #{i+1}")
    end

    Reporter.report_on("LinkedList") do
      ll.insert(0, "inserted element")
    end

    al = ArrayList.new
    size.times do |i|
      al.add("test element #{i+1}")
    end

    Reporter.report_on("ArrayList") do
      al.insert(0, "inserted element")
    end
  end

  #Create a report testing adding to the front of a list
  def report_insert_end(size)
    puts title_line("Testing add to end of list of size #{size}")

    ll = LinkedList.new
    size.times do |i|
      ll.add("test element #{i+1}")
    end

    Reporter.report_on("LinkedList") do
      ll.add("added element")
    end

    al = ArrayList.new
    size.times do |i|
      al.add("test element #{i+1}")
    end

    Reporter.report_on("ArrayList") do
      al.add("added element")
    end
  end

  #Create a report testing adding to the front of a list
  def report_insert_middle(size)
    puts title_line("Testing inserting into the middle of a list of size #{size}")

    ll = LinkedList.new
    size.times do |i|
      ll.add("test element #{i+1}")
    end

    Reporter.report_on("LinkedList") do
      ll.insert(size/2, "inserted-element")
    end

    al = ArrayList.new
    size.times do |i|
      al.add("test element #{i+1}")
    end

    Reporter.report_on("ArrayList") do
      al.insert(size/2, "inserted-element")
    end
  end

  def report_get_first_element(size)
    puts title_line("Testing retrieving first element in list of size #{size}")
    ll = LinkedList.new
    size.times do
      ll.insert(0, "test")
    end

    Reporter.report_on("LinkedList") do
      ll.get(0)
    end

    al = ArrayList.new
    size.times do
      al.insert(0, "test")
    end

    Reporter.report_on("ArrayList") do
      al.get(0)
    end
  end

  def report_get_last_element(size)
    puts title_line("Testing retrieving last element in list of size #{size}")
    ll = LinkedList.new
    size.times do
      ll.insert(0, "test")
    end

    Reporter.report_on("LinkedList") do
      ll.get(size-1)
    end

    al = ArrayList.new
    size.times do
      al.insert(0, "test")
    end

    Reporter.report_on("ArrayList") do
      al.get(size-1)
    end
  end

  def report_set_first_element(size)
    puts title_line("Testing setting first element in list of size #{size}")
    ll = LinkedList.new
    size.times do
      ll.insert(0, "test")
    end

    Reporter.report_on("LinkedList") do
      ll.set(0, "test2")
    end

    al = ArrayList.new
    size.times do
      al.insert(0, "test")
    end

    Reporter.report_on("ArrayList") do
      al.set(0, "test2")
    end
  end

  def report_set_last_element(size)
    puts title_line("Testing setting last element in list of size #{size}")
    ll = LinkedList.new
    size.times do
      ll.insert(0, "test")
    end

    Reporter.report_on("LinkedList") do
      ll.set(size-1, "test2")
    end

    al = ArrayList.new
    size.times do
      al.insert(0, "test")
    end

    Reporter.report_on("ArrayList") do
      al.set(size-1, "test2")
    end
  end

  def report_set_middle_element(size)
     puts title_line("Testing setting middle element in list of size #{size}")
     ll = LinkedList.new
     size.times do
       ll.insert(0, "test")
     end

     Reporter.report_on("LinkedList") do
       ll.set(size/2, "test2")
     end

     al = ArrayList.new
     size.times do
       al.insert(0, "test")
     end

     Reporter.report_on("ArrayList") do
       al.set(size/2, "test2")
     end
   end

  def report_growth(size)
    puts title_line("Testing growth of list from 0 to size #{size}")

    ll = LinkedList.new
    al = ArrayList.new

    (0...size).each do |i|
      Reporter.report_on("LinkedList adding item #{i+1}") do
        ll.add("test element")
      end
      Reporter.report_on("ArrayList item #{i+1}") do
        al.add("test element")
      end
    end

  end

  def title_line(str)
    "\e[47;1m#{str}\e[0m"
  end
end
