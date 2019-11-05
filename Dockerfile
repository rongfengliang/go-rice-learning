FROM scratch
COPY build/linux/rice-app /
EXPOSE 8080
ENTRYPOINT ["/rice-app"]
