json.array!(@chat_logs) do |chat_log|
  json.extract! chat_log, :id, :user_id, :message
  json.url chat_log_url(chat_log, format: :json)
end
