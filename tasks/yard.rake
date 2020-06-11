require 'yard'

YARD::Rake::YardocTask.new do |t|
  t.files   = ['Ruby/lib/**/*.rb']   # optional
  t.options = [] # optional
end
