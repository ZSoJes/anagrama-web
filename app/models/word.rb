class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams_words(user_word)
    word_u = Word.where(["palabra = :palabra", { palabra: user_word.downcase}])
    anagrams_words = Word.where(["canonical = :canonical", { canonical: word_u.first.canonical}])
  end
end
