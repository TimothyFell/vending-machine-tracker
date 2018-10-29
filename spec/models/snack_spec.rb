require 'rails_helper'

RSpec.describe Snack, type: :model do
  it 'self.average_price' do
    snack_1 = Snack.create(name:'Snickers', price:1.00)
    snack_2 = Snack.create(name:'Reeses', price:2.00)
    snack_3 = Snack.create(name:'100Grand', price:3.00)

    expect(Snack.average_price).to eq(2.0)
  end
end
