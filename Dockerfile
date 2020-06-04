FROM sonardeveloper/slate-env:1.0.0

WORKDIR /srv/slate

VOLUME /srv/slate/source
EXPOSE 8080

COPY . /srv/slate

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
