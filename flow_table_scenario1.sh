## scenario 1
curl -X POST -d '{"dpid": 1,"cookie": 1,"cookie_mask": 1,"table_id": 0,"idle_timeout": 3000,"hard_timeout": 3000,"priority": 1,"flags": 1,"match":{"in_port": 1,"dl_dst": "00:00:00:00:00:02","dl_src": "00:00:00:00:00:01"},"actions":[{"type":"OUTPUT","port": 2}]}' http://localhost:8081/stats/flowentry/add
curl -X POST -d '{"dpid": 1,"cookie": 1,"cookie_mask": 1,"table_id": 0,"idle_timeout": 3000,"hard_timeout": 3000,"priority": 1,"flags": 1,"match":{"in_port": 2,"dl_dst": "00:00:00:00:00:01","dl_src": "00:00:00:00:00:02"},"actions":[{"type":"OUTPUT","port": 1}]}' http://localhost:8081/stats/flowentry/add

curl -X POST -d '{"dpid": 4,"cookie": 1,"cookie_mask": 1,"table_id": 0,"idle_timeout": 3000,"hard_timeout": 3000,"priority": 1,"flags": 1,"match":{"in_port": 1,"dl_dst": "00:00:00:00:00:02","dl_src": "00:00:00:00:00:01"},"actions":[{"type":"OUTPUT","port": 2}]}' http://localhost:8081/stats/flowentry/add
curl -X POST -d '{"dpid": 4,"cookie": 1,"cookie_mask": 1,"table_id": 0,"idle_timeout": 3000,"hard_timeout": 3000,"priority": 1,"flags": 1,"match":{"in_port": 2,"dl_dst": "00:00:00:00:00:01","dl_src": "00:00:00:00:00:02"},"actions":[{"type":"OUTPUT","port": 1}]}' http://localhost:8081/stats/flowentry/add

curl -X POST -d '{"dpid": 2,"cookie": 1,"cookie_mask": 1,"table_id": 0,"idle_timeout": 3000,"hard_timeout": 3000,"priority": 1,"flags": 1,"match":{"in_port": 1,"dl_dst": "00:00:00:00:00:02","dl_src": "00:00:00:00:00:01"},"actions":[{"type":"OUTPUT","port": 3}]}' http://localhost:8081/stats/flowentry/add
curl -X POST -d '{"dpid": 2,"cookie": 1,"cookie_mask": 1,"table_id": 0,"idle_timeout": 3000,"hard_timeout": 3000,"priority": 1,"flags": 1,"match":{"in_port": 3,"dl_dst": "00:00:00:00:00:01","dl_src": "00:00:00:00:00:02"},"actions":[{"type":"OUTPUT","port": 1}]}' http://localhost:8081/stats/flowentry/add
