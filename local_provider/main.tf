terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

resource "local_file" "test" {
  content  = "hello terraform!"
  filename = "C:\QTtraining\terraform\local_provider/test.txt"
}