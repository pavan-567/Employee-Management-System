<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Employees</title>
    <%@include file="components/links.jsp"%>
</head>
<body style="height: 100dvh;">
    <jsp:include page="components/navbar.jsp" />
    <div class="container">
        <div class="row mt-3">
            <div class="fs-2 text-center fw-bold">Employees List</div>
        </div>
        <div class="row my-3">
            <c:forEach var="employee" items="${employees}">
                <%-- Variable Mapping --%>
                <c:url value="edit/${employee.id}" var="editUrl" />
                <c:url value="delete/${employee.id}" var="deleteUrl" />
                <c:choose>
                    <c:when test="${employee.gender eq 'male'}">
                        <c:set var="imageUrl" value="https://w0.peakpx.com/wallpaper/774/966/HD-wallpaper-anime-your-name-kimi-no-na-wa-taki-tachibana.jpg"/>
                    </c:when>
                    <c:otherwise>
                        <c:set var="imageUrl" value="https://w0.peakpx.com/wallpaper/432/320/HD-wallpaper-anime-crossover-hina-amano-mitsuha-miyamizu-weathering-with-you-your-name.jpg" />
                    </c:otherwise>
                </c:choose>
                <%--  --%>
                <div class="col-md-6 mt-2 d-flex justify-content-center">
                    <div class="card" style="width: 30rem;">
                        <div class="card-header">Employee Card</div>
                        <div class="card-body">
                        <%--             Image               --%>
                            <div class="d-flex justify-content-center">
                            <img src="${imageUrl}" class="rounded img-fluid object-fit-cover" style="height: 300px; width: 300px;"  />
                            </div>
                            <div class="fs-3 text-center fw-bold">${employee.firstName} ${employee.lastName}</div>
                            <div class="text-center">${employee.designation}</div>
                            <hr>

                            <div class="">
                                <table class="table table-hover d-flex justify-content-center fs-5">
                                    <tbody>
                                    <tr>
                                        <th scope="row">Id</th>
                                        <td>${employee.id}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Email</th>
                                        <td>${employee.email}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Salary</th>
                                        <td>${employee.salary}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Gender</th>
                                        <td>${employee.gender}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <div class="card-footer">
                            <a href="${editUrl}" class="btn btn-warning">Edit</a>
                            <button type="button" data-bs-toggle="modal" data-bs-target="#modal-${employee.id}" class="btn btn-danger">Delete</button>
                        </div>
                    </div>
                </div>


                <!-- Modal -->
                <div class="modal fade" id="modal-${employee.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Delete</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Are You Sure You Want To Delete The Employee ?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <a href="${deleteUrl}" class="btn btn-danger">Confirm</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <%@include file="components/scripts.jsp"%>
</body>
</html>
