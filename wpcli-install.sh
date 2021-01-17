#!/bin/bash
# Program:
# This script can install the latest WP-CLI for your environment.
# History:
# 2020/03/03	Alex Lion	First release
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && sudo mv wp-cli.phar /usr/local/bin/wp
