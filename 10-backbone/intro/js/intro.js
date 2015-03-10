var Animal = Backbone.Model.extend({
  defaults: {
    type: 'animal',
    ecosystem: '',
    stripes: 0
  },

  initialize: function () {
    console.log('I am a new animal');

    this.on('change:type', function (model) {
      var type = model.get('type');
      console.log('I am now a ' + type);
    });
  }
});

var Zoo = Backbone.Collection.extend({
  model: Animal
});

var animal1 = new Animal({type: 'frog', ecosystem: 'pond', stripes: 30});
var animal2 = new Animal({type: 'dog', ecosystem: 'house', stripes: 4});
var animal3 = new Animal({type: 'bat', ecosystem: 'cave'});

var gaZoo = new Zoo([animal1, animal2, animal3]);


var ZooView = Backbone.View.extend({
  el: '#main',
  initialize: function () {
    console.log('ZooView init');
  },
  events: {
    'click p': 'animalClick'
  },
  render: function () {
    var view = this;
    var animalTemplate = $('#animal-template').html();
    var animalHTML = _.template(animalTemplate);
    this.collection.each(function (animal) {
      view.$el.append( animalHTML(animal.toJSON()) );
    });
  },
  animalClick: function () {
    console.log('you clicked on an animal');
  }
});

var AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'animals/:id': 'viewAnimal'
  },
  index: function () {
    console.log('you found the home page');

    var zooView = new ZooView({collection: gaZoo});
    zooView.render();
  },
  viewAnimal: function () {
    $('#main').empty();
    console.log('you are viewing an animal');
  }
});

$(document).ready(function () {
  var router = new AppRouter();
  Backbone.history.start();
});












