<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Create User</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: DodgerBlue">
                    <div>
                        <a href="#" class="navbar-brand"> User Record Maintenance </a>
                    </div>
                    </nav>

                    <ul class="navbar navbar-expand-sm bg-light justify-content-center">
                        <a href="<%=request.getContextPath()%>/list" class="nav-link">List of User(s)</a>
                    </ul>
                
            </header>
            <br>
             <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${user != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="insert" method="post">
                        </c:if>

                        <caption>
                            <h2 align="center">
                                <c:if test="${user != null}">
                                    Edit User
                                </c:if>
                                <c:if test="${user == null}">
                                    Add User
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                        </c:if>
                        
                        <br>
                        <div class="form-group row">
    					<label for="colFormLabel" class="col-sm-3 col-form-label">User Name</label>
    					<div class="col-sm-9">
      					<input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required="required">
    					</div>
  						</div>
  						
                        <div class="form-group row">
    					<label for="colFormLabel" class="col-sm-3 col-form-label">User Email</label>
    					<div class="col-sm-9">
      					<input type="email" value="<c:out value='${user.email}' />" class="form-control" placeholder="username@example.com" name="email" required="required">
    					</div>
  						</div>
  						
                        
                        <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">User Country</label>  
                        <div class="col-sm-4">
                        <input list="browsers" value="<c:out value='${user.country}' />"class="form-control" name="country" required="required">
                        <datalist id="browsers">
  							<option>India</option>
  							<option>United States</option>
  							<option>United Kingdom</option>
  							<option>Germany</option>
  							</datalist>
  							</div>
						</div>
						
                        
                        <button type="submit" style="margin-left: 40%" class="btn btn-info">Create</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>
