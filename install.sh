#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
   	rm -f /usr/bin/sparky-aptus-upgrade
	rm -f /usr/lib/sparky-center/software/sparky-aptus-upgrade.desktop
	rm -f /usr/share/applications/sparky-aptus-upgrade.desktop
	rm -f /usr/share/menu/sparky-aptus-upgrade
	rm -rf /usr/share/icons/sparky/upgrade
	rm -rf /usr/share/sparky/sparky-aptus-upgrade
else
	cp bin/sparky-aptus-upgrade /usr/bin/
	if [ ! -d /usr/lib/sparky-center/software ]; then
		mkdir -p /usr/lib/sparky-center/software
	fi
	cp share/sparky-aptus-upgrade.desktop /usr/lib/sparky-center/software/
	cp share/sparky-aptus-upgrade.desktop /usr/share/applications/
	cp share/sparky-aptus-upgrade /usr/share/menu/
	if [ ! -d /usr/share/icons/sparky/upgrade ]; then
		mkdir -p /usr/share/icons/sparky/upgrade
	fi
	cp share/aptus-upgrade.* /usr/share/icons/sparky/upgrade/
	if [ ! -d /usr/share/sparky/sparky-aptus-upgrade ]; then
		mkdir -p /usr/share/sparky/sparky-aptus-upgrade
	fi
	cp lang/* /usr/share/sparky/sparky-aptus-upgrade/
fi
