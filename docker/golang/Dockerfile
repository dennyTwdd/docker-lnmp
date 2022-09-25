ARG GOLANG_VERSION

FROM golang:${GOLANG_VERSION}

ARG GOLANG_USER
ARG GOLANG_UID
# RUN useradd -m ${USER} -o -u ${UID}
# RUN adduser ${GOLANG_USER} -u ${GOLANG_UID}
RUN adduser -D ${GOLANG_USER} -u ${GOLANG_UID}

RUN chown -R ${GOLANG_USER} /go

USER ${GOLANG_USER}

CMD tail -f /dev/null

WORKDIR /go