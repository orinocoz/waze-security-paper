full_uri_from_request = Field.new("http.request.full_uri")
host_from_request = Field.new("http.host")
 
http_query_params_proto = Proto("http.query_parameters","Waze")
 
peticion = ProtoField.string("http.query_parameters.peticion","PETICION")
 
function http_query_params_proto.dissector(buffer,pinfo,tree)
        local full_uri_value = full_uri_from_request()
        if full_uri_value then
                local value = tostring(full_uri_value)
                local host = host_from_request().value
                if string.match(host, "ctiles.world.waze.com") then
                   local subtree = tree:add(http_query_params_proto,"Waze Iconografia")
                   subtree:add(peticion,value)
                end
                if string.match(host, "waze-tiles-legacy-cdn.waze.com") then
                   local subtree = tree:add(http_query_params_proto,"Waze Contenido")
                   subtree:add(peticion,value)
                end
                if string.match(host, "ttsgw.world.waze.com") then
                   local subtree = tree:add(http_query_params_proto,"Waze Sonidos (Texto Hablado)")
                   subtree:add(peticion,value)
                end
        end
end
 
register_postdissector(http_query_params_proto)
