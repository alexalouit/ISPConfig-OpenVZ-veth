
# Template version
VERSION="2"

# Parameters
ONBOOT="{tmpl_var name='onboot'}"
KMEMSIZE="{tmpl_var name='kmemsize'}"
LOCKEDPAGES="{tmpl_var name='lockedpages'}"
PRIVVMPAGES="{tmpl_var name='privvmpages'}"
SHMPAGES="{tmpl_var name='shmpages'}"
NUMPROC="{tmpl_var name='numproc'}"
PHYSPAGES="{tmpl_var name='physpages'}"
VMGUARPAGES="{tmpl_var name='vmguarpages'}"
OOMGUARPAGES="{tmpl_var name='oomguarpages'}"
NUMTCPSOCK="{tmpl_var name='numtcpsock'}"
NUMFLOCK="{tmpl_var name='numflock'}"
NUMPTY="{tmpl_var name='numpty'}"
NUMSIGINFO="{tmpl_var name='numsiginfo'}"
TCPSNDBUF="{tmpl_var name='tcpsndbuf'}"
TCPRCVBUF="{tmpl_var name='tcprcvbuf'}"
OTHERSOCKBUF="{tmpl_var name='othersockbuf'}"
DGRAMRCVBUF="{tmpl_var name='dgramrcvbuf'}"
NUMOTHERSOCK="{tmpl_var name='numothersock'}"
DCACHESIZE="{tmpl_var name='dcachesize'}"
NUMFILE="{tmpl_var name='numfile'}"
AVNUMPROC="{tmpl_var name='avnumproc'}"
NUMIPTENT="{tmpl_var name='numiptent'}"

DISKSPACE="{tmpl_var name='diskspace'}"
DISKINODES="{tmpl_var name='diskinodes'}"
QUOTAUGIDLIMIT="10000"
IOPRIO="{tmpl_var name='io_priority'}"
QUOTATIME="0"

CPUS="{tmpl_var name='cpu_num'}"
CPUUNITS="{tmpl_var name='cpu_units'}"
CPULIMIT="{tmpl_var name='cpu_limit'}"

VE_ROOT="/vz/root/$VEID"
VE_PRIVATE="/vz/private/$VEID"
OSTEMPLATE="{tmpl_var name='ostemplate'}"
ORIGIN_SAMPLE="vps.basic"
HOSTNAME="{tmpl_var name='hostname'}"
#IP_ADDRESS="{tmpl_var name='ip_address'}"
NETIF="ifname=eth0,bridge=vmbr0,mac={tmpl_var name='netif'}"
NAMESERVER="{tmpl_var name='nameserver'}"
# alternative meminfo: "pages:256000"
MEMINFO="privvmpages:1"
# SWAPPAGES="{tmpl_var name='swappages'}"

CAPABILITY="{tmpl_var name='capability'}"
