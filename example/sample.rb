require 'yen'

puts 10000.to_j                  #=> 1万
puts 10000.to_j(:all)            #=> 一万

puts 370060178930.to_j           #=> 3700億6017万8930
puts 370060178930.to_j(:all)     #=> 三千七百億六千十七万八千九百三十

puts 10000.to_yen                #=> 1万円
puts 10000.to_yen(:all)          #=> 一万円
