#!/bin/bash
sudo DD_API_KEY=6a62485b4477e1e846c00ca4b5d84b3e DD_SITE="datadoghq.eu" bash -c "$(curl -L https://raw.githubusercontent.com/DataDog/datadog-agent/master/cmd/agent/install_script.sh)"

# add docker integration
sudo cat > /etc/datadog-agent/conf.d/docker.d/docker_daemon.yaml <<- "EOF"
init_config:

instances:
    - url: "unix://var/run/docker.sock"
      new_tag_names: true
EOF
