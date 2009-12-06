module HenriettaPussycat
  class Meow
    def self.random_meow_insert(sentence)
      pick_string = sentence.gsub(/[^\w]/i, "")
      index = rand(pick_string.length - 1)
      substitute_character = pick_string[index..index]
      sentence.gsub(/\b\w*#{substitute_character}\w*\b/i, "meow")
    end
    
    # TODO: Do not replace Mr. Rogers
    def self.classic_meow_insert(sentence)
      mod_sentence = String.new(sentence)
      sentence.scan(/\w+\'*\w*/) do |word|
        unless word.match(/\bbeautiful\b|\btelephone\b/i)
          mod_sentence.gsub!(/\b#{word}\b/, "meow")
        end
      end
      mod_sentence
    end
  end
end

