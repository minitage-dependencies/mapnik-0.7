import os
def p(options,buildout):
    """Where python looks to get its cflags."""
    fp64 = os.path.join(options['location'], 'lib64')
    fp = os.path.join(options['location'], 'lib') 
    if os.path.exists(fp64) and not os.path.exists(fp):
        os.symlink(fp64, fp) 
