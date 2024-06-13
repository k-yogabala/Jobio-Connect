<%-- 
    Document   : sample
    Created on : 30 May, 2023, 7:35:39 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	
	<style>
	@import url('https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Poppins:wght@400;500;600;700&display=swap');

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

a {
	text-decoration: none;
}

li {
	list-style: none;
}

:root {
	--poppins: 'Poppins', sans-serif;
	--lato: 'Lato', sans-serif;

	--light: #F9F9F9;
	--blue: #3C91E6;
	--light-blue: #CFE8FF;
	--grey: #eee;
	--dark-grey: #AAAAAA;
	--dark: #342E37;
	--red: #DB504A;
	--yellow: #FFCE26;
	--light-yellow: #FFF2C6;
	--orange: #FD7238;
	--light-orange: #FFE0D3;
}

html {
	overflow-x: hidden;
}

body.dark {
	--light: #0C0C1E;
	--grey: #060714;
	--dark: #FBFBFB;
}

body {
	background: var(--grey);
	overflow-x: hidden;
}





/* SIDEBAR */
#sidebar {
	position: fixed;
	top: 0;
	left: 0;
	width: 280px;
	height: 100%;
	background: var(--light);
	z-index: 2000;
	font-family: var(--lato);
	transition: .3s ease;
	overflow-x: hidden;
	scrollbar-width: none;
}
#sidebar::--webkit-scrollbar {
	display: none;
}
#sidebar.hide {
	width: 60px;
}
#sidebar .brand {
	font-size: 24px;
	font-weight: 700;
	height: 56px;
	display: flex;
	align-items: center;
	color: var(--blue);
	position: sticky;
	top: 0;
	left: 0;
	background: var(--light);
	z-index: 500;
	padding-bottom: 20px;
	box-sizing: content-box;
}
#sidebar .brand .bx {
	min-width: 60px;
	display: flex;
	justify-content: center;
}
#sidebar .side-menu {
	width: 100%;
	margin-top: 48px;
}
#sidebar .side-menu li {
	height: 48px;
	background: transparent;
	margin-left: 6px;
	border-radius: 48px 0 0 48px;
	padding: 4px;
}
#sidebar .side-menu li.active {
	background: var(--grey);
	position: relative;
}
#sidebar .side-menu li.active::before {
	content: '';
	position: absolute;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	top: -40px;
	right: 0;
	box-shadow: 20px 20px 0 var(--grey);
	z-index: -1;
}
#sidebar .side-menu li.active::after {
	content: '';
	position: absolute;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	bottom: -40px;
	right: 0;
	box-shadow: 20px -20px 0 var(--grey);
	z-index: -1;
}
#sidebar .side-menu li a {
	width: 100%;
	height: 100%;
	background: var(--light);
	display: flex;
	align-items: center;
	border-radius: 48px;
	font-size: 16px;
	color: var(--dark);
	white-space: nowrap;
	overflow-x: hidden;
}
#sidebar .side-menu.top li.active a {
	color: var(--blue);
}
#sidebar.hide .side-menu li a {
	width: calc(48px - (4px * 2));
	transition: width .3s ease;
}
#sidebar .side-menu li a.logout {
	color: var(--red);
}
#sidebar .side-menu.top li a:hover {
	color: var(--blue);
}
#sidebar .side-menu li a .bx {
	min-width: calc(60px  - ((4px + 6px) * 2));
	display: flex;
	justify-content: center;
}
/* SIDEBAR */





/* CONTENT */
#content {
	position: relative;
	width: calc(100% - 280px);
	left: 280px;
	transition: .3s ease;
}
#sidebar.hide ~ #content {
	width: calc(100% - 60px);
	left: 60px;
}




