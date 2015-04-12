angular.module('coursesApp', []).controller(
		'CoursesController',
		function($scope, $http, $window, $location) {
			$scope.description = {
				text : ""
			};
			var host = $location.host().toString();
			var port = $location.port().toString();
			var path1 = "http://" + host + ":" + port + _contextPath + "/rest/api/courses";
			var path2 = "http://" + host + ":" + port + _contextPath + "/rest/api/addcourse";
			$http.get(path1)
					.success(function(response) {
						$scope.courses = response.course;
					});
			$scope.submitMyForm = function() {
				var data = $scope.coursesPost;
				$http.post(path2,
						data).success(function(response) {
					$scope.courses.push(response);
				});
			}
		});