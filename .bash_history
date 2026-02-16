sudo su
sudo su
nano ~/.openclaw/openclaw.json
sudo su
cat > ~/.openclaw/openclaw.json <<EOF
{
  "meta": {
    "lastTouchedVersion": "2026.2.12"
  },
  "env": {
    "vars": {
      "MOONSHOT_API_KEY": "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"
    }
  },
  "models": {
    "mode": "merge",
    "providers": {
      "nvidia-nim": {
        "baseUrl": "https://integrate.api.nvidia.com/v1",
        "apiKey": "\${env:MOONSHOT_API_KEY}",
        "api": "openai-completions",
        "stream": false,
        "models": [
          { "id": "moonshotai/moonshot-v1-8k", "name": "Kimi (NVIDIA)" }
        ]
      }
    }
  },
  "agents": {
    "defaults": {
      "model": {
        "primary": "kimi"
      },
      "models": {
        "nvidia-nim/moonshotai/moonshot-v1-8k": { "alias": "kimi" }
      }
    }
  },
  "gateway": {
    "port": 18789,
    "mode": "local",
    "auth": {
      "mode": "token",
      "token": "5d36d2e66d9cd8882d327df2ac740bd2c80734c9068f0760"
    },
    "nodes": {
      "denyCommands": ["camera.snap", "screen.record"]
    }
  },
  "channels": {
    "telegram": {
      "enabled": true
    }
  }
}
EOF

sudo su
curl https://integrate.api.nvidia.com/v1/chat/completions   -H "Authorization: Bearer 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"   -H "Content-Type: application/json"   -d '{
    "model": "moonshotai/kimi-k2.5",
    "messages": [
      {"role": "user", "content": "Hello"}
    ],
    "stream": false
  }'
sudo su
sodo su
sudo su
SUDO SU
sudo su
clear
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update && sudo apt install gh -y
sudo su
