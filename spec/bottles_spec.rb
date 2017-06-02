require_relative '../lib/bottles'

describe '99 Bottles' do
  describe '#verse' do
    it 'returns the 99th verse' do
      expected = "99 bottles of beer on the wall, 99 bottles of beer.\n" +
        "Take one down and pass it around, 98 bottles of beer on the wall.\n"

      expect(::Bottles.new.verse(99)).to eq(expected)
    end

    it 'returns the 3th verse' do
      expected = "3 bottles of beer on the wall, 3 bottles of beer.\n" +
        "Take one down and pass it around, 2 bottles of beer on the wall.\n"

      expect(::Bottles.new.verse(3)).to eq(expected)
    end

    it 'returns the 2nd verse' do
      expected = "2 bottles of beer on the wall, 2 bottles of beer.\n" +
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"

      expect(::Bottles.new.verse(2)).to eq(expected)
    end

    it 'returns the 1st verse' do
      expected = "1 bottle of beer on the wall, 1 bottle of beer.\n" +
        "Take it down and pass it around, no more bottles of beer on the wall.\n"

      expect(::Bottles.new.verse(1)).to eq(expected)
    end
  end
end
