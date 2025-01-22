resource "google_storage_bucket" "auto-expire" {
  name          = "tt-cicdbuild-bucket"
  location      = "US"
  project       = "tt-dev-001"
  force_destroy = true

  public_access_prevention = "enforced"
}