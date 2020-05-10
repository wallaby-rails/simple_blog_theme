$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "simple_blog_theme/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "simple_blog_theme"
  spec.version     = SimpleBlogTheme::VERSION
  spec.authors     = ["Tian"]
  spec.email       = ["me@tian.im"]
  spec.homepage    = "https://github.com/tian-im/simple_blog_theme"
  spec.summary     = "A Wallaby blog theme based on Bootstrap4."
  spec.description = "A Wallaby blog theme based on Bootstrap4."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "wallaby-core"
  spec.add_dependency "wallaby-active_record"
end
