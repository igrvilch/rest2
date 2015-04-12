
<!DOCTYPE html>
<html lang="en" ng-app="coursesApp">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bootstrap 101 Template</title>
<!-- Bootstrap -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/app.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script src="resources/angularjs/controller.js"></script>
</head>
<body ng-controller="CoursesController">
	<div class="row show-grid">
		<div class="col-md-8">
			<img src="resources/img/2d2f52.png" width="100%"
				class="img-responsive" alt="Responsive image">
		</div>
		<div class="row show-grid">
			<div class="col-md-4 ">
				<form action="${pageContext.request.requestURL}/courses.do">
					<input class="btn btn-primary btn-lg btn-block" type="submit"
						value="Push To Start!">
				</form>
			</div>
		</div>
		<div class="row show-grid">
			<div class="col-md-3" id="programmingId">
				<button ng-click="myFilter = {type: 'programming'}" type="button"
					class="btn btn-primary btn-lg btn-block">Programming
					{{courseNew.title}}</button>
			</div>
			<div class="col-md-3" id="photoId">
				<button ng-click="myFilter = {type: 'photo'}" type="button"
					class="btn btn-primary btn-lg btn-block">Photography</button>
			</div>
			<div class="col-md-3" id="designId">
				<button ng-click="myFilter = {type: 'design'}" type="button"
					class="btn btn-primary btn-lg btn-block">Design</button>
			</div>
			<div class="col-md-3" id="allId">
				<button ng-click="myFilter = null" type="button"
					class="btn btn-primary btn-lg btn-block">All</button>
			</div>
		</div>
		<div class="row show-grid">

			<form name="myForm" ng-submit="submitMyForm()"
				class="form-inline col-md-offset-1">
				<div class="form-group">
					<label>Title</label> <input ng-model="coursesPost.title"
						type="text" class="form-control" placeholder="Insert Title Please">
				</div>
				<div class="form-group col-md-offset-1">
					<label>Description</label> <input
						ng-model="coursesPost.description" class="form-control"
						placeholder="Insert Description">
				</div>
				<div class="form-group col-md-offset-1">
					<label for="exampleInputEmail2">Type</label> <select
						ng-model="coursesPost.type" class="form-control">
						<option>programming</option>
						<option>photo</option>
						<option>design</option>
					</select>
				</div>
				<button type="submit" class="btn btn-default col-md-offset-1">Add
					Course</button>
			</form>
		</div>
		<div class="row show-grid">
			<div class="col-md-5 col-md-offset-1">
				<div class="panel" ng-repeat="x in courses | filter:myFilter"
					ng-click="description.text = x.description">{{ x.title }}</div>
			</div>
			<div class="col-md-6" id="description">Description:
				{{description.text}}</div>
		</div>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="resources/js/bootstrap.min.js"></script>
		<!-- <script src="resources/js/app.js"></script> -->
</body>
</html>