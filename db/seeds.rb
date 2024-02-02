Assignement.destroy_all
Order.destroy_all
Machine.destroy_all
User.destroy_all

User.create!(
  email: "rachid.sabir_client@gmail.com",
  password: "secret",
  username: "Rachid Sabir"
)

User.create!(
  email: "jalil.yahy_client@gmail.com",
  password: "secret",
  username: "Jalil Yahy"
)

User.create!(
  email: "jalil.yahy_worker@gmail.com",
  password: "secret",
  username: "JALIL YAHY"
)

Machine.create!(
  name: "brod_test_1",
  description: "does nothing"
)

Order.create!(
  client_id: User.first.id,
  title: "Broderie Délicate",
  status: "En attente",

  graphisme: "Vérification fichiers",
  type_impression: "Impression directe quadri",
  nombre_faces: "Quadri recto",
  type_eclairage: "Eclairage direct",
  matiere: "PVC 19 mm",
  type_led: "LED à point",
  alimentation: "Alimentation 35w",
  interpompier: "Sans",
  decoupe: "Ronde",
  fixation_lettre: "Sans",
  projet_dimensions: "1000 x 1000 mm",
  quantite_surface: "1 m²",
  prix_ht: 645.01,
  prix_ttc: 774.01
)

Assignement.create!(
  worker_id: User.last.id,
  order_id: Order.last.id,
  machine_id: Machine.last.id,
  fulldesign: "https://images.unsplash.com/photo-1584223746169-cb0aba6d2187?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
