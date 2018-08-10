# ********************< date >********************
# ��ʾ����

date
# Wed Oct  2 09:37:53 CST 2013

# ********************< date��ʽ >********************
%Y yyyy # ��
%y yy   # ��
%m mm   # ��
%d dd   # ��
%H HH   # ʱ
%M MM   # ��
%S SS   # ��
%s      # ��ǰʱ�������

date '+%Y-%m-%d %H:%M:%S'
# 2013-10-02 09:38:06
date '+%Y-%-m-%-d %-H:%-M:%-S'
# 2013-10-2 9:50:12

# ********************< date�Ӽ� >********************
date -d 'n second[ ago]'
date -d 'n minute[ ago]'
date -d 'n hour[ ago]'
date -d 'n day[ ago]'
date -d 'n month[ ago]'
date -d 'n year[ ago]'

date -d '(+ | -) n second'
date -d '(+ | -) n minute'
date -d '(+ | -) n hour'
date -d '(+ | -) n day'
date -d '(+ | -) n month'
date -d '(+ | -) n year'

date -d now
date -d today
# Wed Oct  2 09:41:20 CST 2013

date -d '20131001'
# Tue Oct  1 00:00:00 CST 2013

date -d '1 day'
# Fri Oct  3 09:45:13 CST 2013
date -d '1 day ago'
# Tue Oct  1 09:45:00 CST 2013

date -d `date +%Y0101` '+%Y-%m-%d %H:%M:%S'
# 2013-01-01 00:00:00
date -d `date +%Y0101 -d '+1 year'`"-1 day" '+%Y-%m-%d %H:%M:%S'
# 2013-12-31 00:00:00

date -d `date +%Y%m01` '+%Y-%m-%d %H:%M:%S'
# 2013-10-01 00:00:00
date -d `date +%Y%m01 -d '+1 month'`"-1 day" '+%Y-%m-%d %H:%M:%S'
# 2013-10-31 00:00:00