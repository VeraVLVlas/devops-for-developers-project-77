resource "datadog_synthetics_test" "app_http_check" {
  type    = "api"
  subtype = "http"

  name    = "DevOps app HTTP check"
  message = "Application is not responding at https://devops.crazucatts.online"

  locations = ["aws:eu-central-1"]
  status    = "live"

  request_definition {
    method = "GET"
    url    = "https://devops.crazucatts.online"
  }

  assertion {
    type     = "statusCode"
    operator = "is"
    target   = "200"
  }

  options_list {
    tick_every = 60
  }

  tags = [
    "env:local",
    "project:devops-project"
  ]
}
