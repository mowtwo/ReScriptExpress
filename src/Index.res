open Express

let app = App.make()
let port = 3000
app->App.set("view engine", "pug")
app->App.useRouterOnPath(~path="/", Home.route)
app->App.useRouterOnPath(~path="/mvc", Mvc.route)

let _ = app->App.listen(
  ~port,
  ~onListen=_ => {
    Js.log(j`server run at http://localhost:$port`)
  },
  (),
)
