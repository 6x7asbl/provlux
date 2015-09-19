master_food       = Category.where(master: true, label: 'master_food').first_or_create
master_shopping   = Category.where(master: true, label: 'master_shopping').first_or_create
master_hotel      = Category.where(master: true, label: 'master_hotel').first_or_create
master_housing    = Category.where(master: true, label: 'master_housing').first_or_create
master_leisure    = Category.where(master: true, label: 'master_leisure').first_or_create
master_health     = Category.where(master: true, label: 'master_health').first_or_create
master_beauty     = Category.where(master: true, label: 'master_beauty').first_or_create
master_services   = Category.where(master: true, label: 'master_services').first_or_create
master_mobility   = Category.where(master: true, label: 'master_mobility').first_or_create
master_education  = Category.where(master: true, label: 'master_education').first_or_create
master_workship   = Category.where(master: true, label: 'master_workship').first_or_create
master_government = Category.where(master: true, label: 'master_government').first_or_create

Category.where(label: 'bakery').first.update_attribute(:category_id,  master_food.id)
Category.where(label: 'clothing_store').first.update_attribute(:category_id,  master_shopping.id)
Category.where(label: 'grocery_or_supermarket').first.update_attribute(:category_id,  master_shopping.id)
Category.where(label: 'store').first.update_attribute(:category_id,  master_shopping.id)
Category.where(label: 'food').first.update_attribute(:category_id,  master_food.id)

Category.where(label: 'restaurant').first.update_attribute(:category_id,  master_food.id)
Category.where(label: 'lodging').first.update_attribute(:category_id,  master_hotel.id)
Category.where(label: 'meal_takeaway').first.update_attribute(:category_id,  master_food.id)
Category.where(label: 'cafe').first.update_attribute(:category_id,  master_food.id)

Category.where(label: 'car_dealer').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'car_repair').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'parking').first.update_attribute(:category_id,  master_mobility.id)
Category.where(label: 'car_rental').first.update_attribute(:category_id,  master_services.id)


Category.where(label: 'florist').first.update_attribute(:category_id,  master_shopping.id)

Category.where(label: 'funeral_home').first.update_attribute(:category_id,  master_services.id)

Category.where(label: 'home_goods_store').first.update_attribute(:category_id,  master_housing.id)
Category.where(label: 'real_estate_agency').first.update_attribute(:category_id,  master_housing.id)

Category.where(label: 'finance').first.update_attribute(:category_id,  master_services.id)

Category.where(label: 'bowling_alley').first.update_attribute(:category_id,  master_leisure.id)
Category.where(label: 'book_store').first.update_attribute(:category_id,  master_shopping.id)

