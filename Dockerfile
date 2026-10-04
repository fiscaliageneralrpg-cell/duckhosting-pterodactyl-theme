FROM ghcr.io/pterodactyl/panel:v1.15.1

COPY duckhosting-logo.jpg /app/public/duckhosting-logo.jpg
COPY duckhosting.css /app/public/duckhosting.css

RUN sed -i 's#</head>#<link rel="stylesheet" href="/duckhosting.css"><link rel="icon" type="image/jpeg" href="/duckhosting-logo.jpg"></head>#' /app/resources/views/templates/wrapper.blade.php
