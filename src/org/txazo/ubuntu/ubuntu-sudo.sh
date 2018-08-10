/etc/sudoers

# 配置/etc/sudoers文件
visudo

# 
txazo   ALL=(ALL)ALL

User_Alias    NAME=User_List
Runas_Alias   NAME=Runas_List
Host_Alias    NAME=Host_List
Cmnd_Alias    NAME=Cmnd_List
NAME ::= [A-Z]([A-Z][0-9]_)*

Alias_Type    NAME = item1, item2, ...
