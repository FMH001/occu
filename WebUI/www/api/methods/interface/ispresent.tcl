##
# Interface.isPresent
# Pr�ft, ob der gew�hlte Interface-Dienst l�uft.
#
# Prameter:
#   interface: [string] Bezeichnung der Schnittstelle
#
# R�ckgabewert: [bool]
#   true, falls rfd l�uft, sonst false.
##

if { ![catch { xmlrpc $interface(URL) system.listMethods } ] } then {
  jsonrpc_response true
} else {
  jsonrpc_response false
}
