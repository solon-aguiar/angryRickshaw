$(document).ready(function () {
    $("#amount").val("");

    $.ajax({
        url:"http://openexchangerates.org/latest.json",
        dataType:"json",
        type:"GET",
        success:function (data) {
            calculateRate(data);
            getTimestamp(data);
        }
    });
    var amount = 1;
    var audToInr;
    var brlToInr;
    var cadToInr;
    var cnyToInr;
    var eurToInr;
    var gbpToInr;
    var usdToInr;

    var calculateRate = function (data) {
        var aud = data["rates"]["AUD"];
        var brl = data["rates"]["BRL"];
        var cad = data["rates"]["CAD"];
        var cny = data["rates"]["CNY"];
        var eur = data["rates"]["EUR"];
        var gbp = data["rates"]["GBP"];
        var inr = data["rates"]["INR"];
        var usd = data["rates"]["USD"];

        audToInr = inr / aud;
        brlToInr = inr / brl;
        cadToInr = inr / cad;
        cnyToInr = inr / cny;
        eurToInr = inr / eur;
        gbpToInr = inr / gbp;
        usdToInr = inr / usd;

        renderToRupee();
        renderFromRupee()
    };

    var getTimestamp = function (data) {
        var timestamp = new Date(data["timestamp"] * 1000);
        $("#timestamp").html("Updated at " + timestamp.toUTCString())
    };

    var toRupee = function (rate) {
        return amount * rate
    };

    var fromRupee = function (rate) {
        return amount / rate
    };

    var renderToRupee = function () {
        $("#otherToInr ul").html("");
        $("#otherToInr ul").append("<li>" + toRupee(audToInr).toFixed(2) + " Indian Rupee </li>");
        $("#otherToInr ul").append("<li>" + toRupee(brlToInr).toFixed(2) + " Indian Rupee </li>");
        $("#otherToInr ul").append("<li>" + toRupee(cadToInr).toFixed(2) + " Indian Rupee </li>");
        $("#otherToInr ul").append("<li>" + toRupee(cnyToInr).toFixed(2) + " Indian Rupee </li>");
        $("#otherToInr ul").append("<li>" + toRupee(eurToInr).toFixed(2) + " Indian Rupee </li>");
        $("#otherToInr ul").append("<li>" + toRupee(gbpToInr).toFixed(2) + " Indian Rupee </li>");
        $("#otherToInr ul").append("<li>" + toRupee(usdToInr).toFixed(2) + " Indian Rupee </li>");

        $("#otherCurrency ul").html("");
        $("#otherCurrency ul").append("<li>Australian Dollar = </li>");
        $("#otherCurrency ul").append("<li>Brazilian Real = </li>");
        $("#otherCurrency ul").append("<li>Canadian Dollar = </li>");
        $("#otherCurrency ul").append("<li>Chinese Yuan = </li>");
        $("#otherCurrency ul").append("<li>Euro = </li>");
        $("#otherCurrency ul").append("<li>British Pound = </li>");
        $("#otherCurrency ul").append("<li>US Dollar = </li>");
    };

    var renderFromRupee = function () {
        $("#inrToOther ul").html("");
        $("#inrToOther ul").append("<li>" + fromRupee(audToInr).toFixed(2) + " Australian Dollars </li>");
        $("#inrToOther ul").append("<li>" + fromRupee(brlToInr).toFixed(2) + " Brazilian Real </li>");
        $("#inrToOther ul").append("<li>" + fromRupee(cadToInr).toFixed(2) + " Canadian Dollar </li>");
        $("#inrToOther ul").append("<li>" + fromRupee(cnyToInr).toFixed(2) + " Chinese Yuan </li>");
        $("#inrToOther ul").append("<li>" + fromRupee(eurToInr).toFixed(2) + " Euro </li>");
        $("#inrToOther ul").append("<li>" + fromRupee(gbpToInr).toFixed(2) + " British Pound </li>");
        $("#inrToOther ul").append("<li>" + fromRupee(usdToInr).toFixed(2) + " US Dollar </li>");

        $("#indianRupee ul").html("");
        $("#indianRupee ul").append("<li>Indian Rupee = </li>");
        $("#indianRupee ul").append("<li>Indian Rupee = </li>");
        $("#indianRupee ul").append("<li>Indian Rupee = </li>");
        $("#indianRupee ul").append("<li>Indian Rupee = </li>");
        $("#indianRupee ul").append("<li>Indian Rupee = </li>");
        $("#indianRupee ul").append("<li>Indian Rupee = </li>");
        $("#indianRupee ul").append("<li>Indian Rupee = </li>")
    };

    $("#amount").bind("input", function () {
        var value = $("#amount").val();
        amount = (value && !isNaN(value) && parseFloat(value) > 0) ? value : 1;
        $("#other").text(amount);
        $("#india").text(amount);
        renderToRupee();
        renderFromRupee()
    })
});