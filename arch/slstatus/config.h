/* See LICENSE file for copyright and license details. */

/* interval between updates (in ms) */
const unsigned int interval = 1000;

/* text to show if no value can be retrieved */
static const char unknown_str[] = "n/a";

/* maximum output string length */
#define MAXLEN 2048

/*
 * function            description                     argument (example)
 *
 * battery_perc        battery percentage              battery name (BAT0)
 *                                                     NULL on OpenBSD/FreeBSD
 * battery_state       battery charging state          battery name (BAT0)
 *                                                     NULL on OpenBSD/FreeBSD
 * battery_remaining   battery remaining HH:MM         battery name (BAT0)
 *                                                     NULL on OpenBSD/FreeBSD
 * cpu_perc            cpu usage in percent            NULL
 * cpu_freq            cpu frequency in MHz            NULL
 * datetime            date and time                   format string (%F %T)
 * disk_free           free disk space in GB           mountpoint path (/)
 * disk_perc           disk usage in percent           mountpoint path (/)
 * disk_total          total disk space in GB          mountpoint path (/")
 * disk_used           used disk space in GB           mountpoint path (/)
 * entropy             available entropy               NULL
 * gid                 GID of current user             NULL
 * hostname            hostname                        NULL
 * ipv4                IPv4 address                    interface name (eth0)
 * ipv6                IPv6 address                    interface name (eth0)
 * kernel_release      `uname -r`                      NULL
 * keyboard_indicators caps/num lock indicators        format string (c?n?)
 *                                                     see keyboard_indicators.c
 * keymap              layout (variant) of current     NULL
 *                     keymap
 * load_avg            load average                    NULL
 * netspeed_rx         receive network speed           interface name (wlan0)
 * netspeed_tx         transfer network speed          interface name (wlan0)
 * num_files           number of files in a directory  path
 *                                                     (/home/foo/Inbox/cur)
 * ram_free            free memory in GB               NULL
 * ram_perc            memory usage in percent         NULL
 * ram_total           total memory size in GB         NULL
 * ram_used            used memory in GB               NULL
 * run_command         custom shell command            command (echo foo)
 * separator           string to echo                  NULL
 * swap_free           free swap in GB                 NULL
 * swap_perc           swap usage in percent           NULL
 * swap_total          total swap size in GB           NULL
 * swap_used           used swap in GB                 NULL
 * temp                temperature in degree celsius   sensor file
 *                                                     (/sys/class/thermal/...)
 *                                                     NULL on OpenBSD
 *                                                     thermal zone on FreeBSD
 *                                                     (tz0, tz1, etc.)
 * uid                 UID of current user             NULL
 * uptime              system uptime                   NULL
 * username            username of current user        NULL
 * vol_perc            OSS/ALSA volume in percent      mixer file (/dev/mixer)
 *                                                     NULL on OpenBSD
 * wifi_perc           WiFi signal in percent          interface name (wlan0)
 * wifi_essid          WiFi ESSID                      interface name (wlan0)
	{ run_command, "%s / ",         " light -G | awk '{if( $1 == 100)  {print 100} else {print 1+int($1)}}'" },
 */
static const struct arg args[] = {
	/* function format          argument */
	{ netspeed_rx, "^c#6a040f^D %s - ",        "wlan0" },
	{ netspeed_tx, "%s ",        "wlan0" },
	{ run_command, "^c#9d0208^G %s%% ",        "nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits" },
	{ run_command, "%s ",        "nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits | awk '{print $1\"°C\"}'" },
	{ cpu_perc, "^c#d00000^C %s%% ",           NULL },
	{ run_command, "%s ",       "sensors | awk -F '.' '/Package id 0/ {print $1}' | awk -F '+' '{print $2}'| awk '{print $1\"°C\"}'" },
	{ ram_perc, " ^c#dc2f02^ R  %s%% ",           NULL },
	{ run_command, "^c#e85d04^ A  %s ",         "amixer sget Master | awk -F '[][]' '{ print $2 }' | sed '/^s*$/d'" },
	{ disk_free, "^c#f48c06^DK %s ",           "/home" },
	{ battery_perc, "^c#faa307^P %s ",           "BAT0" },
	{ datetime, "^c#ffba08^D %s ",           "%m/%d %R" },
};
