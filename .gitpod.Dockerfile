# Base Docker image
FROM gitpod/workspace-full:latest

# Install Rust nightly
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain nightly

# Set the PATH environment variable for Rust nightly
ENV PATH="/home/gitpod/.cargo/bin:${PATH}"
ENV RUSTUP_TOOLCHAIN=nightly

# Install Rust tools for nightly
RUN rustup component add rustfmt --toolchain nightly
RUN rustup component add clippy --toolchain nightly
