#!/bin/bash

# shellcheck disable=SC2034
# "'pkg_cmd_name' appears unused. Verify it or export it."

function __init_otsgo() {
    set -e
    set -u

    ##################
    # Install otsgo #
    ##################

    # Every package should define these 6 variables
    pkg_cmd_name="otsgo"

    pkg_dst_cmd="$HOME/.local/bin/ots"
    pkg_dst="$pkg_dst_cmd"

    pkg_src_cmd="$HOME/.local/opt/ots-v$WEBI_VERSION/bin/ots"
    pkg_src_dir="$HOME/.local/opt/ots-v$WEBI_VERSION"
    pkg_src="$pkg_src_cmd"

    # pkg_install must be defined by every package
    pkg_install() {
        # ~/.local/opt/ots-v0.99.9/bin
        mkdir -p "$(dirname "${pkg_src_cmd}")"

        # mv ./ots-*/ots ~/.local/opt/ots-v0.99.9/bin/ots
        mv ots "${pkg_src_cmd}"
    }

    # pkg_get_current_version is recommended, but not required
    pkg_get_current_version() {
        # 'ots --version' has output in this format:
        #       ots 0.99.9 (rev abcdef0123)
        # This trims it down to just the version number:
        #       0.99.9
        ots --version 2> /dev/null |
            head -n 1 |
            cut -d ' ' -f 2
    }

}

__init_otsgo
