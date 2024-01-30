#!/bin/bash

CHART_DIRECTORY=$1
[ ! -d "$CHART_DIRECTORY" ] && echo "custom shell: error, miss CHART_DIRECTORY $CHART_DIRECTORY " && exit 1

cd $CHART_DIRECTORY
echo "custom shell: CHART_DIRECTORY $CHART_DIRECTORY"
echo "CHART_DIRECTORY $(ls)"

#========================= add your customize bellow ====================
set -o errexit
set -o pipefail
set -o nounset

yq -i '.icon = "UklGRngKAABXRUJQVlA4TGsKAAAvL8ALEE2YadtGSfut/BEPRET/g4z2XwTlYO0uaVmyUNC2kWMoxx/T/Z6Q2DaSpKgOLb78Q3sK5A01bRtBvoc/xkK48cb+B6Dqvl8A+Jp0ogHQpUsu/9PttoCon+ufC/yAzm8NwEDn2ra1jfS8IkuGYWbmmXIrhooZO6z2bM27ccr9A8xMFTP1jBUzhWcMkj5973M2tkLnbP+Jdm3bpm2r9jH3unq2kX8UN5T3ZRt7z9n91rat2rZtWzGX2vpofTEzMxmxlgOMe3vBGvOWtxHsAaPIIkvMe0yevfdWCyXb2o7t0b6f9/1i27Zt2+yn96/0MoykOIDq1Qhs27Zt29/73AzcNlLUHsxNlo/+AML9T/0Ngw6/8lIHuiGJxFLpl/c/Me+Px58ueutvPxfOvwrO47/ouvJB5q6vvVce+RX8A4AksXiREFCA/Of+wwH/tg0XR3Yt8gxq/GRnfQ9uex7nvsf1fu/zO776RCw2AEGAdID7/fmnZ2z890ObbO7qLAikMUpABBkyN7JueVGf/f7Er++/N3dxJUYIkIB7lgkj9/MZl82T8258Y11y9v7DP+JmVhAoJEFWzBQujazz9f65eIGPy/u/+eyr4wDBYpJPsqjnuO3StW3K5zitvv+ZzQfRuknRlQqAEOggDU2Qmh19OQdFr23Q2+XdyV8/nw4QC+ykTQKPMjE/c+812zadI9pIFmEO3dbXP17H+lBrLVRBoeIoADYgdBQ7I3q6hnMInGsLg7ObvLC9TYAE8ru56difsbFYpGYnTbbsyupcbONcK+O9F2egAo0NCIAt0NhQaENVYdNRs1MTsitDoeMl3yog51WbFOIjWrnM1dNLmW566Uyrn2QZ5J1ZcsOq+a+GRS+3Q9uAAWyBoFDFJjShEcWEMWlT8dh+A/mt9xLEfLqc0iLiZWSwMjlDUR11I9IKoLQsNvQ3ZrLq5yYwDRgKAcGGwgYVlYINzlDYvtA3fAa0yXnCQyT43xjfQqpm6usE4WuRiEuWQcOKXJR3ZSyQAaAYEFepsFDYoC02STuJ4gyc219b/t9T34mOeVoA0j0+ydOfC6yOQgsRp2mGXug3pCcrn574uRkLwlAdFsCpcJqiirYotEkhcvf9Fv/f94A/qYhpzmcp+enwiT39omixTqnM27KGD+Okq0SJRlr0dBCDzgKdIFgcwMYstAkVNmjDJlRURaRE4+3bHsX/L78IuDlSIECa5f5u8luQNF46TaJo67b1RZJFqxGaaMMXNyGYEG3AKgewRYUqKmZBZZNkMH3gX9zuvgF8N4dGKKAuY5zX3AsKJf22ImETFmno7YW0tLCyLUlRRVPUQKDMYgKFALQItECgEIBV/FwZbM/58ejtK0OBciOjJMjR22m/kZ81XUxSBVHxE7UTXkgtjivTmAndU6wFWzQDCgsDDoSTohBRARVEBRA0op+NmcsHxvvbGQDIcu4Beuk57YwkOGoRDJaVsOQlRx9VT3TTjmevyMLOwhoAAoWAGJxmMxWBBqFRTFJNLs8P/7W4zAmQ7VdvntSZuSlqt5AubOuXbsJLJJoHA9UItPX2nrGjKa7MCBQCjUHTCpyq4TqUzN9mb/j281GSALjFpRUT6UWqG09qWGyj2+gKQRMNhPAQwLiR6UoNbJmDASjEAKpQFbaTWZb+7BODSwIJ9G+7KenpGdPBj2wVFYRBR+QQLMNKrEqDG+TZ+y9dZgCLqwYLrkETNpFf/xo28dHXSkkjXxqiv3xnZzq/GzDN4HFJM2UDgkLEWoQCXfyLv8VYp397g7QrTVFDmQ01S+EItigsinPoBWeLYdG3m9tf3S79Obm6e3+s6XTVxfFEklgb6iD6yFCZYmBM03uv05tR0ZQSG+6UBaLShE7C2AT7mSXen2+NGG7qz49/OvjkF4dVR59c7sm6BNe/jGv9It2J7fXmCptNP1dkc53Nxk6zaTqtFzrQiQoNCoAJFIApKEygMAEBMAFIG4J2CemuYo7fejPGDTdlv34+t7v579OvdvaL8zz64k/+sZiyk+6bnbAYy1WFIbSyIetRnoNiJileojtndAoSbAAQKEwADmK2KCfQsCl6FmnP6vS+q6zu7o3Vy41yfvd7iWz1r39719V3A+XYJS94EWPdjGUzlWkmcQLHcQJph6O3i6R70p10jjqu02maIg1VKJjChqZoi1W0gz07/Zzp9QbH980mz236+x7dx/352f2RGp59rDnrZaBsUMP7nT9k9swRseaBEwozGJNJy4sJeVouikY+oW2tlC9O/GZgzmijb2G6k1p1Hzfpdc90L+sdZvaNxs5NptzK34v1PeNL/q0dvv7828rbpX/u+V8Iyo9tsL1nz/KzJqWQBAHBAXAQAgYRTCBQCfAd3hBvdS+w0k6aI2DISRc1G2RarnkpPd0l7Sa0vBP+eegBePXmAIZECYDrrs9gfd1fZ0FVhYYDDrqCAaUCmILCCU0EIZ0NhkSJ7eRaVggVTHidvIRXIm25WCWmkCKkv4nW6sc3PzO0fC1twO+vf/AXuvWJ4BSbSpGWA0qFBlChAJyA4CqcQRPoot5bJB0yLYfAQgH4iEB4aMJAqtaxMf4izwBCgFp+qsC//ql7+mf/KyhMAYUBAQddSEMHgAmAgpAGg8lJo4vcZBHCeVD0kSFGQytEglb1g2g3c/t+RgHnEGXCCLfH30aZ+e+Af7sy2qqqSbEJFVYUM6iwQAAgABcG003mJNNOwIIAIjRQQwxfRCiAJLyonfSeL9gNjJKAc64cTt1/tjVz9UyqOzujWKHFTlFQVCgCaAATMXLYhgoLRYAQQIE6ViFB0lbYSh5dFCOzte19mZFAm5jzIwPiO38elfd43uthZJ5KVqFgCgrE0DhwCFf4HWI3WIbVEFgI4pKEmpZozSBpphNMSbJhymHmvF9JkKk/zTFzfZuZCSmC8muliSgRdULP1LQYIVytTQe05ZmMqYlkEiL0zOHFbUwZiuc8tV8K6EhdWYg5TcTZco6vOUotEcxJp1MPRku0eggz9QJNdVOo6+qj1Ip/8r/3EIC72aUA5nP7pYQfNdrMktZwToUrSRM1UV9Tcm6xWmTdeNMCU5BpVWcyaiy1SWmC6kPoX4EFGeSfH78yKJ9TP5/jryKEJAkM2ZtYaSOJCK011cxsNF2o00qpV7NCtLL7oC7PN+y+AEZJwcKCTV/7R2d+Ge71B98CnS2SPqoVAnACYs2UzvyL5qDe0rCpi1oJUurtV1ty1zr10E18B1xOAbnA34gDNdl3f+TbP8Oz/p5kRD+g1ZdWIAKEED28++8tmin9fWcWdj/me33Ji/ebyQuGf0/XPVCBQySwULdJwO06z37Y2Lubam682eTqUW+OEwtTHphURBV8fF9N+gc/l2Ltvv/6ep5+c71/jhh8QoefjwWWAQGA3/HqU8/gr78uLVbvS9f51ny2ldacHqVbcTKBf3om650PnvT1n98DnGu/r5xBggQW7TU/vNp++8VXRp3Yy2RzN9te5vSuv7eYy7ly5v/y1z0tcO9n/ynXujdBgrroDEhIDM8DOobeX7dEBiEACfyP7QAA"' Chart.yaml

