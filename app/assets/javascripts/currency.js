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
    var zarToInr;

    var calculateRate = function (data) {
        var aud = data["rates"]["AUD"];
        var brl = data["rates"]["BRL"];
        var cad = data["rates"]["CAD"];
        var cny = data["rates"]["CNY"];
        var eur = data["rates"]["EUR"];
        var gbp = data["rates"]["GBP"];
        var inr = data["rates"]["INR"];
        var usd = data["rates"]["USD"];
        var zar = data["rates"]["ZAR"];

        audToInr = inr / aud;
        brlToInr = inr / brl;
        cadToInr = inr / cad;
        cnyToInr = inr / cny;
        eurToInr = inr / eur;
        gbpToInr = inr / gbp;
        usdToInr = inr / usd;
        zarToInr = inr / zar;

        nationalities = new Array();
        nationalities.push(new nationality("Australian Dollar", audToInr));
        nationalities.push(new nationality("Brazilian Real", brlToInr));
        nationalities.push(new nationality("Canadian Dollar", cadToInr));
        nationalities.push(new nationality("Chinese Yuan", cnyToInr));
        nationalities.push(new nationality("Euro", eurToInr));
        nationalities.push(new nationality("British Pound", gbpToInr));
        nationalities.push(new nationality("US Dollar", usdToInr));
        nationalities.push(new nationality("South African Rand", zarToInr));

        renderToRupee();
        renderFromRupee();
        renderMoney()
    };

    function nationality(name, rate) {
        this.currencyName = name;
        this.currencyRate = rate;
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
        var table = $("#otherToRupees").html("");
        for (var i in nationalities) {
            table.append(getOtherToRupeesRow(nationalities[i]));
        }
    };

    var getOtherToRupeesRow = function (nat) {
        return "<tr><td>" + nat.currencyName + "</td><td>=</td>" +
               "<td class='valueColumn'>" + toRupee(nat.currencyRate).toFixed(2) + "</td>" +
               "<td class='currencyColumn'> Indian Rupee</td></tr>";
    };

    var renderFromRupee = function () {

        $("#rupeesToOther").html("")
            .append("<tr><td>Indian Rupee</td><td>=</td><td class='valueColumn'>" + fromRupee(audToInr).toFixed(2) + "</td><td class='currencyColumn'>Australian Dollars</td></tr>")
            .append("<tr><td>Indian Rupee</td><td>=</td><td class='valueColumn'>" + fromRupee(brlToInr).toFixed(2) + "</td><td class='currencyColumn'>Brazilian Real</td></tr>")
            .append("<tr><td>Indian Rupee</td><td>=</td><td class='valueColumn'>" + fromRupee(cadToInr).toFixed(2) + "</td><td class='currencyColumn'>Canadian Dollar</td></tr>")
            .append("<tr><td>Indian Rupee</td><td>=</td><td class='valueColumn'>" + fromRupee(cnyToInr).toFixed(2) + "</td><td class='currencyColumn'>Chinese Yuan</td></tr>")
            .append("<tr><td>Indian Rupee</td><td>=</td><td class='valueColumn'>" + fromRupee(eurToInr).toFixed(2) + "</td><td class='currencyColumn'>Euro</td></tr>")
            .append("<tr><td>Indian Rupee</td><td>=</td><td class='valueColumn'>" + fromRupee(gbpToInr).toFixed(2) + "</td><td class='currencyColumn'>British Pound</td></tr>")
            .append("<tr><td>Indian Rupee</td><td>=</td><td class='valueColumn'>" + fromRupee(usdToInr).toFixed(2) + "</td><td class='currencyColumn'>US Dollar</td></tr>")
            .append("<tr><td>Indian Rupee</td><td>=</td><td class='valueColumn'>" + fromRupee(zarToInr).toFixed(2) + "</td><td class='currencyColumn'>South African Rand</td></tr>");
    };

    var renderMoney = function () {
        $(".note").hide();
        if (amount < 3) {
            $("#johannes").show();
        } else if (amount < 10) {
            $("#ste").show();
        } else if (amount < 30) {
            $("#greg").show();
        } else if (amount < 80) {
            $("#jr").show();
        } else if (amount < 500) {
            $("#ruoran").show();
        } else if (amount < 2000) {
            $("#solon").show();
        } else if (amount < 200000) {
            $("#erlangga").show();
        } else {
            $("#mewan").show();
        }
    };

    $("#amount").bind("input", function () {
        var value = $("#amount").val();
        if (isNaN(value)) {
            $("#amount").val(amount);
        } else {
            amount = (value && parseFloat(value) > 0) ? value : 1;
        }

        renderToRupee();
        renderFromRupee();
        renderMoney()
    })
});