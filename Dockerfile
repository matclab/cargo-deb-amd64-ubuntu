FROM clux/muslrust

RUN rustup update && cargo install cargo-deb && apt-get update && apt-get install -y libasound2-dev libpulse0 

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
