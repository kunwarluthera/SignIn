<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Claire's Boutique</title>
</head>
<body>
	<h3>Login successful !!!</h3><h4 align="right" >Welcome, <%=session.getAttribute("name")%></h4>


</script>
</script>
<div>
<table border="0">
<tbody>
<tr>
<td>#</td>
<td>Category</td>
<td>Price ($)</td>
<td>Discount (%)</td>
</tr>
<tr>
<td>1</td>
<td><select id="category1" onChange="selectCategory(1)">
<option disabled="disabled" selected="selected">Choose here</option>
<option value="Sweaters">Sweaters</option>
<option value="Handbags">Handbags</option>
<option value="Perfumes">Perfumes</option>
</select></td>

<td align="center"><input id="price1" type="textbox" onChange="discountCal(price1,1);" /></td>
<td align="center"><input id="discount1" disabled="disabled" type="textbox" /></td>
</tr>
<td>2</td>
<td><select id="category2" onChange="selectCategory(2)">
<option disabled="disabled" selected="selected">Choose here</option>
<option value="Sweaters">Sweaters</option>
<option value="Handbags">Handbags</option>
<option value="Perfumes">Perfumes</option>
</select></td>

<td align="center"><input id="price2" type="textbox" onChange="discountCal(price2,2);" /></td>
<td align="center"><input id="discount2" disabled="disabled" type="textbox" /></td>
</tr>
<td>3</td>
<td><select id="category3" onChange="selectCategory(3)">
<option disabled="disabled" selected="selected">Choose here</option>
<option value="Sweaters">Sweaters</option>
<option value="Handbags">Handbags</option>
<option value="Perfumes">Perfumes</option>
</select></td>

<td align="center"><input id="price3" type="textbox" onChange="discountCal(price3,3);" /></td>
<td align="center"><input id="discount3" disabled="disabled" type="textbox" /></td>
</tr>

</tbody>
</table>
</div>
<div><button onclick="showTable()">Submit</button></div>


