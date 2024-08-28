resource "heroku_app" "myapp" {
  name   = var.app_name
  region = var.region
}

resource "heroku_app_config_association" "default" {
  app_id = heroku_app.myapp.id
}

resource "heroku_app_build" "default" {
  app_id    = heroku_app.myapp.id
  source_url = var.git_repo_url
}

resource "heroku_config" "environment_variables" {
  app_id = heroku_app.myapp.id
  vars = var.environment_variables
}
