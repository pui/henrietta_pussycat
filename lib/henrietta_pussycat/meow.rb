module HenriettaPussycat
  class Meow
    def random_meow_insert(sentence)
      pick_string = sentence.gsub(/[^\w]/i, "")
      index = rand(pick_string.length - 1)
      substitute_character = pick_string[index..index]
      sentence.gsub(/\b\w*#{substitute_character}\w*\b/i, "meow")
    end
    
    # TODO: Get this working with 'Mr. Rogers'
    def classic_meow_insert(sentence)
      meow_array = []
      sentence.each(" ") do |word|
        if word.match(/\bbeautiful\b|\btelephone\b/)
          meow_array << word
        else
          meow_array << word.gsub(/[a-zA-Z_\']+/, 'meow')
        end
      end
      meow_sentence = meow_array.empty? ? sentence : meow_array.join
    end
  end  
end  