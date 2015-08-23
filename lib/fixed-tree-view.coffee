{CompositeDisposable} = require 'atom'

module.exports =
  config:
    width:
      type: 'integer'
      default: 350
      minimum: 0

  activate: ->
    fs = require 'fs'
    path = require 'path'

    # Get set width for Tree View
    widthOfTreeView = atom.config.get('fixed-tree-view.width')
    # Create stylesheet inside package
    pathToStylesheet = path.join __dirname, '..', 'styles', 'fixed-tree-view.less'
    fs.writeFileSync(pathToStylesheet, ".tree-view-resizer { width: #{widthOfTreeView}px !important; }\n")
    # Load stylesheet
    atom.themes.requireStylesheet pathToStylesheet
