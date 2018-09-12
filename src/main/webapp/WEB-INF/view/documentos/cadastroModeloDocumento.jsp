<%@ taglib prefix="vetweb" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<vetweb:layout title="Cadastro Modelo Documento">

    <jsp:attribute name="jsHead">
    	<script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=2i80p03koooieys6i5h5yz1n9d4uaxrwt1iaoy9938bmcahs"></script>
    	<script>tinymce.init({ selector:'textarea' });</script>
    </jsp:attribute>
    
    <jsp:body>
    <div class="page-wrapper">
            <!-- INICIO MENU DE CONSULTA DE NAVEGA��O -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Modelos</h3> 
                </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<c:url value="/"></c:url>">Home</a></li>
                        <li class="breadcrumb-item"><a href="<c:url value="/documentos/modelos"></c:url>">Modelos</a></li>
                        <li class="breadcrumb-item active"><a href="<c:url value="/documentos/form"> </c:url>">Cadastro de Modelos</a></li>
                    </ol>
                </div>
            </div>
            <!-- FIM MENU DE CONSULTA DE NAVEGA��O -->
            
            <div class="">
                <div class="col-8">
                    <div class="card">
                        <div class="card-title">
                            <h1>Cadastro de Modelo</h1>
                        </div>
        <form:form servletRelativeAction="/documentos/submitForm" method="POST" modelAttribute="modeloDocumento">
            <table class="table table-responsive">
                <tbody>
                    <form:hidden path="modelodocumentoId" id="modelodocumentoId"></form:hidden>
                    <div class="form-group">
								<label for="nome">Nome:</label>
								<form:input class="form-control input-default col-sm-8"
									path="nome" id="nome" maxlength="100"></form:input>
								<form:errors path="nome" cssClass="errors"></form:errors>
					</div>
                    <tr>
                        <th><label for="infoCliente"><spring:message code="infoCliente"/></label></th>
                        <td><form:checkbox path="infoCliente"/></td>
                    </tr>
                    <tr>
                        <th><label for="modelo"><spring:message code="modelo"/></label></th>
                        <td>
                            <form:textarea path="modelo" id="modelo"/>
                        </td>
                    </tr>
                </tbody>
            </table>
            <button type="submit" class="btn btn-success btn-flat btn-addon m-b-10 m-l-5"><i class="ti-save"></i> Cadastrar</button>
        	<button type="reset" class="btn btn-inverse btn-flat btn-addon m-b-10 m-l-5"><i class="ti-save"></i> Limpar</button>                
        </form:form>
        </div>
   	 	</div>
    	</div>
        </div>
    </jsp:body>

</vetweb:layout>
