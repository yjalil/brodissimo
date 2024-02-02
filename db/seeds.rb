Assignement.destroy_all
Order.destroy_all
Catalog.destroy_all
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

file = File.open("/home/yjalil/code/yjalil/brodissimo/app/assets/images/hoodie.png")
catalog_item = Catalog.new(name: "White Hoodie")
catalog_item.photo.attach(io: file, filename: "hoodie.png", content_type: "image/png")
catalog_item.save!

file = File.open("/home/yjalil/code/yjalil/brodissimo/app/assets/images/green.png")
catalog_item = Catalog.new(name: "Green Hoodie")
catalog_item.photo.attach(io: file, filename: "green.png", content_type: "image/png")
catalog_item.save!

file = File.open("/home/yjalil/code/yjalil/brodissimo/app/assets/images/yellow.png")
catalog_item = Catalog.new(name: "Yellow Hoodie")
catalog_item.photo.attach(io: file, filename: "Yellow.png", content_type: "image/png")
catalog_item.save!

file = File.open("/home/yjalil/code/yjalil/brodissimo/app/assets/images/black.png")
catalog_item = Catalog.new(name: "Black Hoodie")
catalog_item.photo.attach(io: file, filename: "black.png", content_type: "image/png")
catalog_item.save!

file = File.open("/home/yjalil/code/yjalil/brodissimo/app/assets/images/rose.png")
catalog_item = Catalog.new(name: "Rose Hoodie")
catalog_item.photo.attach(io: file, filename: "rose.png", content_type: "image/png")
catalog_item.save!

file = File.open("/home/yjalil/code/yjalil/brodissimo/app/assets/images/gris.png")
catalog_item = Catalog.new(name: "Gris Hoodie")
catalog_item.photo.attach(io: file, filename: "gris.png", content_type: "image/png")
catalog_item.save!

file = File.open("/home/yjalil/code/yjalil/brodissimo/app/assets/images/red.png")
catalog_item = Catalog.new(name: "Red Hoodie")
catalog_item.photo.attach(io: file, filename: "red.png", content_type: "image/png")
catalog_item.save!

file = File.open("/home/yjalil/code/yjalil/brodissimo/app/assets/images/grey.png")
catalog_item = Catalog.new(name: "Grey Hoodie")
catalog_item.photo.attach(io: file, filename: "grey.png", content_type: "image/png")
catalog_item.save!






