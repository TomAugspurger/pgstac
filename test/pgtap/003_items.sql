SELECT has_table('pgstac'::name, 'items'::name);


SELECT is_indexed('pgstac'::name, 'items'::name, 'geometry');
SELECT is_indexed('pgstac'::name, 'items'::name, 'collection_id');
SELECT is_indexed('pgstac'::name, 'items'::name, 'datetime');
SELECT is_indexed('pgstac'::name, 'items'::name, 'end_datetime');
SELECT is_indexed('pgstac'::name, 'items'::name, 'properties');
SELECT is_indexed('pgstac'::name, 'items'::name, 'collection_id');

SELECT is_partitioned('pgstac'::name,'items'::name);


SELECT has_function('pgstac'::name, 'get_item', ARRAY['text']);
SELECT has_function('pgstac'::name, 'delete_item', ARRAY['text']);
SELECT has_function('pgstac'::name, 'create_item', ARRAY['jsonb']);
SELECT has_function('pgstac'::name, 'update_item', ARRAY['jsonb']);
SELECT has_function('pgstac'::name, 'upsert_item', ARRAY['jsonb']);
SELECT has_function('pgstac'::name, 'create_items', ARRAY['jsonb']);
SELECT has_function('pgstac'::name, 'upsert_items', ARRAY['jsonb']);



SELECT has_function('pgstac'::name, 'analyze_empty_partitions', NULL);
SELECT has_function('pgstac'::name, 'items_update_triggerfunc', NULL);


SELECT has_view('pgstac'::name, 'all_items_partitions'::name, 'all_items_partitions view exists');
SELECT has_view('pgstac'::name, 'items_partitions'::name, 'items_partitions view exists');

-- tools to update collection extents based on extents in items
SELECT has_function('pgstac'::name, 'collection_bbox', ARRAY['text']);
SELECT has_function('pgstac'::name, 'collection_temporal_extent', ARRAY['text']);
SELECT has_function('pgstac'::name, 'update_collection_extents', NULL);
