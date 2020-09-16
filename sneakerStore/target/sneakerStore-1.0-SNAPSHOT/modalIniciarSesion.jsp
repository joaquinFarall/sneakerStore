                <div id="iniciarSesion" class="modal" tabindex="-1" role="dialog">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header bg-dark">
		        <h5 class="modal-title text-light">Iniciar Sesion</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
				<form action="login" method="POST">
				  <div class="form-group row">
				    <label for="email" class="col-4 col-form-label">E-mail</label> 
				    <div class="col-8">
				      <input id="email" name="emailLogin" type="text" required="required" class="form-control">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="password" class="col-4 col-form-label">Password</label> 
				    <div class="col-8">
				      <input id="password" name="passwordLogin" type="password" required="required" class="form-control">
				    </div>
				  </div> 				
                      </div>
                                    <div class="modal-footer bg-dark">
                                        <button type="submit" class="btn btn-light">Ingresar</button>
                                    </div>
                                </form>
		    </div>
		  </div>
		</div>
