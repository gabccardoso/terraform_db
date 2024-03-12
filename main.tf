provider "aws" {
  region = "us-east-1"
  access_key = "ASIAZQ3DTIAMIHHAIUQT"
  secret_key = "2lR26RW1bqli1JZMVovy2yz2SJRgnlrhgU0Wecxo"
  token = "FwoGZXIvYXdzEEEaDDCWDSWRqYKasCdV7yLGAb4ZRqXeQpWOtUFV9FG6ITF92ZZN7ZlLKHU1HdKnSKr5m4zUnESnL2891MfFD4jJfqDOIVg3LPfzy4CPoBtYW1qPkJrAs600z7FPPauXCNN0xWoci5KyWrTgdbuvodBPXz8ZTLiM6jChjLPzSi2GZwyEouIZql31TUnv0aXf0yWw7wvemBXCqt0ocNHh0hkUxDqNlODDcIi7Lur3HJvyh9/WKK3WyfnDlhlbsAitX5C71sYRfTzFftzdpEttJZ9Nrv6MpTeBLSiCtr6vBjIt0sKmK6/JOS7kixT2ZOWPGC9lj1v9dZFsk14Aj4fxZGcK743mTOK0T44AxW7J"
}

resource "aws_db_instance" "humburguer_db" {
    allocated_storage    = 15
    storage_type         = "gp2"
    engine               = "mysql"
    engine_version       = "8.0.35"
    instance_class       = "db.t3.micro"
    identifier           = "humburguer-rds-instance-one"
    username             = "admin"
    password             = "gabi-senha-forte"
    skip_final_snapshot  = true
    storage_encrypted    = false
    publicly_accessible  = true

    db_name                 = "humburguer"
}