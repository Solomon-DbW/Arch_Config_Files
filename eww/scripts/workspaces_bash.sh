#!/bin/bash
workspaces() {
    WORKSPACE_WINDOWS=$(hyprctl workspaces -j | jq 'map({key: .id | tostring, value: .windows}) | from_entries')
    ACTIVE_WORKSPACE=$(hyprctl -j activeworkspace  | jq '.id')
    
    seq 1 9 | jq --argjson windows "${WORKSPACE_WINDOWS}" --arg active "${ACTIVE_WORKSPACE}" --slurp -Mc 'map(tostring) | map({id: ., windows: ($windows[.] // 0), current: (. == $active)})'
}

# Initial call to workspaces
workspaces

# Indefinitely call workspaces at regular intervals
while true; do
    sleep 0.5  # Poll every half second (adjust timing as needed)
    workspaces
done


# #!/bin/bash
#
# workspaces() {
#     WORKSPACE_WINDOWS=$(hyprctl workspaces -j | jq 'map({key: .id | tostring, value: .windows}) | from_entries')
#     ACTIVE_WORKSPACE=$(hyprctl -j activeworkspace  | jq '.id')
#
#     seq 1 9 | jq --argjson windows "${WORKSPACE_WINDOWS}" --arg active "${ACTIVE_WORKSPACE}" --slurp -Mc 'map(tostring) | map({id: ., windows: ($windows[.] // 0), current: (. == $active)})'
# }
#
# workspaces
# # socat -u UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
# #     workspaces
# # done
