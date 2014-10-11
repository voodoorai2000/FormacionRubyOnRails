# Use: module/selectCity

$(document).on 'change', '.js-select-city', ->
  $city = $(@).val() or 'no city selected'
  RAI.selectCity.save( $city )