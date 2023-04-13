package main

import (
	"fmt"
	"log"
	"net/http"

	router "CronJob/router"
)

func main() {
	fmt.Println("MongoDB API")
	r := router.Router()
	fmt.Println("Server is getting started...")
	log.Fatal(http.ListenAndServe(":4001", r))
}
