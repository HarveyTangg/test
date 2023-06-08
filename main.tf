resource "aws_db_instance" "mysql" {
  identifier        = "my-mysql-db"
  engine            = "mysql"
  instance_class    = "db.t2.micro"
  allocated_storage = 20
  username          = "admin"
  password          = "mysecretpassword"
  db_subnet_group_name = "default"
  availability_zone    = []  # Specify an empty list to indicate single-AZ deployment

  tags = {
    Name = "My MySQL DB"
  }
}
