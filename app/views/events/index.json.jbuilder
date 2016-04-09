json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :address, :start_time, :end_time, :string,, :start_date, :end_date
  json.url event_url(event, format: :json)
end
