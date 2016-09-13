function widthFunctions(e) {
    $(".timeline") && $(".timeslot").each(function() {
        var e = $(this).find(".task").outerHeight();
        $(this).css("height", e);
    });
    var t = $("#sidebar-left").outerHeight(),
    n = $("#content").height(),
    r = $("#content").outerHeight(),
    i = $("header").height(),
    s = $("footer").height(),
    o = $(window).height(),
    u = $(window).width();
    if (u < 992) {
        $("#main-menu-min").removeClass("minified").addClass("full").find("i").removeClass("fa-angle-double-right").addClass("fa-angle-double-left");
        $("body").removeClass("sidebar-minified");
        $("#content").removeClass("sidebar-minified");
        $("#sidebar-left").removeClass("minified");
    }
    if (u > 767) {
        o - 80 > t && $("#sidebar-left").css("min-height", o - i - s);
        o - 80 > n && $("#content").css("min-height", o - i - s);
    } else $("#sidebar-left").css("min-height", "0px");
    u < 768 ? $(".chat-full") && $(".chat-full").each(function() {
        $(this).addClass("alt");
    }) : $(".chat-full") && $(".chat-full").each(function() {
        $(this).removeClass("alt");
    });
}

jQuery(document).ready(function(e) {

    e(".btn-minimize").click(function(t) {
        t.preventDefault();
        var n = e(this).parent().parent().next(".box-content");
        n.is(":visible") ? e("i", e(this)).removeClass("fa-chevron-up").addClass("fa-chevron-down") : e("i", e(this)).removeClass("fa-chevron-down").addClass("fa-chevron-up");
        n.slideToggle("slow",
        function() {
            widthFunctions();
        });
    });
});

jQuery(document).ready(function(e) {
    e("#main-menu-toggle").click(function() {
        if (e(this).hasClass("open")) {
            e(this).removeClass("open").addClass("close");
            var t = e("#content").attr("class"),
            n = parseInt(t.replace(/^\D+/g, "")),
            r = n + 2,
            i = "span" + r;
            e("#content").addClass("full");
            e(".navbar-brand").addClass("noBg");
            e("#sidebar-left").hide();
        } else {
            e(this).removeClass("close").addClass("open");
            var t = e("#content").attr("class"),
            n = parseInt(t.replace(/^\D+/g, "")),
            r = n - 2,
            i = "span" + r;
            e("#content").removeClass("full");
            e(".navbar-brand").removeClass("noBg");
            e("#sidebar-left").show();
        }
    });
    e("#main-menu-min").click(function() {
        if (e(this).hasClass("full")) {
            e(this).removeClass("full").addClass("minified").find("i").removeClass("fa-angle-double-left").addClass("fa-angle-double-right");
            e("body").addClass("sidebar-minified");
            e("#content").addClass("sidebar-minified");
            e("#sidebar-left").addClass("minified");
            e(".dropmenu > .chevron").removeClass("opened").addClass("closed");
            e(".dropmenu").parent().find("ul").hide();
            e("#sidebar-left > div > ul > li > a > .chevron").removeClass("closed").addClass("opened");
            e("#sidebar-left > div > ul > li > a").addClass("open");
        } else {
            e(this).removeClass("minified").addClass("full").find("i").removeClass("fa-angle-double-right").addClass("fa-angle-double-left");
            e("body").removeClass("sidebar-minified");
            e("#content").removeClass("sidebar-minified");
            e("#sidebar-left").removeClass("minified");
            e("#sidebar-left > div > ul > li > a > .chevron").removeClass("opened").addClass("closed");
            e("#sidebar-left > div > ul > li > a").removeClass("open");
        }
    });
    e(".dropmenu").click(function(t) {
        t.preventDefault();
        if (e("#sidebar-left").hasClass("minified")) {
            if (!e(this).hasClass("open")) {
                e(this).parent().find("ul").first().slideToggle();
                e(this).find(".chevron").hasClass("closed") ? e(this).find(".chevron").removeClass("closed").addClass("opened") : e(this).find(".chevron").removeClass("opened").addClass("closed");
            }
        } else {
            e(this).parent().find("ul").first().slideToggle();
            e(this).find(".chevron").hasClass("closed") ? e(this).find(".chevron").removeClass("closed").addClass("opened") : e(this).find(".chevron").removeClass("opened").addClass("closed");
        }
    });
    if (e("#sidebar-left").hasClass("minified")) {
        e("#sidebar-left > div > ul > li > a > .chevron").removeClass("closed").addClass("opened");
        e("#sidebar-left > div > ul > li > a").addClass("open");
        e("body").addClass("sidebar-minified");
    }
});

jQuery(document).ready(function(e) {
    e("ul.main-menu").find("a").each(function() {
        if (e(e(this))[0].href == String(window.location)) {
            e(this).parent().addClass("active");
            e(this).parents("ul").add(this).each(function() {
                e(this).show();
                e(this).prev("a").find(".chevron").removeClass("closed").addClass("opened");
            });
        }
    });
});

jQuery(document).ready(function(e) {
    e("#searchTypeOption").next("ul").find("li").click(function(t) {
        t.preventDefault();
        e(this).parent().parent().find('button').text(e(this).find("a").text());
        var hiddenInput = e(this).parent().parent().next("input[type='hidden']");
        hiddenInput.attr('value', e(this).data("option"));
    });

    e("#stateOption").next("ul").find("li").click(function(t) {
        t.preventDefault();
        e(this).parent().parent().find('button').text(e(this).find("a").text());
        var hiddenInput = e(this).parent().parent().next("input[type='hidden']");
        hiddenInput.attr('value', e(this).data("option"));
    });

    var editable = 1; 
    // 每次只能点击一行的编辑按钮

    e(".btn-edit").click(function(t) {
        t.preventDefault();
        if (editable == 1) {
            e(this).addClass('disabled');
            e(this).next("button").addClass('disabled');
            var editRow = e("tr[id='editRow']");
            e(this).parent().parent().after(editRow);
            editRow.attr('style', 'display:table-row');

            var curID = e(this).parent().parent().find('td').first().text();
            e('#id').attr('value', curID);
            editable = 0;
        }else {
            alert("请先完成其他行的编辑");
        };
    });

    e(".btn-update").click(function(t) {
        editable = 1;
        e("td button").removeClass("disabled");
        e('table').find("tr[id='editRow']").attr('style', 'display:none;');

    });
    
    e(".btn-cancle").click(function(t) {
        editable = 1;
        e("td button").removeClass("disabled");
        e('table').find("tr[id='editRow']").attr('style', 'display:none;');

    });


    e(".btn-admin-edit").click(function(t) {
        t.preventDefault();
        var editRow = "<tr><td colspan=\"6\"></td></tr>";
        var curRow = e(this).parent().parent();
        curRow.after(editRow);
        // var n = e(this).parent().parent().next(".box-content");
        // n.is(":visible") ? 
        //     e("i", e(this)).removeClass("fa-chevron-up").addClass("fa-chevron-down") : 
        //     e("i", e(this)).removeClass("fa-chevron-down").addClass("fa-chevron-up");
        editRow.slideToggle("slow",
        function() {
            widthFunctions();
        });
    });
    e(".btn-delete").popover('toggle');
});




jQuery(document).ready(function($) {
    if ($('form').length > 0) {
        $('form').validate({
            onKeyup : true,
            eachValidField : function() {
                $(this).closest('div').removeClass('has-error').addClass('has-success');
            },
            eachInvalidField : function() {
                $(this).closest('div').removeClass('has-success').addClass('has-error');
            }
        });
    }
    $('input[data-pattern]').tooltip({
        container: 'body'
    });
});