/* NAVBAR */
#content nav {
	height: 56px;
	background: var(--light);
	padding: 0 24px;
	display: flex;
	align-items: center;
	grid-gap: 24px;
	font-family: var(--lato);
	position: sticky;
	top: 0;
	left: 0;
	z-index: 1000;
}
#content nav::before {
	content: '';
	position: absolute;
	width: 40px;
	height: 40px;
	bottom: -40px;
	left: 0;
	border-radius: 50%;
	box-shadow: -20px -20px 0 var(--light);
}
#content nav a {
	color: var(--dark);
}
#content nav .bx.bx-menu {
	cursor: pointer;
	color: var(--dark);
}
#content nav .nav-link {
	font-size: 16px;
	transition: .3s ease;
}
#content nav .nav-link:hover {
	color: var(--blue);
}
#content nav form {
	max-width: 400px;
	width: 100%;
	margin-right: auto;
}
#content nav form .form-input {
	display: flex;
	align-items: center;
	height: 36px;
}
#content nav form .form-input input {
	flex-grow: 1;
	padding: 0 16px;
	height: 100%;
	border: none;
	background: var(--grey);
	border-radius: 36px 0 0 36px;
	outline: none;
	width: 100%;
	color: var(--dark);
}
#content nav form .form-input button {
	width: 36px;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	background: var(--blue);
	color: var(--light);
	font-size: 18px;
	border: none;
	outline: none;
	border-radius: 0 36px 36px 0;
	cursor: pointer;
}
#content nav .notification {
	font-size: 20px;
	position: relative;
}
#content nav .notification .num {
	position: absolute;
	top: -6px;
	right: -6px;
	width: 20px;
	height: 20px;
	border-radius: 50%;
	border: 2px solid var(--light);
	background: var(--red);
	color: var(--light);
	font-weight: 700;
	font-size: 12px;
	display: flex;
	justify-content: center;
	align-items: center;
}
#content nav .profile img {
	width: 36px;
	height: 36px;
	object-fit: cover;
	border-radius: 50%;
}
#content nav .switch-mode {
	display: block;
	min-width: 50px;
	height: 25px;
	border-radius: 25px;
	background: var(--grey);
	cursor: pointer;
	position: relative;
}
#content nav .switch-mode::before {
	content: '';
	position: absolute;
	top: 2px;
	left: 2px;
	bottom: 2px;
	width: calc(25px - 4px);
	background: var(--blue);
	border-radius: 50%;
	transition: all .3s ease;
}
#content nav #switch-mode:checked + .switch-mode::before {
	left: calc(100% - (25px - 4px) - 2px);
}
/* NAVBAR */





/* MAIN */
#content main {
	width: 100%;
	padding: 36px 24px;
	font-family: var(--poppins);
	max-height: calc(100vh - 56px);
	overflow-y: auto;
}
#content main .head-title {
	display: flex;
	align-items: center;
	justify-content: space-between;
	grid-gap: 16px;
	flex-wrap: wrap;
}
#content main .head-title .left h1 {
	font-size: 36px;
	font-weight: 600;
	margin-bottom: 10px;
	color: var(--dark);
}
#content main .head-title .left .breadcrumb {
	display: flex;
	align-items: center;
	grid-gap: 16px;
}
#content main .head-title .left .breadcrumb li {
	color: var(--dark);
}
#content main .head-title .left .breadcrumb li a {
	color: var(--dark-grey);
	pointer-events: none;
}
#content main .head-title .left .breadcrumb li a.active {
	color: var(--blue);
	pointer-events: unset;
}
#content main .head-title .btn-download {
	height: 36px;
	padding: 0 16px;
	border-radius: 36px;
	background: var(--blue);
	color: var(--light);
	display: flex;
	justify-content: center;
	align-items: center;
	grid-gap: 10px;
	font-weight: 500;
}




#content main .box-info {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
	grid-gap: 24px;
	margin-top: 36px;
}
#content main .box-info li {
	padding: 24px;
	background: var(--light);
	border-radius: 20px;
	display: flex;
	align-items: center;
	grid-gap: 24px;
}
#content main .box-info li .bx {
	width: 80px;
	height: 80px;
	border-radius: 10px;
	font-size: 36px;
	display: flex;
	justify-content: center;
	align-items: center;
}
#content main .box-info li:nth-child(1) .bx {
	background: var(--light-blue);
	color: var(--blue);
}
#content main .box-info li:nth-child(2) .bx {
	background: var(--light-yellow);
	color: var(--yellow);
}
#content main .box-info li:nth-child(3) .bx {
	background: var(--light-orange);
	color: var(--orange);
}
#content main .box-info li .text h3 {
	font-size: 24px;
	font-weight: 600;
	color: var(--dark);
}
#content main .box-info li .text p {
	color: var(--dark);	
}





#content main .table-data {
	display: flex;
	flex-wrap: wrap;
	grid-gap: 24px;
	margin-top: 24px;
	width: 100%;
	color: var(--dark);
}
#content main .table-data > div {
	border-radius: 20px;
	background: var(--light);
	padding: 24px;
	overflow-x: auto;
}
#content main .table-data .head {
	display: flex;
	align-items: center;
	grid-gap: 16px;
	margin-bottom: 24px;
}
#content main .table-data .head h3 {
	margin-right: auto;
	font-size: 24px;
	font-weight: 600;
}
#content main .table-data .head .bx {
	cursor: pointer;
}

