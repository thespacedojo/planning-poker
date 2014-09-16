Template.planningSession.events
  'submit form': (e, t) ->
    data = SimpleForm.processForm(e.target)
    data.creatorId = Meteor.userId()
    data.planningSessionId = Router.current().params.id
    e.preventDefault()
    SimpleForm.resetForm(e.target)
    Story.insert(data)

