require 'cloudinary'
require 'open-uri'
require 'date'

Order.destroy_all
Catalog.destroy_all
User.destroy_all


User.create!(
email: "client_1@gmail.com",
password: "secret",
username: "Client Example One",
role: "client"
)

User.create!(
email: "client_2@gmail.com",
password: "secret",
username: "Client Example Two",
role: "client"
)
User.create!(
email: "admin@gmail.com",
password: "secret",
username: "Admin Brodissimo",
role: "admin"
)

def create_catalogs(names)
  names.each do |name|
    # Seed data for front photo
    front_photo_public_id = "front_photo_for_#{name}"
    front_photo_path = "app/assets/images/#{name}_front.png"

    # Upload front photo to Cloudinary
    front_photo = Cloudinary::Uploader.upload(front_photo_path)

    # Seed data for back photo
    back_photo_public_id = "back_photo_for_#{name}"
    back_photo_path = "app/assets/images/#{name}_back.png"

    # Upload back photo to Cloudinary
    back_photo = Cloudinary::Uploader.upload(back_photo_path)

    # Create records in your database as needed

    catalog_item = Catalog.new(name: name.split('_').join(' '), front_photo_url: front_photo['secure_url'],
    back_photo_url: back_photo['secure_url'])

    catalog_item.save!
  end

end

create_catalogs(["black", "blue", "female_blue", "female_white", "grey", "mixed_grey"])



def create_orders
  statuses = ["Etude Dossier", "Validation Admin", "Signature BAT", "En Production", "Distribution", "Commande livrée"]
  t1 = Date.new(2024 , 2 ,9)
  t2 = Date.new(2024, 2, 20)
  statuses.each do |status|
    Order.create!(
      client_id: [1,2].sample,
      status: status,
      date_desired: rand(t1..t2),
      item_id: rand(1..6),
      type_photo: ["Face", "Dos"].sample,
      )

  end
end

create_orders
