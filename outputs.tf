output "website_url" {
  description = "URL of the website"
  value       = "http://${aws_instance.web.public_ip}"
}

output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}