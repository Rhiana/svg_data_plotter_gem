Gem::Specification.new do |s|
  s.name      = %q{svg_data_plotter_gem}
  s.version   = "0.0.4"
  s.licenses  = ["MIT"]
  s.date      = %q{2019-04-05}
  s.authors   = ["Rhiana Heath"]
  s.email     = %q{rhiana@heath.cc}
  s.homepage  = "https://svg-graphs-on-rails.herokuapp.com/"
  s.summary   = %q{svg_data_plotter_gem is for generating svg graphs}
  s.metadata    = { "source_code_uri" => "https://github.com/Rhiana/svg_data_plotter_gem" }
  s.files      = [
    "lib/svg_data_plotter_gem.rb",
    "lib/svg_data_plotter/circle.rb",
    "lib/svg_data_plotter/gauge.rb"
  ]
  s.require_paths = ["lib"]
end
