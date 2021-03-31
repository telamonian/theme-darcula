__all__ = ['__version__']


def _fetchVersion():
    import json
    import os

    here = os.path.abspath(os.path.dirname(__file__))

    for d, _, _ in os.walk(here):
        try:
            with open(os.path.join(d, 'package.json')) as f:
                return json.load(f)['version']
        except FileNotFoundError:
            pass

    raise FileNotFoundError('Could not find package.json under dir {}'.format(here))

__version__ = _fetchVersion()
