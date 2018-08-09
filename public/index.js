/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      places: [],
      newPlace: {
        name: "",
        address: ""
      }
    };
  },
  created: function() {
    axios.get('/api/places').then(function(response) {
      this.places = response.data;
    }.bind(this));
  },
  methods: {
    addPlace: function() {
      var newPlaceParams = {
        name: this.newPlace.name,
        address: this.newPlace.address
      };
      axios.post('/api/places', newPlaceParams).then(function(response) {
        this.places.push(response.data);
        this.newPlace = {
          name: "",
          address: ""
        };
      }.bind(this));
    }
  },
  computed: {}
};

var router = new VueRouter({
  routes: [{ path: "/", component: HomePage }],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});