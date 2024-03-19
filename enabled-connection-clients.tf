resource "auth0_connection_clients" "my_conn_clients_assoc" {
  connection_id = auth0_connection.test_connection.id
  enabled_clients = [
    auth0_client.test_client.id,
    auth0_client.another_client.id,
    auth0_client.terraform_m2m_client.id
  ]
}
