version: '2'
services:
    traefik:
        image: rawmind/alpine-traefik:1.4.0-4
        environment:
            CATTLE_ACCESS_KEY: ${cattle_access_key}
            CATTLE_SECRET_KEY: ${cattle_secret_key}
            CATTLE_URL: ${cattle_url}
            TRAEFIK_ACME_EMAIL: ${acme_email}
            TRAEFIK_ACME_ENABLE: 'true'
            TRAEFIK_ADMIN_ENABLE: 'true'
            TRAEFIK_ADMIN_PORT: '8000'
            TRAEFIK_HTTPS_COMPRESSION: 'true'
            TRAEFIK_HTTPS_ENABLE: only
            TRAEFIK_HTTPS_PORT: '443'
            TRAEFIK_HTTP_COMPRESSION: 'true'
            TRAEFIK_HTTP_PORT: '80'
            TRAEFIK_LOG_LEVEL: ERROR
            TRAEFIK_PROMETHEUS_ENABLE: 'true'
            TRAEFIK_RANCHER_DOMAIN: ${rancher_domain}
            TRAEFIK_RANCHER_ENABLE: 'true'
        ports:
            - 80:80/tcp
            - 8000:8000/tcp
            - 443:443/tcp
        labels:
            io.rancher.container.pull_image: always
