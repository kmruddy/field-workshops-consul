#output "client_lb_address" {
#  value = "http://${aws_lb.example_client_app.dns_name}:9090/ui"
#}

output "key_pair_key_name" {
  description = "The key pair name."
  value       = module.key_pair.key_pair_key_name
}

output "key_pair_key_pair_id" {
  description = "The key pair ID."
  value       = module.key_pair.key_pair_key_pair_id
}

output "key_pair_fingerprint" {
  description = "The MD5 public key fingerprint as specified in section 4 of RFC 4716."
  value       = module.key_pair.key_pair_fingerprint
}

output "tls_private_key" {
  description = "The tls_private_key."
  value       = tls_private_key.this
  sensitive   = true
}

