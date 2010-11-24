task :default => 'test:unit'

namespace :test do
  task :unit do
    require 'test/unit'
    Dir['test/test_*.rb'].each {|testfile| require testfile }
  end
end