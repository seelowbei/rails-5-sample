require "service_mesh"

ServiceMesh::Configuration.configure do |c|
  c.sources = [{
    path: "notification_api.yml",
    name: "NotificationClient",
    host: "example.com"
  }]
  c.parameter_mapping do |ctx|
    # ctx.set_attribute(:user_id, "12312")
    # parameter = {
    #   query: {
    #     kyc_external_id: KYCMapping.find(
    #         customer_id: ctx.get_attribute(:customer_id),
    #         client_customer_id: ctx.get_attribute(:client_id),
    #       ).external_id,
    #     other_id: User.find(ctx.get_attribute(:user_id)).temp_id
    #   },
    #   headers: {
    #     Authorization: "Bearer #{ctx.get_attribute(:access_token)}"
    #   }
    # }
    # ctx.set_attribute(:parameter, parameter)
  end
end
