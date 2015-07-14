React = require 'react'

module.exports = React.createClass
  displayName: 'Profile'
  
  getDefaultProps: ->
    user: null
    
  getInitialState: ->
    user: null
  
  componentWillMount: ->
    @setState user: @props.user
    
  componentDidMount: ->
    @props.auth.listen @handleAuthChange
    @handleAuthChange()
  
  handleAuthChange: (e) ->
    @props.auth
      .checkCurrent()
      .then (user) =>
        @setState user: user

  render: ->
    <div>
      {if @state.user?
        <p>Yo, {@state.user.display_name}!</p>
      }
    </div>