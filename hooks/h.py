import os
def h(options, buildout):
    """Custom pre-make hook for building libjpeg."""
    os.environ['PYTHON_PREFIX'] = os.path.abspath(options['location'] + '/../site-packages-%s' % buildout['python']['version'])

