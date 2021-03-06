sed -i.bak "s/=/: /g" /root/env.txt

rsyslogd
cron

bundle install

bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rake assets:precompile

#service nginx reload
bundle exec unicorn -p 3000 -D -c config/unicorn.rb

tail -f /www/lwnotary-datalake/log/production.log /var/log/syslog /var/log/cron.log