#content main .table-data .order {
	flex-grow: 1;
	flex-basis: 500px;
}
#content main .table-data .order table {
	width: 100%;
	border-collapse: collapse;
}
#content main .table-data .order table th {
	padding-bottom: 12px;
	font-size: 13px;
	text-align: left;
	border-bottom: 1px solid var(--grey);
}
#content main .table-data .order table td {
	padding: 16px 0;
}
#content main .table-data .order table tr td:first-child {
	display: flex;
	align-items: center;
	grid-gap: 12px;
	padding-left: 6px;
}
#content main .table-data .order table td img {
	width: 36px;
	height: 36px;
	border-radius: 50%;
	object-fit: cover;
}
#content main .table-data .order table tbody tr:hover {
	background: var(--grey);
}
#content main .table-data .order table tr td .status {
	font-size: 10px;
	padding: 6px 16px;
	color: var(--light);
	border-radius: 20px;
	font-weight: 700;
}
#content main .table-data .order table tr td .status.completed {
	background: var(--blue);
}
#content main .table-data .order table tr td .status.process {
	background: var(--yellow);
}
#content main .table-data .order table tr td .status.pending {
	background: var(--orange);
}


#content main .table-data .todo {
	flex-grow: 1;
	flex-basis: 300px;
}
#content main .table-data .todo .todo-list {
	width: 100%;
}
#content main .table-data .todo .todo-list li {
	width: 100%;
	margin-bottom: 16px;
	background: var(--grey);
	border-radius: 10px;
	padding: 14px 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
#content main .table-data .todo .todo-list li .bx {
	cursor: pointer;
}
#content main .table-data .todo .todo-list li.completed {
	border-left: 10px solid var(--blue);
}
#content main .table-data .todo .todo-list li.not-completed {
	border-left: 10px solid var(--orange);
}
#content main .table-data .todo .todo-list li:last-child {
	margin-bottom: 0;
}

/*Modal CSS*/

/* Same CSS as before */

.modal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0, 0, 0, 0.5);
  border-radius: 10px;
 
}

.modal-content {
  background-color:linen;
  margin: 0 auto;
  margin-top: 10%;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  max-width: 400px; /* Set maximum width for the modal */
  border-radius: 10px;
}

.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
  cursor: pointer;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}


.modal h2 {
  margin-top: 0;
}

.modal form {
  margin-top: 20px;
}

.modal form label {
  display: block;
  margin-bottom: 5px;
}

.modal form input[type="password"] {
  width: 100%;
  padding: 5px;
  margin-bottom: 10px;
}

.modal form input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
}

.modal form input[type="submit"]:hover {
  background-color: #45a049;
}




/* MAIN */
/* image slide */


@media screen and (max-width: 768px) {
	#sidebar {
		width: 200px;
	}

	#content {
		width: calc(100% - 60px);
		left: 200px;
	}

	#content nav .nav-link {
		display: none;
	}
}






@media screen and (max-width: 576px) {
	#content nav form .form-input input {
		display: none;
	}

	#content nav form .form-input button {
		width: auto;
		height: auto;
		background: transparent;
		border-radius: none;
		color: var(--dark);
	}

	#content nav form.show .form-input input {
		display: block;
		width: 100%;
	}
	#content nav form.show .form-input button {
		width: 36px;
		height: 100%;
		border-radius: 0 36px 36px 0;
		color: var(--light);
		background: var(--red);
	}

	#content nav form.show ~ .notification,
	#content nav form.show ~ .profile {
		display: none;
	}

	#content main .box-info {
		grid-template-columns: 1fr;
	}

	#content main .table-data .head {
		min-width: 420px;
	}
	#content main .table-data .order table {
		min-width: 420px;
	}
	#content main .table-data .todo .todo-list {
		min-width: 420px;
	}
        
       
        
}





	</style>

	<title>Employee Hub</title>
