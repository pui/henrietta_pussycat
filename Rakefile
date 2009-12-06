require 'rake'
require 'rake/testtask'
require 'rcov/rcovtask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "henrietta_pussycat"
    s.summary = "Replaces words with 'meow' in strings in different ways"
    s.email = "erica.kwan@gmail.com"
    s.homepage = "http://github.com/pui/henrietta_pussycat"
    s.description = "Replaces words with 'meow' in strings in different ways"
    s.authors = ["Erica Kwan"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

Rcov::RcovTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

task :default => :test