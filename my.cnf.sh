#!/bin/bash

cat <<EOF > /etc/mysql/my.cnf
[mysqld]

innodb_buffer_pool_size = 26G
innodb_log_file_size = 512M
innodb_log_files_in_group = 2
innodb_log_buffer_size = 16M
innodb_flush_log_at_trx_commit = 0
innodb_lock_wait_timeout = 50
innodb_flush_method = O_DIRECT
innodb_thread_concurrency = 0
innodb_max_dirty_pages_pct = 80
innodb_buffer_pool_instances = 12
innodb_adaptive_hash_index_partitions = 64
max_connections = 3000
table_open_cache_instances = 16
table_open_cache = 8000
server_id = ${RANDOM}
log_bin = binlog

EOF
