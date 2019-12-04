<!DOCTYPE html>
<html lang="en">
<head>
	<title>Abyssinia Flights</title>
     <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="includes/mylogo.png" type="image/x-icon">
  
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="forcompany.css">
	<link rel="stylesheet" href="homepage.css">
	<link rel="stylesheet" href="AdminSignin.css">
	<script src="login.js"> </script>
	<script src="jump.js"> </script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.php"><span class="glyphicon glyphicon-home"></span> Home</a>				
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					
					<li id = "cart">
						<a class="navbar-brand" href="cartshow.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>
					</li>


					<li class="dropdown" id = "new">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"> Sign in&nbsp;</span><span class="caret"></span>
						</a>
						<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
						  <li><a href="signup.html">Register</a></li>
						  
						  <li class="dropdown-submenu">
							<a tabindex="-1" href="#">Sign in</a>
							<ul class="dropdown-menu">
							  <li><a tabindex="-1" href="Adminpage.html">Manager Sign in</a></li>
							  <li><a href="http://localhost/abyssiniatravel/customersignin.html">Customer Sign in</a></li>
							  </li>
						
					
							</ul>
						  </li>
						
						</ul>
					</li>
					  <li class="dropdown" id = "old">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" ><span class="glyphicon glyphicon-user" id="wuser">Welcom!</span>
						<span class="caret"></span>
						</a>
						<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
							<li><a href="showhistory.php">History</a></li>							
							<li><a href="#" id="logout">Sign out</a></li>
						</ul>
						</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="jumbotron text-center">
		<h1>Abyssinia Flights</h1> 
		<p>Time to fly!</p> 
	</div>

	<div class="container" id="homepage">
		<h1><b>Search Flights</b></h1>
		<br />
		<p><b>Choose your flight option</b></p>
		<div class="btn-group btn-group-justified">			
			<div class="btn-group">
			<button id="button1" type="button" href="#oneway" class="btn btn-primary" style="background-color: #800020">One-way</button>
			</div>
			<div class="btn-group">
			<button id="button2" type="button" href="#roundtrip" class="btn btn-primary" style="background-color: #800020">Round-trip</button>
			</div>
			<div class="btn-group">
			<button id="button3" type="button" href="#all" class="btn btn-primary" style="background-color: #800020">Search all flights</button>
			</div>
		</div>
		<hr />
	<div id="oneway">
		<form role="form" action="SearchResultOneway.php" method="post">
		  <div class="row">
		  <div class="col-sm-6">
		    <label for="from">From:</label>

<select  type="text" class="form-control" id="from" name="from" required>
    <option value="Addis">Addis</option>
    <option value="Adama">Adama</option>
    <option value="Hawassa">Hawassa</option>
    <option value="Bahir Dar">Bahir Dar</option>
    <option value="Dire Dawa">Dire Dawa</option>
    <option value="Gondar">Gondar</option>
    <option value="Jimma">Jimma</option>
    <option value="Mekele">Mekele</option>
    <option value="Harar">Harar</option>
    <option value="Gambela">Gambela</option>

    
  </select>


		 
		  </div>
		  <div class="col-sm-6">
		    <label for="to">To:</label>

		    <select  type="text" class="form-control" id="to" name="to" required>
    <option value="Addis">Addis</option>
    <option value="Adama">Adama</option>
    <option value="Hawassa">Hawassa</option>
    <option value="Bahir Dar">Bahir Dar</option>
    <option value="Dire Dawa">Dire Dawa</option>
    <option value="Gondar">Gondar</option>
    <option value="Jimma">Jimma</option>
    <option value="Mekele">Mekele</option>
    <option value="Harar">Harar</option>
    <option value="Gambela">Gambela</option>
    
  </select>
		   
		  </div>
		  </div>
		  <hr >
		  <div class="row">
			  <div class="col-sm-6">
			    <label for="depart">Depart:</label>
			    <input type="date" class="form-control" id="depart" name="depart" required>

			  </div>
		  </div>   
		   <div class="row">
		   <hr >
		  <div class="col-sm-6">
		    <label for="class">Class:</label>
		    <select class="form-control" name="class">
		      <option value="Economy">Economy</option>
		      <option value="Business">Business</option>   
		    </select>
		  </div> 
		  </div> 
		  <br>
		  <div class="row">
		  <div class="col-sm-6"> 
		    <label class="radio-inline">
		      <input type="radio" name="stop" value="nonstop" checked>Non-Stop
		    </label>
		    <label class="radio-inline">
		      <input type="radio" name="stop" value="1stop">1 Stop
		    </label>
		  </div> 
		  </div> 
		  <br>
		  <div class="btn-group btn-group-justified">	
				<div class="btn-group">
					<button type="submit" class="btn btn-success" style="background-color: #800020">Submit</button>
				</div>
				<div class="btn-group">
					<button type="reset"  class="btn btn-info" value="Reset" style="background-color: #800020">Reset</button>
				</div>
		  </div>
		</form>
	</div>


	<div id="roundtrip">
		<form role="form" action="SearchResultRoundtrip.php" method="post">
			 <div class="row"> 
			  <div class="col-sm-6">
			    <label for="from">From:</label>

		    <select  type="text" class="form-control" id="from" name="from" required>
    <option value="Addis">Addis</option>
    <option value="Adama">Adama</option>
    <option value="Hawassa">Hawassa</option>
    <option value="Bahir Dar">Bahir Dar</option>
    <option value="Dire Dawa">Dire Dawa</option>
    <option value="Gondar">Gondar</option>
    <option value="Jimma">Jimma</option>
    <option value="Mekele">Mekele</option>
    <option value="Harar">Harar</option>
    <option value="Gambela">Gambela</option>
