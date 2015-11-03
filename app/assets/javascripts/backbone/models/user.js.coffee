class Provlux.Models.User extends Backbone.Model
  paramRoot: 'user'
  urlRoot: '/users'
  initialize: ->
    self = this


class Provlux.Collections.UsersCollection extends Backbone.Collection
