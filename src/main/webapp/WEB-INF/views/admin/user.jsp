<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>User List</title>
        <!-- optional styling -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    </head>
    <body class="p-4">

        <h2 class="mb-3">All Users</h2>

        <c:choose>
            <c:when test="${empty users}">
                <div class="alert alert-info">No user found.</div>
            </c:when>
            <c:otherwise>
                <table class="table table-bordered table-hover align-middle">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">#ID</th>
                            <th scope="col">Email</th>
                            <th scope="col">Role</th>
                            <th scope="col" class="text-center">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="u" items="${users}">
                            <tr>
                                <td>${u.userId}</td>
                                <td>${u.email}</td>
                                <td>${u.role}</td>
                                <td class="text-center">
                                    <!-- example buttons; wire up URLs as you implement edit/delete -->
                                    <a class="btn btn-sm btn-primary"
                                       href="${pageContext.request.contextPath}/admin/users/edit?id=${u.userId}">
                                        <i class="fa-solid fa-pen-to-square"></i> Edit
                                    </a>
                                    <a class="btn btn-sm btn-danger"
                                       href="${pageContext.request.contextPath}/admin/users/delete?id=${u.userId}"
                                       onclick="return confirm('Delete this user?');">
                                        <i class="fa-solid fa-trash"></i> Delete
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:otherwise>
        </c:choose>

    </body>
</html>
