open Express
let route = Router.make()

route->Router.get(
  ~path="/:username",
  Middleware.from((_, req, res) => {
    let params = req->Request.params
    let targetUser = params->Js.Dict.get("username")
    Js.log(targetUser)
    let renderDict = Js.Dict.empty()
    renderDict->Js.Dict.set("title", "Rescript and Express+Pug")
    switch targetUser {
    | Some(username) => renderDict->Js.Dict.set("username", username->Js.Json.stringify)
    | _ => renderDict->Js.Dict.set("username", "unkown")
    }
    res->Response.render("index", renderDict, None, _)
  }),
)
