<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>ECEWSI</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<!-- App favicon -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/images/favicon.ico">

<!-- App css -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/adminResources/css/icons.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/adminResources/css/metismenu.min.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/adminResources/css/style.css"
	rel="stylesheet" type="text/css" />

<script
	src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
</head>
<body>

	<!-- Begin page -->
	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<!-- Left Sidebar End -->



		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container-fluid">

					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<h4 class="page-title float-left">ADD SUB-CATEGORY</h4>

								<ol class="breadcrumb float-right">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item"><a href="#">Manage
											Subcategory</a></li>
									<li class="breadcrumb-item active">Add Subcategory</li>
								</ol>

								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<!-- end row -->


					<div class="row">
						<div class="col-lg-12">

							<div class="card-box">


								<s:form action="insertSubCategory" method="post"
									modelAttribute="SubCategoryVO" enctype="multipart/form-data">
									<div class="form-group row">
										<label class="col-4 col-form-label">Add Category-Type<span
											class="text-danger">*</span></label>
										<div class="col-md-12">
											<s:select path="CategoryVO.id" class="form-control">
												<c:forEach var="i" items="${CategoryList}">
													<s:option value="${i.id}"> ${i.categoryName }</s:option>
												</c:forEach>
											</s:select>
										</div>
									</div>
									<div class="form-group">
										<label for="emailAddress">Add SubCategory<span
											class="text-danger">*</span></label>
										<s:input type="category" path="subCategoryName"
											parsley-trigger="change" class="form-control"
											id="emailAddress" />
									</div>

									<div class="form-group">
										<label for="example-textarea">AddDiscription<span
											class="text-danger">*</span></label>
										<div>
											<s:textarea class="form-control"
												path="subCategoryDiscription" rows="5" id="example-textarea"
												spellcheck="false" />
										</div>

									</div>

									<div class="form-group">
										<div class="checkbox checkbox-purple">
											<input id="checkbox6a" type="checkbox">
										</div>

									</div>

									<div class="form-group">
										<h5>
											Attach File <span class="text-danger">*</span>
										</h5>
										<input type="file" class="form-control" required="required"
											name="file"/>
									</div>


									<s:hidden path="id" />


									<div class="form-group text-right m-b-0">
										<button class="btn btn-primary waves-effect waves-light"
											type="submit">Save</button>
									</div>

								</s:form>
							</div>
						</div>

					</div>
					<!-- container -->
				</div>
				<!-- content -->

				<jsp:include page="footer.jsp"></jsp:include>

			</div>


			<!-- ============================================================== -->
			<!-- End Right content here -->
			<!-- ============================================================== -->


		</div>
		<!-- END wrapper -->



		<!-- jQuery  -->
		<script
			src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>
		<!-- Popper for Bootstrap -->
		<script
			src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/metisMenu.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/waves.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.js"></script>

		<!-- Parsley js -->
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>

		<!-- App js -->
		<script
			src="<%=request.getContextPath()%>/adminResources/js/jquery.core.js"></script>
		<script
			src="<%=request.getContextPath()%>/adminResources/js/jquery.app.js"></script>

		<script type="text/javascript">
            $(document).ready(function() {
                $('form').parsley();
            });
        </script>
</body>
</html>