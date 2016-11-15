$(document).ready(function () {
    size_li = $("#comments-list li").size();
    x=3;
    $('#comments-list li:lt('+x+')').show();
    $('#loadMore').click(function () {
        x= (x+5 <= size_li) ? x+5 : size_li;
        $('#comments-list li:lt('+x+')').show();
    });
    $('#showLess').click(function () {
        x=(x-5<0) ? 3 : x-5;
        $('#comments-list li').not(':lt('+x+')').hide();
    });
});