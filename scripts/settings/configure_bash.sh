# configure_bash.sh
inform "updating your bash shell"

# add the new local/bin/bash to our etc/shells (no output)
echo /usr/local/bin/bash | sudo tee -a /etc/shells > /dev/null
# change shell
chsh -s /usr/local/bin/bash

show "complete!"
