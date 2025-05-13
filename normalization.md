# Normalization
In normalization, database tables are created and their relationship are established according to some rules to 
protect the data and and to make the database more flexible by eliminating redunduncy and inconstitent dependency.

Dependency is a piece of information that depends on another information. For example A team's place of work
depends on the area assigned. 

There are rules for normalization. Each rule is called __normal form__. Though it is essential to follow the rules, it is not always possible to comply.

Normalization requires additional tables and some clients find it difficult to do. Voilating any of the first three rules is recipe for problems such as inconsistent dependencies.

## Normalization Steps
1. __First Normalization Form (1NF)__ <span style="color: green;">OK</span>
    - All tables have indivisible values
    - Each field holds only one value. eg. `phone_number`, `rating`, `ratepernight`, etc
    - No groups are repeating
2. __Second Normalization Form (2NF)__ <span style="color: green;">OK</span>
    - A table is in __2NF__ if it is in __1NF__ and all __non key attributes__ are fully functionally dependent on the primary key
    - Tables use __single column__ primary keys and therefore no partial dependency

3. __Third Normnal Form (3NF)__ <span style="color: orange;">issues</span>
    - __User__ table with __role__ will be normalized when role is seperated into another table with the following attributes: 
    __Role__
        - `role_id`
        - `role_name`
    This will avoid future inconsistencies with items eg. `admin` vs `Admin`
    - __Property__ table with a free text(eg. 'Accra, Ghana' or 'East Legon') for `location` can result in redundancy. This can be normalized into a location table. 
    __Location__
        - location_id
        - city
        - country
    This will allow the following:
        - Reduce duplication.
        - Standardize naming.
        - Allow geospatial queries in future.
