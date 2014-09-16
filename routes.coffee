Router.map ->
  @route 'home',
    path: '/'

  @route 'dashboard',
    path: '/dashboard'

  @route 'planningSession',
    path: '/planningSession/:id'
    data: ->
      stories: Story.find({planningSessionId: @params.id})

  @route 'plan',
    path: '/plan/:id'
    onBeforeAction: ->
      
    data: ->
      stories: Story.find({planningSessionId: @params.id})
      planningSession: PlanningSession.findOne(@params.id)

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()
