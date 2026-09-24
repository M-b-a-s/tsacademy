output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.tsacademy.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "app_subnet_ids" {
  description = "IDs of the app tier subnets"
  value       = aws_subnet.app[*].id
}

output "db_subnet_ids" {
  description = "IDs of the database tier subnets"
  value       = aws_subnet.db[*].id
}

output "nat_gateway_id" {
  description = "ID of the NAT Gateway"
  value       = aws_nat_gateway.tsacademy.id
}

output "alb_security_group_id" {
  description = "ID of the ALB security group"
  value       = aws_security_group.alb.id
}

output "db_endpoint" {
  description = "Connection endpoint for the RDS instance"
  value       = aws_db_instance.rds-db.endpoint
  sensitive   = true
}

output "alb_dns_name" {
  description = "Public DNS name of the load balancer"
  value       = aws_lb.app.dns_name
}


output "github_actions_role_arn" {
  description = "ARN for GitHub Actions to assume via OIDC"
  value       = aws_iam_role.github_actions.arn
}
