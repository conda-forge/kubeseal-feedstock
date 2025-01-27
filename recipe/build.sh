#!/bin/bash

set -euxo pipefail

cd src
go build -v ./cmd/kubeseal -o $PREFIX/bin/kubeseal
go-licenses save ./cmd/kubeseal --save_path ../library_licenses
