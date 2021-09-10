open Express
let route = Router.make()

route->Router.get(
  ~path="/",
  Middleware.from((_, _, res) => {
    let dict = Js.Dict.empty()
    dict->Js.Dict.set("name", Js.Json.string("mowtwo"))
    res->Response.json(Js.Json.object_(dict), _)
  }),
)
