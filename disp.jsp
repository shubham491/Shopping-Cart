<%-- 
    Document   : productcart
    Created on : Aug 5, 2016, 1:12:15 PM
    Author     : SAURADIP
--%>
<%@taglib prefix="s" uri="/struts-tags" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="js/jquery-1.12.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>



        <style>
       



ol, ul {
  list-style: none;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

caption, th, td {
  text-align: left;
  font-weight: normal;
  vertical-align: middle;
}

q, blockquote {
  quotes: none;
}
q:before, q:after, blockquote:before, blockquote:after {
  content: "";
  content: none;
}

a img {
  border: none;
}



* {
  box-sizing: border-box;
}



img {
  max-width: 100%;
}

.cf:before, .cf:after {
  content: " ";
  display: table;
}

.cf:after {
  clear: both;
}

.cf {
  *zoom: 1;
}

.wrap {
  width: 75%;
  max-width: 960px;
  margin: 0 auto;
  padding: 5% 0;
  margin-bottom: 5em;
}

.projTitle {
  font-family: "Montserrat", sans-serif;
  font-weight: bold;
  text-align: center;
  font-size: 2em;
  padding: 1em 0;
  border-bottom: 1px solid #dadada;
  letter-spacing: 3px;
  text-transform: uppercase;
}
.projTitle span {
  font-family: "Droid Serif", serif;
  font-weight: normal;
  font-style: italic;
  text-transform: lowercase;
  color: #777;
}

.heading {
  padding: 1em 0;
  border-bottom: 1px solid #D0D0D0;
}
.heading h1 {
  font-family: "Droid Serif", serif;
  font-size: 2em;
  float: left;
}
.heading a.continue:link, .heading a.continue:visited {
  text-decoration: none;
  font-family: "Montserrat", sans-serif;
  letter-spacing: -.015em;
  font-size: .75em;
  padding: 1em;
  color: #fff;
  background: #82ca9c;
  font-weight: bold;
  border-radius: 50px;
  float: right;
  text-align: right;
  -webkit-transition: all 0.25s linear;
  -moz-transition: all 0.25s linear;
  -ms-transition: all 0.25s linear;
  -o-transition: all 0.25s linear;
  transition: all 0.25s linear;
}
.heading a.continue:after {
  content: "\276f";
  padding: .5em;
  position: relative;
  right: 0;
  -webkit-transition: all 0.15s linear;
  -moz-transition: all 0.15s linear;
  -ms-transition: all 0.15s linear;
  -o-transition: all 0.15s linear;
  transition: all 0.15s linear;
}
.heading a.continue:hover, .heading a.continue:focus, .heading a.continue:active {
  background: #f69679;
}
.heading a.continue:hover:after, .heading a.continue:focus:after, .heading a.continue:active:after {
  right: -10px;
}

.tableHead {
  display: table;
  width: 100%;
  font-family: "Montserrat", sans-serif;
  font-size: .75em;
}
.tableHead li {
  display: table-cell;
  padding: 1em 0;
  text-align: center;
}
.tableHead li.prodHeader {
  text-align: left;
}

.cart {
  padding: 1em 0;
}
.cart .items {
  display: block;
  width: 100%;
  vertical-align: middle;
  padding: 1.5em;
  border-bottom: 1px solid #fafafa;
}
.cart .items.even {
  background: #fafafa;
}
.cart .items .infoWrap {
  display: table;
  width: 100%;
}
.cart .items .cartSection {
  display: table-cell;
  vertical-align: middle;
}
.cart .items .cartSection .itemNumber {
  font-size: .75em;
  color: #777;
  margin-bottom: .5em;
}
.cart .items .cartSection h3 {
  font-size: 1em;
  font-family: "Montserrat", sans-serif;
  font-weight: bold;
  text-transform: uppercase;
  letter-spacing: .025em;
}
.cart .items .cartSection p {
  display: inline-block;
  font-size: .85em;
  color: #777777;
  font-family: "Montserrat", sans-serif;
}
.cart .items .cartSection p .quantity {
  font-weight: bold;
  color: #333;
}
.cart .items .cartSection p.stockStatus {
  color: #82CA9C;
  font-weight: bold;
  padding: .5em 0 0 1em;
  text-transform: uppercase;
}
.cart .items .cartSection p.stockStatus.out {
  color: #F69679;
}
.cart .items .cartSection .itemImg {
  width: 4em;
  float: left;
}
.cart .items .cartSection.qtyWrap, .cart .items .cartSection.prodTotal {
  text-align: center;
}
.cart .items .cartSection.qtyWrap p, .cart .items .cartSection.prodTotal p {
  font-weight: bold;
  font-size: 1.25em;
}
.cart .items .cartSection input.qty {
  width: 2em;
  text-align: center;
  font-size: 1em;
  padding: .25em;
  margin: 1em .5em 0 0;
}
.cart .items .cartSection .itemImg {
  width: 8em;
  display: inline;
  padding-right: 1em;
}

.special {
  display: block;
  font-family: "Montserrat", sans-serif;
}
.special .specialContent {
  padding: 1em 1em 0;
  display: block;
  margin-top: .5em;
  border-top: 1px solid #dadada;
}
.special .specialContent:before {
  content: "\21b3";
  font-size: 1.5em;
  margin-right: 1em;
  color: #6f6f6f;
  font-family: helvetica, arial, sans-serif;
}

a.remove {
  text-decoration: none;
  font-family: "Montserrat", sans-serif;
  color: #ffffff;
  font-weight: bold;
  background: #e0e0e0;
  padding: .5em;
  font-size: .75em;
  display: inline-block;
  border-radius: 100%;
  line-height: .85;
  -webkit-transition: all 0.25s linear;
  -moz-transition: all 0.25s linear;
  -ms-transition: all 0.25s linear;
  -o-transition: all 0.25s linear;
  transition: all 0.25s linear;
}
a.remove:hover {
  background: #f30;
}

.promoCode {
  border: 2px solid #efefef;
  float: left;
  width: 35%;
  padding: 2%;
}
.promoCode label {
  display: block;
  width: 100%;
  font-style: italic;
  font-size: 1.15em;
  margin-bottom: .5em;
  letter-spacing: -.025em;
}
.promoCode input {
  width: 85%;
  font-size: 1em;
  padding: .5em;
  float: left;
  border: 1px solid #dadada;
}
.promoCode input:active, .promoCode input:focus {
  outline: 0;
}
.promoCode a.btn1 {
  float: left;
  width: 15%;
  padding: .75em 0;
  border-radius: 0 1em 1em 0;
  text-align: center;
  border: 1px solid #82ca9c;
}
.promoCode a.btn1:hover {
  border: 1px solid #f69679;
  background: #f69679;
}

.btn1:link, .btn1:visited {
  text-decoration: none;
  font-family: "Montserrat", sans-serif;
  letter-spacing: -.015em;
  font-size: 1em;
  padding: 1em 3em;
  color: #fff;
  background: #82ca9c;
  font-weight: bold;
  border-radius: 50px;
  float: right;
  text-align: right;
  -webkit-transition: all 0.25s linear;
  -moz-transition: all 0.25s linear;
  -ms-transition: all 0.25s linear;
  -o-transition: all 0.25s linear;
  transition: all 0.25s linear;
}
.btn1:after {
  content: "\276f";
  padding: .5em;
  position: relative;
  right: 0;
  -webkit-transition: all 0.15s linear;
  -moz-transition: all 0.15s linear;
  -ms-transition: all 0.15s linear;
  -o-transition: all 0.15s linear;
  transition: all 0.15s linear;
}
.btn1:hover, .btn1:focus, .btn1:active {
  background: #f69679;
}
.btn1:hover:after, .btn1:focus:after, .btn1:active:after {
  right: -10px;
}
.promoCode .btn1 {
  font-size: .85em;
  paddding: .5em 2em;
}

/* TOTAL AND CHECKOUT  */
.subtotal {
  float: right;
  width: 35%;
}
.subtotal .totalRow {
  padding: .5em;
  text-align: right;
}
.subtotal .totalRow.final {
  font-size: 1.25em;
  font-weight: bold;
}
.subtotal .totalRow span {
  display: inline-block;
  padding: 0 0 0 1em;
  text-align: right;
}
.subtotal .totalRow .label {
  font-family: "Montserrat", sans-serif;
  font-size: .85em;
  text-transform: uppercase;
  color: #777;
}
.subtotal .totalRow .value {
  letter-spacing: -.025em;
  width: 35%;
}

@media only screen and (max-width: 39.375em) {
  .wrap {
    width: 98%;
    padding: 2% 0;
  }

  .projTitle {
    font-size: 1.5em;
    padding: 10% 5%;
  }

  .heading {
    padding: 1em;
    font-size: 90%;
  }

  .cart .items .cartSection {
    width: 90%;
    display: block;
    float: left;
  }
  .cart .items .cartSection.qtyWrap {
    width: 10%;
    text-align: center;
    padding: .5em 0;
    float: right;
  }
  .cart .items .cartSection.qtyWrap:before {
    content: "QTY";
    display: block;
    font-family: "Montserrat", sans-serif;
    padding: .25em;
    font-size: .75em;
  }
  .cart .items .cartSection.prodTotal, .cart .items .cartSection.removeWrap {
    display: none;
  }
  .cart .items .cartSection .itemImg {
    width: 25%;
  }

  .promoCode, .subtotal {
    width: 100%;
  }

  a.btn1.continue {
    width: 100%;
    text-align: center;
  }
}


 </style>
 <script>
     // Remove Items From Cart
$('a.remove').click(function(){
  event.preventDefault();
  $( this ).parent().parent().parent().hide( 400 );
 
});

// Just for testing, show all items
  $('a.btn1.continue').click(function(){
    $('li.items').show(400);
  });

  
            </script>
    </head>
    <body>
    <div class="wrap cf">
  
  <div class="cart">
      <s:iterator value="lis">
    <ul class="cartWrap">
      <li class="items odd">
        
    <div class="infoWrap"> 
        <div class="cartSection">
        <s:a action="cart?id=%{pid}"><img src="<s:url action="empPic?id=%{pid}"/>" height="150" width="200"/></s:a>
        <p class="itemNumber"><s:property value="pid"/></p>
        <h3><s:property value="pname"/></h3>
        
           <p> <input type="text"  class="qty" placeholder="1"/>Rs. <s:property value="price"/></p>
        
          <p class="stockStatus"> In Stock</p>
        </div>  
           <s:property value="pname"/>
        
        <div class="prodTotal cartSection">
          <p>$15.00</p>
        </div>
              <div class="cartSection removeWrap">
           <!--<s:a action="remove?id=%{pid}" class="remove">x</s:a>-->
        </div>
    
      </div>
      </li>
     
      
      
      
      <!--<li class="items even">Item 2</li>-->
 
    </ul>
      </s:iterator>
  </div>
  
<!--  <div class="promoCode"><label for="promo">Have A Promo Code?</label><input type="text" name="promo" placholder="Enter Code" />
  <a href="#" class="btn1"></a></div>-->
  
  <div class="subtotal cf">
    <ul>
      <li class="totalRow"><span class="label">Subtotal</span><span class="value">$35.00</span></li>
      
          <li class="totalRow"><span class="label">Shipping</span><span class="value">$5.00</span></li>
      
            <li class="totalRow"><span class="label">Tax</span><span class="value">$4.00</span></li>
            <li class="totalRow final"><span class="label">Total</span><span class="value">$44.00</span></li>
            <li class="totalRow"><s:a action="checkout" cssClass="btn1 continue">Checkout</s:a></li>
    </ul>
  </div>
</div>
    </body>
</html>