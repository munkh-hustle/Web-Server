Set WshShell = CreateObject("WScript.Shell")

' Start Caddy silently
WshShell.Run "cmd /c caddy run --config ""C:\Web Server\Caddyfile.txt""", 0, False

' Start Cloudflare Tunnel silently and log output to tunnel_log.txt
WshShell.Run "cmd /c cloudflared tunnel --url http://127.0.0.1:80 > ""C:\Web Server\tunnel_log.txt"" 2>&1", 0, False