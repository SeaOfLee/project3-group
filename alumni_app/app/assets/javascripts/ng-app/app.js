var myHttp;

angular.module('alumniApp', [])
  .factory('postFactory', ['$http', function($http) {
    return {
      getPosts: function() {
        myHttp = $http;
        return $http.get('/posts.json');
      }
    };
  }])

  .controller('postsCtrl', ['$scope', 'postFactory', function($scope, postFactory) {
    postFactory.getPosts()
      .success(function(data) {
        $scope.posts = data;
      });
  }]);