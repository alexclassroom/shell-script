#!/bin/bash
# Program:
# This script can do the following actions.
# 1. Install and activate WordPress Importer.
# 2. Download Automattic official WordPress Theme Test Unit XML file.
# 3. Import WordPress Theme Test Unit.
# 4. Delete WordPress Theme Test Unit XML file.
# 5. Deactivate WordPress Importer and remove this plugin.
# History:
# 2020/03/03	Alex Lion	First release
wp plugin install wordpress-importer --activate --allow-root && wget https://raw.githubusercontent.com/WPTT/theme-unit-test/master/themeunittestdata.wordpress.xml && wp import themeunittestdata.wordpress.xml --authors=create --allow-root && rm themeunittestdata.wordpress.xml && wp plugin deactivate wordpress-importer --uninstall --allow-root
