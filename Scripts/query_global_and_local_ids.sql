/*+--------------------------------------------------------------------------+*\
  | Name:      query_global_and_local_ids.sql                                |
  | Author:    Marinus Snyman                                                |
  | Created:   26/01/2017                                                    |
  | Version:   1.0                                                           |
  | Purpose:   Have a handy list of queries to get global and local ids.     |
  |                                                                          |
  | Revisions: See GIT History                                               |
\*+--------------------------------------------------------------------------+*/

--Select Global Id's based on entity name
select cmx_ors.c_bo_local_item_spec.local_name,
       cmx_ors.c_bo_item_spec.global_item_id,
       cmx_ors.c_bo_local_item_spec.last_update_date
from cmx_ors.c_bo_item_spec
inner join cmx_ors.c_bo_local_item_spec
on cmx_ors.c_bo_item_spec.rowid_object = cmx_ors.c_bo_local_item_spec.item_spec_id
where cmx_ors.c_bo_local_item_spec.lg_entity = &Entity
order by last_update_date desc;
