require 'lib/person'


describe Person, '#new' do
  it 'knows about first name' do
    subject = Person.new(first_name: 'Arya')

    expect(subject.first_name).to eq 'Arya'
  end

  it 'must have a first name' do
    expect do
      Person.new(first_name: '')
    end.to raise_error(Person::ValidationError, 'Person must have a first name.')
  end
end
