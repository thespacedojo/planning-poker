@PlanningSession = new Meteor.Collection('planning-sessions')

PlanningSession.helpers
 
Meteor.methods
  activateStory: (planningSessionId, id) ->
    planningSession = PlanningSession.findOne({_id: planningSessionId})
    if @userId == planningSession.creatorId
      PlanningSession.update(planningSession._id, {$set: {activeStoryId: id}})
