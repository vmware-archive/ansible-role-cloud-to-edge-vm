# Copyright © 2018 VMware, Inc. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
FROM williamyeh/ansible:ubuntu16.04

VOLUME /code
ADD . /code
WORKDIR /code

#RUN apt-get update -qq && apt-get install -y python-pip git
#RUN pip install -r requirements.txt
#RUN ansible-galaxy install -r requirements.yml

# These arguments assume the local inventory and extra_vars is already created.
CMD ["tests/test.yml", "-i", "tests/inventory"]
ENTRYPOINT ["ansible-playbook"]
