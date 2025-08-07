#!/usr/bin/env bash
# Copyright (c) 2025 Tailscale Inc & AUTHORS All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

set -e

source dev-container-features-test-lib

check "operator flag is set" bash -c "pgrep -f '--operator=$(id -un)' | grep tailscaled"

reportResults
