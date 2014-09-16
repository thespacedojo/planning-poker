Template.header.events
  'click .newPlanningSession': (e, t) ->
    session = PlanningSession.insert({creatorId: Meteor.userId()})
    Router.go("/planningSession/#{session}")
