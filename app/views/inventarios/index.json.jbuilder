json.array!(@inventarios) do |inventario|
  json.extract! inventario, :id, :nombre, :estatus, :codigo, :dependencia, :fecha_compra
  json.url inventario_url(inventario, format: :json)
end
