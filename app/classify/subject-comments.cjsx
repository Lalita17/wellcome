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
    <div>
      <h4>Comments</h4>
      <ul>
        {@state.comments.map (comment) -> <li key={comment.id}>{comment.body}</li>}
      </ul>
    </div>
  
  loadComments: (subject_id) ->
    @props.talk.type('discussions')
      .get({focus_id: subject_id, focus_type: 'Subject'})
      .then ([discussion]) =>
        discussion?.get('comments')
          .then (comments) =>
            @setState {comments}
  
  