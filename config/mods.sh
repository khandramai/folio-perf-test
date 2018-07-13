docker run -d --rm --name ${modName} --mount type=bind,source=/tmp/folio-conf,target=/folio-conf -e 'JAVA_OPTIONS=-Dorg.folio.metadata.inventory.storage.type=okapi' -p${port}:8081 folioci/${modName}:${modVer} db_connection=/folio-conf/pg.json