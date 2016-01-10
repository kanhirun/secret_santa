class Person
  attr_reader :first_name

  def initialize(first_name:)
    @first_name = validate_presence_of(first_name)
  end

  private

    class ValidationError < StandardError; end

    def validate_presence_of(first_name)
      if first_name.empty?
        raise ValidationError.new('Person must have a first name.')
      end

      first_name
    end
end
