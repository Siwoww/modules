output "VPC_ID" {
  value = aws_vpc.main.id
}

output "SUBNET_ID" {
  value = aws_subnet.main.id
}

output "GW_ID" {
  value = aws_internet_gateway.main_gw.id
}