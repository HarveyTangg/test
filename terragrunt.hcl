terraform {
  source = "/path/to/your/module"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  name                    = "my-aurora-cluster"
  engine                  = "aurora"
  engine_version          = "5.6.10a"
  availability_zones      = ["us-west-2a", "us-west-2b", "us-west-2c"]
  database_name           = "mydatabase"
  master_username         = "admin"
  master_password         = "yoursecurepassword"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
}
