package main

//go:generate go run github.com/GeertJohan/go.rice/rice embed-go

import (
	"log"
	"net/http"

	rice "github.com/GeertJohan/go.rice"
)

func main() {
	http.Handle("/", http.FileServer(rice.MustFindBox("http-files").HTTPBox()))
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		log.Fatalln("some wrong will exit")
	}
}
