output "heroku_app_name" {
  value = heroku_app.myapp.name
}

output "heroku_app_url" {
  value = heroku_app.myapp.web_url
}
