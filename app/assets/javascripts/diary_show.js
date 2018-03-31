window.onload = function(){
	var threeeDigits = document.getElementById("three_digit")
	var fourDigit = document.getElementById('four_digit')
	var zeros  = document.getElementById('zeros')
	var ones = document.getElementById('ones')
	var twos = document.getElementById('twos')
	var threes = document.getElementById('threes')
	var fours = document.getElementById('fours')
	var fives = document.getElementById('fives')
	var sixes = document.getElementById('sixes')
	var sevens = document.getElementById('sevens')
	var eights = document.getElementById('eights')
	var nines = document.getElementById('nines')
	var mega = document.getElementById('mega')
	var val1 = document.getElementById("diary_address").value
	var val2 = document.getElementById("diary_cell").value
	var val3 = document.getElementById("diary_birthdate").value
	var val4 = document.getElementById("diary_zipcode").value
	var val5 = document.getElementById("diary_age").value
	var val6 = document.getElementById("diary_partner_birthdate").value
	var val7 = document.getElementById("diary_work_addr").value
	var val8 = document.getElementById("diary_work_num").value
	var val9 = document.getElementById("diary_apt_num").value
	var val10 = document.getElementById("diary_kids").value
	var val11 = document.getElementById("diary_kids_birth").value
	var val12 = document.getElementById("diary_lucky_nums").value
	var val13 = document.getElementById("diary_license_plate").value
	var val14 = document.getElementById("diary_wake_up").value
	var val15 = document.getElementById("diary_sensitive").value
	var target3 = document.getElementById("three_digit_draw_pick_three")
	var target4 = document.getElementById("four_digit_draw_pick_four")
	var megaTarget = document.getElementById("mega_draw_mega_draw")
	var newThreeDigitDraw = document.getElementById("new_three_digit_draw")
	var newFourDigitDraw = document.getElementById("new_four_digit_draw")
	var newMegaDraw = document.getElementById("new_mega_draw")

	var totalVal = val1.concat(val2).concat(val3).concat(val4).concat(val5).concat(val6).concat(val7).concat(val8).concat(val9).concat(val10).concat(val11).concat(val12).concat(val13).concat(val14).concat(val15)
	console.log(totalVal)
	digitFreq(totalVal)

	

	

	
	
	function digitFreq (numString){
	    zeroDigit = numString.split("0").length-1
	    oneDigit = numString.split("1").length-1
	    twoDigit = numString.split("2").length-1
	    threeDigit = numString.split("3").length-1
	    foursDigit = numString.split("4").length-1
	    fivesDigit = numString.split("5").length-1
	    sixesDigit = numString.split("6").length-1
	    sevensDigit = numString.split("7").length-1
	    eightsDigit = numString.split("8").length-1
	    ninesDigit = numString.split("9").length-1
	    numbers = numString.length;
	    zeroPrcnt = zeroDigit/numbers    
	    onePrcnt = oneDigit/numbers     
	    twoPrcnt = twoDigit/numbers     
	    threePrcnt = threeDigit/numbers     
	    fourPrcnt = foursDigit/numbers     
	    fivePrcnt = fivesDigit/numbers     
	    sixPrcnt = sixesDigit/numbers     
	    sevPrcnt = sevensDigit/numbers     
	    eightPrcnt = eightsDigit/numbers     
	    ninePrcnt = ninesDigit/numbers

	    zeros.innerHTML = "0:" + " " + (zeroPrcnt * 100).toFixed(2) + "%"
	    ones.innerHTML = "1:" + " " + (onePrcnt * 100).toFixed(2) + "%"
	    twos.innerHTML = "2:" + " " + (twoPrcnt * 100).toFixed(2) + "%"
	    threes.innerHTML ="3:" + " " + (threePrcnt * 100).toFixed(2) + "%"
	    fours.innerHTML = "4:" + " " + (fourPrcnt * 100).toFixed(2) + "%"
	    fives.innerHTML = "5:" + " " + (fivePrcnt * 100).toFixed(2) + "%"
	    sixes.innerHTML = "6:" + " " + (sixPrcnt * 100).toFixed(2) + "%"
	    sevens.innerHTML = "7:" + " " + (sevPrcnt * 100).toFixed(2) + "%"
	    eights.innerHTML = "8:" + " " + (eightPrcnt * 100).toFixed(2) + "%"
	    nines.innerHTML = "9:" + " " + (ninePrcnt * 100).toFixed(2) + "%"   
  
	}


	function threeDigitNum(numString){
	    num1 = numString[(Math.floor(Math.random() * numString.length ))];
	    num2 = numString[(Math.floor(Math.random() * numString.length ))];
	    num3 = numString[(Math.floor(Math.random() * numString.length ))];

	   
	    target3.value = (num1 + num2 + num3)
	}

	function fourDigitNum(numString){
	    num1 = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	    num2 = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	    num3 = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	    num4 = numString.split('')[(Math.floor(Math.random() * numString.length ))];

	    
	    target4.value = (num1 + num2 + num3 + num4)
	}

	function numberType (max){
	    var type = (Math.floor(Math.random() * max))
	    return type
	}

	function repeat (arr, num){
	    return (arr.indexOf(num) === -1) ? false : true
	    
	}

	function firstFive (numString){
	    let numbers = []
	    let num = 0
	    while (numbers.length < 5){
	        let version = numberType(69)
	        if (version < 9){
	            do{
	                num = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	            }
	            while (num == 0);
	            num = "0" + num
	        }
	        if (version >= 9){
	            do{
	                digit1 = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	            }
	            while (digit1 > 6 || digit1 == 0);
	            digit2 = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	            num = digit1.concat(digit2)


	        }
	        if (repeat (numbers, num) == false){
	            numbers.push(num)
	        }
	    }
	    return numbers
	}

	function moneyBall(numString){
	    let num = 0
	    let version = numberType(26)
	    if (version < 9){
	        do{
	         num = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	        }
	        while (num == 0);
	        num = "0" + num

	    }
	    if (version >= 9){
	        do{
	            digit1 = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	        }
	        while (digit1 > 2 || digit1 == 0);
	        if( digit1 == 2){
	            do{
	                digit2 = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	            }
	            while (digit2 > 6);
	            num = digit1.concat(digit2)
	        }else {
	            digit2 = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	            num = digit1.concat(digit2)
	         }

	    }
	    return num

	}

	function megaTicket(){
	    
	    megaTarget.value = firstFive(totalVal) + "," + moneyBall(totalVal)
	}

	var pick3 = document.getElementById("pick3")
	var pick4 = document.getElementById("pick4")
	var mTick = document.getElementById("mTick")



	pick3.addEventListener("click", function(){
		threeDigitNum(totalVal)
		newThreeDigitDraw.submit()
	})



	pick4.addEventListener("click", function(){
		fourDigitNum(totalVal)
		newFourDigitDraw.submit()
	})

	mTick.addEventListener("click", function(){
		megaTicket()
		newMegaDraw.submit()
	})


}



