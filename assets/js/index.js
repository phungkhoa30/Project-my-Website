// Helper
function getEle(selector){
    return document.querySelector(selector);
}

checkValidation();

// Check validation shipping cart
function checkValidation(){
    var email = getEle('#email').value,
        firstName = getEle('#firstName').value,
        lastName = getEle('#lastName').value,
        addrOne = getEle('#addrOne').value,
        addrTwo = getEle('#addrTwo').value,
        country = getEle('#country').value,
        state = getEle('#state').value,
        zip = getEle('#zipCode').value,
        payment1 = getEle('#payment1').value,
        payment2 = getEle('#payment2').value,
        payment3 = getEle('#payment3').value,
        cardName  = getEle('#cardName').value,
        cardNumber = getEle('#cardNumb').value,
        cardExp = getEle('#cardExp').value,
        cardCvv = getEle('#cardCvv').value;
    let isValid = true;
    if(email === ''){
        isValid = false;
        getEle('#email').style.border = '1px solid red';
        getEle('#emailError').style.display = 'block';
        getEle('#emailError').innerHTML = 'Email is required';
    }else{
        getEle('#email').style.border = '1px solid #ced4da';
        getEle('#emailError').style.display = 'none';
    }
    if(firstName === ''){
        isValid = false;
        getEle('#firstName').style.border = '1px solid red';
        getEle('#firstNameError').style.display = 'block';
        getEle('#firstNameError').innerHTML = 'First name is required';
    }else{
        getEle('#firstName').style.border = '1px solid #ced4da';
        getEle('#firstNameError').style.display = 'none';
    }
    if(lastName === ''){
        isValid = false;
        getEle('#lastName').style.border = '1px solid red';
        getEle('#lastNameError').style.display = 'block';
        getEle('#lastNameError').innerHTML = 'Last name is required';
    }else{
        getEle('#lastName').style.border = '1px solid #ced4da';
        getEle('#lastNameError').style.display = 'none';
    }
    if(addrOne === ''){
        isValid = false;
        getEle('#addrOne').style.border = '1px solid red';
        getEle('#addrOneError').style.display = 'block';
        getEle('#addrOneError').innerHTML = 'Address is required';
    }else{
        getEle('#addrOne').style.border = '1px solid #ced4da';
        getEle('#addrOneError').style.display = 'none';
    }
    if(country === 'Select Country'){
        isValid = false;
        getEle('#country').style.border = '1px solid red';
        getEle('#countryError').style.display = 'block';
        getEle('#countryError').innerHTML = 'Country is required';
    }else{
        getEle('#country').style.border = '1px solid #ced4da';
        getEle('#countryError').style.display = 'none';
    }
    if(state === 'Select State'){
        isValid = false;
        getEle('#state').style.border = '1px solid red';
        getEle('#stateError').style.display = 'block';
        getEle('#stateError').innerHTML = 'State is required';
    }else{
        getEle('#state').style.border = '1px solid #ced4da';
        getEle('#stateError').style.display = 'none';
    }
    if(zip === ''){
        isValid = false;
        getEle('#zipCode').style.border = '1px solid red';
        getEle('#zipCodeError').style.display = 'block';
        getEle('#zipCodeError').innerHTML = 'Zip code is required';
    }else{
        getEle('#zipCode').style.border = '1px solid #ced4da';
        getEle('#zipCodeError').style.display = 'none';
    }
    if(payment1.checked === false && payment2.checked === false && payment3.checked === false){
        isValid = false;
        getEle('#payment1').style.border = '1px solid red';
        getEle('#payment1Error').style.display = 'block';
        getEle('#payment1Error').innerHTML = 'Payment is required';
    }else{
        getEle('#payment1').style.border = '1px solid #ced4da';
        getEle('#payment1Error').style.display = 'none';
    }
    if(cardName === ''){
        isValid = false;
        getEle('#cardName').style.border = '1px solid red';
        getEle('#cardNameError').style.display = 'block';
        getEle('#cardNameError').innerHTML = 'Card name is required';
    }else{
        getEle('#cardName').style.border = '1px solid #ced4da';
        getEle('#cardNameError').style.display = 'none';
    }
    if(cardNumber === ''){
        isValid = false;
        getEle('#cardNumb').style.border = '1px solid red';
        getEle('#cardNumbError').style.display = 'block';
        getEle('#cardNumbError').innerHTML = 'Card number is required';
    }else{
        getEle('#cardNumb').style.border = '1px solid #ced4da';
        getEle('#cardNumbError').style.display = 'none';
    }
    if(cardExp === ''){
        isValid = false;
        getEle('#cardExp').style.border = '1px solid red';
        getEle('#cardExpError').style.display = 'block';
        getEle('#cardExpError').innerHTML = 'Card expiration is required';
    }else{
        getEle('#cardExp').style.border = '1px solid #ced4da';
        getEle('#cardExpError').style.display = 'none';
    }
    if(cardCvv === ''){
        isValid = false;
        getEle('#cardCvv').style.border = '1px solid red';
        getEle('#cardCvvError').style.display = 'block';
        getEle('#cardCvvError').innerHTML = 'Card CVV is required';
    }else{
        getEle('#cardCvv').style.border = '1px solid #ced4da';
        getEle('#cardCvvError').style.display = 'none';
    }

    return isValid;
}
