with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id AS products_id,
        CONCAT(orders_id,pdt_id)AS PK,
        revenue,
        quantity

    from source

)

select * from renamed
