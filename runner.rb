require_relative 'lib/reports'

# [100, 200, 300, 400, 500, 600, 700].each do |test_size|
  # puts "======== #{test_size} =========="
  # Reports.report_insert_front(test_size)
  # Reports.report_insert_end(test_size) # extra release — find worst case?
  # Reports.report_insert_middle(test_size)
  # Reports.report_get_first_element(test_size) # 0 ops for LL, do we need a access for @head?
  # Reports.report_get_last_element(test_size)
  # Reports.report_set_first_element(test_size)
  # Reports.report_set_last_element(test_size)
# end

# Reports.report_growth(33)
