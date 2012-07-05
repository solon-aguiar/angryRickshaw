$(document).ready(function(){
	$("#yours").val("")
	$("#rupee").val("")

	$.ajax({
			url: "http://openexchangerates.org/latest.json",
			dataType: "json",
			type: "GET",
			success: function(data){
				calculateRate(data)
				getTimestamp(data)
			}
	})
	var amount = 1
	var audToInr
	var brlToInr
	var cadToInr
	var cnyToInr
	var eurToInr
	var gbpToInr
	var usdToInr

	var calculateRate = function(data){
		var aud = data["rates"]["AUD"]
		var brl = data["rates"]["BRL"]
		var cad = data["rates"]["CAD"]
		var cny = data["rates"]["CNY"]
		var eur = data["rates"]["EUR"]
		var gbp = data["rates"]["GBP"]
		var inr = data["rates"]["INR"]
		var usd = data["rates"]["USD"]

		audToInr = inr/aud
		brlToInr = inr/brl
		cadToInr = inr/cad
		cnyToInr = inr/cny
		eurToInr = inr/eur
		gbpToInr = inr/gbp
		usdToInr = inr/usd

		renderToRupee()
	}

	var getTimestamp = function(data){
		var timestamp = new Date(data["timestamp"] * 1000)
		$("#timestamp").html("Updated at " + timestamp.toUTCString())
	}

	var toRupee = function(rate){
		return amount * rate
	}

	var fromRupee = function(rate){
		return amount / rate
	}

	var renderToRupee = function(){
		$("#rate ul").html("")
		$("#rate ul").append("<h2>" + amount +"</h2>")
		$("#rate ul").append("<li>Australian Dollar = " + toRupee(audToInr).toFixed(2) + " Indian Rupee </li>")
		$("#rate ul").append("<li>Brazilian Real = " + toRupee(brlToInr).toFixed(2) + " Indian Rupee </li>")
		$("#rate ul").append("<li>Canadian Dollar = " + toRupee(cadToInr).toFixed(2) + " Indian Rupee </li>")
		$("#rate ul").append("<li>Chinese Yuan = " + toRupee(cnyToInr).toFixed(2) + " Indian Rupee </li>")
		$("#rate ul").append("<li>Euro = " + toRupee(eurToInr).toFixed(2) + " Indian Rupee </li>")
		$("#rate ul").append("<li>British Pound = " + toRupee(gbpToInr).toFixed(2) + " Indian Rupee </li>")
		$("#rate ul").append("<li>US Dollar = " + toRupee(usdToInr).toFixed(2) + " Indian Rupee </li>")
	}

	var renderFromRupee = function(){
		$("#rate ul").html("")
		$("#rate ul").append("<h2>" + amount +"</h2>")
		$("#rate ul").append("<li>Indian Rupee = " + fromRupee(audToInr).toFixed(2) + " Australian Dollars </li>")
		$("#rate ul").append("<li>Indian Rupee = " + fromRupee(brlToInr).toFixed(2) + " Brazilian Real </li>")
		$("#rate ul").append("<li>Indian Rupee = " + fromRupee(cadToInr).toFixed(2) + " Canadian Dollar </li>")
		$("#rate ul").append("<li>Indian Rupee = " + fromRupee(cnyToInr).toFixed(2) + " Chinese Yuan </li>")
		$("#rate ul").append("<li>Indian Rupee = " + fromRupee(eurToInr).toFixed(2) + " Euro </li>")
		$("#rate ul").append("<li>Indian Rupee = " + fromRupee(gbpToInr).toFixed(2) + " British Pound </li>")
		$("#rate ul").append("<li>Indian Rupee = " + fromRupee(usdToInr).toFixed(2) + " US Dollar </li>")
	}

	$("#yours").bind("input", function(){
		var value = $("#yours").val()
		amount = (value && !isNaN(value) && parseFloat(value) > 0)  ? value : 1
		renderToRupee()
	})

	$("#rupee").bind("input", function(){
		var value = $("#rupee").val()
		amount = (value && !isNaN(value) && parseFloat(value) > 0)  ? value : 1
		renderFromRupee()
	})
})