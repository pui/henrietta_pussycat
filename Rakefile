require 'rake'
require 'rake/testtask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "henrietta_pussycat"
    s.summary = "Replaces words with 'meow' in strings in different ways"
    s.email = "erica.kwan@gmail.com"
    s.homepage = "http://github.com/pui/henrietta_pussycat"
    s.description = "Replaces words with 'meow' in strings in different ways"
    s.authors = ["Erica Kwan", "Jacob Vorreuter"]
    s.add_development_dependency "shoulda", ">= 2.10"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: gem install jeweler"
end

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end
task :test => :check_dependencies

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |t|
    t.libs << "test"
    t.test_files = FileList['test/*_test.rb']
    t.verbose = true
  end
rescue LoadError
  puts "RCov is not installed. Install it with: gem install rcov"
end

task :default => :test