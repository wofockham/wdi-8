var data = {
    labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    datasets: [
        {
            label: "Maximum average temperatures",
            fillColor: "rgba(220,220,220,0.2)",
            strokeColor: "rgba(220,220,220,1)",
            pointColor: "rgba(220,220,220,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(220,220,220,1)",
            data: []
        },
        {
            label: "Minimum average temperatures",
            fillColor: "rgba(151,187,205,0.2)",
            strokeColor: "rgba(151,187,205,1)",
            pointColor: "rgba(151,187,205,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(151,187,205,1)",
            data: []
        }
    ]
};

$(document).ready(function () {
    var $chart = $('#weather');
    if ($chart.length === 0) {
        return;
    }
    var ctx = $chart.get(0).getContext('2d');

    var maxRequest = $.getJSON('/temperatures/max').done(function (maximums) {
        data.datasets[0].data = maximums;
    });

    var minRequest = $.getJSON('/temperatures/min').done(function (minimums) {
        data.datasets[1].data = minimums;
    });

    $.when(maxRequest, minRequest).then(function () {
        var myLineChart = new Chart(ctx).Line(data);
    });

});

