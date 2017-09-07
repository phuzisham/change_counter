#!/usr/bin/env ruby
require_relative('coin_combo')

example = Coins.new()
puts "Please enter an amount"
amount = gets.chomp
puts example.change(amount.to_f)
