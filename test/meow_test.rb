require File.dirname(__FILE__) + '/test_helper'

include HenriettaPussycat

class MeowTest < Test::Unit::TestCase              
  
  context "Using Meow instance" do
    setup do
      @meow = Meow.new 
    end  
    
    context "random_meow_insert" do
      should "return an empty string if an empty string is passed" do
        sentence = @meow.random_meow_insert("   ")
        assert sentence.strip.empty?
      end  
    
      should "replace words in a string randomly with meows" do
        sentence = @meow.random_meow_insert("It's a beautiful day in the neighborhood, a beautiful day in the neighborhood.")
        assert sentence.include?("meow")
      end
    end
  
    context "classic_meow_insert" do
     should "return an empty string if an empty string is passed" do
        sentence = @meow.classic_meow_insert("   ")
        assert sentence.strip.empty?
      end
      
      should "replace all words in a string with meows when the word is not 'beautiful' and 'telephone'" do
        sentence = @meow.classic_meow_insert("It's a beautiful day in the neighborhood, a beautiful day in the neighborhood.")
        assert sentence == "meow meow beautiful meow meow meow meow, meow beautiful meow meow meow meow."
      end
      
      should "return a sentence full of meows when 'beautiful' and 'telephone' are not present" do
        sentence = @meow.classic_meow_insert("Beautifully designed spoons, cups and forks.")
        assert sentence == "meow meow meow, meow meow meow."
      end 
    end
  end  
end      