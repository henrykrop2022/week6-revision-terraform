output "ip_addr_pub" {
  value = aws_lightsail_instance.my-instance.public_ip_address
}
output "ip_addr_priv" {
  value = aws_lightsail_instance.my-instance.private_ip_address
}