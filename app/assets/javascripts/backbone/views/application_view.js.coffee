class Provlux.Views.ApplicationView extends Backbone.View

  el: "body"

  initialize: (options) ->
    new options.view(options.view_data || {}) if options.view

    $(document).ready ->
      @map = new (jvm.Map)
        container: jQuery('#vmap')
        map: 'provlux_merc_fr'
        # regionsSelectable: true
        # regionsSelectableOne: true
        # # backgroundColor: 'transparent'
        # zoomMax: 1
        # zoomMin: 1
        # zoomOnScroll: false
        # selectedRegions: "BE0#{window.current_city.attributes['zip']}" if window.current_city

        markerStyle:
          initial:
            fill: 'red'
        markers:[
                  {
                    coords: [50.0005, 5.71528]
                    name: 'Foo 1'
                  },
                  {
                    coords: [10.0005, 5.71528]
                    name: 'Foo 1'
                  },
                  {
                    coords: [20.0005, 5.71528]
                    name: 'Foo 1'
                  },
                  {
                    coords: [50.0005, 10.71528]
                    name: 'Foo 1'
                  },
                  {
                    coords: [50.0005, 20.71528]
                    name: 'Foo 1'
                  }
                ]
