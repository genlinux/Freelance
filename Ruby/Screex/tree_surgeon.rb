#This code has been taken from  Jay Field's thoughts blog
#http://blog.jayfields.com/2006/10/ruby-project-tree.html
require 'fileutils'

project_name = ARGV[0]
lib = project_name + "/lib"
test = project_name + "/test"
rakefile = project_name + '/rakefile.rb'
all_tests = test + "/all_tests.rb"
main = project_name + "/lib/" + project_name + ".rb"
test_helper = test + "/test_helper.rb"

FileUtils.rm_rf project_name

puts "creating: " + project_name
Dir.mkdir project_name

puts "creating: " + lib
Dir.mkdir lib

puts "creating: " + test
Dir.mkdir test

puts "creating: " + rakefile
File.open(rakefile, 'w') do |file|
  file << <<-eos
task :default => :test

task :test do
  require File.dirname(__FILE__) + '/test/all_tests.rb'
end
eos
end

puts "creating: " + all_tests
File.open(all_tests, 'w') do |file|
  file << "Dir['**/*_test.rb'].each { |test_case| require test_case }"
end

puts "creating: " + main
FileUtils.touch main

puts "creating: " + test_helper
File.open(test_helper, 'w') do |file|
  file << <<-eos
require 'test/unit'
require File.dirname(__FILE__) + '/../lib/#{project_name}'
eos
end

