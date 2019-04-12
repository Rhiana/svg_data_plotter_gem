require 'svg_data_plotter_gem'
@score = 50
@total = 100
@size  = 200

circle = SvgDataPlotterGem::Circle.new({
  score: @score,
  total: @total,
  size: @size,
})

puts circle.percentage
puts circle.circumference
puts circle.score
