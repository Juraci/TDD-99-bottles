class Bottles
  def verse(number)
    bottle_number = BottleNumber.for(number)

    "#{bottle_number} of beer on the wall, #{bottle_number} of beer.\n".capitalize +
    "#{bottle_number.action}, #{bottle_number.successor} of beer on the wall.\n"
  end

  def verses(starting, ending)
    starting.downto(ending).collect { |v| verse(v) }.join()
  end

  def song
    verses(99, 0)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.for(number)
    case number
    when 0
      BottleNumber0.new(number)
    when 1
      BottleNumber1.new(number)
    else
      BottleNumber.new(number)
    end
  end

  def to_s
    "#{quantity} #{container}"
  end

  def successor
    BottleNumber.for(number - 1)
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def quantity
    number.to_s
  end

  def pronoun
    "one"
  end

  def container
    "bottles"
  end
end

class BottleNumber0 < BottleNumber
  def quantity
    "no more"
  end

  def action
    "Go to the store and buy some more"
  end

  def successor
    BottleNumber.for(99)
  end
end

class BottleNumber1 < BottleNumber
  def pronoun
    "it"
  end

  def container
    "bottle"
  end
end
