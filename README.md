# ��װ
ִ��reg.bat����ע�ᣬע��ԭ�����Դ�룺

```
set dir=%~dp0

%dir%RegAsm.exe %dir%bin/CustomContextMenu.dll /CodeBase
```
����RegAsm.exe����C:\Windows\Microsoft.NET\Framework64\v4.0.30319�и��Ƶ�һ�ݡ�

# ж��
ִ��unreg.bat����ж�أ�ж��ԭ�����Դ�룺
```
set dir=%~dp0

%dir%RegAsm.exe /unregister %dir%bin/CustomContextMenu.dll /CodeBase

taskkill /f /im explorer.exe

explorer.exe
```
������������explorer.exe������ж�غ�dll�ļ����Բ�����

# �Զ���˵�����
## �˵������ļ�
��binĿ¼���޸�menu.xml��Ĭ�ϸ�����һ��ģ�壺
```
<?xml version="1.0"?>
<menu name="��׿�Ҽ�����" icon="icon\logo.png">
  <menu name="����·��" icon="icon\copypath.png" tag="copypath"/>
  <menu name="DEX ��JAR" icon="icon\dex2jar.png" tag="dex2jar"/>
  <menu name="Manifest ��TXT | AXML ��TXT" icon="icon\m2txt.png" tag="axml2txt"/>
  <menu name="�鿴APK��Ϣ" icon="icon\apkinfo.png" tag="viewapk"/>
  <menu name="�鿴ǩ����Ϣ" icon="icon\signinfo.png" tag="viewsign"/>
  <menu name="ǩ��" tag="sign" icon="icon\sign.png"/>
  <menu/>
  <menu name="��װ��ж�ذ�װ��" icon="icon\install.png" tag="installd"/>
  <menu name="��װ���滻��װ��" icon="icon\installr.png" tag="installr"/>
  <menu name="ж��" icon="icon\uninstall.png" tag="uninstall"/>
  <menu name="���" icon="icon\detect.png" tag="viewwrapper"/>
  <menu name="�ֻ���Ϣ" icon="icon\phone.png" tag="phone"/>
  <menu name="�ֻ���ͼ" icon="icon\photo.png" tag="photo"/>
  <menu name="��ȡͼ��" icon="icon\extracticon.png" tag="icon"/>
  <menu name="zipalign�Ż�" icon="icon\align.png" tag="zipalign"/>
  <menu name="������" icon="icon\decom.png" tag="baksmali"/>
  <menu name="�ر���" icon="icon\build.png" tag="smali"/>
  <menu name="�Զ�����" icon="icon\plug.png">
    <menu name="���1" tag="plug1"/>
    <menu name="���2" tag="plug2"/>
    <menu name="���3" tag="plug3"/>
  </menu>
  <menu name="����" icon="icon\about.png" tag="about"/>
</menu>
```
## �˵�����˵��
- һ���˵����������ԣ��ֱ�Ϊname��icon��tag��
- ���nameΪ�գ���ò˵���Ϊ�ָ������������÷ָ��������������ã�<menu/>
- iconָʾ�˲˵����ͼ���ļ��������·����д�������dll������Ŀ¼�����磺icon\logo.png��������д����ָʾ��ͼ���ļ������ڻ��߼���ʧ�ܣ������˵���ǰ�治�����ͼ�꣬���ⲻ��Ϊ�˼ӿ�˵��ļ����ٶȣ�Ҳ����ȫ��������ͼ���ļ���
- tag���������˵�û���Ӳ˵���Ҳ���Ƿָ�������ô��Ҫ��Ӧ�¼�����tagָʾ����Ӧ���¼����ƣ����ջᱻ���ݵ�oncommand.py�С�
- ����˵������Ӳ˵����ʾ��menu.xml��Ӽ��ɡ����֧�ֶ����˵����֧�ָ����ε��Ӳ˵���

# �����Ӧ�¼�
���û�����˵���ʱ���˵���tag���ƻᱻ���ݵ�oncommand.py�У�������ʽΪ��
```
oncommand.py tag file [files]
```
����û�ֻѡ����һ���ļ����������ʽΪ��
```
oncommand.py tag file
```
����û�ֻѡ���˶���ļ����������ʽΪ��
```
oncommand.py tag file files
```
Ҳ�����ֿ���files��Ҳ������Ϊ����һ��������־�������������־ʱ��file��һ�����ı����ļ�ȫ·�����������û�ѡ��Ķ���ļ��б������г���������py�ļ������д������ļ��Ĳ˵���Ӧ�¼������ﲢû��ʵ�֡�

# Ч����ͼ
![](https://github.com/bigsinger/CustomContextMenu/screenshot1.png)

![](https://github.com/bigsinger/CustomContextMenu/screenshot2.png)