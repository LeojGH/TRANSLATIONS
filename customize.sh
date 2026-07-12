
#!/system/bin/sh

LOG="/data/adb/Box-Brain/language.log"

log() {
    echo "$1"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG"
}

log " "
log "𝙉𝙊𝙏𝙀:"
log " "
log "𝗧𝗛𝗘 𝗜𝗡𝗦𝗧𝗔𝗟𝗟𝗔𝗧𝗜𝗢𝗡 𝗪𝗜𝗟𝗟 𝗙𝗔𝗜𝗟"
log "   𝗔𝗡𝗗 𝗜𝗧'𝗦 𝗧𝗢𝗧𝗔𝗟𝗟𝗬 𝗙𝗜𝗡𝗘"
log " "
log "𝗕𝗘𝗖𝗔𝗨𝗦𝗘 𝗧𝗛𝗜𝗦 𝗭𝗜𝗣 𝗜𝗦 𝗠𝗘𝗡𝗧 𝗧𝗢 𝗨𝗣𝗗𝗔𝗧𝗘 𝗙𝗜𝗟𝗘𝗦,"
log "     𝗡𝗢𝗧 𝗧𝗢 𝗕𝗘 𝗜𝗡𝗦𝗧𝗔𝗟𝗟𝗘𝗗 𝗔𝗦 𝗔 𝗠𝗢𝗗𝗨𝗟𝗘"
log " "
log " "
log " "
log "========================================"
log "Language Sync Started"
log "========================================"

mkdir -p /data/adb/Box-Brain
mkdir -p /data/adb/modules/playintegrityfix/webroot/TRANSLATIONS

SRC_HTML="/data/adb/modules_update/auto_generated/WebUI/index.html"
DEST_HTML="/data/adb/modules/playintegrityfix/webroot/index.html"

if [ -f "$SRC_HTML" ]; then
    cp "$SRC_HTML" "$DEST_HTML"
    log "UPDATED: index.html"
else
    log "SKIP: Source not found: $SRC_HTML"
fi

SRC_LANG="/data/adb/modules_update/auto_generated/languages"
DEST_LANG="/data/adb/modules/playintegrityfix/webroot/TRANSLATIONS"

if [ -d "$SRC_LANG" ]; then
    cp -r "$SRC_LANG"/* "$DEST_LANG"/ 2>/dev/null
    log "UPDATED: translation files"
else
    log "SKIP: Source folder not found: $SRC_LANG"
fi

SRC_CREDITS="/data/adb/modules_update/auto_generated/credits/contributors.json"
DEST_CREDITS="/data/adb/modules/playintegrityfix/webroot/TRANSLATIONS/contributors.json"

if [ -f "$SRC_CREDITS" ]; then
    cp "$SRC_CREDITS" "$DEST_CREDITS"
    log "UPDATED: contributors.json"
else
    log "SKIP: Source not found: $SRC_CREDITS"
fi

SRC_ADDON="/data/adb/modules_update/auto_generated/addon/meow.js"
DEST_ADDON="/data/adb/modules/playintegrityfix/webroot/TRANSLATIONS/meow.js"

if [ -f "$SRC_ADDON" ]; then
    cp "$SRC_ADDON" "$DEST_ADDON"
    log "UPDATED: meow.js"
else
    log "SKIP: Source not found: $SRC_ADDON"
fi

log "========================================"
log "Language Sync Completed"
log "========================================"
log " "

OLD_MODULE="/data/adb/modules/auto_generated"
OLD_UPDATE="/data/adb/modules_update/auto_generated"

if [ -e "$OLD_MODULE" ]; then
    rm -rf "$OLD_MODULE"
    log "DELETED: auto generated directory"
else
    log "SKIP: auto generated directory"
fi

if [ -e "$OLD_UPDATE" ]; then
    rm -rf "$OLD_UPDATE"
    log "DELETED: module path"
else
    log "SKIP: Not found for deletion: $OLD_UPDATE"
fi

log " "
log "𝗤𝘂𝗶𝘁𝘁𝗶𝗻𝗴, 𝗡𝗼 𝗻𝗲𝗲𝗱 𝘁𝗼 𝗿𝗲𝗯𝗼𝗼𝘁"
log "𝗦𝗶𝗺𝗽𝗹𝘆 𝗴𝗼 𝗯𝗮𝗰𝗸 & 𝗰𝗵𝗲𝗰𝗸 𝘁𝗵𝗲 𝘂𝗽𝗱𝗮𝘁𝗲𝗱 𝗪𝗲𝗯𝗨𝗜"
log " "
exit 1


