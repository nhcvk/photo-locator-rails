json.photos do
    json.array! @photos do |photo|
        json.extract! photo, :image_url, :description, :latitude, :longitude, :user_id
    end
end