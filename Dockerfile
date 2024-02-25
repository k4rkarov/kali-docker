FROM kalilinux/kali-rolling:latest

# Update and install dependencies
RUN apt update && \
    apt install -y \
    nmap \
    dirsearch \
    diceware \
    gobuster \
    ffuf \
    golang \
    recon-ng

# Set Go environment variables
ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

# Install Go tools
RUN go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest || true && \
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest || true && \
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest || true && \
    go install -v github.com/projectdiscovery/katana/cmd/katana@latest || true && \
    go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest || true && \
    go install -v github.com/k4rkarov/entropy/cmd/entropy@latest || true && \
    go install -v github.com/lc/gau/v2/cmd/gau@latest || true

# Cleanup
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set working directory to /app
WORKDIR /app

# Define entry point
CMD ["/bin/bash"]
