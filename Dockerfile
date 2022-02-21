FROM rust:latest AS builder
WORKDIR /usr/src/runner
COPY . .
RUN make install && \
    make build

FROM gcr.io/distroless/base-debian11
COPY --from=builder /usr/src/runner/target/release/runner /usr/local/bin/runner
USER nonroot:nonroot
ENTRYPOINT ["runner"]
