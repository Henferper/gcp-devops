resource "google_storage_bucket" "auto-expire"{
  name          = "tt-cicdbuild-bucket-010203"
  location      = "southamerica-east1"
  project       = "integracaohomologado"
  force_destroy = true

  public_access_prevention = "enforced"
}