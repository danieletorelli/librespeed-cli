FROM alpine:3.23.4 AS build
ARG UPSTREAM_REF=master
RUN apk add --no-cache \
    bash \
    git \
    go \
    build-base \
    gcc
RUN git clone --depth 1 --branch "${UPSTREAM_REF}" https://github.com/librespeed/speedtest-cli librespeed-cli
RUN cd librespeed-cli && \
    ./build.sh && \
    mv out/librespeed-cli-$(go env GOOS)-$(go env GOARCH) /usr/local/bin/librespeed-cli

FROM alpine:3.23.4 AS runtime
COPY --from=build /usr/local/bin/librespeed-cli /usr/local/bin/librespeed-cli
CMD ["/usr/local/bin/librespeed-cli"]
