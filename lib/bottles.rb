class Bottles
  def verse(number)
    bottle_number = BottleNumber.new(number)
    next_bottle_number = BottleNumber.new(bottle_number.successor)

    "#{bottle_number} of beer on the wall, #{bottle_number} of beer.\n".capitalize +
    "#{bottle_number.action}, #{next_bottle_number} of beer on the wall.\n"
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

  def to_s
    "#{quantity} #{container}"
  end

  def successor
    if number == 0
      99
    else
      number - 1
    end
  end

  def action
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def quantity
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def pronoun
    if number == 1
      "it"
    else
      "one"
    end
  end

  def container
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end
end
