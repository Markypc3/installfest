# WDI InstallFest Script

This repo holds the scripts used in the installation, setup, and creation of 
"dotfiles" (ie, application settings) for the development environments of 
students in General Assembly's Web Development Immersive program.

## How do I run an Installfest Script?

The script comes in three basic flavors: the default full install for Mac OS, 
the default full install for Ubuntu Linux, and smaller scripts that ensure a 
current and standardized install of Ruby is being used.

**Warning**: in their default form, these scripts are very invasive, 
overwriting settings and versions for applications and tools used in the 
course. **If you have dearly loved dotfiles, ensure that you back them up before 
running the script!** *(We will back them up too, but just in case...)*

## Step 0 (Preparation)

Make sure you have your GitHub account information with you, including:

- the email address you used to sign up,
- your GitHub Enterprise username, and
- your GitHub Enterprise password.

***Note: on Mac, you must be an Administrator to run the script.***

## Step 1

##### For Mac OS

Paste this script into a Terminal prompt:

```
bash <(curl -sL https://raw.git.generalassemb.ly/wdi-nyc/installfest/master/builds/mac)
```

##### For Ubuntu Linux

Paste this script into a Terminal prompt:

`bash <(wget -qO- https://git.generalassemb.ly/raw/wdi-nyc/installfest/master/builds/ubuntu)`


##### Run the script

Follow the instructions! **Note: it is helpful to increase the size of the 
terminal while running the script.**

## Step 2

##### Reload the terminal screen

The new environment **will not work** with the current, open, terminal. Use 
`⌘+N` in Mac OS, or `Shift+Ctrl+N` in Ubuntu, to open a new terminal
window.

Make sure that there are no errors (on the load page)!

## Step 3

~~You've already created and exchanged your public SSH keys with Github Enterprise, but you haven't yet sent them up to `git.generalassemb.ly`.~~
2. Go to the GHE page to [generate new SSH keys][make-ssh-keys] and create a new **New SSH key**
1. Go to [your settings][ghe-settings]/SSH keys...
1. create a new SSH key.
1. Skip the title, and **PASTE** the contents of your clipboard in the key area. **DO NOT TYPE ANYTHING ELSE**
1. You've just added a new public key to git.generalassemb.ly! **Remember to _always_clone using SSH, not HTTPS!** 


## Step 4

##### Final Set-up, Mac OS

2. **Spectacle** (for Macs): open Spectacle using Spotlight, by pressing `⌘-Space`
   and typing `spec`, and then pressing `Return`. It will direct you to change
   your Accessibility settings to allow it to control windowing.
3. **Terminal**: open Terminal using Spotlight (`⌘-Space`, and type `term`),
   and then open the Preferences pane (`⌘-,`), choose Profiles, and then import
   the profile "Tomorrow Night.terminal" from the Desktop by clicking on the
   gear symbol at the bottom of the list of themes and choosing `Import...`.
   Then set that profile to the default by clicking on it and choosing 
   "Default." When you open a new terminal window it should have a black
   background.
4. **Sublime Text**: open the terminal as above, and then open Sublime Text
   by typing `subl .` Make sure that Sublime Text opens.
5. **Slack**: ensure that you can open Slack (`⌘-Space`, and type `sla`) and 
   communicate with your classmates!
6. **Files**: in your terminal, type `cd ~/wdi`. You should now have a 
   directory here where you can store all of your programming projects! When
   you then type `ls` to list the contents of that directory, you should see
   a few directories named `unit0X` — these are where you will store all of your class
   work.

<!-- LINKS -->
[make-ssh-keys]: https://help.github.com/enterprise/2.12/user/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
[ghe-settings]: https://git.generalassemb.ly/settings/keys
[chrome-link]: https://www.google.com/chrome/browser/desktop
