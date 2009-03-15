module HenriettaPussycat
  class Meow
    def random_meow_insert(sentence)
      #Randomly pick a letter, then replace all words with that letter in it with meow
      pick_string = sentence.gsub(/[^\w]/i, "")
      index = rand(pick_string.length - 1)
      substitute_character = pick_string[index..index]
      sentence.gsub(/\b\w*#{substitute_character}\w*\b/i, "meow")
    end
    
    def classic_meow_insert(sentence)
    end 
  end  
end  