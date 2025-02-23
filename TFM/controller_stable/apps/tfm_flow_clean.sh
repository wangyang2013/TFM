#!/bin/bash
SRC_IP="10.21.2.187"
SRC_MAC="e8:61:1f:10:6c:d1"
DST_IP="10.21.2.160"
DST_MAC="e8:61:1f:10:6d:53"

SWITCH_DPID="00:00:a0:42:3f:26:68:21"
SWITCH_IP="10.21.2.186"
SWITCH_MAC="e8:61:1f:10:6a:cb"
SWITCH_TRA_MAC="e8:61:1f:10:6a:cb"
SWITCH_SRC_MAC="e8:61:1f:10:6a:ca"
SWITCH_DST_MAC="a0:42:3f:26:68:21"
CONTROLLER_IP="10.21.2.185:8080"


CLICK_PORT="4433"
#FLOW_FILTER="10.24.0.0/16"
FLOW_FILTER="10.10.10.10/32"
SRC_DEF_FILTER="false"
DST_DEF_FILTER="false"
TRACEFILE="./tracefile.pcap"
#replay trace in rate x pps
REPLAY_RATE="1000"
curl -X DELETE -d '{"name":"flow_1"}' http://$CONTROLLER_IP/wm/staticflowpusher/json
curl -X DELETE -d '{"name":"flow_2"}' http://$CONTROLLER_IP/wm/staticflowpusher/json
curl -X DELETE -d '{"name":"flow_3"}' http://$CONTROLLER_IP/wm/staticflowpusher/json
curl -X DELETE -d '{"name":"flow_4"}' http://$CONTROLLER_IP/wm/staticflowpusher/json
curl -X DELETE -d '{"name":"flow_5"}' http://$CONTROLLER_IP/wm/staticflowpusher/json
