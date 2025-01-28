resource "google_storage_bucket-devosp-010203" "auto-expire" {
  name          = "tt-cicdbuild-bucket-010203"
  location      = "southamerica-east1"
  project       = "integracaohomologado"
  force_destroy = true

  public_access_prevention = "enforced"

  # Habilitando Uniform Bucket
  uniform_bucket_level_access = true
}