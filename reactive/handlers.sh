#!/bin/bash
set -ex

source charms.reactive.sh


@when_not '${metadata.package}.installed'
function install_${metadata.package}() {
    # Do your setup here.
    #
    # If your charm has other dependencies before it can install,
    # add those as @when clauses above, or as additional @when
    # decorated handlers below.
    #
    # See the following for information about reactive charms:
    #
    #  * https://jujucharms.com/docs/devel/developer-getting-started
    #  * https://github.com/juju-solutions/layer-basic#overview
    #
    charms.reactive set_state '${metadata.package}.installed'
}


reactive_handler_main
