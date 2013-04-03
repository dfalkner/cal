require "rake/testtask"
 
Rake::TestTask.new(:minitest => "db:test:prepare") do |t|
t.libs << "test"
t.pattern = "test/**/*_test.rb"
end
 
task :default => :minitest

namespace :minitest do
  desc "Run model tests"
  Rake::TestTask.new(:models) do |t|
    t.libs << "test"
    t.pattern = "test/models/*_test.rb"
  end
end  