operator = "write"
acl = "write"
agent_prefix "" {
  policy = "read"
}
node_prefix "" {
  policy = "write"
}
service_prefix "" {
  policy = "write"
  intentions = "write"
}
namespace_prefix "" {
  acl = "write"
  service_prefix "" {
    policy = "write"
    intentions = "write"
  }
}
