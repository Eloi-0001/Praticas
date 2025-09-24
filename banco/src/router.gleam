import web
import wisp.{type Request, type Response}

pub fn handle_request(req: Request) -> Response {
  use req <- web.middleware(req)

  case wisp.path_segments(req) {
    [] -> wisp.ok() |> wisp.html_body("<h1>GAMER<h1>")
    ["ping"] -> ping(req)
    ["BomDia", nome] -> um(req, nome)
    _ -> wisp.not_found()
  }
}

fn ping(_req: wisp.Request) -> Response {
  wisp.ok() |> wisp.html_body("pong")
}

fn um(_req: wisp.Request, nome: String) -> Response {
  wisp.ok() |> wisp.html_body("Bom dia," <> nome <> "!")
}
