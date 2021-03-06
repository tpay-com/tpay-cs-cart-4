{if $payment_info.processor_params['view']=='0'}
    <h2 class="subheader">Tpay.com</h2>
    <div class="form-field" id="regulamin">
        <label for="payment_info[regulamin]"><a href="https://secure.tpay.com/regulamin.pdf" target="_blank">Akceptacja
                regulaminu tpay.com</a></label>
        <input type="checkbox" checked name="payment_info[regulamin]"/>
    </div>
    <style>
        #bank-selection-form {
            overflow: hidden
        }

        .bank-block.bank-active {
            box-shadow: 0 0 10px 3px #15428F
        }

        .bank-block label input {
            display: none;
        }

        .bank-block {
            position: relative;
            background-size: contain;
            background-position: center center;
            background-repeat: no-repeat;
            background-color: white;
            border: 1px solid #b2b2b2;
            border-radius: 0.2em;
            display: inline-block;
            width: 130px;
            height: 63px;
            margin: 10px 13px 0px 0;
            text-align: center;
        }

        .bank-block label {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            cursor: pointer;
        }

        .insidebg {

            background: #fbfbfb;
            box-shadow: 0 0 0.8em #929292;
            padding: 20px 20px 20px 20px;
        }

        #button_tpay {

        }

        .button_tpay {
            background: #54DB39;
            background: -moz-linear-gradient(top, #42bf2c 0%, #217719 100%);
            background: -webkit-linear-gradient(top, #42bf2c 0%, #217719 100%);
            background: -o-linear-gradient(top, #42bf2c 0%, #217719 100%);
            background: -ms-linear-gradient(top, #42bf2c 0%, #217719 100%);
            background: linear-gradient(to bottom, #42bf2c 0%, #217719 100%);
            color: #fff;
            text-shadow: 0px 1px 2px #8bd278;
            font-size: 1em;
            position: relative;
        }

        .button_blik {
            float: right;
            border: none;
            padding: 10px 20px;
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 1px;
            word-spacing: 4px;
            color: #ffffff;
            background: #5bc0de;
            text-decoration: none;
            display: block;
            top: 0;
            margin: 10px 0;
        }

        .button_blik:hover {
            -moz-box-shadow: 0 0 10px #ccc;
            -webkit-box-shadow: 0 0 10px #ccc;
            box-shadow: 0 0 10px #ccc;
            background: #4e7f9c;
        }

        #input_container {
            position: relative;
            margin: 0;
            height: 440px;

        }

        #blikcode {
            position: absolute;
            top: 202px;
            height: 60px;
            margin-top: 50px;
            left: 210px;
            width: 190px;
            font-family: sans-serif;
            font-size: 18px;
            letter-spacing: 16px;
        }

        #blik_img {
            position: absolute;
            top: 20px;
            bottom: 8px;
            left: 10px;

        }

        .separator span {
            color: #a9a9a9;
            display: inline-block;
            position: relative;
            background-color: #fbfbfb;
            padding: 0 2em;
        }

        .separator {
            line-height: 0.5;
            text-align: center;
            font-size: 100%;
            background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAIAAAAW4yFwAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAxJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6Nzc2MzU0N0FDNDAwMTFFNEI4MkJGQTIzMkI3NjdCMUQiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6Nzc2MzU0NzlDNDAwMTFFNEI4MkJGQTIzMkI3NjdCMUQiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiBNYWNpbnRvc2giPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0iQUQxOEI4NUYwNEZFM0E3Mjk2NDk4QjNDMkZBNDBEQjIiIHN0UmVmOmRvY3VtZW50SUQ9IkFEMThCODVGMDRGRTNBNzI5NjQ5OEIzQzJGQTQwREIyIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+HQwmEgAAABNJREFUeNpi+PDhA9OjR48AAgwAFjwFeYkuaKQAAAAASUVORK5CYII=');
            background-repeat: repeat-x;
            background-position: center center;
            margin: 0.7em 0 1em 0;
            font-family: 'Open Sans', "Helvetica", Arial, sans-serif;
        }

        .regulations {
            color: #a9a9a9;
            line-height: 0.5;
            text-align: center;
            font-size: 100%;
            margin: 0.7em 0 1em 0;
            font-family: 'Open Sans', "Helvetica", Arial, sans-serif;
        }

        .chromeframe {
            position: absolute;
            top: 0;
        }

        #card_payment select, input, textarea {
            color: #333;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        ::-moz-selection {
            background: #fcd700;
            color: #fff;
            text-shadow: none;
        }

        ::selection {
            background: #fcd700;
            color: #fff;
            text-shadow: none;
        }

        ins {
            background-color: #fcd700;
            color: #000;
            text-decoration: none;
        }

        mark {
            background-color: #fcd700;
            color: #000;
            font-style: italic;
            font-weight: bold;
        }

        input:-moz-placeholder {
            color: #a9a9a9;
        }

        textarea:-moz-placeholder {
            color: #a9a9a9;
        }

        #powered_by {
            max-width: 25em;
            height: 3em;
            margin: 10px;
            background: url(../_img/powered_by_elavon.png);
            background-size: 170px 33px;
            background-repeat: no-repeat;
            margin-bottom: 1em;
        }

        #card_icons {
            max-width: 27em;
            margin-top: 2em;
            text-align: center;
        }

        #card_icons .card_icon {
            display: inline-block;
            width: 44px;
            height: 30px;
            margin: 0 3px;
            opacity: 0.6;
            background-image: url(../_img/cards.png);
            background-size: 320px;
        }

        #card_icons .card_icon.hover {
            opacity: 1;
        }

        #card_icons #visa {
            background-position: 0px center;
        }

        #card_icons #visaele {
            background-position: -46px center;
        }

        #card_icons #master {
            background-position: -91px center;
        }

        #card_icons #maestro {
            background-position: -139px center;
        }

        #card_icons #amex {
            background-position: -184px center;
        }

        #card_icons #diners {
            background-position: -230px center;
        }

        #card_icons #jcb {
            background-position: -276px center;
        }

        #card_payment {
            width: 25em;
            background: #3787cc;
            background: -moz-linear-gradient(top, #3787cc 0%, #3875c9 100%);
            background: -webkit-linear-gradient(top, #3787cc 0%, #3875c9 100%);
            background: -o-linear-gradient(top, #3787cc 0%, #3875c9 100%);
            background: -ms-linear-gradient(top, #3787cc 0%, #3875c9 100%);
            background: linear-gradient(to bottom, #3787cc 0%, #3875c9 100%);
            border: 2px solid rgba(0, 0, 0, 0.1);
            border-radius: 0.6em;
            padding: 1em;
            box-shadow: 0px 5px 10px #a2a2a2;
            margin-bottom: 2em;
        }

        #card_payment label {
            color: #f6f6f6;
            font-size: 1.2em;
            margin-top: 8px;
            text-shadow: 0px 2px 2px rgba(0, 0, 0, 0.21);
            display: block;
            font-weight: 400;
        }

        #card_payment_form #card_title {
            font-size: 1.4em;
            font-weight: 400;
            padding: 0.5em 0 0.5em 0;
            margin: 0;
            color: #f6f6f6;
            text-shadow: 0px 2px 2px rgba(0, 0, 0, 0.21);
        }

        #card_payment_form #expiry_date_wrapper {
            display: inline-block;
            width: 50%;
        }

        #card_payment_form #expiry_date #transaction_card_expiry_month {
            width: 40%;
        }

        #card_payment_form #expiry_date #transaction_card_expiry_year {
            width: 40%;
        }

        #card_payment_form #expiry_date {
            width: 60%;
        }

        #card_payment_form #cvc_wrapper {
            display: inline-block;
            width: 40%;
            float: right;
        }

        #card_payment_form input, form #card_payment select {
            box-shadow: none;
        }

        #card_payment_form #part_1, form #part_2 {
            display: inline-block;
            width: 47%;
        }

        #card_payment_form #part_1 {
            margin-right: 3%;
        }

        #card_payment_form input[type="text"], input[type="tel"], input[type="email"] form select {
            height: 2.8em;
            margin: 0.5em 0;
            padding: 0.5em 1em;
            width: 100%;
            border: 1px solid #b2b2b2;
            border-radius: 0.3em;
            box-shadow: 0 1px 3px #dcdcdc;
            background: #f9f9f9;
        }

        #card_payment_form .amPmCheckbox input[type="checkbox"] {
            display: none;
        }

        #card_payment_form .amPmCheckbox input[type="checkbox"] + label {
            background: url(../_img/checkbox.png) no-repeat scroll left top transparent;
            height: 21px;
            width: 22px;
            padding-left: 30px;
        }

        #card_payment_form .amPmCheckbox input[type="checkbox"]:checked + label {
            background: url(../_img/checkbox.png) no-repeat scroll left bottom transparent;
            height: 21px;
            width: 22px;
        }

        #card_payment_form input.wrong, form select.wrong {
            border: 2px solid #ff9696;
            box-shadow: 0 1px 3px #dcdcdc;
            background: #ffeeee;
        }

        #card_payment_form p {
            padding: 0.5em 0 0.2em 0;
        }

        #continue_btn {
            font-size: 1.0em;
            margin: 10px;
            padding: 5px;
            background: #42bf2c;
            background: -moz-linear-gradient(top, #42bf2c 0%, #217719 100%);
            background: -webkit-linear-gradient(top, #42bf2c 0%, #217719 100%);
            background: -o-linear-gradient(top, #42bf2c 0%, #217719 100%);
            background: -ms-linear-gradient(top, #42bf2c 0%, #217719 100%);
            background: linear-gradient(to bottom, #42bf2c 0%, #217719 100%);
            color: #1b4c11;
            text-shadow: 0px 1px 2px #8bd278;
        }

        #continue_btn:hover {
            background: #5ad145;
            background: -moz-linear-gradient(top, #5ad145 0%, #217719 100%);
            background: -webkit-linear-gradient(top, #5ad145 0%, #217719 100%);
            background: -o-linear-gradient(top, #5ad145 0%, #217719 100%);
            background: -ms-linear-gradient(top, #5ad145 0%, #217719 100%);
            background: linear-gradient(to bottom, #5ad145 0%, #217719 100%);
            text-shadow: 0px 1px 2px #b2e1a5;
        }

        #continue_btn active {
            background: #3ab42e;
            background: -moz-linear-gradient(top, #3ab42e 0%, #4fc13b 100%);
            background: -webkit-linear-gradient(top, #3ab42e 0%, #4fc13b 100%);
            background: -o-linear-gradient(top, #3ab42e 0%, #4fc13b 100%);
            background: -ms-linear-gradient(top, #3ab42e 0%, #4fc13b 100%);
            background: linear-gradient(to bottom, #3ab42e 0%, #4fc13b 100%);
            text-shadow: 0px -1px 2px #b2e1a5;
        }

        @media screen and (max-width: 760px) and (max-width: 480px) {

            #card_payment #card_payment {
                width: 100%;
            }

            #card_payment #expiry_date_wrapper {
                width: 100%;
                display: block;
            }

            #card_payment #cvc_wrapper {
                width: 50%;
                float: none;
                display: block;
            }
        }

        .info_button {
            background: rgba(0, 0, 0, 0.35);
            border-radius: 50%;
            width: 20px;
            height: 20px;
            display: inline-block;
            text-align: center;
            color: rgba(255, 255, 255, 0.8);
            font-size: 1.1em;
            margin-left: 0.5em;
            cursor: help;
        }

    </style>

        <body onload="showchannels()">
        <div class="insidebg" id="main-payment">
            <img src="https://tpay.com/img/logo/tpaycom.png" height="145" width="250"/><br/>
            <input type="button" value="Odśwież listę" onclick="showchannels()"/>
            <div id="kanaly_v">
                <input type="hidden" id="tpay-channel-input" name="payment_info[kanal]">
                <div class="separator"><span><p class="font"><br/>Karty płatnicze i przelewy</p></span></div>
                <center>
                    <div id="bank-selection-form"></div>
                    <div class="separator"><span><p class="font"><br/>Pozostałe</p></span></div>
                    <div id="bank-selection-form2"></div>
                    <br/>


                </center>

            </div>
        </div>
        </body>
    {literal}
        <script>

            function showchannels() {

                var s = document.createElement('script'),

                        bank_selection_form = document.getElementById('bank-selection-form'),
                        bank_selection_form2 = document.getElementById('bank-selection-form2');
                s.src = 'https://secure.tpay.com/channels-{/literal}{$payment_info.processor_params['seller_id']}{literal}1.js';
                s.onload = function () {
                    var str = '', first = true, i, str2 = '', temp;
                    var others = [29, 31, 49, 50, 57, 58, 59];

                    for (i in tr_channels) {
                        var channel = tr_channels[i],
                                id = channel[0],
                                width_style = (channel[0] == 40) ? 'width:270px' : '',
                                checked, class_name;

                        if (first) {
                            checked = ' checked';
                            class_name = ' bank-active';
                            first = false;
                            changeBank(id);
                        } else {
                            checked = '';
                            class_name = ''
                        }
                        temp = '<div class="bank-block' + class_name + '" id="bank-' + id +
                                '" style="background-image:url(' + channel[3] + ');' + width_style +
                                '"><label onclick="changeBank(' + id + ')"><input type="radio" name="bank-select" value="' +
                                id + '" ' + checked + ' style="visibility: hidden" /></label></div>';

                        if (inArray(id, others) === false) {
                            str += temp;
                        } else {
                            str2 += temp;
                        }
                    }
                    bank_selection_form.innerHTML = str;
                    bank_selection_form2.innerHTML = str2;
                };
                document.getElementsByTagName('head')[0].appendChild(s);
            }
            function inArray(needle, haystack) {
                var length = haystack.length;
                for (var i = 0; i < length; i++) {
                    if (haystack[i] == needle) return true;
                }
                return false;
            }


            function changeBank(bank_id) {
                var input = document.getElementById('tpay-channel-input'),
                        bank_block = document.getElementById('bank-' + bank_id),
                        active_bank_blocks = document.getElementsByClassName('bank-active'),
                        class_name = 'bank-active', cn;

                input.value = bank_id;

                if (active_bank_blocks.length > 0) {
                    cn = active_bank_blocks[0].className;
                    cn = cn.replace(new RegExp("\\s?\\b" + class_name + "\\b", "g"), '');
                    active_bank_blocks[0].className = cn;
                }

                if (bank_block !== null) {
                    bank_block.className = bank_block.className + ' bank-active';
                }
            }
        </script>
    {/literal}



{/if}
