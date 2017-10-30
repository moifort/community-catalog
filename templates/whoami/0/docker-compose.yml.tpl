version: '2'
services:
    whoami:
        image: emilevauge/whoami:latest
        labels:
            io.rancher.container.pull_image: always
            traefik.frontend.rule: Host:${url}
            traefik.port: '80'
            traefik.enable: 'true'
