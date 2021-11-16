output "id" {
  description = "The ID of the instance"
  value       = aws_instance.webserver.id
}

output "arn" {
  description = "The ARN of the instance"
  value       = aws_instance.webserver.arn
}

output "instance_state" {
  description = "The state of the instance."
  value       = aws_instance.webserver.instance_state
}

output "private_dns" {
  description = "The private DNS name assigned to the instance."
  value       = aws_instance.webserver.private_dns
}

output "public_dns" {
  description = "The public DNS name assigned to the instance."
  value       = aws_instance.webserver.public_dns
}

output "public_ip" {
  description = "The public IP address assigned to the instance."
  value       = aws_instance.webserver.public_ip
}

output "private_ip" {
  description = "The private IP address assigned to the instance."
  value       = aws_instance.webserver.private_ip
}