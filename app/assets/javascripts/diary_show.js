// window.onload = function(){

	var threeDigit = document.getElementById('three_digit')
	var fourDigit = document.getElementById('four_digit')
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
	var totalVal = val1.concat(val2).concat(val3).concat(val4).concat(val5).concat(val6).concat(val7).concat(val8).concat(val9).concat(val10).concat(val1).concat(val2).concat(val3).concat(val14).concat(val15)
	console.log(totalVal)

	
	
	function digitFreq (numString){
	    zeros = numString.split("0").length-1
	    ones = numString.split("1").length-1
	    twos = numString.split("2").length-1
	    threes = numString.split("3").length-1
	    fours = numString.split("4").length-1
	    fives = numString.split("5").length-1
	    sixes = numString.split("6").length-1
	    sevens = numString.split("7").length-1
	    eights = numString.split("8").length-1
	    nines = numString.split("9").length-1
	    numbers = numString.length;
	    zeroPrcnt = zeros/numbers    
	    onePrcnt = ones/numbers     
	    twoPrcnt = twos/numbers     
	    threePrcnt = threes/numbers     
	    fourPrcnt = fours/numbers     
	    fivePrcnt = fives/numbers     
	    sixPrcnt = sixes/numbers     
	    sevPrcnt = sevens/numbers     
	    eightPrcnt = eights/numbers     
	    ninePrcnt = nines/numbers     

	    console.log(zeroPrcnt + onePrcnt + twoPrcnt + threePrcnt + fourPrcnt + fivePrcnt+ sixPrcnt + sevPrcnt + eightPrcnt + ninePrcnt)
  
	}


	function threeDigitNum(numString){
	    num1 = numString[(Math.floor(Math.random() * numString.length ))];
	    num2 = numString[(Math.floor(Math.random() * numString.length ))];
	    num3 = numString[(Math.floor(Math.random() * numString.length ))];

	    threeDigit.innerHTML = (num1 + num2 + num3)
	}

	function fourDigitNum(numString){
	    num1 = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	    num2 = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	    num3 = numString.split('')[(Math.floor(Math.random() * numString.length ))];
	    num4 = numString.split('')[(Math.floor(Math.random() * numString.length ))];

	    fourDigit.innerHTML = (num1 + num2 + num3 + num4)
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
	    mega.innerHTML = firstFive(totalVal) + "," + moneyBall(totalVal)
	}



// }

