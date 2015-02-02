if [[ ${RUN_FAUXPAS} != 1 ]]; then
  exit 0
fi

FAUXPAS_PATH="/usr/local/bin/fauxpas"

if [[ -f "${FAUXPAS_PATH}" ]]; then
  "${FAUXPAS_PATH}" check-xcode
else
  echo "warning: Faux Pas was not found at '${FAUXPAS_PATH}'"
fi