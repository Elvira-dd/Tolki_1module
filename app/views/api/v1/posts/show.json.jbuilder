json.extract! @post, :id, :title, :content, :date, :is_comments_open, :link, :hashtag, :created_at
json.set! :comments do
json.array! @post.comments, partial: "api/v1/comments/comment", as: :comment
end
