require('rspec')
require('pry')
require('coin_combo')

describe('Coins#change') do
  example = Coins.new()

  it('counts required amount of quarters') do
    expect(example.change(0.75)).to(eq('3 quarter'))
  end
end
