# ********************< cron服务 >********************
restart cron
service cron restart
/etc/init.d/cron restart

# ********************< /var/spool/cron/crontabs >********************
root txazo  # 用户crontab配置文件

# ********************< crontab >********************
crontab -l
crontab -l -u txazo
crontab -e
crontab -e -u txazo
crontab -r -u txazo
crontab -ri -u txazo

*     *     *     *     *     cmd
分钟  小时  日期  月份  星期  命令
0-59  0-23  1-31  1-12  0-7
# 星期0和7都代表星期天
# *：任何时刻        0 0 * * *
# ,：分隔时段        0 0,12 * * *
# -：时间范围        0 12-13 * * *
# /n：每隔n单位间隔  */10 * * * *

# ********************< /etc/crontab >********************
17 *    * * *   root    cd / && run-parts --report /etc/cron.hourly
25 6    * * *   root    test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.daily )
47 6    * * 7   root    test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.weekly )
52 6    1 * *   root    test -x /usr/sbin/anacron || ( cd / && run-parts --report /etc/cron.monthly )

/etc/cron.hourly
/etc/cron.daily
/etc/cron.weekly
/etc/cron.monthly