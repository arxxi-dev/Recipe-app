class WeightConverter
  def call(from_value, from_unit, to_unit)
    send("convert_#{from_unit}_to_#{to_unit}", from_value)
  rescue NoMethodError
    { errors: "Conversion #{from_unit} to #{to_unit} not supported" }
  end

  private

    def convert_cup_to_teaspoons(value)
      value * 48
    end

    def convert_cup_to_kilogram(value)
      value * 0.24
    end

    def convert_cup_to_gram(value)
      value * 250
    end

    def convert_teaspoons_to_cup(value)
      value * 0.0208333
    end

    def convert_teaspoons_to_gram(value)
      value * 5.69
    end

    def convert_teaspoons_to_kilogram(value)
      value * 0.004928921594
    end

    def convert_gram_to_cup(value)
      value * 0.004226752838
    end

    def convert_gram_to_teaspoons(value)
      value * 0.24
    end

    def convert_gram_to_kilogram(value)
      value * 0.001
    end

    # kilogram

    def convert_kilogram_to_cup(value)
      value * 4.226753
    end

    def convert_kilogram_to_gram(value)
      value * 1000
    end

    def convert_kilogram_to_teaspoons(value)
      value * 240
    end
end
