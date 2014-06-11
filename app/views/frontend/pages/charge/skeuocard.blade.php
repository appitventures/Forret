<!DOCTYPE html>
<html lang="en" xmlns:"http://www.w3.org/1999/html">
<head>
    <title>Membership</title>
    <meta charset="UTF-8">
    <meta name=description content="">
    <meta name=viewport content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/assets/frontend/styles/skeuocard.reset.css" />
    <link rel="stylesheet" href="/assets/frontend/styles/skeuocard.css" />
    <link rel="stylesheet" href="/assets/frontend/styles/demo.css">
</head>
<body>
<div class="credit-card-input no-js" id="skeuocard">
    <p class="no-support-warning">
        Either you have Javascript disabled, or you're using an unsupported browser, amigo! That's why you're seeing this old-school credit card input form instead of a fancy new Skeuocard. On the other hand, at least you know it gracefully degrades...
    </p>
    <label for="cc_type">Card Type</label>
    <select name="cc_type">
        <option value="">...</option>
        <option value="visa">Visa</option>
        <option value="discover">Discover</option>
        <option value="mastercard">MasterCard</option>
        <option value="maestro">Maestro</option>
        <option value="jcb">JCB</option>
        <option value="unionpay">China UnionPay</option>
        <option value="amex">American Express</option>
        <option value="dinersclubintl">Diners Club</option>
    </select>
    <label for="cc_number">Card Number</label>
    <input type="text" name="cc_number" id="cc_number" placeholder="XXXX XXXX XXXX XXXX" maxlength="19" size="19">
    <label for="cc_exp_month">Expiration Month</label>
    <input type="text" name="cc_exp_month" id="cc_exp_month" placeholder="00">
    <label for="cc_exp_year">Expiration Year</label>
    <input type="text" name="cc_exp_year" id="cc_exp_year" placeholder="00">
    <label for="cc_name">Cardholder's Name</label>
    <input type="text" name="cc_name" id="cc_name" placeholder="John Doe">
    <label for="cc_cvc">Card Validation Code</label>
    <input type="text" name="cc_cvc" id="cc_cvc" placeholder="123" maxlength="3" size="3">
</div>
<!-- jQuery -->
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<script src="/assets/frontend/javascripts/vendor/demo.fix.js"></script>
<script src="/assets/frontend/javascripts/vendor/jquery-2.0.3.min.js"></script>
<script src="/assets/frontend/javascripts/skeuocard.js"></script>
<script>

    $(document).ready(function(){
        var isBrowserCompatible =
            $('html').hasClass('ua-ie-10') ||
            $('html').hasClass('ua-webkit') ||
            $('html').hasClass('ua-firefox') ||
            $('html').hasClass('ua-opera') ||
            $('html').hasClass('ua-chrome');

        if(isBrowserCompatible){
            window.card = new Skeuocard($("#skeuocard"), {
                debug: false
            });
        }
    });

</script>
<script src="/assets/frontend/js/vendor/cssua.min.js"></script>
<script src="//code.jquery.com/jquery.js"></script>
<!-- Bootstrap JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
</body>
</html>