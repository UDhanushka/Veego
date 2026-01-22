<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	     <table aria-describedby="advertisement-list-title" role="table" id="ads-table">
      <thead>
       <tr>
        <th scope="col">ID</th>
        <th scope="col">Title</th>
        <th scope="col">Media_url</th>
        <th scope="col">Position</th>
        <th scope="col">Start_date</th> 
        <th scope="col">End_date</th> 
        <th scope="col">Status</th>
        <th scope="col">Views </th>  
        <th scope="col">Actions</th>
       </tr>
      </thead>
      <tbody>
       <tr>
       <c:forEach var="ad" items="${adsDetails}">
        <td>${ad.id}</td>
        <td>${ad.title} </td>
        <td>${ad.media_url}</td>
        <td>${ad.position}</td>
        <td>${ad.start_date}</td>
        <td>${ad.end_date}</td>
        <td><span aria-label="Active status" class="status-active">${ad.status} </span></td>
        <td>1,234</td>
        <td class="actions"><a class="edit" href="#" tabindex="0"> Edit </a>
            <a class="delete" href="#" tabindex="0">Delete  </a>
        </td>
        </c:forEach>
       </tr>
      </tbody>
     </table>
</body>
</html>