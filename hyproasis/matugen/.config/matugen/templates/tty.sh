#!/bin/sh
[ "${TERM:-none}" = "linux" ] && \
    printf '%b' '\e]P0{{colors.surface.default.hex_stripped}}
                 \e]P1{{colors.red.default.hex_stripped}}
                 \e]P2{{colors.green.default.hex_stripped}}
                 \e]P3{{colors.yellow.default.hex_stripped}}
                 \e]P4{{colors.blue.default.hex_stripped}}
                 \e]P5{{colors.magenta.default.hex_stripped}}
                 \e]P6{{colors.cyan.default.hex_stripped}}
                 \e]P7{{colors.on_surface.default.hex_stripped}}
                 \e]P8{{colors.surface_dim.default.hex_stripped}}
                 \e]P9{{ colors.red.default.hex_stripped | set_lightness: -10.0 }}
                 \e]PA{{ colors.green.default.hex_stripped | set_lightness: -10.0 }}
                 \e]PB{{ colors.yellow.default.hex_stripped | set_lightness: -10.0 }}
                 \e]PC{{ colors.blue.default.hex_stripped | set_lightness: -10.0 }}
                 \e]PD{{ colors.magenta.default.hex_stripped | set_lightness: -10.0 }}
                 \e]PE{{ colors.cyan.default.hex_stripped | set_lightness: -10.0 }}
                 \e]PF{{colors.on_surface.default.hex_stripped}}
                 \ec'
