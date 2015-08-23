{CompositeDisposable} = require 'atom'

module.exports =
  config:
    width:
      type: 'integer'
      default: 350
      minimum: 0

  activate: ->
    atom.workspace.observeTextEditors (editor) ->
      editor.insertText('Hello, World!')
