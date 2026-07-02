"""Model for omics.

This package contains the model definition for omics.
To change model's metadata, edit the metadata.yaml file.
To change presets, add serialization/deserialization formats
and similar operations please see the model.py file.
"""

from __future__ import annotations

from .model import omics_model

__all__ = ( "omics_model", )