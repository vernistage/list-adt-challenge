require_relative 'lib/array_list'
require_relative 'lib/linked_list'
require_relative 'lib/reporter'

[100, 200, 300, 400, 500, 600, 700].each do |test_size|
  puts "########### List Size #{test_size} ###########\n"

  test_ll = LinkedList.new
  test_al = ArrayList.new
  test_size.times do
    test_ll.add("test item")
    test_al.add("test item")
  end

  # Get a report on what happens when we access the last item in our LinkedList
  Reporter.report_on("Accessing the last element in our LinkedList") do
    test_ll.last
  end

  # Get a report on what happens when we access the last item in our ArrayList
  Reporter.report_on("Accessing the last element in our ArrayList") do
    test_al.last
  end
end
