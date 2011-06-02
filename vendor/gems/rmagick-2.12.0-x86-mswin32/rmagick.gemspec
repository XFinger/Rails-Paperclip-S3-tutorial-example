spec = Gem::Specification.new do |s|
  s.name = %q{rmagick}
  s.version = "2.12.0"
  s.date = Date.today.to_s
  s.summary = %q{RMagick is an interface between the Ruby programming language and ImageMagick.}
  s.description = %q{RMagick is a binding from Ruby to the ImageMagick image manipulation library.}
  s.authors = ["Tim Hunter"]
  s.email = %q{rmagick@rubyforge.org}
  s.homepage = %q{http://rubyforge.org/projects/rmagick}
  s.files = Dir.glob('**/*')
  s.bindir = 'bin'
  s.executables = Dir.glob('bin/*').collect {|f| File.basename(f)}
  s.require_paths << 'ext'
  s.rubyforge_project = %q{rmagick}
  s.has_rdoc = false
  s.required_ruby_version = '>= 1.8.5'
  s.requirements << 'The bundled ImageMagick (6.5.6-8)'
  s.platform = "mswin32"
  s.requirements << "A decent graphics card and monitor."
end

