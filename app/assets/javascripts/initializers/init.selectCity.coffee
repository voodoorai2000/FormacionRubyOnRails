# Use: module/selectCity
# Select city and disable/enable button
$(document).on 'change', '.js-select-city', ->
  $city = $(@).val() or ''
  #change the value of both selects
  $('.js-select-city').val( $city )
  if $city isnt ''
    RAI.selectCity.enable( $city )
  else
    RAI.selectCity.disable( $city )