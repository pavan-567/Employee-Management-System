<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Create Employee</title>

    <%@include file="components/links.jsp"%>
</head>
<body style="height: 100vh;">
<%@include file="components/navbar.jsp"%>
<div class="d-flex align-items-center justify-content-center mt-5">
<div class="card mb-3" style="max-width: 900px;">
    <div class="row g-0">
        <div class="col-md-5">
            <img src="https://images.unsplash.com/photo-1572021335469-31706a17aaef?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                 class="img-fluid object-fit-cover rounded-start" style="height: 100%;" alt="...">
        </div>
        <div class="col-md-7">
            <div class="card-header fs-4 fw-bold text-center">Employee Form</div>
            <div class="card-body">
                <form:form novalidate="true" cssClass="" action="${pageContext.request.contextPath}/process" method="POST" modelAttribute="employee">
                    <form:hidden path="id" />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label" for="fName">First Name</label>
                                <form:input path="firstName" cssClass="form-control" id="fName" placeholder="Enter First Name"   />
                                <form:errors path="firstName" cssClass="text-danger form-text" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label" for="lName">Last Name</label>
                                <form:input path="lastName" cssClass="form-control" id="lName" placeholder="Enter Last Name" />
                                <form:errors path="lastName" cssClass="text-danger form-text" />
                            </div>
                        </div>
                    </div>


                    <div class="mb-3">
                        <label class="form-label" for="email">Enter Email </label>
                        <form:input path="email" cssClass="form-control" id="email" placeholder="Enter Email" type="email" />
                        <form:errors path="email" cssClass="text-danger form-text" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="addr">Enter Address </label>
                        <form:input path="address" cssClass="form-control" id="addr" placeholder="Enter Address" />
                        <form:errors path="address" cssClass="text-danger form-text" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="gndr">Gender</label>
                        <form:select path="gender" cssClass="form-select" id="gndr">
                            <form:option value="male" label="Male" />
                            <form:option value="female" label="Female" />
                            <form:option value="other" label="Other" />
                        </form:select>
                        <form:errors path="gender" cssClass="text-danger form-text" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="desgn">Designation</label>
                        <form:input path="designation" cssClass="form-control" id="desgn"  placeholder="Enter Role" />
                        <form:errors path="designation" cssClass="text-danger form-text" />
                    </div>
                    <div class="mb-3"><label class="form-label" for="salary">Salary</label> <form:input path="salary" id="salary" cssClass="form-control" placeholder="Enter Salary" />             <form:errors path="salary" cssClass="text-danger form-text" /></div>
                    <div>
                        <button type="submit" class="btn btn-success">Submit</button>
                        <a href="${pageContext.request.contextPath}/employees" class="btn btn-danger">Go Back</a>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</div>
<%@include file="components/scripts.jsp"%>
</body>
</html>
