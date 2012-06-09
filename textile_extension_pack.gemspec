Gem::Specification.new do |gem|
  gem.name = 'textile_extension_pack'
  gem.version = '0.0.6'
  gem.date = '2012-03-11'
  gem.summary = "Textile extension pack"
  gem.description = "Extends textile with some custom tags."
  gem.authors = ["Patrik Jíra"]
  gem.email = 'patrikjira@gmail.com'
  gem.files = Dir["{lib}/**/**/*"] + ["MIT-LICENSE", "Rakefile", "README.textile"]
  gem.homepage = "http://github.com/papricek/textile_extension_pack"
  gem.add_dependency "RedCloth"
end