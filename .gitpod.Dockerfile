# Base Docker image
FROM gitpod/workspace-full:latest

# Install Rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

# Set the PATH environment variable for Rust
ENV PATH="/home/gitpod/.cargo/bin:${PATH}"

# Install Rust tools
RUN rustup component add rustfmt clippy
