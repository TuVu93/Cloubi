-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blogpost`
--

DROP TABLE IF EXISTS `blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blogpost` (
  `ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(500) NOT NULL,
  `TEXT` varchar(8000) NOT NULL,
  `DATE` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogpost`
--

LOCK TABLES `blogpost` WRITE;
/*!40000 ALTER TABLE `blogpost` DISABLE KEYS */;
INSERT INTO `blogpost` VALUES (23,'Can we use CSS inside a JSP file?','I also use this\r\n\r\n<%@ taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\" %>\r\nbut I don\'t get any error.\r\n\r\nDid you include the jstl.jar in your library? If not maybe this causing the problem. And also the \'tld\' folder do you have it? And how about your web.xml did you map it?\r\n\r\nHave a look on the info about jstl for other information.','2019-01-09 15:12:58'),(24,'I asdjaksdj asdkjasklioq dasdkaslö9opqw asdokaslö','asdasdasdasdasdas','2019-01-09 15:17:57'),(25,'Can we use CSS inside a JSP file?','[INFO] javax/servlet/jsp/el/ImplicitObjectELResolver$ScopeManager$7.class already added, skipping\r\n[INFO] javax/servlet/jsp/el/ImplicitObjectELResolver$ScopeManager$8.class already added, skipping\r\n[INFO] javax/servlet/jsp/el/ImplicitObjectELResolver$ScopeManager$9.class already added, skipping\r\n[INFO] javax/servlet/jsp/el/ImplicitObjectELResolver$ScopeManager.class already added, skipping\r\n[INFO] javax/servlet/jsp/el/ImplicitObjectELResolver$ScopeMap$ScopeEntry.class already added, skipping\r\n[INFO] javax/servlet/jsp/el/ImplicitObjectELResolver$ScopeMap.class already added, skipping\r\n[INFO] javax/servlet/jsp/el/ImplicitObjectELResolver.class already added, skipping\r\n[INFO] javax/servlet/jsp/el/ScopedAttributeELResolver.class already added, skipping\r\n[INFO] javax/servlet/jsp/el/VariableResolver.class already added, skipping\r\n[INFO] javax/servlet/jsp/resources/jsp_2_0.xsd already added, skipping\r\n[INFO] javax/servlet/jsp/resources/jsp_2_1.xsd already added, skipping\r\n[INFO] javax/servlet/jsp/resources/jsp_2_2.xsd already added, skipping\r\n[INFO] javax/servlet/jsp/resources/jspxml.dtd already added, skipping\r\n[INFO] javax/servlet/jsp/resources/jspxml.xsd already added, skipping\r\n[INFO] javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd already added, skipping\r\n[INFO] javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd already added, skipping\r\n[INFO] javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd already added, skipping\r\n[INFO] javax/servlet/jsp/resources/web-jsptaglibrary_2_1.xsd already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/BodyContent.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/BodyTag.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/BodyTagSupport.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/DynamicAttributes.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/FunctionInfo.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/IterationTag.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/JspFragment.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/JspIdConsumer.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/JspTag.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/PageData.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/SimpleTag.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/SimpleTagSupport.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/Tag.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/TagAdapter.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/TagAttributeInfo.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/TagData.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/TagExtraInfo.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/TagFileInfo.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/TagInfo.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/TagLibraryInfo.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/TagLibraryValidator.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/TagSupport.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/TagVariableInfo.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/TryCatchFinally.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/ValidationMessage.class already added, skipping\r\n[INFO] javax/servlet/jsp/tagext/VariableInfo.class already added, skipping\r\n[INFO] META-INF/NOTICE already added, skipping\r\n[INFO] META-INF/LICENSE already added, skipping\r\n[INFO] META-INF/MANIFEST.MF already added, skipping\r\n[INFO] javax/el/ArrayELResolver.class already added, skipping\r\n[INFO] javax/el/BeanELResolver$1.class already added, skipping\r\n[INFO] javax/el/BeanELResolver$BeanProperties.class already added, skipping\r\n[INFO] javax/el/BeanELResolver$BeanProperty.class already added, skipping\r\n[INFO] javax/el/BeanELResolver$ConcurrentCache.class already added, skipping\r\n[INFO] javax/el/BeanELResolver.class already added, skipping\r\n[INFO] javax/el/CompositeELResolver$FeatureIterator.class already added, skipping\r\n[INFO] javax/el/CompositeELResolver.class already added, skipping\r\n[INFO] javax/el/ELContext.class already added, skipping\r\n[INFO] javax/el/ELContextEvent.class already added, skipping\r\n[INFO] javax/el/ELContextListener.class already added, skipping\r\n[INFO] javax/el/ELException.class already added, skipping\r\n[INFO] javax/el/ELResolver.class already added, skipping\r\n[INFO] javax/el/Expression.class already added, skipping\r\n[INFO] javax/el/ExpressionFactory$1.class already added, skipping\r\n[INFO] javax/el/ExpressionFactory$2.class already added, skipping\r\n','2019-01-09 15:23:26'),(26,'nasdasdcvcv','1','2019-01-09 15:28:14');
/*!40000 ALTER TABLE `blogpost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-09 22:52:58
