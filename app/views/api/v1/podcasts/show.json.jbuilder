json.extract! @podcast, :id, :name, :description, :cover, :created_at, :average_rating
json.set! :issue do
json.array! @podcast.issues, partial: "api/v1/issues/issue", as: :issue
end