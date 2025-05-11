resource "google_storage_bucket" "bam-proj-07" {
  name          = "bam-proj-07"
  location      = "us-west1"
  force_destroy = true
  
uniform_bucket_level_access = false
}

resource "google_storage_object_access_control" "public_rule" {
  object = google_storage_bucket_object.no_grill_just_books.name
  bucket = google_storage_bucket.bam-proj-07.name
  role   = "READER"
  entity = "allUsers"
}


resource "google_storage_bucket_object" "no_grill_just_books" {
  name   = "no_grill_just_books"
  bucket = google_storage_bucket.bam-proj-07.name
  source = "jus_boox.jpg"
}











