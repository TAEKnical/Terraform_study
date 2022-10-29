output "public_ip" {
  value       = aws_lb.web_alb.dns_name
  description = "The DNS name  of the alb"
}

output "ami_id" {
  value       = data.aws_ami.amzl2.id
  description = "The AMI id of the Instance"
}