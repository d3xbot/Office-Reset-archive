# Office-Reset-archive
Scripts from [Paul Bowden's](https://github.com/pbowden-msft) Office-Reset v1.9 release. This utility was released unter the MIT license and remains useful to Office users on macOS.

Original PKG script runner and extracted scripts are available within this repo

## About:
Retrieved from https://web.archive.org/web/20250329175637/https://office-reset.com/

Office-Reset is a free downloadable tool that you can use to fix problems and errors encountered with Microsoft Office for Mac apps. This includes Word, Excel, PowerPoint, Outlook, OneNote, OneDrive, Teams and AutoUpdate. The tool can help fix app launch errors, freezes, hangs, crashes, bad plug-ins, corrupt templates, performance issues, and confusing error messages.

You can tell Office-Reset to fix a specific app, or you tell it to perform a 'factory reset' - essentially putting Office back to the same pristine state as when you first installed it. There's also an option to completely start over, where the tool can remove every app, cache, container, preference and keychain entry that Office may have created while it was running.

Office-Reset does not delete your documents and workbooks. The tool doesn't have ads, an upsell, collect your data, or install software that you don't want. It simply runs, fixes, and quits.

## Frequently Asked Questions
Retrieved from https://web.archive.org/web/20250401021230/https://office-reset.com/faq/


### If I'm having issues, can't I just simply download and reinstall Office?
The app that you see in your /Applications folder is just the program. There are many other periphery files created when you launch, activate and sign-in to Office. These files live in some pretty obscure and hard to find places. There is a knowledge base [article](https://support.microsoft.com/en-us/office/troubleshoot-office-for-mac-issues-by-completely-uninstalling-before-you-reinstall-ec3aa66e-6a76-451f-9d35-cba2e14e94c0) on how to remove Office manually but it's fairly involved and labor-intensive. Office-Reset automates this process for you and provides more options than just brute-force removal.

### The tool appears to have many options. How do I know which checkboxes to select?
You should only select the checkboxes for the apps that you're having problems with. For example, if you're seeing an error every time you try to launch Excel, but the other Office apps seem to work just fine, you will want to choose only the 'Reset Excel' option. Alternatively, if you're seeing a sign-in or license error in multiple apps (Word, Excel, PowerPoint, Outlook), you should instead choose the 'Reset License and Sign-In' option.

### How long does the tool take to run?
The time can vary between a minute and an hour, depending upon the state of your Mac and the options that you choose. In the worst case scenario, if you choose to reset all apps and the tool finds that all of your apps have missed the last six updates (what it refers to as 'ancient') it will download and install the latest version of every Office app (approximately 3.5GB) - which will take some time to complete for the average home user.

### I'm not experiencing any problems with Office. Should I run the tool anyway?
No. Typically, you only want to run the tool if you're trying to solve a problem. The tool will check for common issues, and if it doesn't find anything obvious, it will go ahead and reset your preferences in an attempt to fix a deeper issue.

### Can the tool repair damaged Word documents and Excel workbooks?
No. The tool doesn't directly repair files that you've created such as .docx and xlsx files. However, if you see an error with all the documents you try to open, there's probably a deeper issue with the core app or template. Office-Reset can fix those problems.

### Does the tool replace apps that I've deleted manually?
No. The tool is designed to only repair apps that are currently present. If you have deleted an app from your /Applications folder and want to get it back, use [this link](https://go.microsoft.com/fwlink?linkid=525133) to download a fresh copy of Office for Mac directly from Microsoft. Office-Reset can clean up left-behind residue. For example, if you choose to 'Reset Word', but you've since deleted Microsoft Word.app, the tool will clean up any of Word's configuration data that may still be present on your Mac.

### I ran the tool and it didn't solve my problem. Should I run it again?
Yes. The tool detects and corrects a set of known issues, such as a damaged or ancient version of an app. If it finds one of these issues, it will surgically fix it and call success as this is most likely causing your problem. However, if there is more than one issue going on, you will want to run the tool a second time with the same options to perform a deeper reset.

### I'm having an issue with Outlook. Should I also select 'Remove Outlook Data' in addition to 'Reset Outlook'?
In the first instance, you should just select 'Reset Outlook' to see if that solves the problem. Most Outlook problems can be solved without needing to remove mailbox data.

### What happens if I choose 'Remove Outlook Data'?
Synchronized and local messages/folders are deleted from your Mac. If you're using an email service such as Office 365 or Exchange, your mailbox content will resynchronize from the server the next time you start Outlook. If you have messages stored in 'On my computer' folders, those will be permanently lost.

### Is this tool safe to use on my Mac?
Yes. Extreme care has been taken during the development and testing of this tool to ensure that your Mac is left in a good state when the tool has finished its work. Unless you selected the 'Completely Remove Microsoft Office' option, all of your Office apps should be ready to launch so you can be productive again.

### Can I run this tool on my Windows machine?
No. The Office-Reset tool is exclusively designed for Office running on Mac devices.

### Does the tool collect my personal data and send it back to a server (aka 'phone home')?
No. The tool has no interest in your data or anything about you or your Mac. Absolutely no data, neither documents nor telemetry is uploaded or sent from your machine.
However, you may notice network download activity when the tool runs. If the tool notices that your copy of Office hasn't been updated for more than six consecutive months, it will determine that you're having a problem obtaining updates. In this case, it will reach out to the official Microsoft Content Delivery Network (CDN) and download and install the latest version of the app(s).

### I don't want the tool to download Office updates. What are my options?
Using apps that have missed six consecutive updates are the probable cause of multiple issues that you can encounter, so this is the obvious first step to get you up and running again. However, choosing the 'Completely Remove Microsoft Office' option does not download any app updates.

### I chose to completely remove Office. How do I reinstall it?
You can download the latest version of Office 365/2021/2019 for Mac directly from Microsoft using [this link](https://go.microsoft.com/fwlink/?linkid=525133).
If you only have a license to run the older Office 2016 for Mac product, use this [link instead](https://go.microsoft.com/fwlink/?linkid=871743).

### Why does the tool say 'Install Office-Reset'? Is it installing a new app?
The tool is actually a series of scripts that are packaged into a standard Apple installer package (PKG). While the native Apple user interface uses the term 'install', it's just running the scripts within the package. There is no separate app being installed or left behind on your Mac.