Category.where(label: 'accounting').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'art_gallery').first.update_attribute(:category_id,  master_leisure.id)
Category.where(label: 'bank').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'atm').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'bar').first.update_attribute(:category_id,  master_leisure.id)
Category.where(label: 'beauty_salon').first.update_attribute(:category_id,  master_beauty.id)
Category.where(label: 'spa').first.update_attribute(:category_id,  master_beauty.id)
Category.where(label: 'hair_care').first.update_attribute(:category_id,  master_beauty.id)
Category.where(label: 'health').first.update_attribute(:category_id,  master_health.id)
Category.where(label: 'doctor').first.update_attribute(:category_id,  master_health.id)
Category.where(label: 'bicycle_store').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'shoe_store').first.update_attribute(:category_id,  master_shopping.id)
# Category.where(label: 'campground').first.update_attribute(:category_id,  FOO_ID)
# Category.where(label: 'park').first.update_attribute(:category_id,  FOO_ID)
Category.where(label: 'gas_station').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'storage').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'car_wash').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'casino').first.update_attribute(:category_id,  master_leisure.id)
Category.where(label: 'church').first.update_attribute(:category_id,  master_workship.id)
Category.where(label: 'place_of_worship').first.update_attribute(:category_id,  master_workship.id)
Category.where(label: 'city_hall').first.update_attribute(:category_id,  master_government.id)
Category.where(label: 'local_government_office').first.update_attribute(:category_id,  master_government.id)
Category.where(label: 'department_store').first.update_attribute(:category_id,  master_shopping.id)
Category.where(label: 'convenience_store').first.update_attribute(:category_id,  master_shopping.id)
Category.where(label: 'courthouse').first.update_attribute(:category_id,  master_government.id)
Category.where(label: 'dentist').first.update_attribute(:category_id,  master_health.id)
Category.where(label: 'electronics_store').first.update_attribute(:category_id,  master_shopping.id)
Category.where(label: 'furniture_store').first.update_attribute(:category_id,  master_shopping.id)
Category.where(label: 'general_contractor').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'museum').first.update_attribute(:category_id,  master_leisure.id)
Category.where(label: 'school').first.update_attribute(:category_id,  master_education.id)
Category.where(label: 'movie_theater').first.update_attribute(:category_id,  master_leisure.id)
Category.where(label: 'pharmacy').first.update_attribute(:category_id,  master_health.id)
Category.where(label: 'liquor_store').first.update_attribute(:category_id,  master_shopping.id)
Category.where(label: 'gym').first.update_attribute(:category_id,  master_beauty.id)
Category.where(label: 'plumber').first.update_attribute(:category_id,  master_housing.id)
Category.where(label: 'travel_agency').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'hospital').first.update_attribute(:category_id,  master_health.id)
Category.where(label: 'post_office').first.update_attribute(:category_id,  master_government.id)
Category.where(label: 'jewelry_store').first.update_attribute(:category_id,  master_shopping.id)
Category.where(label: 'night_club').first.update_attribute(:category_id,  master_leisure.id)
Category.where(label: 'moving_company').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'train_station').first.update_attribute(:category_id,  master_mobility.id)
Category.where(label: 'transit_station').first.update_attribute(:category_id,  master_mobility.id)
Category.where(label: 'university').first.update_attribute(:category_id,  master_education.id)
Category.where(label: 'insurance_agency').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'fire_station').first.update_attribute(:category_id,  master_government.id)
Category.where(label: 'physiotherapist').first.update_attribute(:category_id,  master_health.id)
Category.where(label: 'laundry').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'lawyer').first.update_attribute(:category_id,  master_services.id)
Category.where(label: 'library').first.update_attribute(:category_id,  master_education.id)
Category.where(label: 'pet_store').first.update_attribute(:category_id,  master_shopping.id)
Category.where(label: 'synagogue').first.update_attribute(:category_id,  master_workship.id)
Category.where(label: 'police').first.update_attribute(:category_id,  master_government.id)
Category.where(label: 'roofing_contractor').first.update_attribute(:category_id,  master_housing.id)
Category.where(label: 'shopping_mall').first.update_attribute(:category_id,  master_shopping.id)
Category.where(label: 'veterinary_care').first.update_attribute(:category_id,  master_health.id)
Category.where(label: 'amusement_park').first.update_attribute(:category_id,  master_leisure.id)
Category.where(label: 'aquarium').first.update_attribute(:category_id,  master_leisure.id)
Category.where(label: 'meal_delivery').first.update_attribute(:category_id,  master_food.id)
Category.where(label: 'electrician').first.update_attribute(:category_id,  master_housing.id)
Category.where(label: 'stadium').first.update_attribute(:category_id,  master_leisure.id)
# Category.where(label: 'natural_feature').first.update_attribute(:category_id,  FOO_ID)
Category.where(label: 'cemetery').first.update_attribute(:category_id,  master_workship.id)
Category.where(label: 'mosque').first.update_attribute(:category_id,  master_workship.id)
Category.where(label: 'rv_park').first.update_attribute(:category_id,  master_mobility.id)
Category.where(label: 'locksmith').first.update_attribute(:category_id,  master_housing.id)
# Category.where(label: 'painter').first.update_attribute(:category_id,  FOO_ID)
Category.where(label: 'airport').first.update_attribute(:category_id,  master_mobility.id)
Category.where(label: 'hardware_store').first.update_attribute(:category_id,  master_shopping.id)
