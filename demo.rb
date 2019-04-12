require 'svg_data_plotter_gem'

circle = SvgDataPlotterGem::Circle.new({
  score: 50,
  total: 100,
  size: 200,
})

puts circle.percentage
puts circle.circumference
