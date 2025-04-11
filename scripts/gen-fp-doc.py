#!/usr/bin/env python3

import os
from os import path

import tabulate
from kiutils.footprint import Footprint

fp_headers = ["Footprint", "Description", "Preview"]


def gen_fplib_table(fp_path: str, lib: str) -> str | None:
    fp_table = []
    for fp_file in sorted(os.listdir(os.path.join(fp_path, lib))):
        if not fp_file.endswith(".kicad_mod"):
            continue
        fp = Footprint().from_file(os.path.join(fp_path, lib, fp_file))
        fp_table.append(
            [
                "`%s`" % fp.entryName,
                fp.description,
                '<img src="../output/footprints/%s/%s.svg" width="160" height="160" />'
                % (lib, fp.entryName),
            ]
        )
    if len(fp_table) == 0:
        return None
    return tabulate.tabulate(fp_table, fp_headers, tablefmt="github")


def gen_fp_doc(fp_path: str, title: str = "LKBD Footprints") -> None:
    print(
        "<!-- This file is generated using `%s`, do not edit manually. -->"
        % path.relpath(__file__, ".")
    )
    print("<!-- markdownlint-disable MD045 MD033 -->")
    print("# %s" % title)
    for lib in sorted(os.listdir(fp_path)):
        if not os.path.isdir(os.path.join(fp_path, lib)) or not lib.endswith(".pretty"):
            continue
        table = gen_fplib_table(fp_path, lib)
        if table is not None:
            print()
            print("## `%s`" % lib)
            print()
            print(table)


if __name__ == "__main__":
    gen_fp_doc(
        path.realpath(path.join(path.dirname(path.realpath(__file__)), "../footprints"))
    )
