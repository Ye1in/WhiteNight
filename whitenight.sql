-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: whitenight
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articletable`
--

DROP TABLE IF EXISTS `articletable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articletable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articletable`
--

LOCK TABLES `articletable` WRITE;
/*!40000 ALTER TABLE `articletable` DISABLE KEYS */;
INSERT INTO `articletable` VALUES (1,'Inspirational Resources1','2018-06-01 16:58:41','1223'),(2,'Inspirational Resources2','2018-07-02 16:58:51','1123'),(3,'Inspirational Resources3','2018-07-03 18:23:15','12'),(4,'Inspirational Resources4','2018-07-04 18:23:28','123'),(5,'Inspirational Resources5','2018-07-05 18:23:36','13'),(6,'Inspirational Resources6','2018-07-06 18:23:43','123'),(7,'Inspirational Resources7','2018-07-07 18:23:53','23'),(8,'Inspirational Resources8','2018-07-08 18:24:05','\r\n<div id=\"main\">\r\n	\r\n<div id=\"post_detail\">\r\n	<div class=\"post\">\r\n		<h2>\r\n			<a id=\"cb_post_title_url\" href=\"https://www.cnblogs.com/NanShan2016/p/5532589.html\">CAFFE学习笔记（五）用caffe跑自己的jpg数据</a>\r\n		</h2>\r\n		<div id=\"cnblogs_post_body\" class=\"blogpost-body\"><h2><span style=\"font-size: 18pt;\">1 收集自己的数据</span></h2>\r\n<h3><span style=\"font-size: 14pt;\">1-1 我的训练集与测试集的来源：表情包</span></h3>\r\n<p><span style=\"font-size: 16px;\">由于网上一幅一幅图片下载非常麻烦，所以我干脆下载了两个eif表情包。同一个表情包里的图像都有很强的相似性，因此可以当成一类图像来使用。下载个eif解压包可以把eif文件解压成gif和jpg格式的文件，然后删除gif文件，只留下jpg格式的文件，这些图就是我的训练集与测试集了。</span></p>\r\n<h3><span style=\"font-size: 14pt;\">1-2 使用rename批量重命名图像</span></h3>\r\n<p><span style=\"font-size: 16px;\">（1）对于一个存放了图像src.jpg的文件夹ROOT，在ROOT中新建一个test.txt文件，在里面写下&ldquo;rename src.jpg dst.jpg&rdquo;，然后将该txt后缀名改为bat，双击test.bat，即可将src.jpg重命名为dst.jpg。</span></p>\r\n<p><span style=\"font-size: 16px;\">（2）利用上一次博客中说过的方法，将ROOT文件夹下所有的文件名皆存入一个txt文件中，即可方便地将ROOT文件夹下所有的图像都重命名。</span></p>\r\n<p><span style=\"font-size: 16px;\">（3）举一个例子。重命名前的ROOT下是这样的：</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202706444-1196105636.png\" alt=\"\" />&nbsp;</span></p>\r\n<p><span style=\"font-size: 16px;\">参考《CAFFE学习笔记（四）》的内容，得到一个装了ROOT文件夹下所有文件名的txt文件，稍加查找与替换，得到如下的txt文件：</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202715881-385095141.png\" alt=\"\" />&nbsp;</span></p>\r\n<p><span style=\"font-size: 16px;\">后缀名改成bat后再运行，得到的结果如下图所示。并没有全部转成功，估计是因为文件名里这些乱七八糟的符号中的一部分是不被test.bat认可的。</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202721913-1085820868.png\" alt=\"\" />&nbsp;</span></p>\r\n<p><span style=\"font-size: 16px;\">没有办法，只能先把上面这些符号改整齐了。将上面的图像全选，对第一个文件重命名成&ldquo;biao.jpg&rdquo;，也就是最简单的那种统一重命名法，则会出现如下情况：</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202729991-2126706764.png\" alt=\"\" />&nbsp;</span></p>\r\n<p><span style=\"font-size: 16px;\">但是这里的名称有空格也有括号，我担心会对caffe的训练造成影响，所以还是得用test.bat把文件名全部转成&ldquo;biaoX.jpg&rdquo;。</span></p>\r\n<p><span style=\"font-size: 16px;\">这里应该提出一点，当文件名中含空格时，是无法直接用刚才的&ldquo;rename src.jpg dst.jpg&rdquo;的方法令它重命名成功的。解决方案是在test.bat文件中用双引号将含空格的src.jpg括起来，即：</span></p>\r\n<div class=\"cnblogs_code\">\r\n<pre>rename &ldquo;src.jpg&rdquo; dst.jpg</pre>\r\n</div>\r\n<p><span style=\"font-size: 16px;\">正如下图所示，应使用双引号将含空格的src.jpg全都括起来。</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202831553-2032150427.png\" alt=\"\" />&nbsp;</span></p>\r\n<p><span style=\"font-size: 16px;\">而这一次就全部转换成功了。</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202839209-1762316878.png\" alt=\"\" />&nbsp;</span></p>\r\n<p><span style=\"font-size: 16px;\">（4）刚才获取的是第一套jpg库&ldquo;表情猫&rdquo;，现在我们获取第二套jpg库&ldquo;真猫&rdquo;。上面制作的这个test.bat文件很有用，可以使用查找与替换功能把里面的&ldquo;biao&rdquo;换成&ldquo;zhen&rdquo;，然后粘贴到&ldquo;真猫&rdquo;的文件夹下：</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202846959-371960304.png\" alt=\"\" />&nbsp;</span></p>\r\n<p><span style=\"font-size: 16px;\">于是瞬间就能重命名另一套jpg数据库：</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202853428-1203371295.png\" alt=\"\" />&nbsp;</span></p>\r\n<h3><span style=\"font-size: 14pt;\">1-3 制作train.txt和val.txt</span></h3>\r\n<p align=\"left\"><span style=\"font-size: 16px;\">应该注意，这两个txt文件具体应该怎么填写，要和train、val文件夹里是怎么放图像的一一对应起来。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 16px;\">以我的为例，我的train文件夹里还有两个子文件夹，一个叫&ldquo;zhen&rdquo;（里面放了50张真猫），一个叫&ldquo;biao&rdquo;（里面放了50张表情猫）：</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\">&nbsp;<img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202907319-1517268388.png\" alt=\"\" /></span></p>\r\n<p align=\"left\"><span style=\"font-size: 16px;\">于是对应的train.txt还要指明各幅图像所在的子文件夹是哪一个。</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202913069-1241150085.png\" alt=\"\" />&nbsp;</span></p>\r\n<p align=\"left\"><span style=\"font-size: 16px;\">同理，我的val文件夹没有放子文件夹，而是直接里面就有20张测试图：</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202918584-1353664328.png\" alt=\"\" />&nbsp;</span></p>\r\n<p align=\"left\"><span style=\"font-size: 16px;\">因此对应的val.txt也不必指明子文件夹。</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526202927475-953142547.png\" alt=\"\" />&nbsp;</span></p>\r\n<p align=\"left\"><span style=\"font-size: 16px;\">实际上train.txt与val.txt存放的正是各幅图像的&ldquo;相对路径+label&rdquo;。</span></p>\r\n<h2><span style=\"font-size: 18pt;\">2 将训练集与测试集转成leveldb格式</span></h2>\r\n<p><span style=\"font-size: 16px;\">阅读本部分内容前请先参考《<a href=\"http://www.cnblogs.com/NanShan2016/p/5487194.html\" target=\"_blank\">CAFFE学习笔记（四）将自己的数据转成lmdb格式</a>》，本次博客将在它的基础上对最后那三个疑难问题提出解决方案，并生成能用的leveldb格式文件。</span></p>\r\n<h3><span style=\"font-size: 14pt;\">问题一：为什么上一次博客最后拿生成的lmdb文件去训练会失败？</span></h3>\r\n<p><span style=\"font-size: 16px;\">如果打开lmdb文件的文件夹可以发现，按以上方法所生成的lmdb文件只有8KB这么小（事实上不论是lmdb还是leveldb都是对图片集的打包，lmdb或leveldb文件的大小应该和训练集、测试集大小差不多才对），这说明在&ldquo;利用create_imagenet.sh生成lmdb文件&rdquo;这一步并没有把训练集和测试集打包成功。</span></p>\r\n<p><span style=\"font-size: 16px;\">这便是上一次博客中那三个遗留问题中3-2的答案，也就是说输入数据有问题。所生成的lmdb文件是无效的，这就是为什么拿这样的lmdb文件去训练会失败了。</span></p>\r\n<h3><span style=\"font-size: 14pt;\">问题二：生成lmdb文件报错Check failed: mdb_status == 0 (112 vs. 0)</span></h3>\r\n<p><span style=\"font-size: 16px;\">lmdb文件打包失败的标志是会在运行create_imagenet.sh时出现：</span></p>\r\n<div class=\"cnblogs_code\">\r\n<pre>Check failed: mdb_status == <span style=\"color: #800080;\">0</span> (<span style=\"color: #800080;\">112</span> vs. <span style=\"color: #800080;\">0</span>)</pre>\r\n</div>\r\n<p><span style=\"font-size: 16px;\">在网上找了很久，最后在一个CSDN的提问上看到，有人说是因为windows下不能使用lmdb数据格式，因此应该在create_imagenet.sh这一步设置令生成leveldb文件。</span></p>\r\n<p><span style=\"font-size: 16px;\">这就是对上一次博客最后的3-1的解答，只要出现这样的错误提示，就意味着你的lmdb数据是不能用的了。我不知道是不是只有windows系统会出现这样的问题，总而言之这错误的解决方案就是不要再生成lmdb格式文件了，而是设定create_imagenet.sh使之生成leveldb格式的文件。</span></p>\r\n<h3><span style=\"font-size: 14pt;\">问题三：如何使用create_imagenet.sh生成leveldb格式的文件？</span></h3>\r\n<p><span style=\"font-size: 16px;\">现在来解决上一次博客中的3-3。如我们所知，在caffe中默认的数据格式是lmdb，因此在上一次博客中无须指定生成的是lmdb还是leveldb，create_imagenet.sh就会自动生成lmdb格式的文件。但是刚才也说了，windows下是不能用lmdb格式文件的（能不能用不知道，反正我在将jpg图打包成lmdb格式文件这一步就会出错），因此需要对create_imagenet.sh进行一些设置，让它把jpg图打包成leveldb格式的文件。</span></p>\r\n<p><span style=\"font-size: 16px;\">方法是在create_imagenet.sh文件中加入下面一行语句：</span></p>\r\n<div class=\"cnblogs_code\">\r\n<pre>--backend=leveldb</pre>\r\n</div>\r\n<p><span style=\"font-size: 16px;\">如图所示，将这行语句加在下图中的位置，即可指定令create_imagenet.sh生成leveldb格式的文件，不要忘记后面的反斜杠。</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 16px;\">&nbsp;<img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526203048038-1780311050.png\" alt=\"\" /></span></p>\r\n<p><span style=\"font-size: 16px;\">本部分工作将在CAFFE_ROOT/data/myself中执行，其中myself是我自己新建的文件夹，里面放了全部的训练数据train，全部的测试数据val，以及给出了各训练数据与测试数据标签的txt文件train.txt、val.txt。</span></p>\r\n<p><span style=\"font-size: 16px;\">在执行create_imagenet.sh后，myself文件夹中将新增两个文件夹imagenet_train_leveldb与imagenet_val_leveldb，这就是所生成的leveldb文件。</span></p>\r\n<h2><span style=\"font-size: 18pt;\">3 计算图像均值</span></h2>\r\n<h3><span style=\"font-size: 14pt;\">3-1 生成compute_image_mean.exe文件</span></h3>\r\n<p><span style=\"font-size: 16px;\">按照《<a href=\"http://www.cnblogs.com/NanShan2016/p/5487120.html\" target=\"_blank\">CAFFE学习笔记（三）在VS2013下生成需要的exe文件</a>》中的步骤，将tools文件夹下的compute_image_mean.cpp文件加载到caffe的VS2013工程中去，然后生成一个compute_image_mean.exe。</span></p>\r\n<p><span style=\"font-size: 16px;\">不过这里注意，build后生成的名称是Caffe.exe，为了使得下一次build别的cpp文件时该compute_image_mean.cpp文件能够不被抹除，应该将compute_image_mean.cpp生成的这个Caffe.exe重命名为compute_image_mean.exe。</span></p>\r\n<h3><span style=\"font-size: 14pt;\">3-2 编辑make_imagenet_mean.sh</span></h3>\r\n<p><span style=\"font-size: 16px;\">在CAFFE_ROOT/examples/imagenet下有一个sh文件make_imagenet_mean.sh，将它拷贝到CAFFE_ROOT/data/myself中，然后打开这个文件进行编辑。</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526203119475-1917680937.png\" alt=\"\" />&nbsp;</span></p>\r\n<p><span style=\"font-size: 16px;\">应注意，这里默认的也是对lmdb文件求平均值，因此必须指定&ldquo;是对leveldb文件求平均值&rdquo;。如果不加这句，则会出现&ldquo;check failure&rdquo;。</span></p>\r\n<p><span style=\"font-size: 16px;\">当执行完make_imagenet_mean.sh后，将会在CAFFE_ROOT/data/myself下生成一个文件imagenet_mean.binaryproto。</span></p>\r\n<h2><span style=\"font-size: 18pt;\">4 网络定义</span></h2>\r\n<p><span style=\"font-size: 16px;\">这一节的内容请一定要联系《<a href=\"http://www.cnblogs.com/NanShan2016/p/5469942.html\" target=\"_blank\">CAFFE学习笔记（一）Caffe_Example之训练mnist</a>》，本次博客所使用的网络虽然和lenet有所不同，多出一个&ldquo;设置平均值文件路径&rdquo;（即刚才生成的imagenet_mean.binaryproto），不过大体的流程是一样的，都是需要设置&ldquo;两个prototxt文件+一个sh文件&rdquo;。</span></p>\r\n<h3><span style=\"font-size: 14pt;\">4-1 设置train_val.prototxt文件</span></h3>\r\n<p><span style=\"font-size: 16px;\">应说明，在&ldquo;网络定义&rdquo;这一步，薛开宇的笔记上记录的并不是这个文件，他是从CAFFE_ROOT\\examples\\imagenet中拷贝了两个文件imagenet_train.prototxt和imagenet_val.prototxt分别用于训练网络和测试网络。按照他笔记上的描述，我可以推断我用的train_val.prototxt实际上是imagenet_train.prototxt和imagenet_val.prototxt的合体。</span></p>\r\n<p><span style=\"font-size: 16px;\">为什么用的和他不一样？因为我在我的CAFFE_ROOT\\examples\\imagenet中根本找不着imagenet_train.prototxt和imagenet_val.prototxt，于是去Caffe的官网搜寻一番，发现Caffe官网中examples\\imagenet里也一样没有那两个prototxt文件。而官网的Imagenet这个例子后却有这样一段描述：</span></p>\r\n<blockquote>\r\n<p><span style=\"color: #800000;\">We&nbsp;are&nbsp;going&nbsp;to&nbsp;describe&nbsp;a&nbsp;reference&nbsp;implementation&nbsp;for&nbsp;the&nbsp;approach&nbsp;first&nbsp;proposed&nbsp;by&nbsp;Krizhevsky,&nbsp;Sutskever,&nbsp;and&nbsp;Hinton&nbsp;in their&nbsp;NIPS&nbsp;2012&nbsp;paper.</span></p>\r\n<p><span style=\"color: #800000;\">The&nbsp;network&nbsp;definition&nbsp;(<strong>&nbsp;<em>models/bvlc_reference_caffenet/train_val.prototxt</em></strong>&nbsp;)&nbsp;follows&nbsp;the&nbsp;one&nbsp;in&nbsp;Krizhevsky&nbsp;et&nbsp;al.</span></p>\r\n</blockquote>\r\n<p><span style=\"font-size: 16px;\">根据括号中给定的路径可以查到该train_val.prototxt文件，把它拷贝到一个txt文件中，后缀名改成prototxt即可。</span></p>\r\n<p><span style=\"font-size: 16px;\">现在我们来编辑该train_val.prototxt文件，就像在《CAFFE学习笔记（一）Caffe_Example之训练mnist》中做的那样，设置imagenet_train_leveldb和imagenet_val_leveldb路径，除此之外还要把刚才计算好的平均值文件imagenet_mean.binaryproto的路径也一并设置。</span></p>\r\n<p><span style=\"font-size: 16px;\">千万注意默认的backend是LMDB，我们得改成LEVELDB才行。</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526203238194-1125182628.png\" alt=\"\" />&nbsp;</span></p>\r\n<p align=\"center\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526203246850-2017851478.png\" alt=\"\" />&nbsp;</span></p>\r\n<h3><span style=\"font-size: 14pt;\">4-2 设置solver.prototxt文件</span></h3>\r\n<p><span style=\"font-size: 16px;\">这个文件同样无法在CAFFE_ROOT\\examples\\imagenet中找到，和上面类似，在Caffe官网的Imagenet这个例子中得到solver的路径：</span></p>\r\n<blockquote>\r\n<p><span style=\"color: #800000;\">Sound&nbsp;good?&nbsp;This&nbsp;is&nbsp;implemented&nbsp;in&nbsp;<strong><em>models/bvlc_reference_caffenet/solver.prototxt.</em></strong></span></p>\r\n</blockquote>\r\n<p><span style=\"font-size: 16px;\">现在设置solver如下：</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 16px;\">&nbsp;<img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526203257584-260264521.png\" alt=\"\" /></span></p>\r\n<p><span style=\"font-size: 16px;\">其中net是train_val.prototxt的路径，snapshot_prefix是训练好的网络权值的存放路径，还有就是用CPU还是GPU也在此处指定。</span></p>\r\n<h3><span style=\"font-size: 14pt;\">4-3 设置train_caffenet.sh文件</span></h3>\r\n<p><span style=\"font-size: 16px;\">这个文件倒是确实能在CAFFE_ROOT/examples/imagenet中找到，把它拷贝到myself中，设置如下：</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 16px;\">&nbsp;<img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526203307897-2058468013.png\" alt=\"\" /></span></p>\r\n<p><span style=\"font-size: 16px;\">其实就是设置三个东西：</span></p>\r\n<p><span style=\"font-size: 16px;\">（1）Caffe.exe&mdash;&mdash;也就是用于训练网络的可执行文件，它是tools下caffe.cpp文件build而成的。</span></p>\r\n<p><span style=\"font-size: 16px;\">（2）train&mdash;&mdash;模式选择，意思是现在是训练模式。</span></p>\r\n<p><span style=\"font-size: 16px;\">（3）solver&mdash;&mdash;即刚才设置好的solver.prototxt文件的路径。</span></p>\r\n<p><span style=\"font-size: 16px;\">这一部分内容与《CAFFE学习笔记（一）Caffe_Example之训练mnist》中的设置是完全一样的。</span></p>\r\n<h2><span style=\"font-size: 18pt;\">5 训练网络</span></h2>\r\n<p><span style=\"font-size: 16px;\">在设置完train_caffenet.sh后，就开始训练网络了，速度奇慢&hellip;&hellip;基本上是每个小时出给一次当前loss汇报。</span></p>\r\n<p><span style=\"font-size: 16px;\">不过可以看出，随着迭代次数增加，loss越来越小（其实可以看出来迭代20次后就能用了），而这正是我们希望的。</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526203318225-286745234.png\" alt=\"\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526203328038-1179834231.png\" alt=\"\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 16px;\"><img src=\"https://images2015.cnblogs.com/blog/951993/201605/951993-20160526203338319-469453357.png\" alt=\"\" /></span></p>\r\n<p><span style=\"font-size: 16px;\">2016.5.26</span></p>\r\n<p><span style=\"font-size: 16px;\">by 悠望南山</span></p></div><div id=\"MySignature\"></div>\r\n<div class=\"clear\"></div>\r\n<div id=\"blog_post_info_block\">\r\n<div id=\"BlogPostCategory\"></div>\r\n<div id=\"EntryTag\"></div>\r\n<div id=\"blog_post_info\">\r\n</div>\r\n<div class=\"clear\"></div>\r\n<div id=\"post_next_prev\"></div>\r\n</div>\r'),(28,'1223','2018-07-08 18:38:16','<p>2132</p>'),(29,'article test','2018-07-09 01:50:36','<p>new article</p>'),(30,'article test','2018-07-09 01:50:49','<p>asd</p>'),(31,'test','2018-07-09 03:12:40','<p>test</p>'),(32,'test','2018-07-09 03:12:44','<p>test</p>');
/*!40000 ALTER TABLE `articletable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commenttable`
--

DROP TABLE IF EXISTS `commenttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commenttable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `article` int(11) NOT NULL,
  `user` int(20) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment-article` (`article`),
  KEY `comment-user` (`user`),
  CONSTRAINT `comment-article` FOREIGN KEY (`article`) REFERENCES `articletable` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment-user` FOREIGN KEY (`user`) REFERENCES `usertable` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commenttable`
--

LOCK TABLES `commenttable` WRITE;
/*!40000 ALTER TABLE `commenttable` DISABLE KEYS */;
INSERT INTO `commenttable` VALUES (5,'hello?',8,1,'2018-07-09 00:51:25'),(6,'<p>123</p>',8,1,'2018-07-09 13:52:51'),(7,'<h5><span style=\"font-style: italic;\">com<span style=\"color: rgb(194, 79, 74);\">ment test?</span></span></h5>',32,1,'2018-07-09 13:59:11'),(8,'<p><span style=\"font-style: italic; color: rgb(194, 79, 74); background-color: rgb(238, 236, 224);\">what ever what so waht so anymore?</span></p>',32,1,'2018-07-09 13:59:54'),(9,'<p>123</p>',32,1,'2018-07-09 17:27:21'),(10,'<p>123</p>',30,1,'2018-07-09 17:27:30');
/*!40000 ALTER TABLE `commenttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messagetable`
--

DROP TABLE IF EXISTS `messagetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message-user` (`user`),
  CONSTRAINT `message-user` FOREIGN KEY (`user`) REFERENCES `usertable` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messagetable`
--

LOCK TABLES `messagetable` WRITE;
/*!40000 ALTER TABLE `messagetable` DISABLE KEYS */;
INSERT INTO `messagetable` VALUES (1,1,'hello?','2018-07-09 17:49:55'),(2,1,'<p><span style=\"color: rgb(194, 79, 74);\">this is a test operation!&nbsp;<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/50/pcmoren_huaixiao_org.png\" alt=\"[坏笑]\" data-w-e=\"1\" style=\"font-size: 16px;\"></span></p>','2018-07-09 18:07:00');
/*!40000 ALTER TABLE `messagetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertable` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` bit(1) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES (1,'yl','2543174','Ye1in','',21),(4,'admin','147258','admin','',21),(7,'','','anonymous',NULL,NULL);
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 19:17:04
