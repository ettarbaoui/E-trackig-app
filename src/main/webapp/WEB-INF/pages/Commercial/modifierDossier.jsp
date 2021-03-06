<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head></head>
  <body>
   <div class="box-header">
		                  <h3 class="box-title">Modifier dossier</h3>
		                </div><!-- /.box-header -->
		                <!-- form start -->
		                  <div class="box-body" >
                <!-- form start -->
                <form role="form" action="updateDossier" method="post">
                  <div class="box-body">
                  
                  	<input type="hidden" value="${D.numdossier}" name="numdossier"/>
                  	
		          	<div class="form-group">
		          	<label for="exampleInputEmail1">Client</label>
		               <select class="form-control" name="clientId">
		                  <c:forEach items="${listeClient}" var="l">
								<option value="${l.idclient}">${l.nomclient}</option>
					   		</c:forEach>
		               </select>
		          	</div>
		          	
		          	<div class="form-group">
		          	<label for="exampleInputEmail1">Moyen de transport</label>
		               <select class="form-control" name="moyenneTransportId">
		                  <c:forEach items="${listeMoyenneTransport}" var="l">
								<option value="${l.idmoyennetransport}">${l.moyennetransport}</option>
					   	  </c:forEach>
		               </select>
		          	</div>
		          	
		          	<div class="form-group">
		          	<label for="typeTransport">Type de transport</label>
		               <select class="form-control" name="typeTransport">
		                  <option value="IMP">IMP</option>
		                  <option value="EXP">EXP</option>
		               </select>
		          	</div>
		          	
                    <div class="form-group">
		          	<label for="exampleInputEmail1">Port de depart</label>
		               <select class="form-control" name="portDepartId">
		                  <c:forEach items="${listePort}" var="l">
								<option value="${l.idport}">${l.nomport}</option>
					   	  </c:forEach>
		               </select>
		          	</div>
		          	
                    <div class="form-group">
		          	<label for="exampleInputEmail1">Port d'arriv�e</label>
		               <select class="form-control" name="portArriveeId">
		                  <c:forEach items="${listePort}" var="l">
								<option value="${l.idport}">${l.nomport}</option>
					   	  </c:forEach>
		               </select>
		          	</div>
		          	
                    <div class="form-group">
                      <label for="cotation">Cotation</label>
                      <input type="number" class="form-control" name="cotation" id="cotation" placeholder="" value="${D.cotation }">
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputPassword1">Etat</label>
                      <textarea class="form-control" name="etat"  rows="3" placeholder="Enter ..." >${D.etat }</textarea>
                    </div>
                    
                   <div class="form-group">
                      <label for="Date">Date</label>
                      <input type="date" class="form-control" name="date" id="date" value="${D.date }">
                    </div>
                    
                    <div class="form-group">
		          	<label for="delaiTransit">Delai Transit</label>
		               <input type="number" class="form-control" name="delaiTransit" value="${D.delaiTransit }" id="delaiTransit" placeholder="">
		          	</div>
		          	
                    <div class="form-group">
                      <label for="Incoterm">Incoterm</label>
                      <%-- <input type="text" class="form-control" name="incoterm" id="incoter" placeholder="" value="${D.incoter }"> --%>
                    	<select class="form-control" name="incoterm">
								<option value="FOB">FOB</option>
								<option value="CAT">EXW</option>
								<option value="CAT">FCA</option>
								<option value="CAT">CFR</option>
								<option value="CAT">CIF</option>
								<option value="CAT">DDU</option>
								<option value="CAT">DDP</option>
		               </select>
                    </div>
                    
                     <input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
                    
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Modifier</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
                  </div>
                </form>
		     </div><!-- /.box-body -->
                </body></html>
    