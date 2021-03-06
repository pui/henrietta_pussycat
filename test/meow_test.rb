require File.dirname(__FILE__) + '/test_helper'

include HenriettaPussycat

class MeowTest < Test::Unit::TestCase

  context "Using Meow" do

    context "random_meow_insert" do
      should "return an empty string if an empty string is passed" do
        sentence = Meow.random_meow_insert("   ")
        assert sentence.strip.empty?
      end

      should "replace words in a string randomly with meows" do
        sentence = Meow.random_meow_insert("It's a beautiful day in the neighborhood, a beautiful day in the neighborhood.")
        assert sentence.include?("meow")
      end
    end
  
    context "classic_meow_insert" do
     should "return an empty string if an empty string is passed" do
        sentence = Meow.classic_meow_insert("   ")
        assert sentence.strip.empty?
      end

      should "return a sentence full of meows when 'beautiful', 'telephone' and 'Mr. Rogers' are not present" do
        sentence = Meow.classic_meow_insert("Beautifully designed spoons, cups and forks.")
        assert_equal "meow meow meow, meow meow meow.", sentence
      end

      should "replace all words in a string with meows when the word is not 'beautiful', 'telephone' or 'Mr. Rogers'" do
        sentence = Meow.classic_meow_insert("It's a beautiful day Mr. Rogers, in the neighborhood, a beautiful day in the neighborhood.  Telephone!")
        assert_equal "meow meow beautiful meow Mr. Rogers, meow meow meow, meow beautiful meow meow meow meow.  Telephone!", sentence
      end
    end

  end

end
