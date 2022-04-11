FROM rust:latest AS builder
WORKDIR /usr/src/runner
COPY . .
RUN make install && \
    make build

FROM scratch
COPY --from=builder /usr/src/runner/target/release/runner /usr/local/bin/runner
ENTRYPOINT ["runner"]