</head>
<body>


	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			<i class='bx bxs-smile'></i>
			<span class="text">Employee Panel</span>
		</a>
		<ul class="side-menu top">
			<li >
				<a href="employee_logged_panel.jsp">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li class="active">
                            <a href="employee_logged_panel_MyProfile.jsp" id="clickProfile">
					<i class='bx bx-user'></i>
					<span class="text">My Profile</span>
				</a>
			</li>
			<li>
				<a id="changePass" href="#">
					<i class='bx bx-lock-alt'></i>

					<span class="text">Change Password</span>
				</a>
			</li>
			<li>
				<a href="employee_logged_panel_Grievances.jsp">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">Grievances</span>
				</a>
			</li>
			
		</ul>
		<ul class="side-menu">
			<li>
				<a href="emp-login.jsp" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav id="content-show">
			<i class='bx bx-menu' ></i>
			<a href="#" class="nav-link">Categories</a>
                          <h3 style=" color:var(--blue); padding-left: 20px;margin-left: 60px;margin-right: 100px; ">Employee Grievances Management System </h3>    
                                
			<form action="#" style="display:none;">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" hidden>
			<label for="switch-mode" class="switch-mode"></label>
			<a href="#" class="notification">
				<i class='bx bxs-bell' ></i>
				<span class="num">8</span>
			</a>
			
		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>My Profile</h1>
					
				</div>
				
			</div>

			
                    <div id="myModal" class="modal">
                        <div class="modal-content">
                         <span class="close">&times;</span>
                         <h2>Change Password</h2>
                             <form id="changePasswordForm">
                                  <label for="currentPassword">Current Password:</label>
                                   <input type="password" id="currentPassword" required><br>

                                    <label for="newPassword">New Password:</label>
                                    <input type="password" id="newPassword" required><br>

                                    <label for="confirmPassword">Confirm Password:</label>
                                    <input type="password" id="confirmPassword" required><br>

                                    <input type="submit" value="Change Password">
                              </form>
                        </div>
                     </div>
                    
                    
                    

			<div class="table-data" id="myProfile" >
				<div class="order">
					<div class="head">
						<h3>My Profile</h3>
											</div>
					<table>
						
						<tbody>
							<tr>
								<td>
									<i class='bx bx-id-card'></i>

									<p>Employee Id</p>
								</td>
								<td> <%@page import="java.sql.*" %><% 
                                                                  try{
                                                                	  String url = "jdbc:mysql://localhost:3306/servlet";
                                                                      String dbun = "root";
                                                                      String dbpw = "Sadvi@109";
                                                                   Connection con = DriverManager.getConnection(url, dbun, dbpw);
                                                                   String data="";
                                                                      PreparedStatement pst=con.prepareStatement("select empid from info where empid=?" );
                                                                      pst.setString(1, "bikram");
                                                                      ResultSet rs =pst.executeQuery();
                                                                      while(rs.next()){
                                                                        data=rs.getString(1);
                                                                      }
                                                                      out.println(data);
                                                                }catch(Exception e){
                                                                    out.print(e);
                                                                  }
                                                                  
                                                                    
                                                                    %></td>
								<td><span class="status completed">Edit</span></td>
							</tr>
							<tr>
								<td>
									<i class='bx bx-user'></i>
									<p>Full Name</p>
								</td>
								<td>
                                                                <% try{
                                                                	String url = "jdbc:mysql://localhost:3306/servlet";
                                                                    String dbun = "root";
                                                                    String dbpw = "Sadvi@109";
                                                                 Connection con = DriverManager.getConnection(url, dbun, dbpw);
                                                                 String data="";
                                                                    PreparedStatement pst=con.prepareStatement("select name from info where empid=?" );
                                                                    pst.setString(1, "bikram");
                                                                    ResultSet rs =pst.executeQuery();
                                                                    while(rs.next()){
                                                                      data=rs.getString(1);
                                                                    }
                                                                    out.println(data);
                                                              }catch(Exception e){
                                                                  out.print(e);
                                                                  }
                                                                  
                                                                    
                                                                    %>
                                                                </td>
								<td><span class="status completed">Edit</span></td>
							</tr>
							<tr>
								<td>
									<i class='bx bx-envelope'></i>
									<p>Email Id</p>
								</td>
                                                                <td>
                                                                    <% try{
                                                                    	String url = "jdbc:mysql://localhost:3306/servlet";
                                                                        String dbun = "root";
                                                                        String dbpw = "Sadvi@109";
                                                                     Connection con = DriverManager.getConnection(url, dbun, dbpw);
                                                                     String data="";
                                                                        PreparedStatement pst=con.prepareStatement("select emailid from info where empid=?" );
                                                                        pst.setString(1, "bikram");
                                                                        ResultSet rs =pst.executeQuery();
                                                                        while(rs.next()){
                                                                          data=rs.getString(1);
                                                                        }
                                                                        out.println(data);
                                                                  }catch(Exception e){
                                                                      out.print(e);
                                                                  }
                                                                  
                                                                    
                                                                    %>
                                                                </td>
								<td><span class="status completed">Edit</span></td>
							</tr>
							<tr>
								<td>
									<i class='bx bx-phone'></i>
									<p>Contact</p>
								</td>
                                                                <td>
                                                                    <% try{
                                                                    	String url = "jdbc:mysql://localhost:3306/servlet";
                                                                        String dbun = "root";
                                                                        String dbpw = "Sadvi@109";
                                                                     Connection con = DriverManager.getConnection(url, dbun, dbpw);
                                                                     String data="";
                                                                        PreparedStatement pst=con.prepareStatement("select contact from info where empid=?" );
                                                                        pst.setString(1, "bikram");
                                                                        ResultSet rs =pst.executeQuery();
                                                                        while(rs.next()){
                                                                          data=rs.getString(1);
                                                                        }
                                                                        out.println(data);
                                                                  }catch(Exception e){
                                                                      out.print(e);
                                                                  }
                                                                  
                                                                    
                                                                    %>
                                                                </td>
								<td><span class="status completed">Edit</span></td>
							</tr>
							<tr>
								<td>
									<i class='bx bx-male'></i>
									<p>Gender</p>
								</td>
								<td><% try{
									String url = "jdbc:mysql://localhost:3306/servlet";
                                    String dbun = "root";
                                    String dbpw = "Sadvi@109";
                                 Connection con = DriverManager.getConnection(url, dbun, dbpw);
                                 String data="";
                                    PreparedStatement pst=con.prepareStatement("select gender from info where empid=?" );
                                    pst.setString(1, "bikram");
                                    ResultSet rs =pst.executeQuery();
                                    while(rs.next()){
                                      data=rs.getString(1);
                                    }
                                    out.println(data);
                              }catch(Exception e){
                                  out.print(e);
                                                                  }
                                                                  
                                                                    
                                                                    %></td>
								<td><span class="status completed">Edit</span></td>
							</tr>
                                                        <tr>
								<td>
									<i class='bx bx-map'></i>
                                                                        <p>State</p>
								</td>
								<td><% try{
									String url = "jdbc:mysql://localhost:3306/servlet";
                                    String dbun = "root";
                                    String dbpw = "Sadvi@109";
                                 Connection con = DriverManager.getConnection(url, dbun, dbpw);
                                 String data="";
                                    PreparedStatement pst=con.prepareStatement("select state from info where empid=?" );
                                    pst.setString(1, "bikram");
                                    ResultSet rs =pst.executeQuery();
                                    while(rs.next()){
                                      data=rs.getString(1);
                                    }
                                    out.println(data);
                              }catch(Exception e){
                                  out.print(e);
                                                                  }
                                                                  
                                                                    
                                                                    %></td>
								<td><span class="status completed">Edit</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				
				</div>
			</div>
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

        <script>
	const allSideMenu = document.querySelectorAll('#sidebar .side-menu.top li a');

