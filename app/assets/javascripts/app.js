// Add reviews to products in api and save it
// styles
var app = angular.module('gemStore', [
  'store-directives',
  'ngRoute'
  ]);

app.config(function($routeProvider, $locationProvider) {
  $locationProvider.html5Mode({
    enabled: true,
    requireBase:false
  });

  $routeProvider
    .when('/',
      {
        templateUrl: '/templates/index.html',
        controller: 'StoreController'
      });
});

app.controller('StoreController', [ '$http', function($http){
  var store = this;
  store.products = [];
    $http.get('/products.json').success(function(data){
              store.products = data;
    });
}]);

app.controller('ReviewController', function() {
  this.review = {};

  this.addReview = function(product) {
    product.reviews.push(this.review);

    this.review = {};

    // save to rails
  };
});
