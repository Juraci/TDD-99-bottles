require_relative '../lib/bottles'

describe '99 Bottles' do
  describe '#verse' do
    it 'verse(99) returns the first verse' do
      expected = "99 bottles of beer on the wall, 99 bottles of beer.\n" +
        "Take one down and pass it around, 98 bottles of beer on the wall.\n"

      expect(::Bottles.new.verse(99)).to eq(expected)
    end
  end
end
