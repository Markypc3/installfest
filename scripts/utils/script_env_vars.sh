#-------------------------------------------------------------------------------
# Set up basic env vars (utils/script_env_vars.sh)
#-------------------------------------------------------------------------------

# Standard Bash Variables
# `OSTYPE` A string describing the operating system Bash is running on.
# `MACHTYPE` system type in cpu-company-system
# `SECONDS` number of seconds since the shell was started.

# FIXME (PJ) should have a better place to decide these versions:
#   Ruby (rbenv), Python (pyenv), Node (nvm)
BELOVED_RUBY_VERSION="2.5.0"
CURRENT_STABLE_RUBY_VERSION="2.5.0"

# TODO (pj) decide what the python versions should really be...
#   and maybe come up with a bigger, better place to hang this info
BELOVED_PYTHON_VERSION="anaconda-2.0.1"
CURRENT_STABLE_PYTHON_VERSION="3.4.1"

# NOT BEING USED YET, BUT SHOULD!
NODE_VERSION="stable" # using nvm's language...

if [[ "$OSTYPE" == "darwin"* ]]; then
  SYSTEM="mac"
  BASH_FILE=".bash_profile"
  MINIMUM_MAC_OS="10.11.0"
else
  SYSTEM="ubuntu"
  BASH_FILE=".bashrc"
fi

SCRIPT_ROOT="$HOME/.wdi"

# TODO (PJ) this needs to be more robust, BY FAR!
SCRIPT_REPO="https://git.generalassemb.ly/wdi-nyc/installfest.git"
SCRIPT_REPO_BRANCH="master"

# the downloaded repo
SCRIPT_DIR="$SCRIPT_ROOT/installfest"
SCRIPT_SETTINGS="$SCRIPT_DIR/settings"

SCRIPT_DOTFILES=$SCRIPT_SETTINGS/dotfiles/*
SCRIPT_FONTS=$SCRIPT_SETTINGS/fonts/*
SCRIPT_SUBL_SETTINGS=$SCRIPT_SETTINGS/sublime_settings/*
SCRIPT_SUBL_PACKAGES=$SCRIPT_SETTINGS/sublime_packages/*
SCRIPT_THEMES=$SCRIPT_SETTINGS/terminal/*

# the working folder
STUDENT_FOLDER="$HOME/wdi"

# Deprecated as part of the utils/report_log.sh system...
# TODO (PJ) update how reporting is done?
# OWNER="ga-students"
# REPO="wdi_melville_instructors"

mkdir -p "$SCRIPT_ROOT"