</select>
			  </div>
			  <div class="col-sm-6">
			    <label for="to">To:</label>

		    <select  type="text" class="form-control" id="to" name="to" required>
    <option value="Addis">Addis</option>
    <option value="Adama">Adama</option>
    <option value="Hawassa">Hawassa</option>
    <option value="Bahir Dar">Bahir Dar</option>
    <option value="Dire Dawa">Dire Dawa</option>
    <option value="Gondar">Gondar</option>
    <option value="Jimma">Jimma</option>
    <option value="Mekele">Mekele</option>
    <option value="Harar">Harar</option>
    <option value="Gambela">Gambela</option>
</select>


			    
			  </div>
			 </div>
			 <hr >
			<div class="row">  
			  <div class="col-sm-6">
			    <label for="depart">Depart:</label>
			    <input type="date" class="form-control" id="depart" name="depart" required>
			  </div>  
			  <div class="col-sm-6">
			    <label for="return">Return:</label>
			    <input type="date" class="form-control" id="return" name="return" required>
			  </div>
			 </div>
			 <hr >
			 <div class="row">   
			  <div class="col-sm-6">
			    <label for="class">Class:</label>
			    <select class="form-control" name="class">
			      <option value="Economy">Economy</option>
			      <option value="Business">Business</option>   
			    </select>
			  </div> 
			 </div>
			 <br>
			  <div class="form-group"> 
			    <label class="radio-inline">
			      <input type="radio" name="stop" value="nonstop" checked>Non-Stop
			    </label>   
			  </div> 
			  <div class="btn-group btn-group-justified">	
				<div class="btn-group">
					<button type="submit" class="btn btn-success" style="background-color: #800020">Submit</button>
				</div>
				<div class="btn-group">
					<button type="reset"  class="btn btn-info" value="Reset" style="background-color: #800020">Reset</button>
				</div>
		  	  </div>
			</form>
	</div>
	<div id="all">
		<form role="form" action="SearchResultAll.php" method="post">
			 <div class="row"> 
			  <div class="col-sm-6">
			  <label for="selectdate">Select a date:</label>
			  <input type="date" class="form-control" id="selectdate" name="selectdate" required>
			  </div>
			 </div>
			 <br>
			<div class="row">   
			  <div class="col-sm-6">
			  <button type="submit" class="btn btn-primary" style="background-color: #800020">Show ALL</button>
			  </div>
			</div> 
			</form>

	</div>	

	</div>	

	
	<footer class="container-fluid text-center">
		<a href="#signUpPage" title="To Top">
			<span class="glyphicon glyphicon-chevron-up"></span>
		</a>
		<p>Abyssinia Flights</p>		
	</footer>
</body>
</html>