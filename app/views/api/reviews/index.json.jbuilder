if @reviews.present?
  json.reviews @reviews do |review|
    json.id review.id
    json.created_at review.created_at
    json.updated_at review.updated_at
    json.description review.description
    json.rating review.rating
    json.user_id review.user_id
    json.recipe_id review.recipe_id
  end
else
  json.error_message @error_message
end
