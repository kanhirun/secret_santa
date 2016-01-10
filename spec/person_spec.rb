require 'lib/person'

describe Person do
  it 'knows about first name' do
    person = Person.new(first_name: 'Arya')

    expect(person.first_name).to eq 'Arya'
  end

  it 'must have a first name' do
    expect do
      Person.new(first_name: '')
    end.to raise_error(Person::ValidationError, 'Person must have a first name.')
  end
end
