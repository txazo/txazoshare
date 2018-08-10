#!/bin/bash

function main() {
  groupadd test
  for user in test1 test2 test3 test4 test5
  do
    useradd -G test $user
  done
}

main