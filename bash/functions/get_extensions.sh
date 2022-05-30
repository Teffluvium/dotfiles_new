#!/bin/bash

# Generate a recursive list of unique file extensions
function get_extensions() {
    find . -type f | sed -n 's/.*\(\<\w\+\)/\1/p' | sort -u
}
