<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Movies</title>
<style>
* {box-sizing: border-box}


/* Set height of body and the document to 100% */
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial;
}

/* Style tab links */
.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 25%;
}

.tablink:hover {
  background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: #A52A2A;
  display: none;
  padding: 100px 20px;
  height: 100%;
}


#Popularity {background-color:#FFDAB9;}
#Location {background-color: orange;}
#Age {background-color: #FFDAB9;}

</style>
<style type="text/css">
.tftable {font-size:12px;width:100%;border-width: 1px;border-color: #729ea5;border-collapse: collapse;}
.tftable th {font-size:12px;color:#FFFFFF;background-color:#9400D3;border-width: 1px;padding: 8px;border-style: solid;border-color: #729ea5;text-align:left;}
.tftable tr {background-color:#D8BFD8;color="#000000"}
.tftable td {font-size:12px;border-width: 1px;padding: 8px;border-style: solid;border-color: #729ea5;}
.tftable tr:hover {background-color:#E9967A;}
</style>

</head>
<body>
<div>
<button class="tablink" onclick="openPage('Popularity', this, 'blue')" id="defaultOpen">Popularity</button>
<button class="tablink" onclick="openPage('Location', this, 'green')" >Location</button>
<button class="tablink" onclick="openPage('Age', this, 'blue')">Age</button>
</div>
<div>
Based on your chosen movie <b> ${movie} </b>, here are the list of recommendations
</div>
<div id="Popularity" class="tabcontent">
  
  <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
					
			<h3>
				List of Movies:Popularity-Based
	
			</h3>
			
<p id="par">
    </p>
    

<table id="populartable" class="tftable" border="1">
<tr><th>Movie Name</th>
<tr><td>{$reccmovieList.title} </td></tr>
</table>



</div>
</div>
</div>
			
</div>




<div id="Location" class="tabcontent">
  <h3>List of Movies:Location-Based</h3>
  
  <p id="par1">
    </p>

<table id="locationtable" class="tftable" border="1">
<tr><th>Movie Name</th>
<tr><td>{$locationMoviesList.title} </td></tr>
</table>
  


</div>

<div id="Age" class="tabcontent">
  <h3>List of Movies:Age-Based</h3>
  
  <p id="par2">
    </p>


<table id="agetable" class="tftable" border="1">
<tr><th>Movie Name</th>
<tr><td>{$ageMoviesList.title} </td></tr>
</table>
  
  
</div>



<script>
function openPage(pageName,elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  elmnt.style.backgroundColor = color;
  document.getElementById("par").innerHTML="";
  document.getElementById("par1").innerHTML="";
  document.getElementById("par2").innerHTML="";
  
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
<script type="text/javascript">
   $(document).ready(function () {
      $("#mytabs").tabs({ fx: {opacity: 'toggle'} });
      
      
   });
</script>

<script language="javascript">
        var tbl = document.getElementById("populartable");
        
        if (tbl != null) {
            for (var i = 0; i < tbl.rows.length; i++) {
                for (var j = 0; j < tbl.rows[i].cells.length; j++)
                    
                	tbl.rows[i].cells[j].onclick = function () { getval(this); };
                    //red=getval(this)+" ";
                    
                    
            }
        }
        function getval(cel) {
        	document.getElementById("par").innerHTML=cel.innerHTML;
        }
       
    </script>
    <script language="javascript">
        var tbl1 = document.getElementById("locationtable");
        if (tbl1 != null) {
            for (var i = 0; i < tbl1.rows.length; i++) {
                for (var j = 0; j < tbl1.rows[i].cells.length; j++)
                    tbl1.rows[i].cells[j].onclick = function () { getval1(this); };
            }
        }
        function getval1(cel1) {
        	document.getElementById("par1").innerHTML=cel1.innerHTML;
        }
    </script>
    <script language="javascript">
        var tbl2 = document.getElementById("agetable");
        if (tbl2 != null) {
            for (var i = 0; i < tbl2.rows.length; i++) {
                for (var j = 0; j < tbl2.rows[i].cells.length; j++)
                    tbl2.rows[i].cells[j].onclick = function () { getval2(this); };
            }
        }
        function getval2(cel2) {
        	document.getElementById("par2").innerHTML=cel2.innerHTML;
        }
    </script>


</body>
</html>