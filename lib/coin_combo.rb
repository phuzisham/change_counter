#!/usr/bin/env ruby

class Coins


  def change(amount)
    coin_vals = Hash.new()
    coin_vals.store(' quarter', 0.25)
    coin_vals.store(' dime', 0.10)
    coin_vals.store(' nickel', 0.05)
    coin_vals.store(' penny', 0.01)

    x = 0
    counter = 0
    until (x === amount)
      x += coin_vals.fetch(' quarter')
      counter += 1
    end
    counter.to_s + coin_vals.key(0.25)
  end
end
