# Output IP Público
output "public_ip" {
  value = aws_instance.server.public_ip

}

# Output DNS
output "public_dns" {
  value = aws_instance.server.public_dns
}