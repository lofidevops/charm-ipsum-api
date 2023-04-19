# SPDX-License-Identifier: AGPL-3.0-or-later
# SPDX-FileCopyrightText: Copyright 2023 Canonical Ltd

from ipsumapi import cli


def test_invoke():
    result = cli.invoke()
    assert result is None
