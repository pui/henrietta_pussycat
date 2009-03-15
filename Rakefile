require 'echoe'
require 'rake'
require 'rubygems'

  Echoe.new("henrietta_pussycat", "0.1.0") do |p|
    p.author = "Erica Kwan"
    p.summary = "Replaces words with 'meow' in strings in different ways"
    p.email = "erica.kwan@gmail.com"
    p.runtime_dependencies = []
  end
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }  