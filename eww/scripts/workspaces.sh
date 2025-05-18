#!/usr/bin/env python3
import json
import subprocess
import time

def get_workspaces():
    # Get workspace windows information
    workspace_windows_cmd = subprocess.run(
        ["hyprctl", "workspaces", "-j"],
        capture_output=True, text=True
    )
    workspace_windows_data = json.loads(workspace_windows_cmd.stdout)
    workspace_windows = {str(ws["id"]): ws["windows"] for ws in workspace_windows_data}
    
    # Get active workspace
    active_workspace_cmd = subprocess.run(
        ["hyprctl", "-j", "activeworkspace"],
        capture_output=True, text=True
    )
    active_workspace = json.loads(active_workspace_cmd.stdout)["id"]
    
    # Create output for workspaces 1-9
    result = []
    for i in range(1, 10):
        workspace_id = str(i)
       
        if i == active_workspace:
            result.append({
                "id": workspace_id,
                "windows": workspace_windows.get(workspace_id, 0),
                "current": True
            })

    
    return result

def main():
    while True:
        workspaces = get_workspaces()
        print(json.dumps(workspaces), flush=True)
        time.sleep(0.1)  # Poll every half second

if __name__ == "__main__":
    try:
        # Print initial workspace state
        print(json.dumps(get_workspaces()))
        main()
    except KeyboardInterrupt:
        pass  # Exit gracefully on Ctrl+C
