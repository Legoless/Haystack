[[ ${FAUXPAS_SKIP} == 1 ]] && exit 0
 
 FAUXPAS_PATH="/usr/bin/local/fauxpas"
 
 if [[ -f "${FAUXPAS_PATH}" ]]; then
   "${FAUXPAS_PATH}" check-xcode
 else
   echo "warning: Faux Pas was not found at '${FAUXPAS_PATH}'"
 fi
