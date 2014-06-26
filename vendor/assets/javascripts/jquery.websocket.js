(function ($) {
  $.extend({

    websocketSettings: {
      events: {},
      options: {},
      context: this,
      open: function () { },
      close: function () { },
      error: function () { },
      message: function () { }
    },

    websocket: function (url, s) {
      var ws = WebSocket ? new WebSocket(url) : {
        send: function (m) { return false },
        close: function () { }
      };

      $.extend($.websocketSettings, s);

      $(ws).bind('open', $.websocketSettings.open)
      .bind('close', $.websocketSettings.close)
      .bind('error', $.websocketSettings.error)
      .bind('message', $.websocketSettings.message)
      .bind('message', function (e) {
        var m = $.evalJSON(e.originalEvent.data);
        var h = $.websocketSettings.events[m.message];
        if (h) h.apply($.websocketSettings.context, m.data);
      });

      ws._send = ws.send;
      ws.send = function (message, data) {
        if (ws.readyState === 1) {
          var m = {message: message};
          m = $.extend(true, m, $.extend(true, {}, $.websocketSettings.options, m));
          if (!(data === null || typeof data === 'undefined')) m['data'] = [data];
          return this._send($.toJSON(m));
        } else {
          return false;
        }
      };

      // $(window).unload(function () {
      //   ws.close();
      //   ws = null
      // });
      return ws;
    }
  });
})(jQuery);
