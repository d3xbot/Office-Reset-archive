#!/bin/zsh

echo "Office-Reset: Starting postinstall for Remove_Office"
autoload is-at-least
SCRIPT_FOLDER=$(/usr/bin/dirname "$0")

GetLoggedInUser() {
	LOGGEDIN=$(/bin/echo "show State:/Users/ConsoleUser" | /usr/sbin/scutil | /usr/bin/awk '/Name :/&&!/loginwindow/{print $3}')
	if [ "$LOGGEDIN" = "" ]; then
		echo "$USER"
	else
		echo "$LOGGEDIN"
	fi
}

SetHomeFolder() {
	HOME=$(dscl . read /Users/"$1" NFSHomeDirectory | cut -d ':' -f2 | cut -d ' ' -f2)
	if [ "$HOME" = "" ]; then
		if [ -d "/Users/$1" ]; then
			HOME="/Users/$1"
		else
			HOME=$(eval echo "~$1")
		fi
	fi
}

## Main
LoggedInUser=$(GetLoggedInUser)
SetHomeFolder "$LoggedInUser"
echo "Office-Reset: Running as: $LoggedInUser; Home Folder: $HOME"

echo "Office-Reset: Removing package receipts"
/usr/sbin/pkgutil --forget com.microsoft.Word
/usr/sbin/pkgutil --forget com.microsoft.Excel
/usr/sbin/pkgutil --forget com.microsoft.Powerpoint
/usr/sbin/pkgutil --forget com.microsoft.Outlook
/usr/sbin/pkgutil --forget com.microsoft.onenote.mac
/usr/sbin/pkgutil --forget com.microsoft.OneDrive-mac

/usr/sbin/pkgutil --forget com.microsoft.package.Microsoft_Word.app
/usr/sbin/pkgutil --forget com.microsoft.package.Microsoft_Excel.app
/usr/sbin/pkgutil --forget com.microsoft.package.Microsoft_PowerPoint.app
/usr/sbin/pkgutil --forget com.microsoft.package.Microsoft_Outlook.app
/usr/sbin/pkgutil --forget com.microsoft.package.Microsoft_OneNote.app
/usr/sbin/pkgutil --forget com.microsoft.package.Microsoft_AutoUpdate.app
/usr/sbin/pkgutil --forget com.microsoft.package.Microsoft_AU_Bootstrapper.app

/usr/sbin/pkgutil --forget com.microsoft.package.Proofing_Tools
/usr/sbin/pkgutil --forget com.microsoft.package.Fonts
/usr/sbin/pkgutil --forget com.microsoft.package.DFonts
/usr/sbin/pkgutil --forget com.microsoft.package.Frameworks

/usr/sbin/pkgutil --forget com.microsoft.pkg.licensing
/usr/sbin/pkgutil --forget com.microsoft.pkg.licensing.volume

/usr/sbin/pkgutil --forget com.microsoft.teams

/usr/sbin/pkgutil --forget com.microsoft.OneDrive

/bin/rm -f "/Library/Preferences/com.microsoft.office.licensingV2.backup"
/bin/rm -f "/Library/Preferences/com.microsoft.autoupdate2.plist"

/bin/rm -f "$HOME/Library/Cookies/com.microsoft.OneDrive.binarycookies"
/bin/rm -f "$HOME/Library/Cookies/com.microsoft.OneDriveUpdater.binarycookies"
/bin/rm -f "$HOME/Library/Cookies/com.microsoft.OneDriveStandaloneUpdater.binarycookies"
/bin/rm -f "$HOME/Library/Cookies/com.microsoft.teams.binarycookies"

/bin/rm -rf "/Users/Shared/OnDemandInstaller"

exit 0