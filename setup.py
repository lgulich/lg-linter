
import setuptools

with open("README.md", "r") as fh:
    LONG_DESCRIPTION = fh.read()

setuptools.setup(
    name="lg-linter",
    version="0.1.0",
    author="Lionel Gulich",
    author_email="lgulich@ethz.ch",
    url="https://github.com/lgulich/lg-linter",
    description="A pre commit linter for cpp, python and sh",
    long_description=LONG_DESCRIPTION,
    long_description_content_type="text/markdown",
    download_url="",
    classifiers=[
        "Programming Language :: Python :: 3 :: Only",
        "License :: OSI Approved :: GNU General Public License v3 (GPLv3)",
        "Operating System :: POSIX :: Linux",
        "Natural Language :: English",
    ],
    license="GPL-3.0",
    package_dir={'': 'lib'},
    packages=setuptools.find_packages('lib'),
    include_package_data=True,
    scripts=[
        'lib/lg_linter/scripts/init-lg-linter',
        'lib/lg_linter/scripts/deinit-lg-linter'
    ],
    python_requires=">=3.6",
)