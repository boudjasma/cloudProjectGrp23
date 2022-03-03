resource "google_bigquery_dataset" "herschelsupply" {
  dataset_id                  = "InstaagramHerschelsupply"
  friendly_name               = "InstaagramHerschelsupplyDataSet"
  description                 = "This is a business account"
  location                    = "EU"
}


resource "google_bigquery_table" "herschelsupplyData" {
  dataset_id = google_bigquery_dataset.herschelsupply.dataset_id
  table_id   = "herschelsupplyData"

  schema = <<EOF
[
  {
    "name": "id",
    "type": "INTEGER",
    "mode": "NULLABLE",
    "description": "publication id"
  },
  {
    "name": "typeMedia",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "Type of the media, can be : GraphImage, GraphVideo or GraphSidecar for gallery"
  }
  {
    "name": "numberOfComments",
    "type": "INTEGER",
    "mode": "NULLABLE",
    "description": "Number of comments per publication"
  }
  {
    "name": "numberOfLikes",
    "type": "INTEGER",
    "mode": "NULLABLE",
    "description": "Number of likes per publication"
  }
  {
    "name": "comments_disabled",
    "type": "STRING",
    "mode": "BOOLEAN",
    "description": "True if we can't comment"
  }
    {
    "name": "URL",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "Publication url"
  }
    {
    "name": "numberOfViews",
    "type": "FLOAT",
    "mode": "NULLABLE",
    "description": "Number of views per Video publication"
  }
]
EOF

}
resource "google_bigquery_table" "informationUser" {
  dataset_id = google_bigquery_dataset.herschelsupply.dataset_id
  table_id   = "informationUserHerschelSupply"

  schema = <<EOF
[
  {
    "name": "username",
    "type": "STRING",
    "mode": "NULLABLE",
  },
  {
    "name": "fullname",
    "type": "STRING",
    "mode": "NULLABLE",
  {
    "name": "biography",
    "type": "STRING",
    "mode": "NULLABLE",
  }
  {
    "name": "numberSubscriptions",
    "type": "INTEGER",
    "mode": "NULLABLE",
  }
  {
    "name": "numberSubscribers",
    "type": "INTEGER",
    "mode": "BOOLEAN",
  }
    {
    "name": "numberPublications",
    "type": "INTEGER",
    "mode": "NULLABLE",
  }
    {
    "name": "numberReels",
    "type": "INTEGER",
    "mode": "NULLABLE",
  }
  {
    "name": "numberVideos",
    "type": "INTEGER",
    "mode": "NULLABLE",
  }
  {
    "name": "business_category_name",
    "type": "STRING",
    "mode": "NULLABLE",
  }
      "name": "category",
    "type": "STRING",
    "mode": "NULLABLE",
  }
  {
    "name": "verifiedAccount",
    "type": "BOOLEAN",
    "mode": "NULLABLE",
  }
]
EOF

}


