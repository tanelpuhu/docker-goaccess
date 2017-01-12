### docker-goaccess

Example commands:

	docker run --rm -it -v /path/to/logs:/logs tanel/goaccess -f /logs/access.log --log-format=COMBINED

	docker run --rm -it -v /var/log/nginx:/logs tanel/goaccess -f /logs/access.log --log-format='%v %h - %^ [%d:%t %^] "%r" %s %b "%R" "%u"' --time-format='%T' --date-format='%d/%b/%Y'
	docker run --rm -v /var/log/nginx:/logs tanel/goaccess -f /logs/access.log --log-format='%v %h - %^ [%d:%t %^] "%r" %s %b "%R" "%u"' --time-format='%T' --date-format='%d/%b/%Y' > /var/www/stats.html