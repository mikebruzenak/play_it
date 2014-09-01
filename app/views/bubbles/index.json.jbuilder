json.array!(@bubbles) do |bubble|
  json.extract! bubble, :id, :title, :tags, :content
  json.url bubble_url(bubble, format: :json)
end
