{CompositeDisposable} = require 'atom'

module.exports =
  subscriptions: null

  activate: ->
    atom.workspace.observeTextEditors (editor) ->
      editor.insertText('Hello, World!')
