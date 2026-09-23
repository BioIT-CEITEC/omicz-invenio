# SPDX-FileCopyrightText: 2016-2018 CERN.
# SPDX-License-Identifier: MIT

"""Create omicz_invenio branch."""

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '1790158783'
down_revision = None
branch_labels = ('omicz_invenio',)
depends_on = None


def upgrade():
    """Upgrade database."""
    pass


def downgrade():
    """Downgrade database."""
    pass
