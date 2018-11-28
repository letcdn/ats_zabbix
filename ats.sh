#!/bin/bash
TMP_FILE1=/tmp/ats_stats_tmp
mkdir ${TMP_FILE1} -p
/bin/traffic_ctl metric match "proxy.*" >/tmp/ats_info
cat /tmp/ats_info | grep "proxy.node.hostname"| awk '{print $2}' > ${TMP_FILE1}/1
cat /tmp/ats_info | grep "proxy.node.user_agents_total_documents_served"| awk '{print $2}' > ${TMP_FILE1}/2
cat /tmp/ats_info | grep "proxy.node.user_agent_xacts_per_second"| awk '{print $2}' > ${TMP_FILE1}/3
cat /tmp/ats_info | grep "proxy.node.cache_hit_ratio "| awk '{print $2}' > ${TMP_FILE1}/4
cat /tmp/ats_info | grep "proxy.node.bandwidth_hit_ratio "| awk '{print $2}' > ${TMP_FILE1}/5
cat /tmp/ats_info | grep "proxy.node.cache.percent_free"| awk '{print $2}' > ${TMP_FILE1}/6
cat /tmp/ats_info | grep "proxy.node.current_server_connections"| awk '{print $2}' > ${TMP_FILE1}/7
cat /tmp/ats_info | grep "proxy.node.current_client_connections"| awk '{print $2}' > ${TMP_FILE1}/8
cat /tmp/ats_info | grep "proxy.node.current_cache_connections"| awk '{print $2}' > ${TMP_FILE1}/9
cat /tmp/ats_info | grep "proxy.node.client_throughput_out"| awk '{print $2}' > ${TMP_FILE1}/10
cat /tmp/ats_info | grep "proxy.node.dns.lookups_per_second"| awk '{print $2}' > ${TMP_FILE1}/11
cat /tmp/ats_info | grep "proxy.node.hostdb.hit_ratio_avg_10s"| awk '{print $2}' > ${TMP_FILE1}/12
cat /tmp/ats_info | grep "proxy.process.http.user_agent_response_document_total_size"| awk '{print $2}' > ${TMP_FILE1}/13
cat /tmp/ats_info | grep "proxy.process.http.user_agent_response_header_total_size"| awk '{print $2}' > ${TMP_FILE1}/14
cat /tmp/ats_info | grep "proxy.process.http.total_client_connections"| awk '{print $2}' > ${TMP_FILE1}/15
cat /tmp/ats_info | grep "proxy.process.http.current_client_transactions"| awk '{print $2}' > ${TMP_FILE1}/16
cat /tmp/ats_info | grep "proxy.process.http.origin_server_response_document_total_size"| awk '{print $2}' > ${TMP_FILE1}/17
cat /tmp/ats_info | grep "proxy.process.http.origin_server_response_header_total_size"| awk '{print $2}' > ${TMP_FILE1}/18
cat /tmp/ats_info | grep "proxy.process.http.total_server_connections"| awk '{print $2}' > ${TMP_FILE1}/19
cat /tmp/ats_info | grep "proxy.process.http.current_server_transactions"| awk '{print $2}' > ${TMP_FILE1}/20
cat /tmp/ats_info | grep "proxy.process.cache.bytes_used"| awk '{print $2}' > ${TMP_FILE1}/21
cat /tmp/ats_info | grep "proxy.process.cache.bytes_total"| awk '{print $2}' > ${TMP_FILE1}/22
cat /tmp/ats_info | grep "proxy.process.cache.lookup.active"| awk '{print $2}' > ${TMP_FILE1}/23
cat /tmp/ats_info | grep "proxy.process.cache.lookup.success"| awk '{print $2}' > ${TMP_FILE1}/24
cat /tmp/ats_info | grep "proxy.process.cache.lookup.failure"| awk '{print $2}' > ${TMP_FILE1}/25
cat /tmp/ats_info | grep "proxy.process.cache.read.active"| awk '{print $2}' > ${TMP_FILE1}/26
cat /tmp/ats_info | grep "proxy.process.cache.read.success"| awk '{print $2}' > ${TMP_FILE1}/27
cat /tmp/ats_info | grep "proxy.process.cache.read.failure"| awk '{print $2}' > ${TMP_FILE1}/28
cat /tmp/ats_info | grep "proxy.process.cache.write.active"| awk '{print $2}' > ${TMP_FILE1}/29
cat /tmp/ats_info | grep "proxy.process.cache.write.success"| awk '{print $2}' > ${TMP_FILE1}/30
cat /tmp/ats_info | grep "proxy.process.cache.write.failure"| awk '{print $2}' > ${TMP_FILE1}/31
cat /tmp/ats_info | grep "proxy.process.cache.update.active"| awk '{print $2}' > ${TMP_FILE1}/32
cat /tmp/ats_info | grep "proxy.process.cache.update.success"| awk '{print $2}' > ${TMP_FILE1}/33
cat /tmp/ats_info | grep "proxy.process.cache.update.failure"| awk '{print $2}' > ${TMP_FILE1}/34
cat /tmp/ats_info | grep "proxy.process.cache.remove.active"| awk '{print $2}' > ${TMP_FILE1}/35
cat /tmp/ats_info | grep "proxy.process.cache.remove.success"| awk '{print $2}' > ${TMP_FILE1}/36
cat /tmp/ats_info | grep "proxy.process.cache.remove.failure"| awk '{print $2}' > ${TMP_FILE1}/37
cat /tmp/ats_info | grep "proxy.process.hostdb.total_lookups"| awk '{print $2}' > ${TMP_FILE1}/38
cat /tmp/ats_info | grep "proxy.process.hostdb.total_hits"| awk '{print $2}' > ${TMP_FILE1}/39
cat /tmp/ats_info | grep "proxy.process.hostdb.ttl"| awk '{print $2}' > ${TMP_FILE1}/40
cat /tmp/ats_info | grep "proxy.process.dns.total_dns_lookups"| awk '{print $2}' > ${TMP_FILE1}/41
cat /tmp/ats_info | grep "proxy.process.dns.lookup_avg_time"| awk '{print $2}' > ${TMP_FILE1}/42
cat /tmp/ats_info | grep "proxy.process.dns.lookup_successes"| awk '{print $2}' > ${TMP_FILE1}/43
cat /tmp/ats_info | grep "proxy.process.log.log_files_open"| awk '{print $2}' > ${TMP_FILE1}/44
cat /tmp/ats_info | grep "proxy.process.log.log_files_space_used"| awk '{print $2}' > ${TMP_FILE1}/45
cat /tmp/ats_info | grep "proxy.process.log.event_log_access"| awk '{print $2}' > ${TMP_FILE1}/46
cat /tmp/ats_info | grep "proxy.process.log.event_log_access_skip"| awk '{print $2}' > ${TMP_FILE1}/47
cat /tmp/ats_info | grep "proxy.process.log.event_log_error"| awk '{print $2}' > ${TMP_FILE1}/48
cat /tmp/ats_info | grep "proxy.process.congestion.congested_on_max_connection"| awk '{print $2}' > ${TMP_FILE1}/49
cat /tmp/ats_info | grep "proxy.process.congestion.congested_on_conn_failures"| awk '{print $2}' > ${TMP_FILE1}/50