
var data = {
    labels : ["第 1 题","第 2 题","第 3 题","第 4 题","第 5 题","第 6 题","第 7 题","第 8 题","第 9 题","第 10 题"],
    datasets : [
        {
            fillColor : "rgba(220,220,220,0.5)",
            strokeColor : "rgba(220,220,220,1)",
            data : [65,59,3,81,56,65,59,3,81,56]
        },
        {
            fillColor : "rgba(151,187,205,0.5)",
            strokeColor : "rgba(151,187,205,1)",
            data : [28,48,40,19,50,28,48,40,19,50]
        },
        {
            fillColor : "rgba(151,187,205,0.5)",
            strokeColor : "rgba(151,187,205,1)",
            data : [55,40,80,11,67,15,48,8,80,87]
        },
        {
            fillColor : "rgba(151,187,205,0.5)",
            strokeColor : "rgba(151,187,205,1)",
            data : [88,68,40,29,70,68,38,50,99,10]
        }
    ]
};
$(function() {
    var ctx = $("#Chart").get(0).getContext("2d");
    var myNewChart = new Chart(ctx);
    myNewChart.Bar(data);
});