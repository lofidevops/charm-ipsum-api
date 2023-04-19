# SPDX-License-Identifier: AGPL-3.0-or-later
# SPDX-FileCopyrightText: Copyright 2023 Canonical Ltd

import sys
import uvicorn


class App:
    pass


app = App()


def invoke():
    sys.exit(uvicorn.run("ipsumapi.main:app"))


if __name__ == "__main__":
    invoke()