yq -i '.testlink.service.type = "ClusterIP" ' values.yaml

DB_METRIC_IMAGE_TAG=$(yq e '.metrics.image.tag' charts/testlink/charts/mariadb/values.yaml | tr -d '\n' | tr -d '\r')
DB_VOLUME_PERMISSIONS_IMAGE_TAG=$(yq e '.volumePermissions.image.tag' charts/testlink/charts/mariadb/values.yaml | tr -d '\n' | tr -d '\r')
DB_IMAGE_TAG=$(yq e '.image.tag' charts/testlink/charts/mariadb/values.yaml | tr -d '\n' | tr -d '\r')

yq -i '
  .testlink.certificates.image.registry = "docker.m.daocloud.io" |
  .testlink.metrics.image.registry = "docker.m.daocloud.io" |
  .testlink.volumePermissions.image.registry = "docker.m.daocloud.io" |
  .testlink.image.registry = "m.daocloud.io/marketplace.azurecr.io" |
  .testlink.global.imageRegistry = "m.daocloud.io/marketplace.azurecr.io" |
  .testlink.mariadb.image.registry = "docker.m.daocloud.io" |
  .testlink.mariadb.image.repository = "bitnami/mariadb" |
  .testlink.mariadb.metrics.image.registry = "docker.m.daocloud.io" |
  .testlink.mariadb.metrics.image.repository = "bitnami/mysqld-exporter" |
  .testlink.mariadb.volumePermissions.image.registry = "docker.m.daocloud.io" |
  .testlink.mariadb.volumePermissions.image.repository = "bitnami/bitnami-shell"
