require 'rake/testtask'

Rake::TestTask.new do |t|
  # t.libs << 'minitest/autorun'
  # t.libs << './src/*.rb'
  t.test_files = FileList['spec/test*.rb']
  t.verbose = true
end