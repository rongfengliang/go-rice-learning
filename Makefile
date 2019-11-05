build-app: clean make-dir generate build-mac build-linux build-windows
clean:
	rm -rf build/* && rm -rf  rice-box.go
generate:
	go generate
make-dir:
	mkdir -p build/{mac,linux,windows}
build-mac:
	CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o build/mac 
build-linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o build/linux 
build-windows:
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o build/windows