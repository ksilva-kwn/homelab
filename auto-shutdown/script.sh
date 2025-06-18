#!/bin/bash

# PATH para funcionar no cron
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

LOG="/tmp/vm_scheduler.log"
NOW=$(date +"%H:%M")
echo "$(date '+%Y-%m-%d %H:%M:%S') - Hora atual: $NOW" >> $LOG

# -------------------------------------------
# Configuração
START_TIME="05:30"
STOP_TIME="00:30"

# IDs das VMs para iniciar/parar juntos
START_IDS=(101 104 106 600 700)
STOP_IDS=(100 102 103 104 105 106 301 401 402 600 700)

# Iniciar VMs
if [ "$NOW" == "$START_TIME" ]; then
  for VMID in "${START_IDS[@]}"; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Iniciando VM $VMID" >> $LOG
    /usr/sbin/qm start $VMID >> $LOG 2>&1
  done
fi

# Parar VMs
if [ "$NOW" == "$STOP_TIME" ]; then
  for VMID in "${STOP_IDS[@]}"; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Parando VM $VMID" >> $LOG
    /usr/sbin/qm shutdown $VMID >> $LOG 2>&1
  done
fi