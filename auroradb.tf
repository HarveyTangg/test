variable "name" {
  description = "The name of the cluster (also used as identifier)"
  type        = string
}

variable "engine" {
  description = "The name of the database engine to be used for this cluster"
  type        = string
  default     = "aurora"
}

variable "engine_version" {
  description = "The database engine version"
  type        = string
  default     = "5.6.10a"
}

variable "availability_zones" {
  description = "A list of Availability Zones"
  type        = list(string)
}

variable "database_name" {
  description = "The name for your database of up to 8 alpha-numeric characters"
  type        = string
}

variable "master_username" {
  description = "The name of the master user for the client DB cluster"
  type        = string
}

variable "master_password" {
  description = "Password for the master DB user"
  type        = string
}

variable "backup_retention_period" {
  description = "The days to retain backups for"
  type        = number
  default     = 5
}

variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created if automated backups are enabled"
  type        = string
  default     = "07:00-09:00"
}

resource "aws_rds_cluster" "cluster" {
  cluster_identifier      = var.name
  availability_zones      = var.availability_zones
  database_name           = var.database_name
  master_username         = var.master_username
  master_password         = var.master_password
  engine                  = var.engine
  engine_version          = var.engine_version
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
}

output "cluster_endpoint" {
  description = "The DNS address of the RDS instance"
  value       = aws_rds_cluster.cluster.endpoint
}

output "reader_endpoint" {
  description = "A read-only endpoint for the Aurora cluster, automatically load-balanced across replicas"
  value       = aws_rds_cluster.cluster.reader_endpoint
}
