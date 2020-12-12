resource "google_compute_region_instance_group_manager" "instance-group" {
  name = var.instance_group

  base_instance_name        = var.group_instance_name
  region                    = var.group_region
  distribution_policy_zones = var.group_dist_zones

  version {
    instance_template = google_compute_instance_template.instance-template.id
  }

  auto_healing_policies {
    health_check      = google_compute_health_check.inst-health-check.id
    initial_delay_sec = var.group_hc_delay
  }
}

resource "google_compute_region_autoscaler" "autoscaler" {
  name   = var.group_autoscaler_name
  region = var.group_region
  target = google_compute_region_instance_group_manager.instance-group.id

  autoscaling_policy {
    max_replicas    = var.group_scale_max
    min_replicas    = var.group_scale_min
    cooldown_period = var.group_scale_cooldown

    cpu_utilization {
      target = 0.6
    }
  }
}

resource "google_compute_health_check" "inst-health-check" {
  name                = var.group_hc_name
  check_interval_sec  = var.group_hc_interval
  timeout_sec         = var.group_hc_timeout
  healthy_threshold   = var.group_hc_healthy
  unhealthy_threshold = var.group_hc_unhealthy

  http_health_check {
    request_path = var.hc_request_request_path
    port         = var.hc_request_request_port
  }
}
