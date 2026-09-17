#!/usr/bin/env bash
# VSG Human Survey C (sd35) -> http://localhost:8503
set -e
cd "$(dirname "$0")"
exec streamlit run app.py --server.port "${PORT:-8503}" --server.address localhost \
     --browser.gatherUsageStats false
