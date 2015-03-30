$(document).ready(function () {
  var points = [4, 8, 15, 16, 23, 42, 200];

  var x = d3.scale.linear()
    .domain([0, d3.max(points)])
    .range([0, $(window).width() - 100]);

  d3.select('.chart')
    .selectAll('div')
    .data(points)
    .enter().append('div')
    .style('width', function(d) { return x(d) + 'px'; })
    .text(function(d) { return d; });
});