FROM alpine:3.12 AS build

ARG gs_version=9.27

RUN apk add --update-cache \
        build-base \
    && wget "https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs${gs_version//./}/ghostscript-${gs_version}.tar.gz" \
    && tar xf "ghostscript-${gs_version}.tar.gz" \
    && mkdir "ghostscript-${gs_version}/build" \
    && cd "ghostscript-${gs_version}/build" \
    && ../configure \
        --prefix="/usr/local/ghostscript-${gs_version}" \
        --disable-compile-inits \
        --enable-dynamic \
    && make -j "$(nproc)" \
    && make install

FROM alpine:3.12

ARG gs_version=9.27

COPY --from=build "/usr/local/ghostscript-${gs_version}" "/usr/local/ghostscript-${gs_version}"
ENV PATH="/usr/local/ghostscript-${gs_version}/bin:${PATH}"
