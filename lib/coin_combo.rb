class Coins

  def change(amount)
    amount = amount * 100
    result = ''
    q_counter = 0
    d_counter = 0
    n_counter = 0
    p_counter = 0
    remainder = 0
    q_val = 25
    d_val = 10
    n_val = 5
    p_val = 1

    x = 0
    until (x === amount)
      if (amount >= q_val)
        remainder = amount % q_val
        q_counter = (amount - remainder) / q_val
        x += q_val * q_counter
        result = result + q_counter.floor().to_s + ' quarter'
      end
      if (amount - x >= d_val)
        remainder = (amount - x) % d_val
        d_counter = (amount - x - remainder) / d_val
        x += d_val * d_counter
        result = result + ' ' + d_counter.floor().to_s + ' dime'
      end
      if (amount - x >= n_val)
        remainder = (amount - x) % n_val
        n_counter = (amount - x - remainder) / n_val
        x += n_val * n_counter
        result = result + ' ' + n_counter.floor().to_s + ' nickel'
      end
      if (amount - x >= p_val)
        remainder = (amount - x) % p_val
        p_counter = (amount - x - remainder) / p_val
        x += p_val * p_counter
        result = result + ' ' + p_counter.floor().to_s + ' penny'
      end
    end
    result.to_s
  end
end
