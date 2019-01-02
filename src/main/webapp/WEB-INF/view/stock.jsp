
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
              <title>ClubManager by wHerex</title>
              <!-- Bootstrap CSS CDN -->
              <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
                <!-- Our Custom CSS -->
                <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style4.css">

                  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/css/script4.js"></script>
                  <!-- Font Awesome JS -->
                  <script defer="defer" src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
                  <script defer="defer" src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

                </head>

                <body>

                  <div class="wrapper">
                    <!-- Sidebar -->
                    <nav id="sidebar">
                      <div class="sidebar-header">
                        <h3>ClubManager by wHerex</h3>
                        <strong></strong>
                        <button type="button" id="sidebarCollapse" class="btn btn-info" onClick="sideBarToggle();">
                          <i class="fas fa-align-left"></i>
                          <span>Toggle Sidebar</span>
                        </button>
                      </div>
                      <ul class="list-unstyled components">
                        <li class="active">
                          <a href="${pageContext.request.contextPath}/">
                            <i class="fas fa-home"></i>
                            <span>
                              Dashboard
                            </span>
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <i class="fas fa-briefcase"></i>
                            <span>
                              Stock</span>
                          </a>
                        </li>
                        <li>
                          <a href="${pageContext.request.contextPath}/staffmembers/list">
                            <i class="fas fa-copy"></i>
                            <span>
                              Staff</span>
                          </a>
                        </li>
                        <li>
                          <a href="Event.html">
                            <i class="fas fa-copy"></i>
                            <span>
                              Events</span>
                          </a>
                        </li>
                        <li>
                          <a href="#">
                            <i class="fas fa-question"></i>
                            <span>
                              FAQ</span>
                          </a>
                        </li>
                        <li>
                          <a href="${pageContext.request.contextPath}/contact">
                            <i class="fas fa-paper-plane"></i>
                            <span>Contact</span>
                          </a>
                        </li>
                      </ul>
                    </nav>
                    <!-- Page Content -->
                    <div id="content">
                      <!-- Simple Jumbotron -->
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

                          </div>
                        </div>

                        <!-- jQuery CDN - Slim version (=without AJAX) -->
                        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                        <!-- Popper.JS -->
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
                        <!-- Bootstrap JS -->
                        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

                        <script>
                          // Example starter JavaScript for disabling form submissions if there are invalid fields
                          (function () {
                            'use strict';
                            window.addEventListener('load', function () {
                              // Fetch all the forms we want to apply custom Bootstrap validation styles to
                              var forms = document.getElementsByClassName('needs-validation');
                              // Loop over them and prevent submission
                              var validation = Array.prototype.filter.call(forms, function (form) {
                                form.addEventListener('submit', function (event) {
                                  if (form.checkValidity() === false) {
                                    event.preventDefault();
                                    event.stopPropagation();
                                  }
                                  form.classList.add('was-validated');

                                }, false);
                              });
                            }, false);
                          })();
                        </script>

                        <script>
                          $('#myModal').on('hidden.bs.modal', function () {
                            $(this).find('form').trigger('reset');
                            $(this).data('bs.modal', null);

                          })
                        </script>

                        <script>
                          $(document).on("click", ".edit-product", function () {
                            var id = $(this).data('product-id');
                            var productname = $(this).data('product-productname');
                            var productcapacity = $(this).data('product-productcapacity');
                            var amountofproduct = $(this).data('product-amountofproduct');
                            $(".modal-body #id").val(id);
                            $(".modal-body #productname").val(productname);
                            $(".modal-body #productcapacity").val(productcapacity);
                            $(".modal-body #amountofproduct").val(amountofproduct);
                            // As pointed out in comments, it is superfluous to have to manually call the modal. $('#addBookDialog').modal('show');
                          });
                        </script>
                        <script>
                          $(document).on("click", ".delete-product", function () {
                            var id = $(this).data('product-id');

                            $(".modal-body #id").val(id);

                          });
                        </script>

                      </body>

                    </html>
