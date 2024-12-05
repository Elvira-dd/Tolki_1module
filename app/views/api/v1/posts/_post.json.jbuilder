json.extract! post, :id, :title, :content, :date, :is_comments_open, :link, :hashtag, :created_at
json.url api_v1_post_url(post)
