require 'rails_helper'

feature 'When a user visits a vending machine show page' do
  scenario 'they see the location of that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end

  it 'they see all the snacks in that machine and their prices' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack_1 = dons.snacks.create(name:'Snickers', price: 1.80)
    snack_2 = dons.snacks.create(name:'Reeses', price: 1.90)

    visit machine_path(dons)

    within('#snacks') do
      expect(page).to have_content(snack_1.name)
      expect(page).to have_content("Price: $1.80")
      expect(page).to have_content(snack_2.name)
      expect(page).to have_content("Price: $1.90")
    end
  end

  it 'They see the average price of all the snacks' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack_1 = dons.snacks.create(name:'Snickers', price:1.00)
    snack_2 = dons.snacks.create(name:'Reeses', price:2.00)
    snack_3 = dons.snacks.create(name:'100Grand', price:3.00)

    visit machine_path(dons)

    within('#snacks') do
      expect(page).to have_content("Average Price: $2.00")
    end
  end
end
