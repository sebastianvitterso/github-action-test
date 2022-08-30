#!/bin/bash

if [[ "${ steps.api.response }" == *"<!doctype html>"* ]]; then
  echo "Response contained '<!doctype html>'."
  return 0;
fi

echo "Response did not contain '<!doctype html>'."
return 1;