allSideMenu.forEach(item=> {
	const li = item.parentElement;

	item.addEventListener('click', function () {
		allSideMenu.forEach(i=> {
			i.parentElement.classList.remove('active');
		})
		li.classList.add('active');
	})
});




// TOGGLE SIDEBAR
const menuBar = document.querySelector('#content nav .bx.bx-menu');
const sidebar = document.getElementById('sidebar');

menuBar.addEventListener('click', function () {
	sidebar.classList.toggle('hide');
})







const searchButton = document.querySelector('#content nav form .form-input button');
const searchButtonIcon = document.querySelector('#content nav form .form-input button .bx');
const searchForm = document.querySelector('#content nav form');

searchButton.addEventListener('click', function (e) {
	if(window.innerWidth < 576) {
		e.preventDefault();
		searchForm.classList.toggle('show');
		if(searchForm.classList.contains('show')) {
			searchButtonIcon.classList.replace('bx-search', 'bx-x');
		} else {
			searchButtonIcon.classList.replace('bx-x', 'bx-search');
		}
	}
})





if(window.innerWidth < 768) {
	sidebar.classList.add('hide');
} else if(window.innerWidth > 576) {
	searchButtonIcon.classList.replace('bx-x', 'bx-search');
	searchForm.classList.remove('show');
}


window.addEventListener('resize', function () {
	if(this.innerWidth > 576) {
		searchButtonIcon.classList.replace('bx-x', 'bx-search');
		searchForm.classList.remove('show');
	}
})



const switchMode = document.getElementById('switch-mode');

switchMode.addEventListener('change', function () {
	if(this.checked) {
		document.body.classList.add('dark');
	} else {
		document.body.classList.remove('dark');
	}
})
        
        
        
        
        document.getElementById("changePass").addEventListener("click", function() {
  document.getElementById("myModal").style.display = "block";
});

document.getElementsByClassName("close")[0].addEventListener("click", function() {
  document.getElementById("myModal").style.display = "none";
});



        </script>
       
        
    </body>
</html>
