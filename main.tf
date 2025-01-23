resource "google_storage_bucket" "auto-expire" {
  name          = "tt-cicdbuild-bucket"
  location      = "US"
  project       = "TestesDevops"
  force_destroy = true

  public_access_prevention = "enforced"
}