/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validateEmail(email) {
    var regx = new RegExp("^\\w+([\.-]?\\w+)*@\\w+([\.-]?\\w+)*(\.\\w{2,3})+$");
    var testOutput = regx.test(email);
    if (testOutput === false) {
        throw "Invalid email";
    }
}

function validateCreditLimit(creditLimit) {
    var regx = new RegExp("^\\d{0,10}(\\.\\d{1,2})?$");
    var testOutput = regx.test(creditLimit);
    if (testOutput === false) {
        throw "Invalid credit limit, should be a number of maximum 10 digits and (optional) 2 digits after "
                + "the decimal point";
    }
}

