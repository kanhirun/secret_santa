# TODO: Rewrite as an end-to-end test

Given(/^that we have Arya, Sansa, Petyr, and The Hound$/) do
  @arya  = Person.new(first_name: 'Arya')
  @sansa = Person.new(first_name: 'Sansa')
  @petyr = Person.new(first_name: 'Petyr')
  @hound = Person.new(first_name: 'The Hound')
end

Given(/^Arya and Sansa are sisters$/) do
  pending
  @arya.sisters << @sansa

  # guard assertion: two-way relationship
  expect(@arya.sisters).to include @sansa
  expect(@sansa.sisters).to include @arya
end

When(/^they do gift exchanges$/) do
  pending
  GiftExchange.assign(@arya, @sansa, @petyr, @hound)
end

Then(/^Arya should be assigned to either The Hound or Petyr$/) do
  pending
  expect(@arya.assigned_to).to eq(@hound).or(petr)
end

Then(/^Sansa should also be assigned to either The Hound or Petyr$/) do
  pending
  expect(@sansa.assigned_to).to eq(@hound).or(petr)
end
