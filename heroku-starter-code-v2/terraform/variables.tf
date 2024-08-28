variable "heroku_api_key" {
  type = string
}

variable "app_name" {
  type = string
}

variable "region" {
  type = string
}

variable "git_repo_url" {
  type = string
}

variable "environment_variables" {
  type = map(string)
}
