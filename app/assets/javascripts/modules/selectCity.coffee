RAI.selectCity = do ->  
  # Set the href prop of button with city passed
  # @param {string} url The city parsed.
  _update = ( url ) ->
    $('.js-go-city').attr( 'href', url )
  
  # Parse city and conveting into a valid url
  # @param {string} city The city selected.
  save : ( city ) ->
    sUrl = '/cities/' + city.toLowerCase()
    _update( sUrl )