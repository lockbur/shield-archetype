������ͨ��maven���Զ���archetype�����Զ������Ŀ���

1.������Ŀ����ı���workspace

2.���뵽�����Ŀ�ĸ�Ŀ¼(Ҳ����pom.xml���ڵ�Ŀ¼)

3.ִ������Ѹ���Ŀ��װ����ı��زֿ�
mvn clean install

4.ִ�����������ı��زֿ������
mvn archetype:update-local-catalog

5.�ٴλص����workspace����Ŀ¼��ִ������ѡ�񱾵زֿ��archetype������Ŀ
mvn archetype:generate -DarchetypeCatalog=local

6.ѡ�����archetype�ı�ţ�Ȼ�������ʾ�������Լ���groupId��artifactId��packaging��version�ȵ�

7.���봴���ɹ�����Ŀ��eclipse���Ϳ���ʹ�ø���Ŀ��

mvn archetype:generate -DarchetypeGroupId=pl.codeleak -DarchetypeArtifactId=spring-mvc-quickstart -DarchetypeVersion=1.0.0 -DgroupId=my.groupid -DartifactId=my-artifactId -Dversion=version -DarchetypeRepository=http://kolorobot.github.io/spring-mvc-quickstart-archetype
