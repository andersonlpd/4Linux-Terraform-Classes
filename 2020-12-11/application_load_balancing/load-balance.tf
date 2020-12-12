// Backend Service
resource "google_compute_backend_service" "be_service" {
  name          = var.be_service_name
  port_name = "http"
  protocol = "HTTP"
  timeout_sec = 10
  health_checks = [google_compute_http_health_check.health_check.id]
  backend {
    group = google_compute_region_instance_group_manager.instance-group.instance_group
  }
}

// Health Check
resource "google_compute_http_health_check" "health_check" {
  name               = var.health_check_name
  request_path       = var.hc_request_path
  check_interval_sec = var.hc_check_interval
  timeout_sec        = var.hc_timeout
}

// URL Map
resource "google_compute_url_map" "url_map" {
  name        = var.url_map_name
  description = "URLMAP 20201211"

  default_service = google_compute_backend_service.be_service.id
}

// HTTP_PROXY
resource "google_compute_target_http_proxy" "http_proxy" {
  name    = var.http_proxy_name
  url_map = google_compute_url_map.url_map.id
}

// Forwarding rule
resource "google_compute_global_forwarding_rule" "forwarding_rule" {
  name       = var.forwarding_rule_name
  target     = google_compute_target_http_proxy.http_proxy.id
  port_range = var.forwarding_rule_port
}