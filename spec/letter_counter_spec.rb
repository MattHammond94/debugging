require 'letter_counter'

describe LetterCounter do
  context 'capitals included' do
    it 'Should return the most comming letter next to its count' do
      word = LetterCounter.new("Lady Clam Hat the Third")
      word_2 = LetterCounter.new("AABBBCCCCCCDDEFFFC")
      word_3 = LetterCounter.new("XXXXXyyyyyY")
      word_4 = LetterCounter.new("And then there was one")
      word_5 = LetterCounter.new("12aacbXXX!.!!34caA...X")
      # word_6 = LetterCounter.new("1234")
      expect(word.calculate_most_common).to eq [3, "a"]
      expect(word_2.calculate_most_common).to eq [7, "C"]
      expect(word_3.calculate_most_common).to eq [5, "X"]
      expect(word_4.calculate_most_common).to eq [4, "e"]
      expect(word_5.calculate_most_common).to eq [4, "X"]
      # expect(word_6.calculate_most_common).to eq []
    end
  end
end