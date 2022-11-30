if @error_object.blank?
  json.review do
    json.id @review.id
    json.created_at @review.created_at
    json.updated_at @review.updated_at
    json.rating @review.rating
    json.description @review.description
    json.recipe_id @review.recipe_id
    json.user_id @review.user_id
  end
else
  json.error_object @error_object
end

