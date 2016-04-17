json.array!(@staus) do |stau|
  json.extract! stau, :id, :nombre, :contenido
  json.url stau_url(stau, format: :json)
end
