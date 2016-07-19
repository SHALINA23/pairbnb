json.array!(@listings) do |listing|
  json.extract! listing, :id, :user_id, :destination, :start_date, :end_date, :type_of_property, :title, :no_of_guest, :no_of_bedrooms, :no_of_beds, :no_of_bathrooms, :description_of_property
  json.url listing_url(listing, format: :json)
end
