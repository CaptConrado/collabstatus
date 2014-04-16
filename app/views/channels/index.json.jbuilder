json.array!(@channels) do |channel|
  json.extract! channel, :id, :cuid, :title, :user_id
  json.url channel_url(channel, format: :json)
end
