for i in {0..9}; do
    test -S $XDG_RUNTIME_DIR/discord-ipc-$i || ln -sf {app/com.discordapp.Discord,$XDG_RUNTIME_DIR}/discord-ipc-$i;
done

WAYLAND_SOCKET=${WAYLAND_DISPLAY:-"wayland-0"}
if [[ -e "$XDG_RUNTIME_DIR/${WAYLAND_SOCKET}" ]]
then
FLAGS="--enable-features=WaylandWindowDecorations --ozone-platform-hint=auto"
fi

echo "Notice:"
echo "No support will be offered by the developers when using Cider2 as a Flatpak."
echo "Report issues here instead: https://github.com/Blooym/sh.cider.Cider2"

zypak-wrapper.sh /app/bin/cider $FLAGS"$@"