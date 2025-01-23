resource "google_storage_bucket" "auto-expire" {
  name          = "tt-cicdbuild-bucket"
  location      = "SA"
  project       = "TestesDevops"
  force_destroy = true

  public_access_prevention = "enforced"
}