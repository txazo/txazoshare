# ********************< cp >********************
# �����ļ���Ŀ¼

# �����ļ�(�ļ� -> �ļ�)
# �ļ� -> �ϼ�Ŀ¼
cp data.tmp /home/txazo
# �ļ� -> �ļ�
cp data.tmp /home/txazo/data.tmp

# ����Ŀ¼
# Ŀ¼ -> �ϼ�Ŀ¼
cp -r data /home/txazo
cp -R data /home/txazo
# Ŀ¼���ļ� -> Ŀ¼
cp -r data/* /home/txazo/data
cp -R data/* /home/txazo/data

# ����ʱ��ʾȷ��
cp -i data.tmp /home/txazo

# ����ʱɾ���Ѿ����ڵ�Ŀ�������ʾ
cp -f data.tmp /home/txazo