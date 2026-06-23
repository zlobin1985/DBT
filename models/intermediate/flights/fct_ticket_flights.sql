{{
    config(
        materialized = 'view',
    )
}}
select ticket_no, flight_id, fare_conditions, amount
from {{ ref('_stg_flights__ticket_flights') }}
