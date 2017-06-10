require_relative '../lib/bottles'
require_relative './entire_song'

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

    it 'returns the 0 verse' do
      expected = "No more bottles of beer on the wall, no more bottles of beer.\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

      expect(::Bottles.new.verse(0)).to eq(expected)
    end

    context 'when requesting the 7th verse' do
      it 'returns 1 six-pack in the place of 6 bottles' do
        expected = "7 bottles of beer on the wall, 7 bottles of beer.\n" +
          "Take one down and pass it around, 1 six-pack of beer on the wall.\n"

        expect(::Bottles.new.verse(7)).to eq(expected)
      end
    end

    context 'when requesting the 6th verse' do
      it 'returns 1 six-pack in the place of 6 bottles' do
        expected = "1 six-pack of beer on the wall, 1 six-pack of beer.\n" +
          "Take one down and pass it around, 5 bottles of beer on the wall.\n"

        expect(::Bottles.new.verse(6)).to eq(expected)
      end
    end
  end

  describe '#verses' do
    context 'when asking verses from 99 to 98' do
      it 'returns the verses' do
        expected = "99 bottles of beer on the wall, 99 bottles of beer.\n" +
          "Take one down and pass it around, 98 bottles of beer on the wall.\n" +
          "98 bottles of beer on the wall, 98 bottles of beer.\n" +
          "Take one down and pass it around, 97 bottles of beer on the wall.\n"

        expect(::Bottles.new.verses(99, 98)).to eq(expected)
      end
    end

    context 'when asking verses from 2 until 0' do
      it 'returns the verses' do
        expected = "2 bottles of beer on the wall, 2 bottles of beer.\n" +
          "Take one down and pass it around, 1 bottle of beer on the wall.\n" +
          "1 bottle of beer on the wall, 1 bottle of beer.\n" +
          "Take it down and pass it around, no more bottles of beer on the wall.\n" +
          "No more bottles of beer on the wall, no more bottles of beer.\n" +
          "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

        expect(::Bottles.new.verses(2, 0)).to eq(expected)
      end
    end
  end

  describe '#song' do
    it 'returns the whole song' do
      expected = Song.get

      expect(::Bottles.new.song).to eq(expected)
    end
  end
end
