#!/usr/bin/env bash

# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.


MATLAB_DIR=$(cd `dirname $0`; pwd)
DATA_DIR="${MATLAB_DIR}/data/"

if [[ ! -d "${DATA_DIR}" ]]; then
  echo "${DATA_DIR} doesn't exist, will create one";
  mkdir -p ${DATA_DIR}
fi
cd ${DATA_DIR}

# Get cat image
wget --no-check-certificate https://raw.githubusercontent.com/dmlc/mxnet.js/master/data/cat.png;

# Get inception model
wget --no-check-certificate http://data.mxnet.io/models/imagenet/inception-bn.tar.gz
tar -zxvf inception-bn.tar.gz
