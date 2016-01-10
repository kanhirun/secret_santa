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


describe Person, '#sisters' do
  let(:subject) { Person.new(first_name: 'Foo') }

  context 'when they have no sisters' do
    it 'returns an empty relation' do
      expect(subject.sisters).to be_empty
    end
  end

  context 'when they have sister(s)' do
    it 'returns their sisters' do
      sister  = spy(Person)
      subject.add_sister(sister)

      expect(subject.sisters).to include sister
    end

    it 'defines a circular relation' do
      jane = Person.new(first_name: 'Sister A')
      jessie = Person.new(first_name: 'Sister B')

      jane.add_sister(jessie)

      expect(jessie.sisters).to include jane
    end
  end
end
