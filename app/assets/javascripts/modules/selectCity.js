// Generated by CoffeeScript 1.7.1
(function() {
  RAI.selectCity = (function() {
    var _update;
    _update = function(url) {
      return $('.js-go-city').attr('href', url);
    };
    return {
      save: function(city) {
        var sUrl;
        sUrl = '/cities/' + city.toLowerCase();
        return _update(sUrl);
      }
    };
  })();

}).call(this);
