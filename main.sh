for script in "modules"/*.sh; do
  if [[ ! -e "$script" ]]; then
    echo "No modules found"
    break
  fi

  echo "Running $script"
  chmod +x "$script"
  "$script"
  echo "Done with $script"
  echo ""
done
