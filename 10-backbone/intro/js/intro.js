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

