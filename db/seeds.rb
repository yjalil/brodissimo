Assignee.destroy_all
Order.destroy_all
Machine.destroy_all
User.destroy_all

User.create!(
  email: "jalil.yahy_client@gmail.com",
  password: "secret"
)

User.create!(
  email: "jalil.yahy_worker@gmail.com",
  password: "secret"
)

Machine.create!(
  name: "brod_test_1",
  description: "does nothing"
)

Order.create!(
  client_id: User.first.id,
  machine_id: Machine.last.id
)

Assignee.create!(
  worker_id: User.last.id,
  order_id: Order.last.id
)
