// Copyright 2020 The Moov Authors
// Use of this source code is governed by an Apache License
// license that can be found in the LICENSE file.

package main

import (
	"flag"
	"fmt"

	"github.com/moov-io/console"
)

// var (
// 	httpAddr  = flag.String("http.addr", bind.HTTP("console"), "HTTP listen address")
// 	adminAddr = flag.String("admin.addr", bind.Admin("console"), "Admin HTTP listen address")

// 	flagLogFormat = flag.String("log.format", "", "Format for log lines (Options: json, plain")
// )

func main() {
	flag.Parse()

	fmt.Printf("Starting console server version %s\n", console.Version)
}
