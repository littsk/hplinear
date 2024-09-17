from setuptools.build_meta import build_editable as __build_editable
from setuptools.build_meta import build_wheel as __build_wheel


def build_wheel(wheel_directory, config_settings=None, metadata_directory=None):
    return __build_wheel(wheel_directory, config_settings, metadata_directory)


def build_editable(wheel_directory, config_settings=None, metadata_directory=None):
    return __build_editable(wheel_directory, config_settings, metadata_directory)


__all__ = ["build_wheel", "build_editable"]
