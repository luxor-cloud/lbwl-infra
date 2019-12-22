player_limit: 20
ip_forward: false
permissions:
  default:
  - bungeecord.command.server
  - bungeecord.command.list
  admin:
  - bungeecord.command.alert
  - bungeecord.command.end
  - bungeecord.command.ip
  - bungeecord.command.reload
timeout: 30000
log_commands: false
online_mode: true
servers:
  flash:
    motd: '§eFlash Server'
    address: ${flash01_address}
    restricted: false
  lobby:
    motd: "§eLobby"
    address: ${lobby_address}
    restricted: false
listeners:
- query_port: 25565
  motd: '&1Another Bungee server'
  priorities:
  - lobby
  bind_local_address: true
  tab_list: GLOBAL_PING
  query_enabled: false
  host: 0.0.0.0:25565
  max_players: 20
  tab_size: 60
  ping_passthrough: false
  force_default_server: false
  proxy_protocol: false
disabled_commands:
- disabledcommandhere
network_compression_threshold: 256
groups:
  freggyy:
  - admin
connection_throttle: 4000
connection_throttle_limit: 3
stats: f2876aa6-74d2-468c-90ee-1377111f1c9f
forge_support: false
inject_commands: false