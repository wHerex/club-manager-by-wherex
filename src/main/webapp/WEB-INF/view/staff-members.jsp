<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
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
                          <a href="${pageContext.request.contextPath}/products/list">
                            <i class="fas fa-briefcase"></i>
                            <span>
                              Stock</span>
                          </a>
                        </li>
                        <li>
                          <a href="">
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
                          <h1 class="display-4">Staff members</h1>
                          <p class="lead">Table of staff members .</p>
                        </div>
                      </div>

                      <!-- Add Staff Member Button -->
                      <ul class="list-inline">
                        <li class="list-inline-item">
                          <button id="myInput" type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">
                            <i class="fas fa-plus"></i>
                            Add Staff Member</button>
                        </li>
                      </ul>

                      <!-- Table of Staff Members -->
                      <table class="table table-bordered">
                        <tr>
                          <th style="width: 5%" scope="col">#</th>
                          <th scope="col">First Name</th>
                          <th scope="col">Last Name</th>
                          <th scope="col">Job</th>
                          <th style="width: 10%" scope="col">Actions
                          </th>
                        </tr>
                        <c:forEach var="tempStaffMember" items="${staffMembers}">
                          <tr>
                            <td>
                              ${tempStaffMember.id }</td>
                            <td>
                              ${tempStaffMember.firstName}</td>
                            <td>
                              ${tempStaffMember.lastName}</td>
                            <td>
                              ${tempStaffMember.job}</td>
                            <td>
                              <button type="deleteButton" class="delete-staffmember btn btn-danger" data-toggle="modal" data-target="#deleteModal" data-staffmember-id="${tempStaffMember.id}">
                                <i class="fas fa-trash-alt"></i>
                              </button>

                              <button
                                type="editButton"
                                class="edit-staffmember btn btn-warning"
                                data-toggle="modal"
                                data-target="#editModal"
                                data-staffmember-id="${tempStaffMember.id}"
                                data-staffmember-firstname="${tempStaffMember.firstName}"
                                data-staffmember-lastname="${tempStaffMember.lastName}"
                                data-staffmember-job="${tempStaffMember.job}">
                                <i class="fas fa-edit"></i>
                              </button>
                            </td>
                          </tr>
                        </c:forEach>
                      </table>

                      <!-- Modal for Add Staff Member Button -->
                      <div id="myModal" class="modal" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title">Add new staff member</h5>

                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">

                              <form:form action="saveStaffMember" modelAttribute="newStaffMember" method="POST" class="needs-validation">
                                <div class="form-group">
                                  <label for="validationCustom01">First name</label>
                                  <form:input type="text" class="form-control" id="validationCustom01" placeholder="First name" path="firstName"/>
                                  <div class="valid-feedback">
                                    Looks good!</div>
                                </div>
                                <div class="form-group">
                                  <label for="validationCustom02">Last name</label>
                                  <form:input type="text" class="form-control" id="validationCustom02" placeholder="Last name" path="lastName"/>
                                  <div class="valid-feedback">Looks good!</div>
                                </div>

                                <div class="form-group">
                                  <label for="validationCustom03">Example select</label>
                                  <form:select class="form-control" id="exampleFormControlSelect1" path="job">
                                    <form:option value="">Please select position</form:option>
                                    <form:option value="Barman">Barman</form:option>
                                    <form:option value="Szatnia">Szatnia</form:option>
                                    <form:option value="Zmywak">Zmywak</form:option>
                                  </form:select>
                                </div>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                              </form:form>
                            </div>

                            <div class="modal-footer"></div>
                          </div>
                        </div>
                      </div>

                      <!-- Modal for Edit Staff Member Button -->
                      <div id="editModal" class="modal" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title">Edit staff member</h5>

                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              <form:form action="editStaffMember" modelAttribute="newStaffMember" method="POST" class="needs-validation">

                                <div class="form-group">
                                  <label style="display:none"></label>
                                  <form:input style="display:none" class="form-control" id="id" name="id" path="id"/>
                                </div>

                                <div class="form-group">
                                  <label for="validationCustom01">First name</label>
                                  <form:input type="text" class="form-control" id="firstname" name="firstname" path="firstName"/>
                                  <div class="valid-feedback">
                                    Looks good!</div>
                                </div>

                                <div class="form-group">
                                  <label for="validationCustom02">Last name</label>
                                  <form:input type="text" class="form-control" id="lastname" name="lastname" path="lastName"/>
                                  <div class="valid-feedback">Looks good!</div>
                                </div>

                                <div class="form-group">
                                  <label for="validationCustom03">Example select</label>
                                  <form:select class="form-control" id="job" name="job" path="job">
                                    <form:option value="Barman">Barman</form:option>
                                    <form:option value="Szatnia">Szatnia</form:option>
                                    <form:option value="Zmywak">Zmywak</form:option>

                                  </form:select>
                                </div>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                              </form:form>
                            </div>

                            <div class="modal-footer"></div>
                          </div>
                        </div>
                      </div>

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
                              <form:form action="deleteStaffMember" modelAttribute="newStaffMember" method="POST">
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
                    $(document).on("click", ".edit-staffmember", function () {
                      var id = $(this).data('staffmember-id');
                      var firstname = $(this).data('staffmember-firstname');
                      var lastname = $(this).data('staffmember-lastname');
                      var job = $(this).data('staffmember-job');
                      $(".modal-body #id").val(id);
                      $(".modal-body #firstname").val(firstname);
                      $(".modal-body #lastname").val(lastname);
                      $(".modal-body #job").val(job);
                      // As pointed out in comments, it is superfluous to have to manually call the modal. $('#addBookDialog').modal('show');
                    });
                  </script>
                  <script>
                    $(document).on("click", ".delete-staffmember", function () {
                      var id = $(this).data('staffmember-id');

                      $(".modal-body #id").val(id);

                    });
                  </script>
                </body>

              </html>
