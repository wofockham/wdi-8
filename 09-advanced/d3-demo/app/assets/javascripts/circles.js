$(document).ready(function () {

  var svg = d3.select('svg');

  var points = [32, 57, 112, 293, 500, 1000];

  var newCircles = svg.selectAll('circle')
    .data(points)
    .enter()
    .append('circle');

  newCircles.style('fill', 'steelblue');
  newCircles.attr('cy', 60);
  newCircles.attr('r', function (d) { return Math.sqrt(d); });
  newCircles.attr('cx', function (d, i) { return i * 100 + 30; });

  var circles = svg.selectAll('circle')
    .data([32, 57])
    .exit()
    .remove();

});