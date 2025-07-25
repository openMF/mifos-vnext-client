#
# Licensed to the Mifos Initiative under one
# or more contributor license agreements. See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership. The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License. You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied. See the License for the
# specific language governing permissions and limitations
# under the License.
# 

FROM azul/zulu-openjdk-alpine:21.0.8 AS mifos

RUN mkdir /opt/app

COPY target/vnext.connector-0.0.1-SNAPSHOT.jar /opt/app

CMD ["java", "-jar", "-Djava.security.egd=file:/dev/./urandom", "/opt/app/vnext.connector-0.0.1-SNAPSHOT.jar"]
