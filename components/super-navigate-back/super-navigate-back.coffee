SuperNavigateBackPrototype = Object.create HTMLElement.prototype
###
 # @category webComponent
 # @name <super-hide-modal>
 # @component
 # @description
 # Navigates back to the previous view. Uses `supersonic.ui.layer.pop()` internally.
 # @attribute action="click" The action used to trigger the transition.
 # @usageHtml
 # <super-navigate-back>Go back</super-navigate-back>
 # @exampleHtml
 # <super-navigate-back>Go back</super-navigate-back>
###
SuperNavigateBackPrototype.createdCallback = ->
  action = @getAttribute "action" || "click"

  @addEventListener action, ->
    supersonic.ui.layer.pop()

document.registerElement "super-navigate-back",
  prototype: SuperNavigateBackPrototype
