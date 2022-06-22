<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="ISO-8859-1">
                <title>Guardar Marcador</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
            </head>

            <body>

                <div class="container">
                    <div class="row justify-center">
                        <div class="col-6">
                            <c:if test="${msgError!=null }">
                                <c:out value="${msgError }"></c:out>
                            </c:if>
                            <form:form action="marcador/guardar" method="post" modelAttribute="marcador">
                                <form:label path="nombreMarcador" class="form-label">Nombre</form:label>
                                <form:input path="nombreMarcador" class="form-control" />
                                <br>
                                <form:label path="urlMarcador" class="form-label">Url</form:label>
                                <form:input path="urlMarcador" class="form-control" />
                                <br>
                                <form:label path="descripcionMarcador" class="form-label">Descripcion</form:label>
                                <form:input path="descripcionMarcador" class="form-control" />
                                <br>
                                <input type="submit" value="Guardar Marcador">
                                <button type="submit" class="btn btn-primary">Guardar Marcador</button>

                            </form:form>
                        </div>
                    </div>

                </div>

            </html>