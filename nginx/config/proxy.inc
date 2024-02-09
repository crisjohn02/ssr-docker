# Enable proxy buffering to improve performance
proxy_buffering on;

# Set timeouts for proxy connections
proxy_connect_timeout 59s;
proxy_send_timeout 600;
proxy_read_timeout 600;

# Adjust buffer sizes for better proxy performance
proxy_buffer_size 256k;
proxy_buffers 16 512k;
proxy_busy_buffers_size 512k;
proxy_temp_file_write_size 64k;

# Pass certain headers to the backend servers
proxy_pass_header Set-Cookie;
proxy_redirect off;
proxy_hide_header Vary;
proxy_hide_header X-Powered-By;
proxy_set_header Accept-Encoding '';

# Ignore certain headers from the backend servers
proxy_ignore_headers Cache-Control Expires;

# Set additional headers for proxy requests
proxy_set_header Referer $http_referer;
proxy_set_header Host $host;
proxy_set_header Cookie $http_cookie;
proxy_set_header X-Real-IP $remote_addr;
proxy_set_header X-Forwarded-Host $host;
proxy_set_header X-Forwarded-Server $host;
proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header X-Forwarded-Proto $scheme;
proxy_set_header X-Original-URI $request_uri;
proxy_set_header X-Original-Remote-Addr $remote_addr;
proxy_set_header X-Original-Host $host;
