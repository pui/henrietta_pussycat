module HenriettaPussycat
  class Meow
    def self.random_meow_insert(sentence)
      pick_string = sentence.gsub(/[^\w]/i, "")
      index = rand(pick_string.length - 1)
      substitute_character = pick_string[index..index]
      sentence.gsub(/\b\w*#{substitute_character}\w*\b/i, "meow")
    end

    def self.classic_meow_insert(sentence, word_array=['beautiful', 'telephone', 'Mr. Rogers'])
      if word_array.size > 0
        match_word = word_array.pop
        chunks = sentence.split(/\b(#{match_word})\b/i)
        chunks.map! do |chunk|
          if chunk.match(/\b(#{match_word})\b/i)
            chunk
          else
            classic_meow_insert(chunk, Array.new(word_array))
          end
        end
        chunks.join("")
      else
        sentence.gsub(/\w+\'*\w*/, "meow")
      end
    end
  end
end