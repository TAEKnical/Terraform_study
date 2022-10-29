locals {
  public_subnet = {
      zone = "${var.region}a"
      cidr = "10.50.0.0/24"
    }

  public_subnet2 = {
      zone = "${var.region}c"
      cidr = "10.50.1.0/24"
    }
}
