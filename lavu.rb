#!/usr/bin/ruby

require 'poslavu'
require 'pp'


client = POSLavu::Client.new('street', 'QZj4nBFyHnpqYYBWdo9O', '1hUoWgtbrddICMM0Ybzp')

client.table('orders').filter('opened', :between, '2018-03-01', '2019-03-01').
page(1, 50).each do |order|
  pp(order, out = $>, width = 40)
end

