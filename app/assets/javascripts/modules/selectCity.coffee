RAI.selectCity = do ->  
  #Element Button
  $button = $('.js-go-city')

  # Disable the button
  # @param {string} city The city parsed.
  disable = (city)->
    $button
    .addClass 'disabled'
    .attr('disabled','disabled')
    _save( city )

  # Enable the button
  # @param {string} city The city parsed.
  enable = (city)->
    $button
    .removeClass 'disabled'
    .removeAttr('disabled')
    _save( city )

  # Set the href prop of button with city passed
  # @param {string} url The city parsed.
  _update = ( url ) ->
    $button.attr( 'href', url )
  
  # Parse city and conveting into a valid url
  # @param {string} city The city selected.
  _save = ( city ) ->
    sUrl =  if city isnt '' then '/cities/' + city else ''
    _update( sUrl )
  
  # Public Method
  disable : disable
  enable  : enable

