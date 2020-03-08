#!/bin/bash

set -euo pipefail

export TARGET_ENV=${TARGET_ENV:-non-prod}

terragrunt apply-all --terragrunt-non-interactive
