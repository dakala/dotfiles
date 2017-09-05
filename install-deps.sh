# up to you (me) if you want to run this as a file or copy paste at your leisure

# https://github.com/rupa/z
# z, oh how i love you
cd
git clone https://github.com/rupa/z.git
chmod +x ~/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile

# Install fancy bash prompt, colourful and with Git status support.
(cd /tmp && git clone --depth 1 https://github.com/twolfson/sexy-bash-prompt && cd sexy-bash-prompt && make install) && source ~/.bashrc
