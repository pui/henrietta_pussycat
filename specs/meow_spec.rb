require File.dirname(__FILE__) + '/spec_helper'

include HenriettaPussycat

describe Meow do
  
  it "instantiates without any arguments" do
      lambda { Meow.new }.should_not raise_error
      lambda { Meow.new("some text") }.should raise_error(ArgumentError)
    end
    
  describe "random_meow_insert" do
    it "replaces words in a string randomly with meows" do
      meow = Meow.new
      sentence = meow.random_meow_insert("It's a beautiful day in the neighborhood, a beautiful day in the neighborhood.")
      sentence.should include("meow")
    end
  end
  
  describe "classic_meow_insert" do
    it "replaces all words in a string with meows when the word is not 'beautiful, 'Mr. Rogers' and 'telephone'" do
      meow = Meow.new
      meow.classic_meow_insert("A beautiful day in the neighborhood")
    end  
  end  
end  