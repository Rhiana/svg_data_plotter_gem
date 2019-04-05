# svg_data_plotter_gem
WIP: Do not use yet

Ruby Gem for plotting data on an SVG graph

This gem will be taking aspects of my [SVG graphs on rails project](https://svg-graphs-on-rails.herokuapp.com/) and turning it into a ruby gem.

What it does currently is generate 5 different type of graphs from Ruby code into an embedded SVG graph.
 - Bar graph
 - Circle graph
 - Gauge graph
 - Pie graph
 - Line graph

 The aim is for someone to be able to install this gem and generate a graph in the view like this:

 `<%= SvgDataPlotter::LineGraph.new(self, line_graph.scores, line_graph.maximum, line_graph.size).render %>`
