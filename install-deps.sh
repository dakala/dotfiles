# up to you (me) if you want to run this as a file or copy paste at your leisure

# Install fancy bash prompt, colourful and with Git status support.
(cd /tmp && git clone --depth 1 https://github.com/twolfson/sexy-bash-prompt && cd sexy-bash-prompt && make install) && source ~/.bashrc

cd ~ && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && composer global require drush/drush:dev-master && composer global require drupal/coder


phpcs --config-set installed_paths ~/.composer/vendor/drupal/coder/coder_sniffer && phpcs --config-set colors 1
