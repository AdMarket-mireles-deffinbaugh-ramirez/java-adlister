<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <style>
        .ads {
            background-color: lightgrey;
        }

        i {
            background-color: lightgrey;
        }

        .editButtons {
            background-color: lightgrey;
            border: none;
        }
    </style>
    <script src="https://kit.fontawesome.com/376cc6886e.js" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container-fluid">
        <h1 class="text-center my-3">Welcome, ${sessionScope.user.username}!</h1>
    </div>

    <div class="container-fluid">
        <h3 class="text-center my-3">Here are your ads</h3>
    </div>

    <div class="container-fluid">
        <div class="row d-flex justify-content-around">

            <c:forEach var="ad" items="${ads}">
                <div class="card col-sm-4 m-2" style="width: 18rem;">
                    <div class="card-body">
                        <h4>${ad.title}</h4>
                        <p>${ad.description}</p>
                        <a class="card-link" href="/profile">Edit</a>
                        <a class="card-link" href="/profile">Delete</a>
                    </div>
                </div>
            </c:forEach>


<%--            <c:forEach var="ad" items="${ads}">--%>
<%--                <div class="col-md-6 border border-secondary rounded p-2 m-3 ads d-flex flex-column">--%>
<%--                    <h2><strong>${ad.title}</strong></h2>--%>
<%--                    <p>${ad.description}</p>--%>
<%--                    <p><strong>Categories: </strong>--%>
<%--                        <c:forEach var="cat" items="${ad.getCategories()}">--%>
<%--                            ${cat},--%>
<%--                        </c:forEach>--%>
<%--                    </p>--%>
<%--                    <c:choose>--%>
<%--                        <c:when test="${ad.getUserId() == sessionScope.user.getId()}">--%>
<%--                            <div class="align-self-end">--%>
<%--                                <!-- Button trigger modal -->--%>
<%--                                <button type="button" class="editButtons" data-bs-toggle="modal" data-bs-target="#editModal${ad.title}">--%>
<%--                                    <i class="fa-solid fa-pencil"></i>--%>
<%--                                </button>--%>
<%--                                <!-- Modal -->--%>
<%--                                <div class="modal fade" id="editModal${ad.title}" tabindex="-1" aria-labelledby="editModalLabel${ad.title}" aria-hidden="true">--%>
<%--                                    <div class="modal-dialog">--%>
<%--                                        <div class="modal-content">--%>
<%--                                            <div class="modal-header">--%>
<%--                                                <h5 class="modal-title" id="editModalLabel${ad.title}">Edit Listing</h5>--%>
<%--                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                                            </div>--%>
<%--                                            <form action="/profile?adId=${ad.id}&option=edit" method="POST">--%>
<%--                                                <div class="modal-body">--%>
<%--                                                    <div class="form-group">--%>
<%--                                                        <label for="title${ad.title}">Title</label>--%>
<%--                                                        <input id="title${ad.title}" name="title" class="form-control" type="text" value="${ad.title}">--%>
<%--                                                    </div>--%>
<%--                                                    <div class="form-group">--%>
<%--                                                        <label for="description${ad.title}">Description</label>--%>
<%--                                                        <input id="description${ad.title}" name="description" class="form-control" type="text" value="${ad.description}">--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <div class="modal-footer">--%>
<%--                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
<%--                                                    <button type="submit" class="btn btn-primary">Save changes</button>--%>
<%--                                                </div>--%>
<%--                                            </form>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>

<%--                                <!-- Button trigger modal -->--%>
<%--                                <button type="button" class="editButtons" data-bs-toggle="modal" data-bs-target="#deleteModal${ad.title}">--%>
<%--                                    <i class="fa-solid fa-trash-can"></i>--%>
<%--                                </button>--%>
<%--                                <!-- Modal -->--%>
<%--                                <div class="modal fade" id="deleteModal${ad.title}" tabindex="-1" aria-labelledby="deleteModalLabel${ad.title}" aria-hidden="true">--%>
<%--                                    <div class="modal-dialog">--%>
<%--                                        <div class="modal-content">--%>
<%--                                            <div class="modal-header">--%>
<%--                                                <h5 class="modal-title" id="deleteModalLabel${ad.title}">Edit Listing</h5>--%>
<%--                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                                            </div>--%>
<%--                                            <form action="/profile?adId=${ad.id}&option=delete" method="POST">--%>
<%--                                                <div class="modal-body">--%>
<%--                                                    <p>Are you sure want to delete the ad for ${ad.title}</p>--%>
<%--                                                </div>--%>
<%--                                                <div class="modal-footer">--%>
<%--                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>--%>
<%--                                                    <button type="submit" class="btn btn-primary">Continue</button>--%>
<%--                                                </div>--%>
<%--                                            </form>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </c:when>--%>
<%--                    </c:choose>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
        </div>
    </div>

</body>
</html>