<script type="text/javascript">
window.onload = function() {
	var x = document.getElementById("myTable");
    x.hidden=true;
}
function showTable() {
    var x = document.getElementById("myTable");
    fillTable();
    x.hidden=false;
    
}

			function selectCategory(opt){
				
				if(opt == 1){
					selected = document.getElementById("category1").selectedIndex;
					var flushD = document.getElementById("discount1");
					flushD.value = "";
					var flushP = document.getElementById("price1");
					flushP.value = "";
				}else
				if(opt == 2){
					selected = document.getElementById("category2").selectedIndex;
					var flushD = document.getElementById("discount2");
					flushD.value = "";
					var flushP = document.getElementById("price2");
					flushP.value = "";
				}else
				if(opt == 3){
					selected = document.getElementById("category3").selectedIndex;
					var flushD = document.getElementById("discount3");
					flushD.value = "";
					var flushP = document.getElementById("price3");
					flushP.value = "";
				}
			
				return selected;
			}
			
            function discountCal(price, obj)
            {
            	
            	var category = selectCategory();
            	
            	if(category == 1){
            		var priceOnSweater = price.value;
            		var disOnSweater = document.getElementById("discount"+obj);
            		
            		if(priceOnSweater >= 30 && priceOnSweater < 50){
            			disOnSweater.value = 10;
            		}else if(priceOnSweater >= 50 && priceOnSweater < 75){
            			disOnSweater.value = 20;
            		}else if(priceOnSweater >= 75){
            			disOnSweater.value = 35;
            		}else{
            			disOnSweater.value = 0;
            		}
            		
            	}
            	
            	if(category == 2){
            		var disOnHandbag = document.getElementById("discount"+obj);
            		disOnHandbag.value = 40;
            		
            	}
            	
            	if(category == 3){
            		var priceOnPerfume = price.value;
            		var disOnPerfume = document.getElementById("discount"+obj);
            		
            		if(priceOnPerfume >= 40 && priceOnPerfume < 60){
            			disOnPerfume.value = 15;
            		}else if(priceOnPerfume >= 60){
            			disOnPerfume.value = 30;
            		}else{
            			disOnPerfume.value = 0;
            		}
            		
            	}
            	
            	var one = document.getElementById("category1").selectedIndex;
            	var two = document.getElementById("category2").selectedIndex;
            	var three = document.getElementById("category3").selectedIndex;
            	if(!one){
            		var flushD = document.getElementById("discount1");
					flushD.value = "";
            	}
            	if(!two){
            		var flushD = document.getElementById("discount2");
					flushD.value = "";
            	}
            	if(!three){
            		var flushD = document.getElementById("discount3");
					flushD.value = "";
            	}
        }
        
        function fillTable(){
        
        	//category
        	var x1 = document.getElementById("category1").selectedIndex;
        	var y1 = document.getElementById("category1").options;
    		var c1 = document.getElementById("categoryOne");
    		c1.value = y1[x1].value;
    		
    		var x2 = document.getElementById("category2").selectedIndex;
        	var y2 = document.getElementById("category2").options;
    		var c2 = document.getElementById("categoryTwo");
    		c2.value = y2[x2].value;
    		
    		var x3 = document.getElementById("category3").selectedIndex;
        	var y3 = document.getElementById("category3").options;
    		var c3 = document.getElementById("categoryThree");
    		c3.value = y3[x3].value;
    		
    		//price
    		var newPrice1 = document.getElementById("price1");
    		var newP1 = document.getElementById("priceOne");
    		newP1.value = newPrice1.value;
    		
    		var newPrice2 = document.getElementById("price2");
    		var newP2 = document.getElementById("priceTwo");
    		newP2.value = newPrice2.value;
    		
    		var newPrice3 = document.getElementById("price3");
    		var newP3 = document.getElementById("priceThree");
    		newP3.value = newPrice3.value;
    		
    		//discount
    		var newDiscount1 = document.getElementById("discount1");
    		var newD1 = document.getElementById("discountOne");
    		newD1.value = ((newDiscount1.value/100)*newP1.value);
    		
    		var newDiscount2 = document.getElementById("discount2");
    		var newD2 = document.getElementById("discountTwo");
    		newD2.value = ((newDiscount2.value/100)*newP2.value);
    		
    		var newDiscount3 = document.getElementById("discount3");
    		var newD3 = document.getElementById("discountThree");
    		newD3.value = ((newDiscount3.value/100)*newP3.value);
    		
    		//sale price
    		var salePrice1 = document.getElementById("salePriceOne");
    		salePrice1.value = newP1.value - newD1.value;
    		
    		var salePrice2 = document.getElementById("salePriceTwo");
    		salePrice2.value = newP2.value - newD2.value;
    		
    		var salePrice3 = document.getElementById("salePriceThree");
    		salePrice3.value = newP3.value - newD3.value;
    		
    		//tax
    		var tax1 = document.getElementById("taxOne");
    		tax1.value = ((5/100)*salePrice1.value);
    		
    		var tax2 = document.getElementById("taxTwo");
    		tax2.value = ((5/100)*salePrice2.value);
    		
    		var tax3 = document.getElementById("taxThree");
    		tax3.value = ((5/100)*salePrice3.value);
    		
    		//total
    		var total1 = document.getElementById("totalOne");
    		total1.value = parseFloat(salePrice1.value) + parseFloat(tax1.value);
    		
    		var total2 = document.getElementById("totalTwo");
    		total2.value = parseFloat(salePrice2.value) + parseFloat(tax2.value);
    		
    		var total3 = document.getElementById("totalThree");
    		total3.value = parseFloat(salePrice3.value) + parseFloat(tax3.value);
    		
    		//Hide
    		//document.getElementById("category1").disabled=true;
    		//document.getElementById("category2").disabled=true;
    		//document.getElementById("category3").disabled=true;
    		//document.getElementById("price1").disabled=true;
    		//document.getElementById("price2").disabled=true;
    		//document.getElementById("price3").disabled=true;
    		
        }
            
</script>

<p>
<p>
<div>
<table border="0" id="myTable">
<tbody>
<tr>
<td>Item</td>
<td>Category</td>
<td>Price ($)</td>
<td>Discount ($)</td>
<td>Sales Price ($)</td>
<td>Tax ($)</td>
<td>Total ($)</td>
</tr>
<tr>
<td>1</td>
<td align="center"><input id="categoryOne" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="priceOne" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="discountOne" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="salePriceOne" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="taxOne" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="totalOne" disabled="disabled" type="textbox" /></td>
</tr>
<td>2</td>
<td align="center"><input id="categoryTwo" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="priceTwo" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="discountTwo" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="salePriceTwo" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="taxTwo" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="totalTwo" disabled="disabled" type="textbox" /></td>
</tr>
<td>3</td>
<td align="center"><input id="categoryThree" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="priceThree" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="discountThree" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="salePriceThree" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="taxThree" disabled="disabled" type="textbox" /></td>
<td align="center"><input id="totalThree" disabled="disabled" type="textbox" /></td>
</tr>

</tbody>
</table>
</div>
</body>
</html>