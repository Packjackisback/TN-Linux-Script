#!/bin/bash
# TODO add ascii
for script in "$DIR"/*.sh; do
  [[ -e "$script" ]] || {echo "No modules found"; break; }

  echo "Running $script"
  chmod +x "$script"
  "$script"
  echo "Done with $script"
  echo ""
done
