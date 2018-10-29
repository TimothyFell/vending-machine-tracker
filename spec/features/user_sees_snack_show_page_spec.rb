require 'rails_helper'

describe 'When a user visits a snack  show page' do

  describe 'they should see' do

    it 'the snacks name' do
      owner = Owner.create(name: "Sam's Snacks")
      dons  = owner.machines.create(location: "Don's Mixed Drinks")
      bobs  = owner.machines.create(location: "Bob's Mixed Drinks")
      jims  = owner.machines.create(location: "Jim's Mixed Drinks")
      snack_1 = Snack.create(name:'Snickers', price: 1.80)

      dons.snacks << snack_1
      bobs.snacks << snack_1
      jims.snacks << snack_1

      visit snack_path(snack_1)

      expect(page).to have_content(snack_1.name)
    end

    it 'the snacks price' do
      owner = Owner.create(name: "Sam's Snacks")
      dons  = owner.machines.create(location: "Don's Mixed Drinks")
      bobs  = owner.machines.create(location: "Bob's Mixed Drinks")
      jims  = owner.machines.create(location: "Jim's Mixed Drinks")
      snack_1 = Snack.create(name:'Snickers', price: 1.80)

      dons.snacks << snack_1
      bobs.snacks << snack_1
      jims.snacks << snack_1

      visit snack_path(snack_1)
      expect(page).to have_content("Price: $1.80")
    end

    it 'the snacks vending machine locations' do
      owner = Owner.create(name: "Sam's Snacks")
      dons  = owner.machines.create(location: "Don's Mixed Drinks")
      bobs  = owner.machines.create(location: "Bob's Mixed Drinks")
      jims  = owner.machines.create(location: "Jim's Mixed Drinks")
      snack_1 = Snack.create(name:'Snickers', price: 1.80)

      dons.snacks << snack_1
      bobs.snacks << snack_1
      jims.snacks << snack_1

      visit snack_path(snack_1)
    end

    it 'the average price for those machines' do
      owner = Owner.create(name: "Sam's Snacks")
      dons  = owner.machines.create(location: "Don's Mixed Drinks")
      bobs  = owner.machines.create(location: "Bob's Mixed Drinks")
      jims  = owner.machines.create(location: "Jim's Mixed Drinks")
      snack_1 = Snack.create(name:'Snickers', price: 1.80)

      dons.snacks << snack_1
      bobs.snacks << snack_1
      jims.snacks << snack_1

      visit snack_path(snack_1)
    end

    it 'the count of snacks in those machines' do
      owner = Owner.create(name: "Sam's Snacks")
      dons  = owner.machines.create(location: "Don's Mixed Drinks")
      bobs  = owner.machines.create(location: "Bob's Mixed Drinks")
      jims  = owner.machines.create(location: "Jim's Mixed Drinks")
      snack_1 = Snack.create(name:'Snickers', price: 1.80)

      dons.snacks << snack_1
      bobs.snacks << snack_1
      jims.snacks << snack_1

      visit snack_path(snack_1)
    end

  end

end
