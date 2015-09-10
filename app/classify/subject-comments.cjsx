React = require 'react'

module.exports = React.createClass
  displayName: 'SubjectComments'
  
  getInitialState: ->
    comments: []
  
  componentDidMount: ->
    @loadComments @props.subject?.id
  
  componentWillReceiveProps: (newProps) ->
    @loadComments newProps.subject?.id
  
  render: ->
    <ul>
      {@state.comments.map (comment) -> <li key={comment.id}>{comment.body}</li>}
    </ul>
  
  loadComments: (subject_id) ->
    @props.talk.type('comments').get({focus_id: subject_id, focus_type: 'Subject'})
      .then (response) =>
        @setState comments: response
  
  