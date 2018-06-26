#!/usr/bin/env bats
 
@test "Validate status code for apache exporter" {
  run curl -s -o /dev/null -w "%{http_code}" localhost:9117/metrics
  [[ $output = "200" ]]
}