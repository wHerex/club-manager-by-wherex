<div class="jumbotron jumbotron-fluid">
                        <div class="container">
                          <h1 class="display-4">Stock of products</h1>
                          <p class="lead">Table of products state .</p>
                        </div>
                      </div>
                      <!-- Add Staff Member Button -->
                      <ul class="list-inline">
                        <li class="list-inline-item">
                          <button id="myInput" type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">
                            <i class="fas fa-plus"></i>
                            Add product</button>
                        </li>
                      </ul>
                      <!-- Modal for Add Staff Member Button -->
                      <div id="myModal" class="modal" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title">Add new product</h5>

                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">

                              <form:form action="addProduct" modelAttribute="newProduct" method="POST" class="needs-validation">
                                <div class="form-group">
                                  <label for="validationCustom01">Product name</label>
                                  <input type="text" class="form-control" id="productName" name="productName" placeholder="Product name e.g. 'Wyborowa'" path="productName" required="required">
                                    <div class="valid-feedback">
                                      Looks good!
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <label for="validationCustom02">Capcity (ml)</label>
                                    <input type="text" class="form-control" id="productCapacity" name="productCapacity" placeholder="Capcity e.g. '1220' ml" path="productCapacity" required="required">
                                      <div class="valid-feedback">
                                        Looks good!
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label for="validationCustom02">Capcity (ml)</label>
                                      <input type="text" class="form-control" id="amountOfProduct" name="amountOfProduct" placeholder="Amount e.g. '15' bottles" path="amountOfProduct" required="required">
                                        <div class="valid-feedback">
                                          Looks good!
                                        </div>
                                      </div>

                                      <button type="submit" class="btn btn-primary">Save changes</button>
                                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </form:form>

                                  </div>
                                  <div class="modal-footer"></div>

                                </div>
                              </div>
                            </div>
                            <!-- Table of Staff Members -->
                            <table class="table table-bordered">

                              <tr>
                                <th style="width: 5%" scope="col">#</th>
                                <th scope="col">Product name
                                </th>
                                <th scope="col">Capcity (ml)</th>
                                <th scope="col">Amount Of Product</th>
                                <th style="width: 10%" scope="col">Actions
                                </th>
                              </tr>
                              <c:forEach var="tempProduct" items="${products}">
                                <tr>
                                  <td>
                                    ${tempProduct.id }</td>
                                  <td>
                                    ${tempProduct.productName}</td>
                                  <td>
                                    ${tempProduct.productCapacity}</td>
                                  <td>
                                    ${tempProduct.amountOfProduct}</td>
                                  <td>
                                    <button type="deleteButton" class="delete-product btn btn-danger" data-toggle="modal" data-target="#deleteModal" data-product-id="${tempProduct.id}">
                                      <i class="fas fa-trash-alt"></i>
                                    </button>

                                    <button
                                      type="editButton"
                                      class="edit-product btn btn-warning"
                                      data-toggle="modal"
                                      data-target="#editModal"
                                      data-product-id="${tempProduct.id}"
                                      data-product-productName="${tempProduct.productName}"
                                      data-product-productCapacity="${tempProduct.productCapacity}"
                                      data-product-amountOfProduct="${tempProduct.amountOfProduct}">
                                      <i class="fas fa-edit"></i>
                                    </button>
                                  </td>
                                </tr>
                              </c:forEach>

                            </table>
                            <!-- Modal for Delete Staff Member Buttons -->
                            <div id="deleteModal" class="modal" tabindex="-1" role="dialog">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title">Deleting staff member</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                    <form:form action="deleteProduct" modelAttribute="newProduct" method="POST">
                                      <form:input style="display:none" class="form-control" id="id" name="id" path="id"/>
                                      <h1>
                                        <i class="fas fa-exclamation-triangle"></i>
                                        Are u sure?</h1>

                                    </div>
                                    <div class="modal-footer">
                                      <button type="submit" class="btn btn-primary">Delete</button>
                                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                  </form:form>
                                </div>
                              </div>
                            </div>

                            <!-- Modal for Edit Staff Member Button -->
                            <div id="editModal" class="modal" tabindex="-1" role="dialog">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title">Edit product</h5>

                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                    <form:form action="updateProduct" modelAttribute="newProduct" method="POST" class="needs-validation">

                                      <div class="form-group">
                                        <label style="display:none"></label>
                                        <form:input style="display:none" class="form-control" id="id" name="id" path="id"/>
                                      </div>

                                      <div class="form-group">
                                        <label for="validationCustom01">Product Name</label>
                                        <form:input type="text" class="form-control" id="productname" name="productname" path="productName"/>
                                        <div class="valid-feedback">
                                          Looks good!</div>
                                      </div>

                                      <div class="form-group">
                                        <label for="validationCustom02">Product Capacity</label>
                                        <form:input type="text" class="form-control" id="productcapacity" name="productcapacity" path="productCapacity"/>
                                        <div class="valid-feedback">Looks good!</div>
                                      </div>

                                      <div class="form-group">
                                        <label for="validationCustom02">Amount Of Product</label>
                                        <form:input type="text" class="form-control" id="amountofproduct" name="amountofproduct" path="amountOfProduct"/>
                                        <div class="valid-feedback">Looks good!</div>
                                      </div>

                                      <button type="submit" class="btn btn-primary">Save changes</button>
                                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </form:form>
                                  </div>

                                  <div class="modal-footer"></div>
                                </div>
                              </div>
                            </div>