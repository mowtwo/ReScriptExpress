// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Express = require("bs-express/src/Express.bs.js");

var route = Express.Router.make(undefined, undefined, undefined, undefined);

Express.Router.get(route, "/", Express.Middleware.from(function (param, param$1, res) {
          return Express.$$Response.sendString("Hello Home", res);
        }));

exports.route = route;
/* route Not a pure module */
