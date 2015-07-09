React = require 'react/addons'
subject = require '../test-subject'

SelectionTool = require '../lib/selection-tool'

module.exports = React.createClass
  displayName: 'SubjectViewer'
  
  tool_options: {}
  
  getInitialState: ->
    text: subject.text
  
  render: ->
    <div className="readymade-marking-surface-container">
        <pre ref = 'textViewer' className="text-viewer">{@state.text}</pre>
    </div>
  
  createAnnotation: (type) ->
    sel = window.getSelection()
    if sel.type is 'Range'
      options =
        sel: sel
        type: type
      options[key] = value for key, value of @tool_options
      tool = new SelectionTool @refs.textViewer.getDOMNode(), options