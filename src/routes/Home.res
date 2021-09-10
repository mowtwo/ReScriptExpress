open Express
let route = Router.make()

route->Router.get(
  ~path="/",
  Middleware.from((_, _, res) => {
    res->Response.sendString("Hello Home", _)
  }),
)
