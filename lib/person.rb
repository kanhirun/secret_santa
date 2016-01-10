class Person
  attr_reader :first_name

  def initialize(first_name:)
    @first_name = validate_presence_of(first_name)
  end

  def sisters
    @sisters ||= []
  end

  def add_sister(new_sister)
    sisters << new_sister

    # Creates a circular relation
    new_sister.sisters << self
  end

  private

    # TODO: move validation logic out
    class ValidationError < StandardError; end
    def validate_presence_of(first_name)
      if first_name.empty?
        raise ValidationError.new('Person must have a first name.')
      end
      first_name
    end
end
