json.array!(@invests) do |invest|
  json.extract! invest, :id, :user_id, :bank, :name, :amount
  json.url invest_url(invest, format: :json)
end
