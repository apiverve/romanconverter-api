from setuptools import setup, find_packages

setup(
    name='apiverve_romannumeralconverter',
    version='1.1.13',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Roman Numeral Converter is a bidirectional tool for converting between Arabic numbers (1-3999) and Roman numerals. It provides detailed breakdowns of the conversion process.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/romanconverter?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
