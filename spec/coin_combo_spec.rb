require('rspec')
require('pry')
require('coin_combo')

describe('Coins#change') do
  example = Coins.new()

  it('counts required amount of quarters') do
    expect(example.change(0.75)).to(eq('3 quarter'))
  end

  it('counts required amount of quarters, and dimes') do
    expect(example.change(0.85)).to(eq('3 quarter 1 dime'))
  end

  it('counts required amount of quarters, dimes, and nickels') do
    expect(example.change(0.90)).to(eq('3 quarter 1 dime 1 nickel'))
  end

  it('counts required amount of quarters, dimes, nickels, and pennies') do
    expect(example.change(0.94)).to(eq('3 quarter 1 dime 1 nickel 4 penny'))
  end
end
