require_relative 'lib/reporter'
require_relative 'lib/array_list'
require_relative 'lib/linked_list'


#Create a report testing adding to the front of a list
def report_insert_front(n)
  puts "Testing add to front of list #{n} times"
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

#Try with different values of n to see how operations
#change in each datastructure as `n` grows
report_insert_front(10)
# report_insert_front(50)
# report_insert_front(100)

# def report_insert_end
#   n = 100
#   Reporter.report_on("Adding to end w/ linked lists") do
#     ll = LinkedList.new
#     n.times do
#       ll.add("test")
#     end
#   end

#   Reporter.report_on("Adding to end w/ array lists") do
#     al = ArrayList.new
#     n.times do
#       al.add("test")
#     end
#   end
# end

# def report_get_end
#   n = 100
#   ll = LinkedList.new
#   n.times do
#     ll.insert(0, "test")
#   end

#   Reporter.report_on("Getting last item in linked lists") do
#     ll.get(99)
#   end

#   al = ArrayList.new
#   n.times do
#     al.insert(0, "test")
#   end

#   Reporter.report_on("Getting last item in array lists") do
#     al.get(99)
#   end
# end


# # add

# # get

# # set

# # first

# # last

# # length

# # insert
