Template.plan.events
  'click .story': (e, t) ->
    Meteor.call('activateStory', t.data.planningSession._id, @_id)

Template.plan.helpers
  activeStory: ->
    Story.findOne(@planningSession.activeStoryId)

  activeUsers: ->
    Meteor.users.find({'status.online': })
