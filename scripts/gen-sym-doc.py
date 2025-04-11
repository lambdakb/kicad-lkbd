#!/usr/bin/env python3

import os
from os import path

import tabulate
from kiutils.symbol import Symbol, SymbolLib

sym_headers = ["Symbol", "Description", "Links", "Preview"]


def gen_sym_links(sym: Symbol) -> str:
    prop = sym.properties
    links = []
    for prop in sym.properties:
        if prop.value == "":
            continue
        if prop.key == "Pinout":
            links.append("[Pinout](%s)" % prop.value)
        if prop.key == "Documentation":
            links.append("[Documentation](%s)" % prop.value)
        if prop.key == "Datasheet":
            links.append("[Datasheet](%s)" % prop.value)
        if prop.key == "Link":
            links.append("[Link](%s)" % prop.value)
    return ", ".join(links)


def gen_symlib_table(lib_name: str, sym_lib: SymbolLib) -> str | None:
    sym_table = []
    for sym in sym_lib.symbols:
        sym_table.append(
            [
                "`%s`" % sym.entryName,
                next((p.value for p in sym.properties if p.key == "Description"), ""),
                gen_sym_links(sym),
                '<img src="../output/symbols/%s/%s_unit1.svg" width="160" height="160" />'
                % (lib_name, sym.entryName),
            ]
        )
    if len(sym_table) == 0:
        return None
    return tabulate.tabulate(sym_table, sym_headers, tablefmt="github")


def gen_sym_doc(sym_path: str, title: str = "LKBD Symbols") -> None:
    print("# %s" % title)
    print()
    for lib in sorted(os.listdir(sym_path)):
        if not os.path.isfile(os.path.join(sym_path, lib)) or not lib.endswith(
            ".kicad_sym"
        ):
            continue
        sym_lib = SymbolLib().from_file(os.path.join(sym_path, lib))
        table = gen_symlib_table(lib, sym_lib)
        if table is not None:
            print("## `%s`" % lib)
            print()
            print(table)
            print()


if __name__ == "__main__":
    gen_sym_doc(
        path.realpath(path.join(path.dirname(path.realpath(__file__)), "../symbols"))
    )
