# Use: module/selectCity

$(document).on 'change', '.js-select-city', ->
  $city = $(@).val() or ''
  if $city isnt ''
    RAI.selectCity.enable( $city )
  else
    RAI.selectCity.disable( $city )