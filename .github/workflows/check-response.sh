#!/bin/bash

echo "${SMOKE_TEST_RESPONSE}";

if [[ "${SMOKE_TEST_RESPONSE}" == *"<!doctype html>"* ]]; then
  echo "Response contained '<!doctype html>'."
  exit 0;
fi

echo "Response did not contain '<!doctype html>'."
exit 1;