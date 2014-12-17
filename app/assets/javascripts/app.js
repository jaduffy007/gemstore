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
  // this.products = [];
  // window.products = [];
  // This will log out the window object...hopefully with our products array attached to it
    // console.log(store);
    $http.get('/products.json').success(function(data){
              store.products = data;
    });
}]);

app.controller('ReviewController', ['$http', function($http) {
  this.review = {};

  this.addReview = function(product) {
    var product_id = product.id;
    this.review.product_id = product.id;

    $http.post("products/" + product_id + "/reviews.json", {review: this.review }).success(function(data){
      console.log(data);
      product.reviews.push(data);
      this.review = {};
    });
  };
}]);
