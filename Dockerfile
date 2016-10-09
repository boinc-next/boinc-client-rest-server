FROM scratch
MAINTAINER Artem Vorotnikov <artem@vorotnikov.me>
COPY ./build/boinc-client-rest-shim /usr/bin/boinc-client-rest-shim

ENTRYPOINT [ "/usr/bin/boinc-client-rest-shim" ]
