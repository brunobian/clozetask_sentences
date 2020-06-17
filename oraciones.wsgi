import os
import sys
import site

PROJECT_PREFIX = '/var/www/oraciones'

ALLDIRS = ['/usr/local/lib/python2.7/site-packages']

# Remember original sys.path.
prev_sys_path = list(sys.path)

# Add each new site-packages directory.
for directory in ALLDIRS:
  site.addsitedir(directory)

# Reorder sys.path so new directories at the front.
new_sys_path = []
for item in list(sys.path):
    if item not in prev_sys_path:
        new_sys_path.append(item)
        sys.path.remove(item)
sys.path[:0] = new_sys_path


site.addsitedir('/usr/local/lib/python2.7/site-packages')


sys.path.append(PROJECT_PREFIX + '/')

os.environ['DJANGO_SETTINGS_MODULE']  = 'settings'


from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()

