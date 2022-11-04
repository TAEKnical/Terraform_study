variable "region"{
  type = string
  default = "ap-northeast-2"
}

variable "mysubnet1" {
  type = string
  default = "10.10.1.0/24"
}

variable "mysubnet2" {
  type = string
  default = "10.10.2.0/24"
}

variable "webport" {
  type = number
  default = 8080
}