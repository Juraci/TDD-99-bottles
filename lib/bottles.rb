class Bottles
  def verse(amount)
    case amount
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{amount} bottles of beer on the wall, #{amount} bottles of beer.\n" +
      "Take one down and pass it around, #{amount - 1} bottles of beer on the wall.\n"
    end
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |amount| verse(amount) }.join()
  end

  def song
    verses(99, 0)
  end
end
