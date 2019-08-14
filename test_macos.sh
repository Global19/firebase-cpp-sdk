#!/bin/bash
#
# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Builds and runs the tests, meant to be used on a Linux environment.

# Fail on any error.
set -e
# Display commands being run.
set -x

# Make a directory to work in
mkdir macos_build
cd macos_build

# Configure cmake with tests enabled
cmake .. -DFIREBASE_CPP_BUILD_TESTS=ON

# Build the SDK and the tests
cmake --build .

# Run the tests
ctest --verbose
