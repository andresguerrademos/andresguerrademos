with 

source as (

    select * from {{ source('raw_data', 'ventas_retail') }}

),

renamed as (

    select
        orden,
        fecha,
        first_name,
        last_name,
        pago,
        email,
        articulo,
        piezas,
        cupon,
        precio_facturado,
        monto_percibido,
        costo,
        flete,
        porcentaje,
        utilidad,
        margen,
        city,
        province,
        proveedor,
        fletera,
        agente,
        fecha_de_entrega,
        tiempo_de_entrega,
        awareness,
        mood,
        comentarios

    from source

)

select * from renamed
