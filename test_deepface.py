#!/usr/bin/env python
try:
    from deepface import DeepFace
    print('DeepFace imported successfully')
    print('DeepFace version:', getattr(DeepFace, '__version__', 'unknown'))
except ImportError as e:
    print('Import error:', e)