' values.yaml

yq -i "
  .testlink.mariadb.image.tag = \"$DB_IMAGE_TAG\" |
  .testlink.mariadb.metrics.image.tag = \"$DB_METRIC_IMAGE_TAG\" |
  .testlink.mariadb.volumePermissions.image.tag = \"$DB_VOLUME_PERMISSIONS_IMAGE_TAG\"
" values.yaml

yq -i '
  .mariadb.image.registry = "docker.m.daocloud.io" |
  .mariadb.image.repository = "bitnami/mariadb" |
  .mariadb.metrics.image.registry = "docker.m.daocloud.io" |
  .mariadb.metrics.image.repository = "bitnami/mysqld-exporter" |
  .mariadb.volumePermissions.image.registry = "docker.m.daocloud.io" |
  .mariadb.volumePermissions.image.repository = "bitnami/bitnami-shell"
' charts/testlink/values.yaml

yq -i "
  .mariadb.image.tag = \"$DB_IMAGE_TAG\" |
  .mariadb.metrics.image.tag = \"$DB_METRIC_IMAGE_TAG\" |
  .mariadb.volumePermissions.image.tag = \"$DB_VOLUME_PERMISSIONS_IMAGE_TAG\"
" charts/testlink/values.yaml

yq -i '
  .image.registry = "docker.m.daocloud.io" |
  .volumePermissions.registry = "docker.m.daocloud.io" |
  .volumePermissions.image.registry = "docker.m.daocloud.io" |
  .metrics.registry = "docker.m.daocloud.io" |
  .metrics.image.registry = "docker.m.daocloud.io" |
  .global.imageRegistry = "m.daocloud.io/marketplace.azurecr.io"
' charts/testlink/charts/mariadb/values.yaml

#==============================
echo "fulfill tag"
sed -i 's@tag: ""@tag: "master"@g' values.yaml
exit $?