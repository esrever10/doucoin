from distutils.core import setup
setup(name='ducspendfrom',
      version='1.0',
      description='Command-line utility for doucoin "coin control"',
      author='Gavin Andresen',
      author_email='gavin@doucoinfoundation.org',
      requires=['jsonrpc'],
      scripts=['spendfrom.py'],
      )
