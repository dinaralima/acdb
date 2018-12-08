-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2018 at 03:30 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `carrinho`
--

CREATE TABLE `carrinho` (
  `idCarrinho` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  `Carrinho_idCarrinho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `nomeCategoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cidade`
--

CREATE TABLE `cidade` (
  `idCidade` int(11) NOT NULL,
  `Estado_idEstado` int(11) DEFAULT NULL,
  `nomeCidade` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(45) DEFAULT NULL,
  `sobrenomeCliente` varchar(45) DEFAULT NULL,
  `emailCliente` varchar(45) DEFAULT NULL,
  `senhaCliente` varchar(255) DEFAULT NULL,
  `pessoajuridicaCliente` tinyint(1) DEFAULT NULL,
  `cpfCliente` varchar(45) DEFAULT NULL,
  `cnpjCliente` varchar(45) DEFAULT NULL,
  `fotoCliente` varchar(150) DEFAULT NULL,
  `dataCriacaoCliente` date DEFAULT NULL,
  `dataAlteracaoCliente` date DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `Data_Nascimento` date DEFAULT NULL,
  `Genero` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nomeCliente`, `sobrenomeCliente`, `emailCliente`, `senhaCliente`, `pessoajuridicaCliente`, `cpfCliente`, `cnpjCliente`, `fotoCliente`, `dataCriacaoCliente`, `dataAlteracaoCliente`, `admin`, `Data_Nascimento`, `Genero`) VALUES
(1, 'Didi', NULL, 'dinara.lima@gmail.com', 'meo', 0, NULL, NULL, NULL, '2018-11-04', NULL, NULL, NULL, NULL),
(2, 'didilima', NULL, 'didilima@gmail.com', 'didilima', 0, NULL, NULL, NULL, '2018-11-04', NULL, NULL, NULL, NULL),
(7, 'Frida', 'Kahlo', 'frialokah@mail.com', '$2y$10$oDx8WpjOCkTykMqDjVpcFO5TAeYvphdpFltfqXefZblu5jKs9sGl6', NULL, '314246860', NULL, NULL, '2018-11-18', NULL, NULL, NULL, NULL),
(11, 'Julio', 'Akira', 'julioakira@mail.com', '$2y$10$xnhhjssYz0qlrvdbgO9GseWzI8uRXSljU3EruDpv6qiJF/knNKvo2', 1, '05246789000106', NULL, NULL, '2018-11-18', NULL, NULL, NULL, NULL),
(17, 'Guilherme', 'Peres', 'grbperes@gmail.com', '$2y$10$xmm91Dmyi5iVnzt.t/e0R.Fn87LxQZKrpLaCvhHIFidhjlSaNcn/i', 0, '39433130855', NULL, NULL, '2018-11-18', NULL, 1, NULL, NULL),
(20, 'Laura', 'Peres', 'laura@mail.com', '$2y$10$3NZqpy.WPS.ubdMXeMyFZuydk/YCB2VcMbybrWrT8B1fHQdiOlU76', 0, '33333333333', NULL, NULL, '2018-12-01', NULL, NULL, NULL, NULL),
(21, 'Pedro Henrique', 'Peres', 'php@mail.com', '$2y$10$oTQgIzbnwObwe61Bu/sRZ.Z1SPkULHWhqa4zqkG1tq3j1hCYgpIzy', 0, '00314246860', NULL, NULL, '2018-12-01', NULL, NULL, NULL, NULL),
(22, 'Mariana', 'Rente', 'mariana@mail.com', '$2y$10$JzxlwqwkRqK8RD69qEwniOs6oNNbFRrEStZ687YS76L6amx5rCusC', 0, '12345678910', NULL, NULL, '2018-12-03', NULL, NULL, '1987-10-04', 'F'),
(23, 'Dinara', 'Lima', 'dinara@dig.com', '$2y$10$a98la4HqsHCDH5vs3IldN.brZmeLvAyMWnPW/JsHlRDYhAJt8sIem', 0, '04561153', NULL, NULL, '2018-12-03', NULL, 1, '1989-02-10', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `columns_priv`
--

CREATE TABLE `columns_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';

--
-- Dumping data for table `columns_priv`
--

INSERT INTO `columns_priv` (`Host`, `Db`, `User`, `Table_name`, `Column_name`, `Timestamp`, `Column_priv`) VALUES
('localhost', 'mysql', 'pma', 'user', 'Host', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'User', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Select_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Insert_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Update_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Delete_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Create_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Drop_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Reload_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Shutdown_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Process_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'File_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Grant_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'References_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Index_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Alter_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Show_db_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Super_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Create_tmp_table_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Lock_tables_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Execute_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Repl_slave_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'user', 'Repl_client_priv', '2012-06-18 09:26:21', 'Select'),
('localhost', 'mysql', 'pma', 'tables_priv', 'Host', '2012-06-18 09:27:17', 'Select'),
('localhost', 'mysql', 'pma', 'tables_priv', 'Db', '2012-06-18 09:27:17', 'Select'),
('localhost', 'mysql', 'pma', 'tables_priv', 'User', '2012-06-18 09:27:17', 'Select'),
('localhost', 'mysql', 'pma', 'tables_priv', 'Table_name', '2012-06-18 09:27:17', 'Select'),
('localhost', 'mysql', 'pma', 'tables_priv', 'Table_priv', '2012-06-18 09:27:17', 'Select'),
('localhost', 'mysql', 'pma', 'tables_priv', 'Column_priv', '2012-06-18 09:27:17', 'Select');

-- --------------------------------------------------------

--
-- Table structure for table `column_stats`
--

CREATE TABLE `column_stats` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `min_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `max_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nulls_ratio` decimal(12,4) DEFAULT NULL,
  `avg_length` decimal(12,4) DEFAULT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  `hist_size` tinyint(3) UNSIGNED DEFAULT NULL,
  `hist_type` enum('SINGLE_PREC_HB','DOUBLE_PREC_HB') COLLATE utf8_bin DEFAULT NULL,
  `histogram` varbinary(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Statistics on Columns';

-- --------------------------------------------------------

--
-- Table structure for table `db`
--

CREATE TABLE `db` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';

--
-- Dumping data for table `db`
--

INSERT INTO `db` (`Host`, `Db`, `User`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Execute_priv`, `Event_priv`, `Trigger_priv`) VALUES
('%', 'test', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y'),
('%', 'test\\_%', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y'),
('localhost', 'phpmyadmin', 'pma', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `Cliente_idCliente` int(11) DEFAULT NULL,
  `enderecoCliente` varchar(255) DEFAULT NULL,
  `complementoEndereco` varchar(255) DEFAULT NULL,
  `Cidade` varchar(255) DEFAULT NULL,
  `Estado` varchar(40) DEFAULT NULL,
  `Cep` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `Cliente_idCliente`, `enderecoCliente`, `complementoEndereco`, `Cidade`, `Estado`, `Cep`) VALUES
(1, 20, 'blablabla', 'blabla', '1100015', '11', '11111111'),
(2, 21, 'Rua A, 22', '54', 'São Paulo', '35', '00000000'),
(3, 22, 'Rua Paulo Franco, 48', 'Ap 21', 'São Paulo', NULL, '05305030'),
(4, 23, 'teste', 'fdsfs', 'Amparo de São Francisco', NULL, '05016000');

-- --------------------------------------------------------

--
-- Table structure for table `entrega`
--

CREATE TABLE `entrega` (
  `idEntrega` int(11) NOT NULL,
  `nomeEntrega` varchar(45) DEFAULT NULL,
  `dataEntrega` date DEFAULT NULL,
  `Entregacol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estado`
--

CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL,
  `nomeEstado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estado`
--

INSERT INTO `estado` (`idEstado`, `nomeEstado`) VALUES
(1, 'AC'),
(2, 'AL'),
(3, 'AP'),
(4, 'AM'),
(5, 'BA'),
(6, 'CE'),
(7, 'DF'),
(8, 'ES'),
(9, 'GO'),
(10, 'MA'),
(11, 'MT'),
(12, 'MS'),
(13, 'MG'),
(14, 'PA'),
(15, 'PB'),
(16, 'PR'),
(17, 'PE'),
(18, 'PI'),
(19, 'RJ'),
(20, 'RN'),
(21, 'RS'),
(22, 'RO'),
(23, 'RR'),
(24, 'SC'),
(25, 'SP'),
(26, 'SE'),
(27, 'TO');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` char(141) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) UNSIGNED NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Events';

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `idFoto` int(11) NOT NULL,
  `localFoto` varchar(45) DEFAULT NULL,
  `Produto_idProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`idFoto`, `localFoto`, `Produto_idProduto`) VALUES
(1, 'uploadsprodutos/1_20181129.jpeg', 1),
(2, 'uploadsprodutos/2_20181129.jpeg', 2),
(3, 'uploadsprodutos/4_20181203.jpeg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `func`
--

CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';

-- --------------------------------------------------------

--
-- Table structure for table `general_log`
--

CREATE TABLE `general_log` (
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint(21) UNSIGNED NOT NULL,
  `server_id` int(10) UNSIGNED NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';

-- --------------------------------------------------------

--
-- Table structure for table `gtid_slave_pos`
--

CREATE TABLE `gtid_slave_pos` (
  `domain_id` int(10) UNSIGNED NOT NULL,
  `sub_id` bigint(20) UNSIGNED NOT NULL,
  `server_id` int(10) UNSIGNED NOT NULL,
  `seq_no` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Replication slave GTID position';

-- --------------------------------------------------------

--
-- Table structure for table `help_category`
--

CREATE TABLE `help_category` (
  `help_category_id` smallint(5) UNSIGNED NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) UNSIGNED DEFAULT NULL,
  `url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help categories';

--
-- Dumping data for table `help_category`
--

INSERT INTO `help_category` (`help_category_id`, `name`, `parent_category_id`, `url`) VALUES
(1, 'Geographic', 0, ''),
(2, 'Polygon properties', 35, ''),
(3, 'WKT', 35, ''),
(4, 'Numeric Functions', 39, ''),
(5, 'Plugins', 36, ''),
(6, 'MBR', 35, ''),
(7, 'Control flow functions', 39, ''),
(8, 'Transactions', 36, ''),
(9, 'Help Metadata', 36, ''),
(10, 'Account Management', 36, ''),
(11, 'Point properties', 35, ''),
(12, 'Encryption Functions', 39, ''),
(13, 'LineString properties', 35, ''),
(14, 'Miscellaneous Functions', 39, ''),
(15, 'Logical operators', 39, ''),
(16, 'Functions and Modifiers for Use with GROUP BY', 36, ''),
(17, 'Information Functions', 39, ''),
(18, 'Storage Engines', 36, ''),
(19, 'Comparison operators', 39, ''),
(20, 'Bit Functions', 39, ''),
(21, 'Table Maintenance', 36, ''),
(22, 'User-Defined Functions', 36, ''),
(23, 'Data Types', 36, ''),
(24, 'Compound Statements', 36, ''),
(25, 'Geometry constructors', 35, ''),
(26, 'GeometryCollection properties', 1, ''),
(27, 'Administration', 36, ''),
(28, 'Data Manipulation', 36, ''),
(29, 'Utility', 36, ''),
(30, 'Language Structure', 36, ''),
(31, 'Geometry relations', 35, ''),
(32, 'Date and Time Functions', 39, ''),
(33, 'WKB', 35, ''),
(34, 'Procedures', 36, ''),
(35, 'Geographic Features', 36, ''),
(36, 'Contents', 0, ''),
(37, 'Geometry properties', 35, ''),
(38, 'String Functions', 39, ''),
(39, 'Functions', 36, ''),
(40, 'Data Definition', 36, '');

-- --------------------------------------------------------

--
-- Table structure for table `help_keyword`
--

CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) UNSIGNED NOT NULL,
  `name` char(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help keywords';

--
-- Dumping data for table `help_keyword`
--

INSERT INTO `help_keyword` (`help_keyword_id`, `name`) VALUES
(0, 'JOIN'),
(1, 'HOST'),
(2, 'REPEAT'),
(3, 'SERIALIZABLE'),
(4, 'REPLACE'),
(5, 'AT'),
(6, 'SCHEDULE'),
(7, 'RETURNS'),
(8, 'STARTS'),
(9, 'MASTER_SSL_CA'),
(10, 'NCHAR'),
(11, 'ONLY'),
(12, 'COLUMNS'),
(13, 'COMPLETION'),
(14, 'WORK'),
(15, 'DATETIME'),
(16, 'MODE'),
(17, 'OPEN'),
(18, 'INTEGER'),
(19, 'ESCAPE'),
(20, 'VALUE'),
(21, 'MASTER_SSL_VERIFY_SERVER_CERT'),
(22, 'SQL_BIG_RESULT'),
(23, 'DROP'),
(24, 'GEOMETRYCOLLECTIONFROMWKB'),
(25, 'EVENTS'),
(26, 'MONTH'),
(27, 'PROFILES'),
(28, 'DUPLICATE'),
(29, 'REPLICATION'),
(30, 'UNLOCK'),
(31, 'STATS_PERSISTENT'),
(32, 'INNODB'),
(33, 'YEAR_MONTH'),
(34, 'SUBJECT'),
(35, 'MASTER_RETRY_COUNT'),
(36, 'PREPARE'),
(37, 'LOCK'),
(38, 'CHECK'),
(39, 'FULL'),
(40, 'INT4'),
(41, 'BY'),
(42, 'NO'),
(43, 'MINUTE'),
(44, 'PARTITION'),
(45, 'DATA'),
(46, 'DAY'),
(47, 'SHARE'),
(48, 'REAL'),
(49, 'SEPARATOR'),
(50, 'MESSAGE_TEXT'),
(51, 'MASTER_HEARTBEAT_PERIOD'),
(52, 'DELETE'),
(53, 'ON'),
(54, 'COLUMN_NAME'),
(55, 'CONNECTION'),
(56, 'CLOSE'),
(57, 'MASTER_SSL_CRLPATH'),
(58, 'X509'),
(59, 'USE'),
(60, 'SUBCLASS_ORIGIN'),
(61, 'WHERE'),
(62, 'PRIVILEGES'),
(63, 'SPATIAL'),
(64, 'EVENT'),
(65, 'SUPER'),
(66, 'SQL_BUFFER_RESULT'),
(67, 'IGNORE'),
(68, 'SHA2'),
(69, 'QUICK'),
(70, 'SIGNED'),
(71, 'SECURITY'),
(72, 'POLYGONFROMWKB'),
(73, 'FALSE'),
(74, 'LEVEL'),
(75, 'FORCE'),
(76, 'BINARY'),
(77, 'TO'),
(78, 'CHANGE'),
(79, 'CURRENT_USER'),
(80, 'HOUR_MINUTE'),
(81, 'UPDATE'),
(82, 'PRESERVE'),
(83, 'TABLE_NAME'),
(84, 'INTO'),
(85, 'FEDERATED'),
(86, 'VARYING'),
(87, 'HOUR_SECOND'),
(88, 'SQL_AFTER_GTIDS'),
(89, 'VARIABLE'),
(90, 'ROLLBACK'),
(91, 'PROCEDURE'),
(92, 'TIMESTAMP'),
(93, 'IMPORT'),
(94, 'AGAINST'),
(95, 'CHECKSUM'),
(96, 'SQL_BEFORE_GTIDS'),
(97, 'COUNT'),
(98, 'LONGBINARY'),
(99, 'THEN'),
(100, 'INSERT'),
(101, 'ENGINES'),
(102, 'HANDLER'),
(103, 'PORT'),
(104, 'DAY_SECOND'),
(105, 'EXISTS'),
(106, 'MUTEX'),
(107, 'HELP_DATE'),
(108, 'RELEASE'),
(109, 'BOOLEAN'),
(110, 'MOD'),
(111, 'DEFAULT'),
(112, 'TYPE'),
(113, 'NO_WRITE_TO_BINLOG'),
(114, 'OPTIMIZE'),
(115, 'SQLSTATE'),
(116, 'RESET'),
(117, 'CLASS_ORIGIN'),
(118, 'INSTALL'),
(119, 'ITERATE'),
(120, 'DO'),
(121, 'BIGINT'),
(122, 'SET'),
(123, 'ISSUER'),
(124, 'DATE'),
(125, 'STATUS'),
(126, 'FULLTEXT'),
(127, 'COMMENT'),
(128, 'MASTER_CONNECT_RETRY'),
(129, 'INNER'),
(130, 'RELAYLOG'),
(131, 'STOP'),
(132, 'MASTER_LOG_FILE'),
(133, 'MRG_MYISAM'),
(134, 'PRECISION'),
(135, 'REQUIRE'),
(136, 'TRAILING'),
(137, 'PARTITIONS'),
(138, 'LONG'),
(139, 'OPTION'),
(140, 'REORGANIZE'),
(141, 'ELSE'),
(142, 'DEALLOCATE'),
(143, 'IO_THREAD'),
(144, 'CASE'),
(145, 'CIPHER'),
(146, 'STATS_AUTO_RECALC'),
(147, 'CONTINUE'),
(148, 'FROM'),
(149, 'READ'),
(150, 'LEFT'),
(151, 'ELSEIF'),
(152, 'MINUTE_SECOND'),
(153, 'COMPACT'),
(154, 'DEC'),
(155, 'FOR'),
(156, 'WARNINGS'),
(157, 'MIN_ROWS'),
(158, 'STRING'),
(159, 'CONDITION'),
(160, 'ROW_COUNT'),
(161, 'ENCLOSED'),
(162, 'FUNCTION'),
(163, 'AGGREGATE'),
(164, 'NUMBER'),
(165, 'FIELDS'),
(166, 'INT3'),
(167, 'ARCHIVE'),
(168, 'AVG_ROW_LENGTH'),
(169, 'ADD'),
(170, 'KILL'),
(171, 'FLOAT4'),
(172, 'TABLESPACE'),
(173, 'VIEW'),
(174, 'ALGORITHM'),
(175, 'REPEATABLE'),
(176, 'INFILE'),
(177, 'HELP_VERSION'),
(178, 'ORDER'),
(179, 'MASTER_SSL_CRL'),
(180, 'USING'),
(181, 'CONSTRAINT_CATALOG'),
(182, 'MIDDLEINT'),
(183, 'GRANT'),
(184, 'UNSIGNED'),
(185, 'DECIMAL'),
(186, 'GEOMETRYFROMTEXT'),
(187, 'INDEXES'),
(188, 'DEFAULT_AUTH'),
(189, 'FOREIGN'),
(190, 'CACHE'),
(191, 'HOSTS'),
(192, 'MYSQL_ERRNO'),
(193, 'COMMIT'),
(194, 'SCHEMAS'),
(195, 'LEADING'),
(196, 'SNAPSHOT'),
(197, 'CONSTRAINT_NAME'),
(198, 'DECLARE'),
(199, 'LOAD'),
(200, 'SQL_CACHE'),
(201, 'CONVERT'),
(202, 'DYNAMIC'),
(203, 'COLLATE'),
(204, 'POLYGONFROMTEXT'),
(205, 'BYTE'),
(206, 'GLOBAL'),
(207, 'LINESTRINGFROMWKB'),
(208, 'WHEN'),
(209, 'HAVING'),
(210, 'AS'),
(211, 'STARTING'),
(212, 'RELOAD'),
(213, 'AUTOCOMMIT'),
(214, 'REVOKE'),
(215, 'GRANTS'),
(216, 'OUTER'),
(217, 'CURSOR_NAME'),
(218, 'EXPIRE'),
(219, 'SQL_AFTER_MTS_GAPS'),
(220, 'FLOOR'),
(221, 'EXPLAIN'),
(222, 'WITH'),
(223, 'AFTER'),
(224, 'STD'),
(225, 'CSV'),
(226, 'DISABLE'),
(227, 'UNINSTALL'),
(228, 'OUTFILE'),
(229, 'LOW_PRIORITY'),
(230, 'FILE'),
(231, 'SCHEMA'),
(232, 'SONAME'),
(233, 'POW'),
(234, 'DUAL'),
(235, 'MULTIPOINTFROMWKB'),
(236, 'INDEX'),
(237, 'MULTIPOINTFROMTEXT'),
(238, 'DEFINER'),
(239, 'MASTER_BIND'),
(240, 'REMOVE'),
(241, 'EXTENDED'),
(242, 'MULTILINESTRINGFROMWKB'),
(243, 'CROSS'),
(244, 'CONTRIBUTORS'),
(245, 'GROUP'),
(246, 'NATIONAL'),
(247, 'SHA'),
(248, 'UNDO'),
(249, 'IGNORE_SERVER_IDS'),
(250, 'MASTER_AUTO_POSITION'),
(251, 'ZEROFILL'),
(252, 'CLIENT'),
(253, 'MASTER_PASSWORD'),
(254, 'OWNER'),
(255, 'RELAY_LOG_FILE'),
(256, 'TRUE'),
(257, 'CHARACTER'),
(258, 'MASTER_USER'),
(259, 'SCHEMA_NAME'),
(260, 'TABLE'),
(261, 'ENGINE'),
(262, 'INSERT_METHOD'),
(263, 'CASCADE'),
(264, 'RELAY_LOG_POS'),
(265, 'SQL_CALC_FOUND_ROWS'),
(266, 'UNION'),
(267, 'MYISAM'),
(268, 'LEAVE'),
(269, 'MODIFY'),
(270, 'MATCH'),
(271, 'MASTER_LOG_POS'),
(272, 'DISTINCTROW'),
(273, 'DESC'),
(274, 'TIME'),
(275, 'NUMERIC'),
(276, 'EXPANSION'),
(277, 'CODE'),
(278, 'CURSOR'),
(279, 'GEOMETRYCOLLECTIONFROMTEXT'),
(280, 'CHAIN'),
(281, 'FLUSH'),
(282, 'CREATE'),
(283, 'DESCRIBE'),
(284, 'MAX_UPDATES_PER_HOUR'),
(285, 'INT2'),
(286, 'PROCESSLIST'),
(287, 'ENDS'),
(288, 'LOGS'),
(289, 'RECOVER'),
(290, 'DISCARD'),
(291, 'HEAP'),
(292, 'RETURNED_SQLSTATE'),
(293, 'EXCHANGE'),
(294, 'SOUNDS'),
(295, 'BETWEEN'),
(296, 'MULTILINESTRINGFROMTEXT'),
(297, 'REPAIR'),
(298, 'PACK_KEYS'),
(299, 'FAST'),
(300, 'VALUES'),
(301, 'CALL'),
(302, 'GET'),
(303, 'LOOP'),
(304, 'VARCHARACTER'),
(305, 'BEFORE'),
(306, 'TRUNCATE'),
(307, 'SHOW'),
(308, 'ALL'),
(309, 'REDUNDANT'),
(310, 'USER_RESOURCES'),
(311, 'PARTIAL'),
(312, 'BINLOG'),
(313, 'END'),
(314, 'SECOND'),
(315, 'AND'),
(316, 'FLOAT8'),
(317, 'PREV'),
(318, 'HOUR'),
(319, 'SELECT'),
(320, 'DATABASES'),
(321, 'OR'),
(322, 'IDENTIFIED'),
(323, 'WRAPPER'),
(324, 'MASTER_SSL_CIPHER'),
(325, 'SQL_SLAVE_SKIP_COUNTER'),
(326, 'BOTH'),
(327, 'BOOL'),
(328, 'YEAR'),
(329, 'MASTER_PORT'),
(330, 'CONCURRENT'),
(331, 'HELP'),
(332, 'UNIQUE'),
(333, 'TRIGGERS'),
(334, 'PROCESS'),
(335, 'OPTIONS'),
(336, 'RESIGNAL'),
(337, 'CONSISTENT'),
(338, 'MASTER_SSL'),
(339, 'DATE_ADD'),
(340, 'MAX_CONNECTIONS_PER_HOUR'),
(341, 'LIKE'),
(342, 'PLUGIN'),
(343, 'FETCH'),
(344, 'IN'),
(345, 'COLUMN'),
(346, 'DIAGNOSTICS'),
(347, 'DUMPFILE'),
(348, 'USAGE'),
(349, 'EXECUTE'),
(350, 'MEMORY'),
(351, 'CEIL'),
(352, 'QUERY'),
(353, 'MASTER_HOST'),
(354, 'LINES'),
(355, 'PLUGIN_DIR'),
(356, 'SQL_THREAD'),
(357, 'SERVER'),
(358, 'MAX_QUERIES_PER_HOUR'),
(359, 'MASTER_SSL_CERT'),
(360, 'MULTIPOLYGONFROMWKB'),
(361, 'TRANSACTION'),
(362, 'DAY_MINUTE'),
(363, 'STDDEV'),
(364, 'DATE_SUB'),
(365, 'REBUILD'),
(366, 'GEOMETRYFROMWKB'),
(367, 'INT1'),
(368, 'RENAME'),
(369, 'PARSER'),
(370, 'RIGHT'),
(371, 'ALTER'),
(372, 'MAX_ROWS'),
(373, 'SOCKET'),
(374, 'STRAIGHT_JOIN'),
(375, 'NATURAL'),
(376, 'VARIABLES'),
(377, 'ESCAPED'),
(378, 'SHA1'),
(379, 'KEY_BLOCK_SIZE'),
(380, 'PASSWORD'),
(381, 'OFFSET'),
(382, 'CHAR'),
(383, 'NEXT'),
(384, 'ERRORS'),
(385, 'SQL_LOG_BIN'),
(386, 'TEMPORARY'),
(387, 'COMMITTED'),
(388, 'SQL_SMALL_RESULT'),
(389, 'UPGRADE'),
(390, 'XA'),
(391, 'BEGIN'),
(392, 'DELAY_KEY_WRITE'),
(393, 'PROFILE'),
(394, 'MEDIUM'),
(395, 'INTERVAL'),
(396, 'SSL'),
(397, 'DAY_HOUR'),
(398, 'NAME'),
(399, 'REFERENCES'),
(400, 'AES_ENCRYPT'),
(401, 'STORAGE'),
(402, 'ISOLATION'),
(403, 'CEILING'),
(404, 'EVERY'),
(405, 'INT8'),
(406, 'AUTHORS'),
(407, 'RESTRICT'),
(408, 'UNCOMMITTED'),
(409, 'LINESTRINGFROMTEXT'),
(410, 'IS'),
(411, 'NOT'),
(412, 'ANALYSE'),
(413, 'DES_KEY_FILE'),
(414, 'SIGNAL'),
(415, 'COMPRESSED'),
(416, 'START'),
(417, 'PLUGINS'),
(418, 'SAVEPOINT'),
(419, 'IF'),
(420, 'ROWS'),
(421, 'PRIMARY'),
(422, 'PURGE'),
(423, 'USER'),
(424, 'LAST'),
(425, 'EXIT'),
(426, 'KEYS'),
(427, 'LIMIT'),
(428, 'KEY'),
(429, 'MERGE'),
(430, 'UNTIL'),
(431, 'SQL_NO_CACHE'),
(432, 'DELAYED'),
(433, 'CONSTRAINT_SCHEMA'),
(434, 'ANALYZE'),
(435, 'CONSTRAINT'),
(436, 'SERIAL'),
(437, 'ACTION'),
(438, 'WRITE'),
(439, 'SESSION'),
(440, 'DATABASE'),
(441, 'NULL'),
(442, 'POWER'),
(443, 'USE_FRM'),
(444, 'TERMINATED'),
(445, 'SLAVE'),
(446, 'NVARCHAR'),
(447, 'ASC'),
(448, 'RETURN'),
(449, 'OPTIONALLY'),
(450, 'ENABLE'),
(451, 'DIRECTORY'),
(452, 'MAX_USER_CONNECTIONS'),
(453, 'WHILE'),
(454, 'LOCAL'),
(455, 'DISTINCT'),
(456, 'AES_DECRYPT'),
(457, 'MASTER_SSL_KEY'),
(458, 'NONE'),
(459, 'TABLES'),
(460, '<>'),
(461, 'EXPORT'),
(462, 'RLIKE'),
(463, 'TRIGGER'),
(464, 'COLLATION'),
(465, 'SHUTDOWN'),
(466, 'HIGH_PRIORITY'),
(467, 'BTREE'),
(468, 'FIRST'),
(469, 'COALESCE'),
(470, 'CATALOG_NAME'),
(471, 'MASTER'),
(472, 'FIXED'),
(473, 'MULTIPOLYGONFROMTEXT'),
(474, 'ROW_FORMAT');

-- --------------------------------------------------------

--
-- Table structure for table `help_relation`
--

CREATE TABLE `help_relation` (
  `help_topic_id` int(10) UNSIGNED NOT NULL,
  `help_keyword_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='keyword-topic relation';

--
-- Dumping data for table `help_relation`
--

INSERT INTO `help_relation` (`help_topic_id`, `help_keyword_id`) VALUES
(0, 0),
(444, 0),
(247, 1),
(125, 2),
(236, 3),
(267, 4),
(330, 4),
(480, 4),
(308, 5),
(308, 6),
(472, 6),
(58, 7),
(308, 8),
(359, 9),
(227, 10),
(236, 11),
(337, 11),
(490, 11),
(245, 12),
(273, 12),
(438, 12),
(480, 12),
(508, 12),
(308, 13),
(472, 13),
(337, 14),
(124, 15),
(307, 16),
(444, 16),
(13, 17),
(62, 17),
(332, 17),
(438, 17),
(58, 18),
(262, 18),
(202, 19),
(199, 20),
(267, 20),
(315, 20),
(383, 20),
(505, 20),
(359, 21),
(444, 22),
(6, 23),
(51, 23),
(144, 23),
(217, 23),
(277, 23),
(279, 23),
(358, 23),
(381, 23),
(397, 23),
(408, 23),
(425, 23),
(478, 23),
(508, 23),
(317, 24),
(69, 25),
(95, 25),
(224, 25),
(201, 26),
(47, 27),
(315, 28),
(109, 29),
(25, 30),
(245, 31),
(245, 32),
(438, 32),
(201, 33),
(109, 34),
(359, 35),
(24, 36),
(381, 36),
(490, 36),
(25, 37),
(51, 37),
(113, 37),
(444, 37),
(508, 37),
(221, 38),
(245, 38),
(508, 38),
(163, 39),
(245, 39),
(273, 39),
(438, 39),
(500, 39),
(262, 40),
(32, 41),
(48, 41),
(109, 41),
(245, 41),
(303, 41),
(330, 41),
(444, 41),
(445, 41),
(480, 41),
(508, 41),
(245, 42),
(514, 42),
(201, 43),
(0, 44),
(32, 44),
(245, 44),
(267, 44),
(315, 44),
(330, 44),
(444, 44),
(480, 44),
(508, 44),
(114, 45),
(245, 45),
(247, 45),
(480, 45),
(201, 46),
(444, 47),
(58, 48),
(416, 48),
(445, 49),
(170, 50),
(199, 50),
(505, 50),
(359, 51),
(32, 52),
(245, 52),
(514, 52),
(0, 53),
(308, 53),
(472, 53),
(514, 53),
(170, 54),
(199, 54),
(505, 54),
(97, 55),
(245, 55),
(33, 56),
(62, 56),
(359, 57),
(109, 58),
(0, 59),
(35, 59),
(170, 60),
(199, 60),
(505, 60),
(32, 61),
(48, 61),
(62, 61),
(106, 62),
(109, 62),
(135, 62),
(113, 63),
(508, 63),
(192, 64),
(308, 64),
(408, 64),
(472, 64),
(109, 65),
(444, 66),
(0, 67),
(48, 67),
(315, 67),
(330, 67),
(444, 67),
(480, 67),
(508, 67),
(295, 68),
(32, 69),
(221, 69),
(243, 69),
(124, 70),
(109, 71),
(54, 72),
(253, 72),
(206, 73),
(236, 74),
(0, 75),
(26, 76),
(124, 76),
(148, 76),
(148, 77),
(359, 77),
(506, 77),
(359, 78),
(508, 78),
(308, 79),
(472, 79),
(201, 80),
(48, 81),
(315, 81),
(444, 81),
(514, 81),
(308, 82),
(472, 82),
(170, 83),
(199, 83),
(505, 83),
(267, 84),
(315, 84),
(410, 84),
(444, 84),
(245, 85),
(142, 86),
(201, 87),
(423, 88),
(327, 89),
(337, 90),
(490, 90),
(506, 90),
(12, 91),
(103, 91),
(168, 91),
(181, 91),
(232, 91),
(438, 91),
(444, 91),
(478, 91),
(518, 91),
(59, 92),
(357, 92),
(480, 93),
(508, 93),
(307, 94),
(212, 95),
(245, 95),
(423, 96),
(228, 97),
(299, 97),
(424, 97),
(401, 98),
(20, 99),
(36, 99),
(49, 99),
(107, 100),
(167, 100),
(315, 100),
(517, 100),
(399, 101),
(438, 101),
(62, 102),
(417, 102),
(247, 103),
(201, 104),
(6, 105),
(277, 105),
(308, 105),
(340, 105),
(358, 105),
(397, 105),
(408, 105),
(438, 106),
(448, 106),
(63, 107),
(337, 108),
(490, 108),
(506, 108),
(274, 109),
(307, 109),
(66, 110),
(352, 110),
(114, 111),
(245, 111),
(267, 111),
(315, 111),
(340, 111),
(364, 111),
(383, 111),
(508, 111),
(508, 112),
(179, 113),
(243, 113),
(321, 113),
(512, 113),
(321, 114),
(508, 114),
(199, 115),
(505, 115),
(85, 116),
(145, 116),
(281, 116),
(323, 116),
(170, 117),
(199, 117),
(505, 117),
(479, 118),
(71, 119),
(72, 120),
(308, 120),
(472, 120),
(523, 120),
(119, 121),
(48, 122),
(101, 122),
(114, 122),
(183, 122),
(199, 122),
(245, 122),
(250, 122),
(259, 122),
(267, 122),
(315, 122),
(327, 122),
(330, 122),
(337, 122),
(340, 122),
(438, 122),
(444, 122),
(480, 122),
(505, 122),
(508, 122),
(514, 122),
(109, 123),
(74, 124),
(124, 124),
(201, 124),
(390, 124),
(37, 125),
(117, 125),
(120, 125),
(181, 125),
(335, 125),
(428, 125),
(438, 125),
(448, 125),
(113, 126),
(245, 126),
(508, 126),
(113, 127),
(245, 127),
(308, 127),
(472, 127),
(359, 128),
(0, 129),
(224, 130),
(289, 131),
(359, 132),
(245, 133),
(416, 134),
(109, 135),
(503, 136),
(139, 137),
(401, 138),
(109, 139),
(135, 139),
(508, 140),
(36, 141),
(49, 141),
(381, 142),
(289, 143),
(423, 143),
(36, 144),
(49, 144),
(109, 145),
(245, 146),
(417, 147),
(32, 148),
(69, 148),
(224, 148),
(438, 148),
(444, 148),
(503, 148),
(25, 149),
(62, 149),
(236, 149),
(337, 149),
(490, 149),
(0, 150),
(20, 151),
(201, 152),
(245, 153),
(369, 154),
(179, 155),
(354, 155),
(417, 155),
(438, 155),
(444, 155),
(481, 155),
(424, 156),
(438, 156),
(245, 157),
(58, 158),
(354, 159),
(170, 160),
(480, 161),
(58, 162),
(168, 162),
(209, 162),
(217, 162),
(279, 162),
(297, 162),
(370, 162),
(379, 162),
(428, 162),
(438, 162),
(478, 162),
(58, 163),
(170, 164),
(438, 165),
(480, 165),
(137, 166),
(245, 167),
(245, 168),
(508, 168),
(38, 169),
(508, 169),
(97, 170),
(348, 171),
(508, 172),
(91, 173),
(277, 173),
(502, 173),
(51, 174),
(113, 174),
(508, 174),
(236, 175),
(330, 176),
(480, 176),
(104, 177),
(32, 178),
(48, 178),
(444, 178),
(445, 178),
(508, 178),
(359, 179),
(0, 180),
(32, 180),
(50, 180),
(170, 181),
(199, 181),
(505, 181),
(137, 182),
(109, 183),
(135, 183),
(124, 184),
(262, 184),
(274, 184),
(325, 184),
(348, 184),
(369, 184),
(416, 184),
(58, 185),
(89, 185),
(124, 185),
(476, 186),
(438, 187),
(423, 188),
(245, 189),
(247, 189),
(508, 189),
(514, 189),
(60, 190),
(85, 190),
(410, 190),
(338, 191),
(438, 191),
(170, 192),
(199, 192),
(505, 192),
(337, 193),
(490, 193),
(92, 194),
(438, 194),
(503, 195),
(337, 196),
(490, 196),
(170, 197),
(199, 197),
(505, 197),
(354, 198),
(364, 198),
(417, 198),
(481, 198),
(410, 199),
(480, 199),
(444, 200),
(124, 201),
(454, 201),
(245, 202),
(114, 203),
(245, 203),
(340, 203),
(464, 204),
(510, 205),
(101, 206),
(236, 206),
(327, 206),
(335, 206),
(439, 206),
(499, 207),
(36, 208),
(49, 208),
(444, 209),
(0, 210),
(25, 210),
(444, 210),
(480, 211),
(109, 212),
(337, 213),
(135, 214),
(360, 215),
(438, 215),
(0, 216),
(170, 217),
(199, 217),
(505, 217),
(466, 218),
(423, 219),
(119, 220),
(139, 221),
(109, 222),
(113, 222),
(245, 222),
(307, 222),
(508, 222),
(508, 223),
(389, 224),
(245, 225),
(480, 225),
(308, 226),
(472, 226),
(508, 226),
(161, 227),
(444, 228),
(25, 229),
(32, 229),
(48, 229),
(267, 229),
(315, 229),
(330, 229),
(480, 229),
(109, 230),
(114, 231),
(340, 231),
(358, 231),
(413, 231),
(438, 231),
(58, 232),
(396, 233),
(154, 234),
(507, 235),
(0, 236),
(38, 236),
(51, 236),
(60, 236),
(113, 236),
(245, 236),
(410, 236),
(414, 236),
(438, 236),
(508, 236),
(225, 237),
(308, 238),
(472, 238),
(359, 239),
(508, 240),
(139, 241),
(243, 241),
(152, 242),
(0, 243),
(4, 244),
(438, 244),
(444, 245),
(142, 246),
(227, 246),
(483, 247),
(417, 248),
(359, 249),
(359, 250),
(262, 251),
(274, 251),
(325, 251),
(348, 251),
(369, 251),
(416, 251),
(109, 252),
(359, 253),
(247, 254),
(359, 255),
(206, 256),
(114, 257),
(142, 257),
(183, 257),
(227, 257),
(245, 257),
(330, 257),
(340, 257),
(438, 257),
(444, 257),
(480, 257),
(359, 258),
(170, 259),
(199, 259),
(505, 259),
(38, 260),
(64, 260),
(117, 260),
(153, 260),
(212, 260),
(221, 260),
(243, 260),
(245, 260),
(321, 260),
(397, 260),
(421, 260),
(438, 260),
(508, 260),
(512, 260),
(245, 261),
(438, 261),
(448, 261),
(508, 261),
(245, 262),
(245, 263),
(277, 263),
(397, 263),
(514, 263),
(359, 264),
(444, 265),
(411, 266),
(245, 267),
(172, 268),
(508, 269),
(307, 270),
(359, 271),
(444, 272),
(139, 273),
(444, 273),
(445, 273),
(124, 274),
(200, 274),
(418, 274),
(369, 275),
(307, 276),
(297, 277),
(518, 277),
(481, 278),
(385, 279),
(337, 280),
(85, 281),
(179, 281),
(12, 282),
(16, 282),
(38, 282),
(58, 282),
(113, 282),
(153, 282),
(168, 282),
(192, 282),
(209, 282),
(245, 282),
(247, 282),
(303, 282),
(308, 282),
(340, 282),
(370, 282),
(413, 282),
(438, 282),
(502, 282),
(139, 283),
(109, 284),
(126, 285),
(438, 286),
(500, 286),
(308, 287),
(26, 288),
(148, 288),
(438, 288),
(490, 289),
(508, 290),
(245, 291),
(170, 292),
(508, 293),
(455, 294),
(82, 295),
(316, 296),
(243, 297),
(508, 297),
(245, 298),
(221, 299),
(267, 300),
(315, 300),
(433, 301),
(170, 302),
(185, 303),
(142, 304),
(148, 305),
(421, 306),
(508, 306),
(4, 307),
(7, 307),
(12, 307),
(18, 307),
(23, 307),
(26, 307),
(37, 307),
(47, 307),
(69, 307),
(92, 307),
(95, 307),
(106, 307),
(117, 307),
(120, 307),
(153, 307),
(163, 307),
(181, 307),
(183, 307),
(192, 307),
(209, 307),
(224, 307),
(256, 307),
(273, 307),
(297, 307),
(299, 307),
(332, 307),
(335, 307),
(338, 307),
(360, 307),
(399, 307),
(413, 307),
(414, 307),
(424, 307),
(428, 307),
(438, 307),
(439, 307),
(448, 307),
(500, 307),
(518, 307),
(521, 307),
(109, 308),
(135, 308),
(281, 308),
(411, 308),
(444, 308),
(245, 309),
(179, 310),
(245, 311),
(69, 312),
(440, 312),
(20, 313),
(36, 313),
(49, 313),
(125, 313),
(180, 313),
(185, 313),
(490, 313),
(523, 313),
(201, 314),
(82, 315),
(174, 315),
(416, 316),
(62, 317),
(201, 318),
(139, 319),
(167, 319),
(267, 319),
(315, 319),
(444, 319),
(92, 320),
(438, 320),
(78, 321),
(109, 322),
(303, 322),
(330, 322),
(247, 323),
(359, 324),
(101, 325),
(503, 326),
(65, 327),
(274, 327),
(201, 328),
(359, 329),
(330, 330),
(480, 330),
(67, 331),
(461, 331),
(508, 332),
(18, 333),
(438, 333),
(109, 334),
(198, 335),
(247, 335),
(199, 336),
(337, 337),
(490, 337),
(359, 338),
(201, 339),
(109, 340),
(438, 341),
(455, 341),
(161, 342),
(438, 342),
(479, 342),
(205, 343),
(69, 344),
(224, 344),
(307, 344),
(444, 344),
(508, 345),
(170, 346),
(444, 347),
(109, 348),
(50, 349),
(109, 349),
(444, 350),
(467, 351),
(85, 352),
(97, 352),
(307, 352),
(359, 353),
(330, 354),
(480, 354),
(423, 355),
(289, 356),
(423, 356),
(6, 357),
(198, 357),
(247, 357),
(109, 358),
(359, 359),
(70, 360),
(236, 361),
(337, 361),
(201, 362),
(218, 363),
(201, 364),
(508, 365),
(81, 366),
(274, 367),
(64, 368),
(375, 368),
(472, 368),
(508, 368),
(113, 369),
(245, 369),
(508, 369),
(0, 370),
(38, 371),
(91, 371),
(109, 371),
(114, 371),
(198, 371),
(232, 371),
(379, 371),
(466, 371),
(472, 371),
(508, 371),
(245, 372),
(247, 373),
(0, 374),
(444, 374),
(0, 375),
(438, 376),
(439, 376),
(480, 377),
(483, 378),
(245, 379),
(109, 380),
(247, 380),
(250, 380),
(303, 380),
(423, 380),
(466, 380),
(444, 381),
(124, 382),
(510, 382),
(62, 383),
(299, 384),
(438, 384),
(259, 385),
(397, 386),
(236, 387),
(444, 388),
(114, 389),
(221, 389),
(490, 390),
(180, 391),
(337, 391),
(490, 391),
(245, 392),
(256, 393),
(221, 394),
(201, 395),
(308, 395),
(109, 396),
(201, 397),
(114, 398),
(109, 399),
(245, 399),
(514, 399),
(493, 400),
(399, 401),
(236, 402),
(498, 403),
(308, 404),
(325, 405),
(7, 406),
(438, 406),
(277, 407),
(397, 407),
(514, 407),
(236, 408),
(290, 409),
(111, 410),
(197, 410),
(239, 410),
(306, 410),
(111, 411),
(306, 411),
(308, 411),
(340, 411),
(415, 411),
(103, 412),
(179, 413),
(505, 414),
(245, 415),
(337, 416),
(423, 416),
(490, 416),
(23, 417),
(506, 418),
(6, 419),
(20, 419),
(252, 419),
(277, 419),
(308, 419),
(340, 419),
(358, 419),
(397, 419),
(408, 419),
(330, 420),
(508, 421),
(148, 422),
(247, 423),
(303, 423),
(375, 423),
(423, 423),
(425, 423),
(466, 423),
(62, 424),
(417, 425),
(414, 426),
(438, 426),
(508, 426),
(32, 427),
(48, 427),
(62, 427),
(69, 427),
(224, 427),
(444, 427),
(38, 428),
(245, 428),
(315, 428),
(508, 428),
(514, 428),
(245, 429),
(125, 430),
(444, 431),
(267, 432),
(315, 432),
(517, 432),
(170, 433),
(199, 433),
(505, 433),
(508, 434),
(512, 434),
(245, 435),
(508, 435),
(245, 436),
(383, 436),
(245, 437),
(514, 437),
(25, 438),
(236, 438),
(337, 438),
(490, 438),
(236, 439),
(327, 439),
(335, 439),
(439, 439),
(114, 440),
(247, 440),
(340, 440),
(358, 440),
(413, 440),
(438, 440),
(197, 441),
(306, 441),
(514, 441),
(254, 442),
(243, 443),
(480, 444),
(120, 445),
(281, 445),
(289, 445),
(308, 445),
(338, 445),
(423, 445),
(472, 445),
(142, 446),
(444, 447),
(445, 447),
(258, 448),
(480, 449),
(308, 450),
(472, 450),
(508, 450),
(114, 451),
(245, 451),
(109, 452),
(523, 453),
(25, 454),
(179, 454),
(243, 454),
(321, 454),
(330, 454),
(480, 454),
(512, 454),
(57, 455),
(228, 455),
(266, 455),
(404, 455),
(411, 455),
(444, 455),
(445, 455),
(457, 455),
(260, 456),
(359, 457),
(109, 458),
(25, 459),
(163, 459),
(332, 459),
(438, 459),
(522, 460),
(179, 461),
(19, 462),
(16, 463),
(144, 463),
(438, 463),
(438, 464),
(521, 464),
(109, 465),
(315, 466),
(444, 466),
(113, 467),
(62, 468),
(245, 468),
(508, 468),
(508, 469),
(170, 470),
(199, 470),
(505, 470),
(26, 471),
(37, 471),
(145, 471),
(148, 471),
(359, 471),
(245, 472),
(369, 472),
(363, 473),
(245, 474);

-- --------------------------------------------------------

--
-- Table structure for table `help_topic`
--

CREATE TABLE `help_topic` (
  `help_topic_id` int(10) UNSIGNED NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help topics';

--
-- Dumping data for table `help_topic`
--

INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(0, 'JOIN', 28, 'MySQL supports the following JOIN syntaxes for the table_references\npart of SELECT statements and multiple-table DELETE and UPDATE\nstatements:\n\ntable_references:\n    table_reference [, table_reference] ...\n\ntable_reference:\n    table_factor\n  | join_table\n\ntable_factor:\n    tbl_name [PARTITION (partition_names)] \n        [[AS] alias] [index_hint_list]\n  | table_subquery [AS] alias\n  | ( table_references )\n  | { OJ table_reference LEFT OUTER JOIN table_reference\n        ON conditional_expr }\n\njoin_table:\n    table_reference [INNER | CROSS] JOIN table_factor [join_condition]\n  | table_reference STRAIGHT_JOIN table_factor\n  | table_reference STRAIGHT_JOIN table_factor ON conditional_expr\n  | table_reference {LEFT|RIGHT} [OUTER] JOIN table_reference join_condition\n  | table_reference NATURAL [{LEFT|RIGHT} [OUTER]] JOIN table_factor\n\njoin_condition:\n    ON conditional_expr\n  | USING (column_list)\n\nindex_hint_list:\n    index_hint [, index_hint] ...\n\nindex_hint:\n    USE {INDEX|KEY}\n      [FOR {JOIN|ORDER BY|GROUP BY}] ([index_list])\n  | IGNORE {INDEX|KEY}\n      [FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n  | FORCE {INDEX|KEY}\n      [FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n\nindex_list:\n    index_name [, index_name] ...\n\nA table reference is also known as a join expression.\n\nIn MySQL 5.6.2 and later, a table reference (when it refers to a\npartitioned table) may contain a PARTITION option, including a\ncomma-separated list of partitions, subpartitions, or both. This option\nfollows the name of the table and precedes any alias declaration. The\neffect of this option is that rows are selected only from the listed\npartitions or subpartitions---in other words, any partitions or\nsubpartitions not named in the list are ignored For more information,\nsee http://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html.\n\nThe syntax of table_factor is extended in comparison with the SQL\nStandard. The latter accepts only table_reference, not a list of them\ninside a pair of parentheses.\n\nThis is a conservative extension if we consider each comma in a list of\ntable_reference items as equivalent to an inner join. For example:\n\nSELECT * FROM t1 LEFT JOIN (t2, t3, t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nis equivalent to:\n\nSELECT * FROM t1 LEFT JOIN (t2 CROSS JOIN t3 CROSS JOIN t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nIn MySQL, JOIN, CROSS JOIN, and INNER JOIN are syntactic equivalents\n(they can replace each other). In standard SQL, they are not\nequivalent. INNER JOIN is used with an ON clause, CROSS JOIN is used\notherwise.\n\nIn general, parentheses can be ignored in join expressions containing\nonly inner join operations. MySQL also supports nested joins (see\nhttp://dev.mysql.com/doc/refman/5.6/en/nested-join-optimization.html).\n\nIndex hints can be specified to affect how the MySQL optimizer makes\nuse of indexes. For more information, see\nhttp://dev.mysql.com/doc/refman/5.6/en/index-hints.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/join.html\n\n', 'SELECT left_tbl.*\n  FROM left_tbl LEFT JOIN right_tbl ON left_tbl.id = right_tbl.id\n  WHERE right_tbl.id IS NULL;\n', 'http://dev.mysql.com/doc/refman/5.6/en/join.html'),
(1, 'HEX', 38, 'Syntax:\nHEX(str), HEX(N)\n\nFor a string argument str, HEX() returns a hexadecimal string\nrepresentation of str where each character in str is converted to two\nhexadecimal digits. The inverse of this operation is performed by the\nUNHEX() function.\n\nFor a numeric argument N, HEX() returns a hexadecimal string\nrepresentation of the value of N treated as a longlong (BIGINT) number.\nThis is equivalent to CONV(N,10,16). The inverse of this operation is\nperformed by CONV(HEX(N),16,10).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT 0x616263, HEX(\'abc\'), UNHEX(HEX(\'abc\'));\n        -> \'abc\', 616263, \'abc\'\nmysql> SELECT HEX(255), CONV(HEX(255),16,10);\n        -> \'FF\', 255\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(2, 'CONTAINS', 31, 'Contains(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 completely contains g2. This\ntests the opposite relationship as Within().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(3, 'SRID', 37, 'SRID(g)\n\nReturns an integer indicating the Spatial Reference System ID for the\ngeometry value g.\n\nIn MySQL, the SRID value is just an integer associated with the\ngeometry value. All calculations are done assuming Euclidean (planar)\ngeometry.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SELECT SRID(GeomFromText(\'LineString(1 1,2 2)\',101));\n+-----------------------------------------------+\n| SRID(GeomFromText(\'LineString(1 1,2 2)\',101)) |\n+-----------------------------------------------+\n|                                           101 |\n+-----------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(4, 'SHOW CONTRIBUTORS', 27, 'Syntax:\nSHOW CONTRIBUTORS\n\nThe SHOW CONTRIBUTORS statement displays information about the people\nwho contribute to MySQL source or to causes that we support. For each\ncontributor, it displays Name, Location, and Comment values.\n\nThis statement is removed as of MySQL 5.6.8.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-contributors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-contributors.html'),
(5, 'VARIANCE', 16, 'Syntax:\nVARIANCE(expr)\n\nReturns the population standard variance of expr. This is an extension\nto standard SQL. The standard SQL function VAR_POP() can be used\ninstead.\n\nVARIANCE() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(6, 'DROP SERVER', 40, 'Syntax:\nDROP SERVER [ IF EXISTS ] server_name\n\nDrops the server definition for the server named server_name. The\ncorresponding row in the mysql.servers table is deleted. This statement\nrequires the SUPER privilege.\n\nDropping a server for a table does not affect any FEDERATED tables that\nused this connection information when they were created. See [HELP\nCREATE SERVER].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/drop-server.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/drop-server.html'),
(7, 'SHOW AUTHORS', 27, 'Syntax:\nSHOW AUTHORS\n\nThe SHOW AUTHORS statement displays information about the people who\nwork on MySQL. For each author, it displays Name, Location, and Comment\nvalues.\n\nThis statement is removed as of MySQL 5.6.8.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-authors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-authors.html'),
(8, 'CONCAT', 38, 'Syntax:\nCONCAT(str1,str2,...)\n\nReturns the string that results from concatenating the arguments. May\nhave one or more arguments. If all arguments are nonbinary strings, the\nresult is a nonbinary string. If the arguments include any binary\nstrings, the result is a binary string. A numeric argument is converted\nto its equivalent nonbinary string form.\n\nCONCAT() returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT CONCAT(\'My\', \'S\', \'QL\');\n        -> \'MySQL\'\nmysql> SELECT CONCAT(\'My\', NULL, \'QL\');\n        -> NULL\nmysql> SELECT CONCAT(14.3);\n        -> \'14.3\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(9, 'GEOMETRY HIERARCHY', 35, 'Geometry is the base class. It is an abstract class. The instantiable\nsubclasses of Geometry are restricted to zero-, one-, and\ntwo-dimensional geometric objects that exist in two-dimensional\ncoordinate space. All instantiable geometry classes are defined so that\nvalid instances of a geometry class are topologically closed (that is,\nall defined geometries include their boundary).\n\nThe base Geometry class has subclasses for Point, Curve, Surface, and\nGeometryCollection:\n\no Point represents zero-dimensional objects.\n\no Curve represents one-dimensional objects, and has subclass\n  LineString, with sub-subclasses Line and LinearRing.\n\no Surface is designed for two-dimensional objects and has subclass\n  Polygon.\n\no GeometryCollection has specialized zero-, one-, and two-dimensional\n  collection classes named MultiPoint, MultiLineString, and\n  MultiPolygon for modeling geometries corresponding to collections of\n  Points, LineStrings, and Polygons, respectively. MultiCurve and\n  MultiSurface are introduced as abstract superclasses that generalize\n  the collection interfaces to handle Curves and Surfaces.\n\nGeometry, Curve, Surface, MultiCurve, and MultiSurface are defined as\nnoninstantiable classes. They define a common set of methods for their\nsubclasses and are included for extensibility.\n\nPoint, LineString, Polygon, GeometryCollection, MultiPoint,\nMultiLineString, and MultiPolygon are instantiable classes.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/gis-geometry-class-hierarchy.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/gis-geometry-class-hierarchy.html'),
(10, 'CHAR FUNCTION', 38, 'Syntax:\nCHAR(N,... [USING charset_name])\n\nCHAR() interprets each argument N as an integer and returns a string\nconsisting of the characters given by the code values of those\nintegers. NULL values are skipped.\nBy default, CHAR() returns a binary string. To produce a string in a\ngiven character set, use the optional USING clause:\n\nmysql> SELECT CHARSET(CHAR(0x65)), CHARSET(CHAR(0x65 USING utf8));\n+---------------------+--------------------------------+\n| CHARSET(CHAR(0x65)) | CHARSET(CHAR(0x65 USING utf8)) |\n+---------------------+--------------------------------+\n| binary              | utf8                           |\n+---------------------+--------------------------------+\n\nIf USING is given and the result string is illegal for the given\ncharacter set, a warning is issued. Also, if strict SQL mode is\nenabled, the result from CHAR() becomes NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT CHAR(77,121,83,81,\'76\');\n        -> \'MySQL\'\nmysql> SELECT CHAR(77,77.3,\'77.3\');\n        -> \'MMM\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(11, 'SHOW CREATE TRIGGER', 27, 'Syntax:\nSHOW CREATE TRIGGER trigger_name\n\nThis statement shows a CREATE TRIGGER statement that creates the given\ntrigger.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-create-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-create-trigger.html'),
(12, 'SHOW CREATE PROCEDURE', 27, 'Syntax:\nSHOW CREATE PROCEDURE proc_name\n\nThis statement is a MySQL extension. It returns the exact string that\ncan be used to re-create the named stored procedure. A similar\nstatement, SHOW CREATE FUNCTION, displays information about stored\nfunctions (see [HELP SHOW CREATE FUNCTION]).\n\nBoth statements require that you be the owner of the routine or have\nSELECT access to the mysql.proc table. If you do not have privileges\nfor the routine itself, the value displayed for the Create Procedure or\nCreate Function field will be NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-create-procedure.html\n\n', 'mysql> SHOW CREATE PROCEDURE test.simpleproc\\G\n*************************** 1. row ***************************\n           Procedure: simpleproc\n            sql_mode:\n    Create Procedure: CREATE PROCEDURE `simpleproc`(OUT param1 INT)\n                      BEGIN\n                      SELECT COUNT(*) INTO param1 FROM t;\n                      END\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n\nmysql> SHOW CREATE FUNCTION test.hello\\G\n*************************** 1. row ***************************\n            Function: hello\n            sql_mode:\n     Create Function: CREATE FUNCTION `hello`(s CHAR(20))\n                      RETURNS CHAR(50)\n                      RETURN CONCAT(\'Hello, \',s,\'!\')\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.6/en/show-create-procedure.html'),
(13, 'OPEN', 24, 'Syntax:\nOPEN cursor_name\n\nThis statement opens a previously declared cursor. For an example, see\nhttp://dev.mysql.com/doc/refman/5.6/en/cursors.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/open.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/open.html'),
(14, 'ST_INTERSECTS', 31, 'ST_Intersects(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially intersects g2.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(15, 'LOWER', 38, 'Syntax:\nLOWER(str)\n\nReturns the string str with all characters changed to lowercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nmysql> SELECT LOWER(\'QUADRATICALLY\');\n        -> \'quadratically\'\n\nLOWER() (and UPPER()) are ineffective when applied to binary strings\n(BINARY, VARBINARY, BLOB). To perform lettercase conversion, convert\nthe string to a nonbinary string:\n\nmysql> SET @str = BINARY \'New York\';\nmysql> SELECT LOWER(@str), LOWER(CONVERT(@str USING latin1));\n+-------------+-----------------------------------+\n| LOWER(@str) | LOWER(CONVERT(@str USING latin1)) |\n+-------------+-----------------------------------+\n| New York    | new york                          |\n+-------------+-----------------------------------+\n\nFor Unicode character sets, LOWER() and UPPER() work accounting to\nUnicode Collation Algorithm (UCA) 5.2.0 for xxx_unicode_520_ci\ncollations and for language-specific collations that are derived from\nthem. For other Unicode collations, LOWER() and UPPER() work accounting\nto Unicode Collation Algorithm (UCA) 4.0.0. See\nhttp://dev.mysql.com/doc/refman/5.6/en/charset-unicode-sets.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(16, 'CREATE TRIGGER', 40, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    TRIGGER trigger_name trigger_time trigger_event\n    ON tbl_name FOR EACH ROW trigger_body\n\nThis statement creates a new trigger. A trigger is a named database\nobject that is associated with a table, and that activates when a\nparticular event occurs for the table. The trigger becomes associated\nwith the table named tbl_name, which must refer to a permanent table.\nYou cannot associate a trigger with a TEMPORARY table or a view.\n\nCREATE TRIGGER requires the TRIGGER privilege for the table associated\nwith the trigger. The statement might also require the SUPER privilege,\ndepending on the DEFINER value, as described later in this section. If\nbinary logging is enabled, CREATE TRIGGER might require the SUPER\nprivilege, as described in\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-programs-logging.html.\n\nThe DEFINER clause determines the security context to be used when\nchecking access privileges at trigger activation time. See later in\nthis section for more information.\n\ntrigger_time is the trigger action time. It can be BEFORE or AFTER to\nindicate that the trigger activates before or after each row to be\nmodified.\n\ntrigger_event indicates the kind of statement that activates the\ntrigger. The trigger_event can be one of the following:\n\no INSERT: The trigger is activated whenever a new row is inserted into\n  the table; for example, through INSERT, LOAD DATA, and REPLACE\n  statements.\n\no UPDATE: The trigger is activated whenever a row is modified; for\n  example, through UPDATE statements.\n\no DELETE: The trigger is activated whenever a row is deleted from the\n  table; for example, through DELETE and REPLACE statements. However,\n  DROP TABLE and TRUNCATE TABLE statements on the table do not activate\n  this trigger, because they do not use DELETE. Dropping a partition\n  does not activate DELETE triggers, either. See [HELP TRUNCATE TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/create-trigger.html'),
(17, 'MONTH', 32, 'Syntax:\nMONTH(date)\n\nReturns the month for date, in the range 1 to 12 for January to\nDecember, or 0 for dates such as \'0000-00-00\' or \'2008-00-00\' that have\na zero month part.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT MONTH(\'2008-02-03\');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(18, 'SHOW TRIGGERS', 27, 'Syntax:\nSHOW TRIGGERS [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined for tables in a\ndatabase (the default database unless a FROM clause is given). This\nstatement returns results only for databases and tables for which you\nhave the TRIGGER privilege. The LIKE clause, if present, indicates\nwhich table names to match and causes the statement to display triggers\nfor those tables. The WHERE clause can be given to select rows using\nmore general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html.\n\nFor the trigger ins_sum as defined in\nhttp://dev.mysql.com/doc/refman/5.6/en/triggers.html, the output of\nthis statement is as shown here:\n\nmysql> SHOW TRIGGERS LIKE \'acc%\'\\G\n*************************** 1. row ***************************\n             Trigger: ins_sum\n               Event: INSERT\n               Table: account\n           Statement: SET @sum = @sum + NEW.amount\n              Timing: BEFORE\n             Created: NULL\n            sql_mode:\n             Definer: myname@localhost\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n\ncharacter_set_client is the session value of the character_set_client\nsystem variable when the trigger was created. collation_connection is\nthe session value of the collation_connection system variable when the\ntrigger was created. Database Collation is the collation of the\ndatabase with which the trigger is associated.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-triggers.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-triggers.html'),
(19, 'REGEXP', 38, 'Syntax:\nexpr REGEXP pat, expr RLIKE pat\n\nPerforms a pattern match of a string expression expr against a pattern\npat. The pattern can be an extended regular expression. The syntax for\nregular expressions is discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/regexp.html. Returns 1 if expr\nmatches pat; otherwise it returns 0. If either expr or pat is NULL, the\nresult is NULL. RLIKE is a synonym for REGEXP, provided for mSQL\ncompatibility.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\n*Note*: Because MySQL uses the C escape syntax in strings (for example,\n\"\\n\" to represent the newline character), you must double any \"\\\" that\nyou use in your REGEXP strings.\n\nREGEXP is not case sensitive, except when used with binary strings.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/regexp.html\n\n', 'mysql> SELECT \'Monty!\' REGEXP \'.*\';\n        -> 1\nmysql> SELECT \'new*\\n*line\' REGEXP \'new\\\\*.\\\\*line\';\n        -> 1\nmysql> SELECT \'a\' REGEXP \'A\', \'a\' REGEXP BINARY \'A\';\n        -> 1  0\nmysql> SELECT \'a\' REGEXP \'^[a-d]\';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/regexp.html'),
(20, 'IF STATEMENT', 24, 'Syntax:\nIF search_condition THEN statement_list\n    [ELSEIF search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND IF\n\nThe IF statement for stored programs implements a basic conditional\nconstruct.\n\n*Note*: There is also an IF() function, which differs from the IF\nstatement described here. See\nhttp://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html. The\nIF statement can have THEN, ELSE, and ELSEIF clauses, and it is\nterminated with END IF.\n\nIf the search_condition evaluates to true, the corresponding THEN or\nELSEIF clause statement_list executes. If no search_condition matches,\nthe ELSE clause statement_list executes.\n\nEach statement_list consists of one or more SQL statements; an empty\nstatement_list is not permitted.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/if.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/if.html'),
(21, 'VALIDATE_PASSWORD_STRENGTH', 12, 'Syntax:\nVALIDATE_PASSWORD_STRENGTH(str)\n\nGiven an argument representing a cleartext password, this function\nreturns an integer to indicate how strong the password is. The return\nvalue ranges from 0 (weak) to 100 (strong).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(22, 'WITHIN', 31, 'Within(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially within g2. This\ntests the opposite relationship as Contains().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(23, 'SHOW PLUGINS', 27, 'Syntax:\nSHOW PLUGINS\n\nSHOW PLUGINS displays information about server plugins. Plugin\ninformation is also available in the INFORMATION_SCHEMA.PLUGINS table.\nSee http://dev.mysql.com/doc/refman/5.6/en/plugins-table.html.\n\nExample of SHOW PLUGINS output:\n\nmysql> SHOW PLUGINS\\G\n*************************** 1. row ***************************\n   Name: binlog\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 2. row ***************************\n   Name: CSV\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 3. row ***************************\n   Name: MEMORY\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 4. row ***************************\n   Name: MyISAM\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n...\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-plugins.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-plugins.html'),
(24, 'PREPARE', 8, 'Syntax:\nPREPARE stmt_name FROM preparable_stmt\n\nThe PREPARE statement prepares a SQL statement and assigns it a name,\nstmt_name, by which to refer to the statement later. The prepared\nstatement is executed with EXECUTE and released with DEALLOCATE\nPREPARE. For examples, see\nhttp://dev.mysql.com/doc/refman/5.6/en/sql-syntax-prepared-statements.h\ntml.\n\nStatement names are not case sensitive. preparable_stmt is either a\nstring literal or a user variable that contains the text of the SQL\nstatement. The text must represent a single statement, not multiple\nstatements. Within the statement, ? characters can be used as parameter\nmarkers to indicate where data values are to be bound to the query\nlater when you execute it. The ? characters should not be enclosed\nwithin quotation marks, even if you intend to bind them to string\nvalues. Parameter markers can be used only where data values should\nappear, not for SQL keywords, identifiers, and so forth.\n\nIf a prepared statement with the given name already exists, it is\ndeallocated implicitly before the new statement is prepared. This means\nthat if the new statement contains an error and cannot be prepared, an\nerror is returned and no statement with the given name exists.\n\nThe scope of a prepared statement is the session within which it is\ncreated, which as several implications:\n\no A prepared statement created in one session is not available to other\n  sessions.\n\no When a session ends, whether normally or abnormally, its prepared\n  statements no longer exist. If auto-reconnect is enabled, the client\n  is not notified that the connection was lost. For this reason,\n  clients may wish to disable auto-reconnect. See\n  http://dev.mysql.com/doc/refman/5.6/en/auto-reconnect.html.\n\no A prepared statement created within a stored program continues to\n  exist after the program finishes executing and can be executed\n  outside the program later.\n\no A statement prepared in stored program context cannot refer to stored\n  procedure or function parameters or local variables because they go\n  out of scope when the program ends and would be unavailable were the\n  statement to be executed later outside the program. As a workaround,\n  refer instead to user-defined variables, which also have session\n  scope; see\n  http://dev.mysql.com/doc/refman/5.6/en/user-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/prepare.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/prepare.html'),
(25, 'LOCK', 8, 'Syntax:\nLOCK TABLES\n    tbl_name [[AS] alias] lock_type\n    [, tbl_name [[AS] alias] lock_type] ...\n\nlock_type:\n    READ [LOCAL]\n  | [LOW_PRIORITY] WRITE\n\nUNLOCK TABLES\n\nMySQL enables client sessions to acquire table locks explicitly for the\npurpose of cooperating with other sessions for access to tables, or to\nprevent other sessions from modifying tables during periods when a\nsession requires exclusive access to them. A session can acquire or\nrelease locks only for itself. One session cannot acquire locks for\nanother session or release locks held by another session.\n\nLocks may be used to emulate transactions or to get more speed when\nupdating tables. This is explained in more detail later in this\nsection.\n\nLOCK TABLES explicitly acquires table locks for the current client\nsession. Table locks can be acquired for base tables or views. You must\nhave the LOCK TABLES privilege, and the SELECT privilege for each\nobject to be locked.\n\nFor view locking, LOCK TABLES adds all base tables used in the view to\nthe set of tables to be locked and locks them automatically. If you\nlock a table explicitly with LOCK TABLES, any tables used in triggers\nare also locked implicitly, as described in\nhttp://dev.mysql.com/doc/refman/5.6/en/lock-tables-and-triggers.html.\n\nUNLOCK TABLES explicitly releases any table locks held by the current\nsession. LOCK TABLES implicitly releases any table locks held by the\ncurrent session before acquiring new locks.\n\nAnother use for UNLOCK TABLES is to release the global read lock\nacquired with the FLUSH TABLES WITH READ LOCK statement, which enables\nyou to lock all tables in all databases. See [HELP FLUSH]. (This is a\nvery convenient way to get backups if you have a file system such as\nVeritas that can take snapshots in time.)\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/lock-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/lock-tables.html'),
(26, 'SHOW BINARY LOGS', 27, 'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE BINARY LOGS], that shows\nhow to determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-binary-logs.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-binary-logs.html'),
(27, 'POLYGON', 25, 'Polygon(ls1,ls2,...)\n\nConstructs a Polygon value from a number of LineString or WKB\nLineString arguments. If any argument does not represent a LinearRing\n(that is, not a closed and simple LineString), the return value is\nNULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(28, 'MINUTE', 32, 'Syntax:\nMINUTE(time)\n\nReturns the minute for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT MINUTE(\'2008-02-03 10:05:03\');\n        -> 5\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(29, 'MID', 38, 'Syntax:\nMID(str,pos,len)\n\nMID(str,pos,len) is a synonym for SUBSTRING(str,pos,len).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(30, 'CONNECTION_ID', 17, 'Syntax:\nCONNECTION_ID()\n\nReturns the connection ID (thread ID) for the connection. Every\nconnection has an ID that is unique among the set of currently\nconnected clients.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', 'mysql> SELECT CONNECTION_ID();\n        -> 23786\n', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(31, 'FROM_BASE64()', 38, 'Syntax:\nFROM_BASE64(str)\n\nTakes a string encoded with the base-64 encoded rules used by\nTO_BASE64() and returns the decoded result as a binary string. The\nresult is NULL if the argument is NULL or not a valid base-64 string.\nSee the description of TO_BASE64() for details about the encoding and\ndecoding rules.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT TO_BASE64(\'abc\'), FROM_BASE64(TO_BASE64(\'abc\'));\n        -> \'JWJj\', \'abc\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(32, 'DELETE', 28, 'Syntax:\nDELETE is a DML statement that removes rows from a table.\n\nSingle-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM tbl_name\n    [PARTITION (partition_name,...)]\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nThe DELETE statement deletes rows from tbl_name and returns the number\nof deleted rows. To check the number of deleted rows, call the\nROW_COUNT() function described in\nhttp://dev.mysql.com/doc/refman/5.6/en/information-functions.html.\n\nMain Clauses\n\nThe conditions in the optional WHERE clause identify which rows to\ndelete. With no WHERE clause, all rows are deleted.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe deleted. It is specified as described in\nhttp://dev.mysql.com/doc/refman/5.6/en/select.html.\n\nIf the ORDER BY clause is specified, the rows are deleted in the order\nthat is specified. The LIMIT clause places a limit on the number of\nrows that can be deleted. These clauses apply to single-table deletes,\nbut not multi-table deletes.\n\nMultiple-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    tbl_name[.*] [, tbl_name[.*]] ...\n    FROM table_references\n    [WHERE where_condition]\n\nOr:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    FROM tbl_name[.*] [, tbl_name[.*]] ...\n    USING table_references\n    [WHERE where_condition]\n\nPrivileges\n\nYou need the DELETE privilege on a table to delete rows from it. You\nneed only the SELECT privilege for any columns that are only read, such\nas those named in the WHERE clause.\n\nPerformance\n\nWhen you do not need to know the number of deleted rows, the TRUNCATE\nTABLE statement is a faster way to empty a table than a DELETE\nstatement with no WHERE clause. Unlike DELETE, TRUNCATE TABLE cannot be\nused within a transaction or if you have a lock on the table. See [HELP\nTRUNCATE TABLE] and [HELP LOCK].\n\nThe speed of delete operations may also be affected by factors\ndiscussed in http://dev.mysql.com/doc/refman/5.6/en/delete-speed.html.\n\nTo ensure that a given DELETE statement does not take too much time,\nthe MySQL-specific LIMIT row_count clause for DELETE specifies the\nmaximum number of rows to be deleted. If the number of rows to delete\nis larger than the limit, repeat the DELETE statement until the number\nof affected rows is less than the LIMIT value.\n\nSubqueries\n\nCurrently, you cannot delete from a table and select from the same\ntable in a subquery.\n\nPartitioned Tables\n\nBeginning with MySQL 5.6.2, DELETE supports explicit partition\nselection using the PARTITION option, which takes a comma-separated\nlist of the names of one or more partitions or subpartitions (or both)\nfrom which to select rows to be dropped. Partitions not included in the\nlist are ignored. Given a partitioned table t with a partition named\np0, executing the statement DELETE FROM t PARTITION (p0) has the same\neffect on the table as executing ALTER TABLE t TRUNCATE PARTITION (p0);\nin both cases, all rows in partition p0 are dropped.\n\nPARTITION can be used along with a WHERE condition, in which case the\ncondition is tested only on rows in the listed partitions. For example,\nDELETE FROM t PARTITION (p0) WHERE c < 5 deletes rows only from\npartition p0 for which the condition c < 5 is true; rows in any other\npartitions are not checked and thus not affected by the DELETE.\n\nThe PARTITION option can also be used in multiple-table DELETE\nstatements. You can use up to one such option per table named in the\nFROM option.\n\nSee http://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html,\nfor more information and examples.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/delete.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/delete.html'),
(33, 'CLOSE', 24, 'Syntax:\nCLOSE cursor_name\n\nThis statement closes a previously opened cursor. For an example, see\nhttp://dev.mysql.com/doc/refman/5.6/en/cursors.html.\n\nAn error occurs if the cursor is not open.\n\nIf not closed explicitly, a cursor is closed at the end of the BEGIN\n... END block in which it was declared.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/close.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/close.html'),
(34, 'REPLACE FUNCTION', 38, 'Syntax:\nREPLACE(str,from_str,to_str)\n\nReturns the string str with all occurrences of the string from_str\nreplaced by the string to_str. REPLACE() performs a case-sensitive\nmatch when searching for from_str.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT REPLACE(\'www.mysql.com\', \'w\', \'Ww\');\n        -> \'WwWwWw.mysql.com\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(35, 'USE', 29, 'Syntax:\nUSE db_name\n\nThe USE db_name statement tells MySQL to use the db_name database as\nthe default (current) database for subsequent statements. The database\nremains the default until the end of the session or another USE\nstatement is issued:\n\nUSE db1;\nSELECT COUNT(*) FROM mytable;   # selects from db1.mytable\nUSE db2;\nSELECT COUNT(*) FROM mytable;   # selects from db2.mytable\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/use.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/use.html'),
(36, 'CASE OPERATOR', 7, 'Syntax:\nCASE value WHEN [compare_value] THEN result [WHEN [compare_value] THEN\nresult ...] [ELSE result] END\n\nCASE WHEN [condition] THEN result [WHEN [condition] THEN result ...]\n[ELSE result] END\n\nThe first version returns the result where value=compare_value. The\nsecond version returns the result for the first condition that is true.\nIf there was no matching result value, the result after ELSE is\nreturned, or NULL if there is no ELSE part.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html\n\n', 'mysql> SELECT CASE 1 WHEN 1 THEN \'one\'\n    ->     WHEN 2 THEN \'two\' ELSE \'more\' END;\n        -> \'one\'\nmysql> SELECT CASE WHEN 1>0 THEN \'true\' ELSE \'false\' END;\n        -> \'true\'\nmysql> SELECT CASE BINARY \'B\'\n    ->     WHEN \'a\' THEN 1 WHEN \'b\' THEN 2 END;\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html'),
(37, 'SHOW MASTER STATUS', 27, 'Syntax:\nSHOW MASTER STATUS\n\nThis statement provides status information about the binary log files\nof the master. It requires either the SUPER or REPLICATION CLIENT\nprivilege.\n\nExample:\n\nmysql> SHOW MASTER STATUS\\G\n*************************** 1. row ***************************\n             File: master-bin.000002\n         Position: 1307\n     Binlog_Do_DB: test\n Binlog_Ignore_DB: manual, mysql\nExecuted_Gtid_Set: 3E11FA47-71CA-11E1-9E33-C80AA9429562:1-5\n1 row in set (0.00 sec)\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-master-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-master-status.html'),
(38, 'SPATIAL', 35, 'For MyISAM tables, MySQL can create spatial indexes using syntax\nsimilar to that for creating regular indexes, but extended with the\nSPATIAL keyword. Currently, columns in spatial indexes must be declared\nNOT NULL. The following examples demonstrate how to create spatial\nindexes:\n\no With CREATE TABLE:\n\nCREATE TABLE geom (g GEOMETRY NOT NULL, SPATIAL INDEX(g)) ENGINE=MyISAM;\n\no With ALTER TABLE:\n\nALTER TABLE geom ADD SPATIAL INDEX(g);\n\no With CREATE INDEX:\n\nCREATE SPATIAL INDEX sp_index ON geom (g);\n\nFor MyISAM tables, SPATIAL INDEX creates an R-tree index. For storage\nengines that support nonspatial indexing of spatial columns, the engine\ncreates a B-tree index. A B-tree index on spatial values will be useful\nfor exact-value lookups, but not for range scans.\n\nFor more information on indexing spatial columns, see [HELP CREATE\nINDEX].\n\nTo drop spatial indexes, use ALTER TABLE or DROP INDEX:\n\no With ALTER TABLE:\n\nALTER TABLE geom DROP INDEX g;\n\no With DROP INDEX:\n\nDROP INDEX sp_index ON geom;\n\nExample: Suppose that a table geom contains more than 32,000\ngeometries, which are stored in the column g of type GEOMETRY. The\ntable also has an AUTO_INCREMENT column fid for storing object ID\nvalues.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-indexes.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-indexes.html'),
(39, 'TO_SECONDS', 32, 'Syntax:\nTO_SECONDS(expr)\n\nGiven a date or datetime expr, returns a the number of seconds since\nthe year 0. If expr is not a valid date or datetime value, returns\nNULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT TO_SECONDS(950501);\n        -> 62966505600\nmysql> SELECT TO_SECONDS(\'2009-11-29\');\n        -> 63426672000\nmysql> SELECT TO_SECONDS(\'2009-11-29 13:43:32\');\n        -> 63426721412\nmysql> SELECT TO_SECONDS( NOW() );\n        -> 63426721458\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(40, 'TIMESTAMPDIFF', 32, 'Syntax:\nTIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2)\n\nReturns datetime_expr2 - datetime_expr1, where datetime_expr1 and\ndatetime_expr2 are date or datetime expressions. One expression may be\na date and the other a datetime; a date value is treated as a datetime\nhaving the time part \'00:00:00\' where necessary. The unit for the\nresult (an integer) is given by the unit argument. The legal values for\nunit are the same as those listed in the description of the\nTIMESTAMPADD() function.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMPDIFF(MONTH,\'2003-02-01\',\'2003-05-01\');\n        -> 3\nmysql> SELECT TIMESTAMPDIFF(YEAR,\'2002-05-01\',\'2001-01-01\');\n        -> -1\nmysql> SELECT TIMESTAMPDIFF(MINUTE,\'2003-02-01\',\'2003-05-01 12:05:55\');\n        -> 128885\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(41, 'REVERSE', 38, 'Syntax:\nREVERSE(str)\n\nReturns the string str with the order of the characters reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT REVERSE(\'abc\');\n        -> \'cba\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(42, 'ISNULL', 19, 'Syntax:\nISNULL(expr)\n\nIf expr is NULL, ISNULL() returns 1, otherwise it returns 0.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT ISNULL(1+1);\n        -> 0\nmysql> SELECT ISNULL(1/0);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(43, 'BINARY', 23, 'BINARY(M)\n\nThe BINARY type is similar to the CHAR type, but stores binary byte\nstrings rather than nonbinary character strings. M represents the\ncolumn length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(44, 'BLOB DATA TYPE', 23, 'A BLOB is a binary large object that can hold a variable amount of\ndata. The four BLOB types are TINYBLOB, BLOB, MEDIUMBLOB, and LONGBLOB.\nThese differ only in the maximum length of the values they can hold.\nThe four TEXT types are TINYTEXT, TEXT, MEDIUMTEXT, and LONGTEXT. These\ncorrespond to the four BLOB types and have the same maximum lengths and\nstorage requirements. See\nhttp://dev.mysql.com/doc/refman/5.6/en/storage-requirements.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/blob.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/blob.html'),
(45, 'CURRENT_USER', 17, 'Syntax:\nCURRENT_USER, CURRENT_USER()\n\nReturns the user name and host name combination for the MySQL account\nthat the server used to authenticate the current client. This account\ndetermines your access privileges. The return value is a string in the\nutf8 character set.\n\nThe value of CURRENT_USER() can differ from the value of USER().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', 'mysql> SELECT USER();\n        -> \'davida@localhost\'\nmysql> SELECT * FROM mysql.user;\nERROR 1044: Access denied for user \'\'@\'localhost\' to\ndatabase \'mysql\'\nmysql> SELECT CURRENT_USER();\n        -> \'@localhost\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(46, '<=', 19, 'Syntax:\n<=\n\nLess than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 0.1 <= 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(47, 'SHOW PROFILES', 27, 'Syntax:\nSHOW PROFILES\n\nThe SHOW PROFILES statement, together with SHOW PROFILE, displays\nprofiling information that indicates resource usage for statements\nexecuted during the course of the current session. For more\ninformation, see [HELP SHOW PROFILE].\n\n*Note*: These statements are deprecated as of MySQL 5.6.7 and will be\nremoved in a future MySQL release. Use the Performance Schema instead;\nsee http://dev.mysql.com/doc/refman/5.6/en/performance-schema.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-profiles.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-profiles.html'),
(48, 'UPDATE', 28, 'Syntax:\nSingle-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_reference\n    SET col_name1={expr1|DEFAULT} [, col_name2={expr2|DEFAULT}] ...\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_references\n    SET col_name1={expr1|DEFAULT} [, col_name2={expr2|DEFAULT}] ...\n    [WHERE where_condition]\n\nFor the single-table syntax, the UPDATE statement updates columns of\nexisting rows in the named table with new values. The SET clause\nindicates which columns to modify and the values they should be given.\nEach value can be given as an expression, or the keyword DEFAULT to set\na column explicitly to its default value. The WHERE clause, if given,\nspecifies the conditions that identify which rows to update. With no\nWHERE clause, all rows are updated. If the ORDER BY clause is\nspecified, the rows are updated in the order that is specified. The\nLIMIT clause places a limit on the number of rows that can be updated.\n\nFor the multiple-table syntax, UPDATE updates rows in each table named\nin table_references that satisfy the conditions. In this case, ORDER BY\nand LIMIT cannot be used.\n\nFor partitioned tables, both the single-single and multiple-table forms\nof this statement support the use of a PARTITION option as part of a\ntable reference. This option takes a list of one or more partitions or\nsubpartitions (or both). Only the partitions (or subpartitions) listed\nare checked for matches, and a row that is not in any of these\npartitions or subpartitions is not updated, whether it satisfies the\nwhere_condition or not.\n\n*Note*: Unlike the case when using PARTITION with an INSERT or REPLACE\nstatement, an otherwise valid UPDATE ... PARTITION statement is\nconsidered successful even if no rows in the listed partitions (or\nsubpartitions) match the where_condition.\n\nSee http://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html,\nfor more information and examples.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe updated. For expression syntax, see\nhttp://dev.mysql.com/doc/refman/5.6/en/expressions.html.\n\ntable_references and where_condition are is specified as described in\nhttp://dev.mysql.com/doc/refman/5.6/en/select.html.\n\nYou need the UPDATE privilege only for columns referenced in an UPDATE\nthat are actually updated. You need only the SELECT privilege for any\ncolumns that are read but not modified.\n\nThe UPDATE statement supports the following modifiers:\n\no With the LOW_PRIORITY keyword, execution of the UPDATE is delayed\n  until no other clients are reading from the table. This affects only\n  storage engines that use only table-level locking (such as MyISAM,\n  MEMORY, and MERGE).\n\no With the IGNORE keyword, the update statement does not abort even if\n  errors occur during the update. Rows for which duplicate-key\n  conflicts occur are not updated. Rows for which columns are updated\n  to values that would cause data conversion errors are updated to the\n  closest valid values instead.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/update.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/update.html'),
(49, 'CASE STATEMENT', 24, 'Syntax:\nCASE case_value\n    WHEN when_value THEN statement_list\n    [WHEN when_value THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nOr:\n\nCASE\n    WHEN search_condition THEN statement_list\n    [WHEN search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nThe CASE statement for stored programs implements a complex conditional\nconstruct.\n\n*Note*: There is also a CASE expression, which differs from the CASE\nstatement described here. See\nhttp://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html. The\nCASE statement cannot have an ELSE NULL clause, and it is terminated\nwith END CASE instead of END.\n\nFor the first syntax, case_value is an expression. This value is\ncompared to the when_value expression in each WHEN clause until one of\nthem is equal. When an equal when_value is found, the corresponding\nTHEN clause statement_list executes. If no when_value is equal, the\nELSE clause statement_list executes, if there is one.\n\nThis syntax cannot be used to test for equality with NULL because NULL\n= NULL is false. See\nhttp://dev.mysql.com/doc/refman/5.6/en/working-with-null.html.\n\nFor the second syntax, each WHEN clause search_condition expression is\nevaluated until one is true, at which point its corresponding THEN\nclause statement_list executes. If no search_condition is equal, the\nELSE clause statement_list executes, if there is one.\n\nIf no when_value or search_condition matches the value tested and the\nCASE statement contains no ELSE clause, a Case not found for CASE\nstatement error results.\n\nEach statement_list consists of one or more SQL statements; an empty\nstatement_list is not permitted.\n\nTo handle situations where no value is matched by any WHEN clause, use\nan ELSE containing an empty BEGIN ... END block, as shown in this\nexample. (The indentation used here in the ELSE clause is for purposes\nof clarity only, and is not otherwise significant.)\n\nDELIMITER |\n\nCREATE PROCEDURE p()\n  BEGIN\n    DECLARE v INT DEFAULT 1;\n\n    CASE v\n      WHEN 2 THEN SELECT v;\n      WHEN 3 THEN SELECT 0;\n      ELSE\n        BEGIN\n        END;\n    END CASE;\n  END;\n  |\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/case.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/case.html'),
(50, 'EXECUTE STATEMENT', 8, 'Syntax:\nEXECUTE stmt_name\n    [USING @var_name [, @var_name] ...]\n\nAfter preparing a statement with PREPARE, you execute it with an\nEXECUTE statement that refers to the prepared statement name. If the\nprepared statement contains any parameter markers, you must supply a\nUSING clause that lists user variables containing the values to be\nbound to the parameters. Parameter values can be supplied only by user\nvariables, and the USING clause must name exactly as many variables as\nthe number of parameter markers in the statement.\n\nYou can execute a given prepared statement multiple times, passing\ndifferent variables to it or setting the variables to different values\nbefore each execution.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/execute.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/execute.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(51, 'DROP INDEX', 40, 'Syntax:\nDROP INDEX index_name ON tbl_name\n    [algorithm_option | lock_option] ...\n\nalgorithm_option:\n    ALGORITHM [=] {DEFAULT|INPLACE|COPY}\n\nlock_option:\n    LOCK [=] {DEFAULT|NONE|SHARED|EXCLUSIVE}\n\nDROP INDEX drops the index named index_name from the table tbl_name.\nThis statement is mapped to an ALTER TABLE statement to drop the index.\nSee [HELP ALTER TABLE].\n\nTo drop a primary key, the index name is always PRIMARY, which must be\nspecified as a quoted identifier because PRIMARY is a reserved word:\n\nDROP INDEX `PRIMARY` ON t;\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/drop-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/drop-index.html'),
(52, 'ABS', 4, 'Syntax:\nABS(X)\n\nReturns the absolute value of X.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT ABS(2);\n        -> 2\nmysql> SELECT ABS(-32);\n        -> 32\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(53, 'IS_IPV4', 14, 'Syntax:\nIS_IPV4(expr)\n\nReturns 1 if the argument is a valid IPv4 address specified as a\nstring, 0 otherwise.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> SELECT IS_IPV4(\'10.0.5.9\'), IS_IPV4(\'10.0.5.256\');\n        -> 1, 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(54, 'POLYFROMWKB', 33, 'PolyFromWKB(wkb[,srid]), PolygonFromWKB(wkb[,srid])\n\nConstructs a POLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(55, 'NOT LIKE', 38, 'Syntax:\nexpr NOT LIKE pat [ESCAPE \'escape_char\']\n\nThis is the same as NOT (expr LIKE pat [ESCAPE \'escape_char\']).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html'),
(56, 'SPACE', 38, 'Syntax:\nSPACE(N)\n\nReturns a string consisting of N space characters.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT SPACE(6);\n        -> \'      \'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(57, 'MAX', 16, 'Syntax:\nMAX([DISTINCT] expr)\n\nReturns the maximum value of expr. MAX() may take a string argument; in\nsuch cases, it returns the maximum string value. See\nhttp://dev.mysql.com/doc/refman/5.6/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the maximum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMAX() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(58, 'CREATE FUNCTION UDF', 22, 'Syntax:\nCREATE [AGGREGATE] FUNCTION function_name RETURNS {STRING|INTEGER|REAL|DECIMAL}\n    SONAME shared_library_name\n\nA user-defined function (UDF) is a way to extend MySQL with a new\nfunction that works like a native (built-in) MySQL function such as\nABS() or CONCAT().\n\nfunction_name is the name that should be used in SQL statements to\ninvoke the function. The RETURNS clause indicates the type of the\nfunction\'s return value. DECIMAL is a legal value after RETURNS, but\ncurrently DECIMAL functions return string values and should be written\nlike STRING functions.\n\nshared_library_name is the basename of the shared object file that\ncontains the code that implements the function. The file must be\nlocated in the plugin directory. This directory is given by the value\nof the plugin_dir system variable. For more information, see\nhttp://dev.mysql.com/doc/refman/5.6/en/udf-compiling.html.\n\nTo create a function, you must have the INSERT privilege for the mysql\ndatabase. This is necessary because CREATE FUNCTION adds a row to the\nmysql.func system table that records the function\'s name, type, and\nshared library name. If you do not have this table, you should run the\nmysql_upgrade command to create it. See\nhttp://dev.mysql.com/doc/refman/5.6/en/mysql-upgrade.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-function-udf.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/create-function-udf.html'),
(59, 'TIMESTAMP', 23, 'TIMESTAMP[(fsp)]\n\nA timestamp. The range is \'1970-01-01 00:00:01.000000\' UTC to\n\'2038-01-19 03:14:07.999999\' UTC. TIMESTAMP values are stored as the\nnumber of seconds since the epoch (\'1970-01-01 00:00:00\' UTC). A\nTIMESTAMP cannot represent the value \'1970-01-01 00:00:00\' because that\nis equivalent to 0 seconds from the epoch and the value 0 is reserved\nfor representing \'0000-00-00 00:00:00\', the \"zero\" TIMESTAMP value.\n\nAs of MySQL 5.6.4, an optional fsp value in the range from 0 to 6 may\nbe given to specify fractional seconds precision. A value of 0\nsignifies that there is no fractional part. If omitted, the default\nprecision is 0.\n\nThe way the server handles TIMESTAMP definitions depends on the value\nof the explicit_defaults_for_timestamp system variable (see\nhttp://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html).\nBy default, explicit_defaults_for_timestamp is disabled and the server\nhandles TIMESTAMP as follows:\n\nUnless specified otherwise, the first TIMESTAMP column in a table is\ndefined to be automatically set to the date and time of the most recent\nmodification if not explicitly assigned a value. This makes TIMESTAMP\nuseful for recording the timestamp of an INSERT or UPDATE operation.\nYou can also set any TIMESTAMP column to the current date and time by\nassigning it a NULL value, unless it has been defined with the NULL\nattribute to permit NULL values.\n\nAutomatic initialization and updating to the current date and time can\nbe specified using DEFAULT CURRENT_TIMESTAMP and ON UPDATE\nCURRENT_TIMESTAMP column definition clauses. By default, the first\nTIMESTAMP column has these properties, as previously noted. As of MySQL\n5.6.5, any TIMESTAMP column in a table can be defined to have these\nproperties. Before 5.6.5, at most one TIMESTAMP column per table can\nhave them, but it is possible to suppress them for the first column and\ninstead assign them to a different TIMESTAMP column. See\nhttp://dev.mysql.com/doc/refman/5.6/en/timestamp-initialization.html.\n\nIf explicit_defaults_for_timestamp is enabled, there is no automatic\nassignment of the DEFAULT CURRENT_TIMESTAMP or ON UPDATE\nCURRENT_TIMESTAMP attributes to any TIMESTAMP column. They must be\nincluded explicitly in the column definition. Also, any TIMESTAMP not\nexplicitly declared as NOT NULL permits NULL values.\n\nexplicit_defaults_for_timestamp is available as of MySQL 5.6.6. Before\n5.6.6, the server handles TIMESTAMP as discussed for\nexplicit_defaults_for_timestamp disabled. Those behaviors, while they\nremain the default, are nonstandard and are deprecated as of 5.6.6. For\ndiscussion regarding upgrading to an installation with\nexplicit_defaults_for_timestamp enabled, see\nhttp://dev.mysql.com/doc/refman/5.6/en/upgrading-from-previous-series.h\ntml.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html'),
(60, 'CACHE INDEX', 27, 'Syntax:\nCACHE INDEX\n  tbl_index_list [, tbl_index_list] ...\n  [PARTITION (partition_list | ALL)]\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [[INDEX|KEY] (index_name[, index_name] ...)]\n\npartition_list:\n  partition_name[, partition_name][, ...]\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It is used only for MyISAM tables. After the indexes have been\nassigned, they can be preloaded into the cache if desired with LOAD\nINDEX INTO CACHE.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/cache-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/cache-index.html'),
(61, 'COMPRESS', 12, 'Syntax:\nCOMPRESS(string_to_compress)\n\nCompresses a string and returns the result as a binary string. This\nfunction requires MySQL to have been compiled with a compression\nlibrary such as zlib. Otherwise, the return value is always NULL. The\ncompressed string can be uncompressed with UNCOMPRESS().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', 'mysql> SELECT LENGTH(COMPRESS(REPEAT(\'a\',1000)));\n        -> 21\nmysql> SELECT LENGTH(COMPRESS(\'\'));\n        -> 0\nmysql> SELECT LENGTH(COMPRESS(\'a\'));\n        -> 13\nmysql> SELECT LENGTH(COMPRESS(REPEAT(\'a\',16)));\n        -> 15\n', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(62, 'HANDLER', 28, 'Syntax:\nHANDLER tbl_name OPEN [ [AS] alias]\n\nHANDLER tbl_name READ index_name { = | <= | >= | < | > } (value1,value2,...)\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ index_name { FIRST | NEXT | PREV | LAST }\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ { FIRST | NEXT }\n    [ WHERE where_condition ] [LIMIT ... ]\n\nHANDLER tbl_name CLOSE\n\nThe HANDLER statement provides direct access to table storage engine\ninterfaces. It is available for InnoDB and MyISAM tables.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/handler.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/handler.html'),
(63, 'HELP_DATE', 9, 'This help information was generated from the MySQL 5.6 Reference Manual\non: 2013-04-05\n', '', ''),
(64, 'RENAME TABLE', 40, 'Syntax:\nRENAME TABLE tbl_name TO new_tbl_name\n    [, tbl_name2 TO new_tbl_name2] ...\n\nThis statement renames one or more tables.\n\nThe rename operation is done atomically, which means that no other\nsession can access any of the tables while the rename is running. For\nexample, if you have an existing table old_table, you can create\nanother table new_table that has the same structure but is empty, and\nthen replace the existing table with the empty one as follows (assuming\nthat backup_table does not already exist):\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/rename-table.html\n\n', 'CREATE TABLE new_table (...);\nRENAME TABLE old_table TO backup_table, new_table TO old_table;\n', 'http://dev.mysql.com/doc/refman/5.6/en/rename-table.html'),
(65, 'BOOLEAN', 23, 'BOOL, BOOLEAN\n\nThese types are synonyms for TINYINT(1). A value of zero is considered\nfalse. Nonzero values are considered true:\n\nmysql> SELECT IF(0, \'true\', \'false\');\n+------------------------+\n| IF(0, \'true\', \'false\') |\n+------------------------+\n| false                  |\n+------------------------+\n\nmysql> SELECT IF(1, \'true\', \'false\');\n+------------------------+\n| IF(1, \'true\', \'false\') |\n+------------------------+\n| true                   |\n+------------------------+\n\nmysql> SELECT IF(2, \'true\', \'false\');\n+------------------------+\n| IF(2, \'true\', \'false\') |\n+------------------------+\n| true                   |\n+------------------------+\n\nHowever, the values TRUE and FALSE are merely aliases for 1 and 0,\nrespectively, as shown here:\n\nmysql> SELECT IF(0 = FALSE, \'true\', \'false\');\n+--------------------------------+\n| IF(0 = FALSE, \'true\', \'false\') |\n+--------------------------------+\n| true                           |\n+--------------------------------+\n\nmysql> SELECT IF(1 = TRUE, \'true\', \'false\');\n+-------------------------------+\n| IF(1 = TRUE, \'true\', \'false\') |\n+-------------------------------+\n| true                          |\n+-------------------------------+\n\nmysql> SELECT IF(2 = TRUE, \'true\', \'false\');\n+-------------------------------+\n| IF(2 = TRUE, \'true\', \'false\') |\n+-------------------------------+\n| false                         |\n+-------------------------------+\n\nmysql> SELECT IF(2 = FALSE, \'true\', \'false\');\n+--------------------------------+\n| IF(2 = FALSE, \'true\', \'false\') |\n+--------------------------------+\n| false                          |\n+--------------------------------+\n\nThe last two statements display the results shown because 2 is equal to\nneither 1 nor 0.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(66, 'MOD', 4, 'Syntax:\nMOD(N,M), N % M, N MOD M\n\nModulo operation. Returns the remainder of N divided by M.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT MOD(234, 10);\n        -> 4\nmysql> SELECT 253 % 7;\n        -> 1\nmysql> SELECT MOD(29,9);\n        -> 2\nmysql> SELECT 29 MOD 9;\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(67, 'HELP STATEMENT', 29, 'Syntax:\nHELP \'search_string\'\n\nThe HELP statement returns online information from the MySQL Reference\nmanual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttp://dev.mysql.com/doc/refman/5.6/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not case\nsensitive.\n\nThe search string can contain the the wildcard characters \"%\" and \"_\".\nThese have the same meaning as for pattern-matching operations\nperformed with the LIKE operator. For example, HELP \'rep%\' returns a\nlist of topics that begin with rep.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/help.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/help.html'),
(68, 'UCASE', 38, 'Syntax:\nUCASE(str)\n\nUCASE() is a synonym for UPPER().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(69, 'SHOW BINLOG EVENTS', 27, 'Syntax:\nSHOW BINLOG EVENTS\n   [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\n\nShows the events in the binary log. If you do not specify \'log_name\',\nthe first binary log is displayed.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-binlog-events.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-binlog-events.html'),
(70, 'MPOLYFROMWKB', 33, 'MPolyFromWKB(wkb[,srid]), MultiPolygonFromWKB(wkb[,srid])\n\nConstructs a MULTIPOLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(71, 'ITERATE', 24, 'Syntax:\nITERATE label\n\nITERATE can appear only within LOOP, REPEAT, and WHILE statements.\nITERATE means \"start the loop again.\"\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/iterate.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/iterate.html'),
(72, 'DO', 28, 'Syntax:\nDO expr [, expr] ...\n\nDO executes the expressions but does not return any results. In most\nrespects, DO is shorthand for SELECT expr, ..., but has the advantage\nthat it is slightly faster when you do not care about the result.\n\nDO is useful primarily with functions that have side effects, such as\nRELEASE_LOCK().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/do.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/do.html'),
(73, 'CHAR_LENGTH', 38, 'Syntax:\nCHAR_LENGTH(str)\n\nReturns the length of the string str, measured in characters. A\nmulti-byte character counts as a single character. This means that for\na string containing five 2-byte characters, LENGTH() returns 10,\nwhereas CHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(74, 'DATE', 23, 'DATE\n\nA date. The supported range is \'1000-01-01\' to \'9999-12-31\'. MySQL\ndisplays DATE values in \'YYYY-MM-DD\' format, but permits assignment of\nvalues to DATE columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html'),
(75, 'EXTRACTVALUE', 38, 'Syntax:\nExtractValue(xml_frag, xpath_expr)\n\nExtractValue() takes two string arguments, a fragment of XML markup\nxml_frag and an XPath expression xpath_expr (also known as a locator);\nit returns the text (CDATA) of the first text node which is a child of\nthe elements or elements matched by the XPath expression. In MySQL\n5.6.6 and earlier, the XPath expression could contain at most 127\ncharacters. This limitation was lifted in MySQL 5.6.7. (Bug #13007062,\nBug#62429)\n\nUsing this function is the equivalent of performing a match using the\nxpath_expr after appending /text(). In other words,\nExtractValue(\'<a><b>Sakila</b></a>\', \'/a/b\') and\nExtractValue(\'<a><b>Sakila</b></a>\', \'/a/b/text()\') produce the same\nresult.\n\nIf multiple matches are found, the content of the first child text node\nof each matching element is returned (in the order matched) as a\nsingle, space-delimited string.\n\nIf no matching text node is found for the expression (including the\nimplicit /text())---for whatever reason, as long as xpath_expr is\nvalid, and xml_frag consists of elements which are properly nested and\nclosed---an empty string is returned. No distinction is made between a\nmatch on an empty element and no match at all. This is by design.\n\nIf you need to determine whether no matching element was found in\nxml_frag or such an element was found but contained no child text\nnodes, you should test the result of an expression that uses the XPath\ncount() function. For example, both of these statements return an empty\nstring, as shown here:\n\nmysql> SELECT ExtractValue(\'<a><b/></a>\', \'/a/b\');\n+-------------------------------------+\n| ExtractValue(\'<a><b/></a>\', \'/a/b\') |\n+-------------------------------------+\n|                                     |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT ExtractValue(\'<a><c/></a>\', \'/a/b\');\n+-------------------------------------+\n| ExtractValue(\'<a><c/></a>\', \'/a/b\') |\n+-------------------------------------+\n|                                     |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nHowever, you can determine whether there was actually a matching\nelement using the following:\n\nmysql> SELECT ExtractValue(\'<a><b/></a>\', \'count(/a/b)\');\n+-------------------------------------+\n| ExtractValue(\'<a><b/></a>\', \'count(/a/b)\') |\n+-------------------------------------+\n| 1                                   |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT ExtractValue(\'<a><c/></a>\', \'count(/a/b)\');\n+-------------------------------------+\n| ExtractValue(\'<a><c/></a>\', \'count(/a/b)\') |\n+-------------------------------------+\n| 0                                   |\n+-------------------------------------+\n1 row in set (0.01 sec)\n\n*Important*: ExtractValue() returns only CDATA, and does not return any\ntags that might be contained within a matching tag, nor any of their\ncontent (see the result returned as val1 in the following example).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/xml-functions.html\n\n', 'mysql> SELECT\n    ->   ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'/a\') AS val1,\n    ->   ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'/a/b\') AS val2,\n    ->   ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'//b\') AS val3,\n    ->   ExtractValue(\'<a>ccc<b>ddd</b></a>\', \'/b\') AS val4,\n    ->   ExtractValue(\'<a>ccc<b>ddd</b><b>eee</b></a>\', \'//b\') AS val5;\n\n+------+------+------+------+---------+\n| val1 | val2 | val3 | val4 | val5    |\n+------+------+------+------+---------+\n| ccc  | ddd  | ddd  |      | ddd eee |\n+------+------+------+------+---------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/xml-functions.html'),
(76, 'OLD_PASSWORD', 12, 'Syntax:\nOLD_PASSWORD(str)\n\nOLD_PASSWORD() was added when the implementation of PASSWORD() was\nchanged in MySQL 4.1 to improve security. OLD_PASSWORD() returns the\nvalue of the pre-4.1 implementation of PASSWORD() as a string, and is\nintended to permit you to reset passwords for any pre-4.1 clients that\nneed to connect to your version 5.6 MySQL server without locking them\nout. See http://dev.mysql.com/doc/refman/5.6/en/password-hashing.html.\n\nThe return value is a nonbinary string in the connection character set.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(77, 'FORMAT', 38, 'Syntax:\nFORMAT(X,D[,locale])\n\nFormats the number X to a format like \'#,###,###.##\', rounded to D\ndecimal places, and returns the result as a string. If D is 0, the\nresult has no decimal point or fractional part.\n\nThe optional third parameter enables a locale to be specified to be\nused for the result number\'s decimal point, thousands separator, and\ngrouping between separators. Permissible locale values are the same as\nthe legal values for the lc_time_names system variable (see\nhttp://dev.mysql.com/doc/refman/5.6/en/locale-support.html). If no\nlocale is specified, the default is \'en_US\'.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT FORMAT(12332.123456, 4);\n        -> \'12,332.1235\'\nmysql> SELECT FORMAT(12332.1,4);\n        -> \'12,332.1000\'\nmysql> SELECT FORMAT(12332.2,0);\n        -> \'12,332\'\nmysql> SELECT FORMAT(12332.2,2,\'de_DE\');\n        -> \'12.332,20\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(78, '||', 15, 'Syntax:\nOR, ||\n\nLogical OR. When both operands are non-NULL, the result is 1 if any\noperand is nonzero, and 0 otherwise. With a NULL operand, the result is\n1 if the other operand is nonzero, and NULL otherwise. If both operands\nare NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html\n\n', 'mysql> SELECT 1 || 1;\n        -> 1\nmysql> SELECT 1 || 0;\n        -> 1\nmysql> SELECT 0 || 0;\n        -> 0\nmysql> SELECT 0 || NULL;\n        -> NULL\nmysql> SELECT 1 || NULL;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html'),
(79, 'BIT_LENGTH', 38, 'Syntax:\nBIT_LENGTH(str)\n\nReturns the length of the string str in bits.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT BIT_LENGTH(\'text\');\n        -> 32\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(80, 'EXTERIORRING', 2, 'ExteriorRing(poly)\n\nReturns the exterior ring of the Polygon value poly as a LineString.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SET @poly =\n    -> \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\nmysql> SELECT AsText(ExteriorRing(GeomFromText(@poly)));\n+-------------------------------------------+\n| AsText(ExteriorRing(GeomFromText(@poly))) |\n+-------------------------------------------+\n| LINESTRING(0 0,0 3,3 3,3 0,0 0)           |\n+-------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(81, 'GEOMFROMWKB', 33, 'GeomFromWKB(wkb[,srid]), GeometryFromWKB(wkb[,srid])\n\nConstructs a geometry value of any type using its WKB representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(82, 'BETWEEN AND', 19, 'Syntax:\nexpr BETWEEN min AND max\n\nIf expr is greater than or equal to min and expr is less than or equal\nto max, BETWEEN returns 1, otherwise it returns 0. This is equivalent\nto the expression (min <= expr AND expr <= max) if all the arguments\nare of the same type. Otherwise type conversion takes place according\nto the rules described in\nhttp://dev.mysql.com/doc/refman/5.6/en/type-conversion.html, but\napplied to all the three arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 2 BETWEEN 1 AND 3, 2 BETWEEN 3 and 1;\n        -> 1, 0\nmysql> SELECT 1 BETWEEN 2 AND 3;\n        -> 0\nmysql> SELECT \'b\' BETWEEN \'a\' AND \'c\';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND \'3\';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND \'x-3\';\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(83, 'MULTIPOLYGON', 25, 'MultiPolygon(poly1,poly2,...)\n\nConstructs a MultiPolygon value from a set of Polygon or WKB Polygon\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(84, 'LEFT', 38, 'Syntax:\nLEFT(str,len)\n\nReturns the leftmost len characters from the string str, or NULL if any\nargument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT LEFT(\'foobarbar\', 5);\n        -> \'fooba\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(85, 'FLUSH QUERY CACHE', 27, 'You can defragment the query cache to better utilize its memory with\nthe FLUSH QUERY CACHE statement. The statement does not remove any\nqueries from the cache.\n\nThe RESET QUERY CACHE statement removes all query results from the\nquery cache. The FLUSH TABLES statement also does this.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/query-cache-status-and-maintenance.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/query-cache-status-and-maintenance.html'),
(86, 'SET DATA TYPE', 23, 'SET(\'value1\',\'value2\',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA set. A string object that can have zero or more values, each of which\nmust be chosen from the list of values \'value1\', \'value2\', ... SET\nvalues are represented internally as integers.\n\nA SET column can have a maximum of 64 distinct members. A table can\nhave no more than 255 unique element list definitions among its ENUM\nand SET columns considered as a group. For more information on this\nlimit, see http://dev.mysql.com/doc/refman/5.6/en/limits-frm-file.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(87, 'RAND', 4, 'Syntax:\nRAND(), RAND(N)\n\nReturns a random floating-point value v in the range 0 <= v < 1.0. If a\nconstant integer argument N is specified, it is used as the seed value,\nwhich produces a repeatable sequence of column values. In the following\nexample, note that the sequences of values produced by RAND(3) is the\nsame both places where it occurs.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> CREATE TABLE t (i INT);\nQuery OK, 0 rows affected (0.42 sec)\n\nmysql> INSERT INTO t VALUES(1),(2),(3);\nQuery OK, 3 rows affected (0.00 sec)\nRecords: 3  Duplicates: 0  Warnings: 0\n\nmysql> SELECT i, RAND() FROM t;\n+------+------------------+\n| i    | RAND()           |\n+------+------------------+\n|    1 | 0.61914388706828 |\n|    2 | 0.93845168309142 |\n|    3 | 0.83482678498591 |\n+------+------------------+\n3 rows in set (0.00 sec)\n\nmysql> SELECT i, RAND(3) FROM t;\n+------+------------------+\n| i    | RAND(3)          |\n+------+------------------+\n|    1 | 0.90576975597606 |\n|    2 | 0.37307905813035 |\n|    3 | 0.14808605345719 |\n+------+------------------+\n3 rows in set (0.00 sec)\n\nmysql> SELECT i, RAND() FROM t;\n+------+------------------+\n| i    | RAND()           |\n+------+------------------+\n|    1 | 0.35877890638893 |\n|    2 | 0.28941420772058 |\n|    3 | 0.37073435016976 |\n+------+------------------+\n3 rows in set (0.00 sec)\n\nmysql> SELECT i, RAND(3) FROM t;\n+------+------------------+\n| i    | RAND(3)          |\n+------+------------------+\n|    1 | 0.90576975597606 |\n|    2 | 0.37307905813035 |\n|    3 | 0.14808605345719 |\n+------+------------------+\n3 rows in set (0.01 sec)\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(88, 'RPAD', 38, 'Syntax:\nRPAD(str,len,padstr)\n\nReturns the string str, right-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT RPAD(\'hi\',5,\'?\');\n        -> \'hi???\'\nmysql> SELECT RPAD(\'hi\',1,\'?\');\n        -> \'h\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(89, 'DEC', 23, 'DEC[(M[,D])] [UNSIGNED] [ZEROFILL], NUMERIC[(M[,D])] [UNSIGNED]\n[ZEROFILL], FIXED[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nThese types are synonyms for DECIMAL. The FIXED synonym is available\nfor compatibility with other database systems.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(90, 'ELT', 38, 'Syntax:\nELT(N,str1,str2,str3,...)\n\nELT() returns the Nth element of the list of strings: str1 if N = 1,\nstr2 if N = 2, and so on. Returns NULL if N is less than 1 or greater\nthan the number of arguments. ELT() is the complement of FIELD().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT ELT(1, \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> \'ej\'\nmysql> SELECT ELT(4, \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> \'foo\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(91, 'ALTER VIEW', 40, 'Syntax:\nALTER\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThis statement changes the definition of a view, which must exist. The\nsyntax is similar to that for CREATE VIEW and the effect is the same as\nfor CREATE OR REPLACE VIEW. See [HELP CREATE VIEW]. This statement\nrequires the CREATE VIEW and DROP privileges for the view, and some\nprivilege for each column referred to in the SELECT statement. ALTER\nVIEW is permitted only to the definer or users with the SUPER\nprivilege.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/alter-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/alter-view.html'),
(92, 'SHOW DATABASES', 27, 'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-databases.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-databases.html'),
(93, 'SEC_TO_TIME', 32, 'Syntax:\nSEC_TO_TIME(seconds)\n\nReturns the seconds argument, converted to hours, minutes, and seconds,\nas a TIME value. The range of the result is constrained to that of the\nTIME data type. A warning occurs if the argument corresponds to a value\noutside that range.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT SEC_TO_TIME(2378);\n        -> \'00:39:38\'\nmysql> SELECT SEC_TO_TIME(2378) + 0;\n        -> 3938\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(94, 'LOCATE', 38, 'Syntax:\nLOCATE(substr,str), LOCATE(substr,str,pos)\n\nThe first syntax returns the position of the first occurrence of\nsubstring substr in string str. The second syntax returns the position\nof the first occurrence of substring substr in string str, starting at\nposition pos. Returns 0 if substr is not in str.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT LOCATE(\'bar\', \'foobarbar\');\n        -> 4\nmysql> SELECT LOCATE(\'xbar\', \'foobar\');\n        -> 0\nmysql> SELECT LOCATE(\'bar\', \'foobarbar\', 5);\n        -> 7\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(95, 'SHOW EVENTS', 27, 'Syntax:\nSHOW EVENTS [{FROM | IN} schema_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement displays information about Event Manager events. It\nrequires the EVENT privilege for the database from which the events are\nto be shown.\n\nIn its simplest form, SHOW EVENTS lists all of the events in the\ncurrent schema:\n\nmysql> SELECT CURRENT_USER(), SCHEMA();\n+----------------+----------+\n| CURRENT_USER() | SCHEMA() |\n+----------------+----------+\n| jon@ghidora    | myschema |\n+----------------+----------+\n1 row in set (0.00 sec)\n\nmysql> SHOW EVENTS\\G\n*************************** 1. row ***************************\n                  Db: myschema\n                Name: e_daily\n             Definer: jon@ghidora\n           Time zone: SYSTEM\n                Type: RECURRING\n          Execute at: NULL\n      Interval value: 10\n      Interval field: SECOND\n              Starts: 2006-02-09 10:41:23\n                Ends: NULL\n              Status: ENABLED\n          Originator: 0\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n\nTo see events for a specific schema, use the FROM clause. For example,\nto see events for the test schema, use the following statement:\n\nSHOW EVENTS FROM test;\n\nThe LIKE clause, if present, indicates which event names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-events.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-events.html'),
(96, 'LONGTEXT', 23, 'LONGTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\ncharacters. The effective maximum length is less if the value contains\nmulti-byte characters. The effective maximum length of LONGTEXT columns\nalso depends on the configured maximum packet size in the client/server\nprotocol and available memory. Each LONGTEXT value is stored using a\n4-byte length prefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(97, 'KILL', 27, 'Syntax:\nKILL [CONNECTION | QUERY] thread_id\n\nEach connection to mysqld runs in a separate thread. You can see which\nthreads are running with the SHOW PROCESSLIST statement and kill a\nthread with the KILL thread_id statement.\n\nKILL permits an optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given thread_id.\n\no KILL QUERY terminates the statement that the connection is currently\n  executing, but leaves the connection itself intact.\n\nIf you have the PROCESS privilege, you can see all threads. If you have\nthe SUPER privilege, you can kill all threads and statements.\nOtherwise, you can see and kill only your own threads and statements.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\n*Note*: You cannot use KILL with the Embedded MySQL Server library\nbecause the embedded server merely runs inside the threads of the host\napplication. It does not create any connection threads of its own.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/kill.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/kill.html'),
(98, 'DISJOINT', 31, 'Disjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially disjoint from (does\nnot intersect) g2.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(99, 'LPAD', 38, 'Syntax:\nLPAD(str,len,padstr)\n\nReturns the string str, left-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT LPAD(\'hi\',4,\'??\');\n        -> \'??hi\'\nmysql> SELECT LPAD(\'hi\',1,\'??\');\n        -> \'h\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(100, 'OVERLAPS', 31, 'Overlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially overlaps g2. The term\nspatially overlaps is used if two geometries intersect and their\nintersection results in a geometry of the same dimension but not equal\nto either of the given geometries.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(101, 'SET GLOBAL SQL_SLAVE_SKIP_COUNTER', 8, 'Syntax:\nSET GLOBAL sql_slave_skip_counter = N\n\nThis statement skips the next N events from the master. This is useful\nfor recovering from replication stops caused by a statement.\n\nThis statement is valid only when the slave threads are not running.\nOtherwise, it produces an error.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/set-global-sql-slave-skip-counter.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/set-global-sql-slave-skip-counter.html'),
(102, 'MBREQUAL', 6, 'MBREqual(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are the same.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(103, 'PROCEDURE ANALYSE', 34, 'Syntax:\nANALYSE([max_elements[,max_memory]])\n\nANALYSE() examines the result from a query and returns an analysis of\nthe results that suggests optimal data types for each column that may\nhelp reduce table sizes. To obtain this analysis, append PROCEDURE\nANALYSE to the end of a SELECT statement:\n\nSELECT ... FROM ... WHERE ... PROCEDURE ANALYSE([max_elements,[max_memory]])\n\nFor example:\n\nSELECT col1, col2 FROM table1 PROCEDURE ANALYSE(10, 2000);\n\nThe results show some statistics for the values returned by the query,\nand propose an optimal data type for the columns. This can be helpful\nfor checking your existing tables, or after importing new data. You may\nneed to try different settings for the arguments so that PROCEDURE\nANALYSE() does not suggest the ENUM data type when it is not\nappropriate.\n\nThe arguments are optional and are used as follows:\n\no max_elements (default 256) is the maximum number of distinct values\n  that ANALYSE() notices per column. This is used by ANALYSE() to check\n  whether the optimal data type should be of type ENUM; if there are\n  more than max_elements distinct values, then ENUM is not a suggested\n  type.\n\no max_memory (default 8192) is the maximum amount of memory that\n  ANALYSE() should allocate per column while trying to find all\n  distinct values.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/procedure-analyse.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/procedure-analyse.html'),
(104, 'HELP_VERSION', 9, 'This help information was generated from the MySQL 5.6 Reference Manual\non: 2013-04-05 (revision: 34849)\n\nThis information applies to MySQL 5.6 through 5.6.12.\n', '', ''),
(105, 'CHARACTER_LENGTH', 38, 'Syntax:\nCHARACTER_LENGTH(str)\n\nCHARACTER_LENGTH() is a synonym for CHAR_LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(106, 'SHOW PRIVILEGES', 27, 'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The exact list of privileges depends on the version of\nyour server.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-privileges.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-privileges.html'),
(107, 'INSERT FUNCTION', 38, 'Syntax:\nINSERT(str,pos,len,newstr)\n\nReturns the string str, with the substring beginning at position pos\nand len characters long replaced by the string newstr. Returns the\noriginal string if pos is not within the length of the string. Replaces\nthe rest of the string from position pos if len is not within the\nlength of the rest of the string. Returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT INSERT(\'Quadratic\', 3, 4, \'What\');\n        -> \'QuWhattic\'\nmysql> SELECT INSERT(\'Quadratic\', -1, 4, \'What\');\n        -> \'Quadratic\'\nmysql> SELECT INSERT(\'Quadratic\', 3, 100, \'What\');\n        -> \'QuWhat\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(108, 'XOR', 15, 'Syntax:\nXOR\n\nLogical XOR. Returns NULL if either operand is NULL. For non-NULL\noperands, evaluates to 1 if an odd number of operands is nonzero,\notherwise 0 is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html\n\n', 'mysql> SELECT 1 XOR 1;\n        -> 0\nmysql> SELECT 1 XOR 0;\n        -> 1\nmysql> SELECT 1 XOR NULL;\n        -> NULL\nmysql> SELECT 1 XOR 1 XOR 1;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html'),
(109, 'GRANT', 10, 'Syntax:\nGRANT\n    priv_type [(column_list)]\n      [, priv_type [(column_list)]] ...\n    ON [object_type] priv_level\n    TO user_specification [, user_specification] ...\n    [REQUIRE {NONE | ssl_option [[AND] ssl_option] ...}]\n    [WITH with_option ...]\n\nGRANT PROXY ON user_specification\n    TO user_specification [, user_specification] ...\n    [WITH GRANT OPTION]\n\nobject_type:\n    TABLE\n  | FUNCTION\n  | PROCEDURE\n\npriv_level:\n    *\n  | *.*\n  | db_name.*\n  | db_name.tbl_name\n  | tbl_name\n  | db_name.routine_name\n\nuser_specification:\n    user\n    [\n        IDENTIFIED BY [PASSWORD] \'password\'\n      | IDENTIFIED WITH auth_plugin [AS \'auth_string\']\n    ]\n\nssl_option:\n    SSL\n  | X509\n  | CIPHER \'cipher\'\n  | ISSUER \'issuer\'\n  | SUBJECT \'subject\'\n\nwith_option:\n    GRANT OPTION\n  | MAX_QUERIES_PER_HOUR count\n  | MAX_UPDATES_PER_HOUR count\n  | MAX_CONNECTIONS_PER_HOUR count\n  | MAX_USER_CONNECTIONS count\n\nThe GRANT statement grants privileges to MySQL user accounts. GRANT\nalso serves to specify other account characteristics such as use of\nsecure connections and limits on access to server resources. To use\nGRANT, you must have the GRANT OPTION privilege, and you must have the\nprivileges that you are granting.\n\nNormally, a database administrator first uses CREATE USER to create an\naccount, then GRANT to define its privileges and characteristics. For\nexample:\n\nCREATE USER \'jeffrey\'@\'localhost\' IDENTIFIED BY \'mypass\';\nGRANT ALL ON db1.* TO \'jeffrey\'@\'localhost\';\nGRANT SELECT ON db2.invoice TO \'jeffrey\'@\'localhost\';\nGRANT USAGE ON *.* TO \'jeffrey\'@\'localhost\' WITH MAX_QUERIES_PER_HOUR 90;\n\nHowever, if an account named in a GRANT statement does not already\nexist, GRANT may create it under the conditions described later in the\ndiscussion of the NO_AUTO_CREATE_USER SQL mode.\n\nThe REVOKE statement is related to GRANT and enables administrators to\nremove account privileges. See [HELP REVOKE].\n\nWhen successfully executed from the mysql program, GRANT responds with\nQuery OK, 0 rows affected. To determine what privileges result from the\noperation, use SHOW GRANTS. See [HELP SHOW GRANTS].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/grant.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/grant.html'),
(110, 'MBRINTERSECTS', 6, 'MBRIntersects(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 intersect.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(111, 'IS NOT', 19, 'Syntax:\nIS NOT boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NOT UNKNOWN, 0 IS NOT UNKNOWN, NULL IS NOT UNKNOWN;\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(112, 'SQRT', 4, 'Syntax:\nSQRT(X)\n\nReturns the square root of a nonnegative number X.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT SQRT(4);\n        -> 2\nmysql> SELECT SQRT(20);\n        -> 4.4721359549996\nmysql> SELECT SQRT(-16);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(113, 'CREATE INDEX', 40, 'Syntax:\nCREATE [UNIQUE|FULLTEXT|SPATIAL] INDEX index_name\n    [index_type]\n    ON tbl_name (index_col_name,...)\n    [algorithm_option | lock_option] ...\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nindex_option:\n    KEY_BLOCK_SIZE [=] value\n  | index_type\n  | WITH PARSER parser_name\n  | COMMENT \'string\'\n\nalgorithm_option:\n    ALGORITHM [=] {DEFAULT|INPLACE|COPY}\n\nlock_option:\n    LOCK [=] {DEFAULT|NONE|SHARED|EXCLUSIVE}\n\nCREATE INDEX is mapped to an ALTER TABLE statement to create indexes.\nSee [HELP ALTER TABLE]. CREATE INDEX cannot be used to create a PRIMARY\nKEY; use ALTER TABLE instead. For more information about indexes, see\nhttp://dev.mysql.com/doc/refman/5.6/en/mysql-indexes.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/create-index.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(114, 'ALTER DATABASE', 40, 'Syntax:\nALTER {DATABASE | SCHEMA} [db_name]\n    alter_specification ...\nALTER {DATABASE | SCHEMA} db_name\n    UPGRADE DATA DIRECTORY NAME\n\nalter_specification:\n    [DEFAULT] CHARACTER SET [=] charset_name\n  | [DEFAULT] COLLATE [=] collation_name\n\nALTER DATABASE enables you to change the overall characteristics of a\ndatabase. These characteristics are stored in the db.opt file in the\ndatabase directory. To use ALTER DATABASE, you need the ALTER privilege\non the database. ALTER SCHEMA is a synonym for ALTER DATABASE.\n\nThe database name can be omitted from the first syntax, in which case\nthe statement applies to the default database.\n\nNational Language Characteristics\n\nThe CHARACTER SET clause changes the default database character set.\nThe COLLATE clause changes the default database collation.\nhttp://dev.mysql.com/doc/refman/5.6/en/charset.html, discusses\ncharacter set and collation names.\n\nYou can see what character sets and collations are available using,\nrespectively, the SHOW CHARACTER SET and SHOW COLLATION statements. See\n[HELP SHOW CHARACTER SET], and [HELP SHOW COLLATION], for more\ninformation.\n\nIf you change the default character set or collation for a database,\nstored routines that use the database defaults must be dropped and\nrecreated so that they use the new defaults. (In a stored routine,\nvariables with character data types use the database defaults if the\ncharacter set or collation are not specified explicitly. See [HELP\nCREATE PROCEDURE].)\n\nUpgrading from Versions Older than MySQL 5.1\n\nThe syntax that includes the UPGRADE DATA DIRECTORY NAME clause updates\nthe name of the directory associated with the database to use the\nencoding implemented in MySQL 5.1 for mapping database names to\ndatabase directory names (see\nhttp://dev.mysql.com/doc/refman/5.6/en/identifier-mapping.html). This\nclause is for use under these conditions:\n\no It is intended when upgrading MySQL to 5.1 or later from older\n  versions.\n\no It is intended to update a database directory name to the current\n  encoding format if the name contains special characters that need\n  encoding.\n\no The statement is used by mysqlcheck (as invoked by mysql_upgrade).\n\nFor example, if a database in MySQL 5.0 has the name a-b-c, the name\ncontains instances of the - (dash) character. In MySQL 5.0, the\ndatabase directory is also named a-b-c, which is not necessarily safe\nfor all file systems. In MySQL 5.1 and later, the same database name is\nencoded as a@002db@002dc to produce a file system-neutral directory\nname.\n\nWhen a MySQL installation is upgraded to MySQL 5.1 or later from an\nolder version,the server displays a name such as a-b-c (which is in the\nold format) as #mysql50#a-b-c, and you must refer to the name using the\n#mysql50# prefix. Use UPGRADE DATA DIRECTORY NAME in this case to\nexplicitly tell the server to re-encode the database directory name to\nthe current encoding format:\n\nALTER DATABASE `#mysql50#a-b-c` UPGRADE DATA DIRECTORY NAME;\n\nAfter executing this statement, you can refer to the database as a-b-c\nwithout the special #mysql50# prefix.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/alter-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/alter-database.html'),
(115, 'GEOMETRYN', 26, 'GeometryN(gc,N)\n\nReturns the N-th geometry in the GeometryCollection value gc.\nGeometries are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SET @gc = \'GeometryCollection(Point(1 1),LineString(2 2, 3 3))\';\nmysql> SELECT AsText(GeometryN(GeomFromText(@gc),1));\n+----------------------------------------+\n| AsText(GeometryN(GeomFromText(@gc),1)) |\n+----------------------------------------+\n| POINT(1 1)                             |\n+----------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(116, '<<', 20, 'Syntax:\n<<\n\nShifts a longlong (BIGINT) number to the left.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html\n\n', 'mysql> SELECT 1 << 2;\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html'),
(117, 'SHOW TABLE STATUS', 27, 'Syntax:\nSHOW TABLE STATUS [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each non-TEMPORARY table. You can also get this list\nusing the mysqlshow --status db_name command. The LIKE clause, if\npresent, indicates which table names to match. The WHERE clause can be\ngiven to select rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-table-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-table-status.html'),
(118, 'ASCII', 38, 'Syntax:\nASCII(str)\n\nReturns the numeric value of the leftmost character of the string str.\nReturns 0 if str is the empty string. Returns NULL if str is NULL.\nASCII() works for 8-bit characters.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT ASCII(\'2\');\n        -> 50\nmysql> SELECT ASCII(2);\n        -> 50\nmysql> SELECT ASCII(\'dx\');\n        -> 100\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(119, 'DIV', 4, 'Syntax:\nDIV\n\nInteger division. Similar to FLOOR(), but is safe with BIGINT values.\n\nIn MySQL 5.6, if either operand has a noninteger type, the operands are\nconverted to DECIMAL and divided using DECIMAL arithmetic before\nconverting the result to BIGINT. If the result exceeds BIGINT range, an\nerror occurs.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html\n\n', 'mysql> SELECT 5 DIV 2;\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html'),
(120, 'SHOW SLAVE STATUS', 27, 'Syntax:\nSHOW SLAVE STATUS\n\nThis statement provides status information on essential parameters of\nthe slave threads. It requires either the SUPER or REPLICATION CLIENT\nprivilege.\n\nIf you issue this statement using the mysql client, you can use a \\G\nstatement terminator rather than a semicolon to obtain a more readable\nvertical layout:\n\nmysql> SHOW SLAVE STATUS\\G\n*************************** 1. row ***************************\n               Slave_IO_State: Waiting for master to send event\n                  Master_Host: localhost\n                  Master_User: root\n                  Master_Port: 13000\n                Connect_Retry: 60\n              Master_Log_File: master-bin.000002\n          Read_Master_Log_Pos: 1307\n               Relay_Log_File: slave-relay-bin.000003\n                Relay_Log_Pos: 1508\n        Relay_Master_Log_File: master-bin.000002\n             Slave_IO_Running: Yes\n            Slave_SQL_Running: Yes\n              Replicate_Do_DB:\n          Replicate_Ignore_DB:\n           Replicate_Do_Table:\n       Replicate_Ignore_Table:\n      Replicate_Wild_Do_Table:\n  Replicate_Wild_Ignore_Table:\n                   Last_Errno: 0\n                   Last_Error:\n                 Skip_Counter: 0\n          Exec_Master_Log_Pos: 1307\n              Relay_Log_Space: 1858\n              Until_Condition: None\n               Until_Log_File:\n                Until_Log_Pos: 0\n           Master_SSL_Allowed: No\n           Master_SSL_CA_File:\n           Master_SSL_CA_Path:\n              Master_SSL_Cert:\n            Master_SSL_Cipher:\n               Master_SSL_Key:\n        Seconds_Behind_Master: 0\nMaster_SSL_Verify_Server_Cert: No\n                Last_IO_Errno: 0\n                Last_IO_Error:\n               Last_SQL_Errno: 0\n               Last_SQL_Error:\n  Replicate_Ignore_Server_Ids:\n             Master_Server_Id: 1\n                  Master_UUID: 3e11fa47-71ca-11e1-9e33-c80aa9429562\n             Master_Info_File: /var/mysqld.2/data/master.info\n                    SQL_Delay: 0\n          SQL_Remaining_Delay: NULL\n      Slave_SQL_Running_State: Slave has read all relay log; waiting for the slave I/O thread to update it\n           Master_Retry_Count: 10\n                  Master_Bind:\n      Last_IO_Error_Timestamp:\n     Last_SQL_Error_Timestamp:\n               Master_SSL_Crl:\n           Master_SSL_Crlpath:\n           Retrieved_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5\n            Executed_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5\n                Auto_Position: 1\n1 row in set (0.00 sec)\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-slave-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-slave-status.html'),
(121, 'GEOMETRY', 35, 'MySQL provides a standard way of creating spatial columns for geometry\ntypes, for example, with CREATE TABLE or ALTER TABLE. Currently,\nspatial columns are supported for MyISAM, InnoDB, NDB\n(http://dev.mysql.com/doc/refman/5.5/en/mysql-cluster.html), and\nARCHIVE tables. See also the annotations about spatial indexes under\n[HELP SPATIAL].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-columns.html\n\n', 'CREATE TABLE geom (g GEOMETRY);\n', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-columns.html'),
(122, '&', 20, 'Syntax:\n&\n\nBitwise AND:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html\n\n', 'mysql> SELECT 29 & 15;\n        -> 13\n', 'http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html'),
(123, 'ASSIGN-EQUAL', 15, 'Syntax:\n=\n\nThis operator is used to perform value assignments in two cases,\ndescribed in the next two paragraphs.\n\nWithin a SET statement, = is treated as an assignment operator that\ncauses the user variable on the left hand side of the operator to take\non the value to its right. (In other words, when used in a SET\nstatement, = is treated identically to :=.) The value on the right hand\nside may be a literal value, another variable storing a value, or any\nlegal expression that yields a scalar value, including the result of a\nquery (provided that this value is a scalar value). You can perform\nmultiple assignments in the same SET statement.\n\nIn the SET clause of an UPDATE statement, = also acts as an assignment\noperator; in this case, however, it causes the column named on the left\nhand side of the operator to assume the value given to the right,\nprovided any WHERE conditions that are part of the UPDATE are met. You\ncan make multiple assignments in the same SET clause of an UPDATE\nstatement.\n\nIn any other context, = is treated as a comparison operator.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/assignment-operators.html\n\n', 'mysql> SELECT @var1, @var2;\n        -> NULL, NULL\nmysql> SELECT @var1 := 1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2 := @var1;\n        -> 1, 1\nmysql> SELECT @var1, @var2;\n        -> 1, 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/assignment-operators.html'),
(124, 'CONVERT', 38, 'Syntax:\nCONVERT(expr,type), CONVERT(expr USING transcoding_name)\n\nThe CONVERT() and CAST() functions take an expression of any type and\nproduce a result value of a specified type.\n\nThe type for the result can be one of the following values:\n\no BINARY[(N)]\n\no CHAR[(N)]\n\no DATE\n\no DATETIME\n\no DECIMAL[(M[,D])]\n\no SIGNED [INTEGER]\n\no TIME\n\no UNSIGNED [INTEGER]\n\nBINARY produces a string with the BINARY data type. See\nhttp://dev.mysql.com/doc/refman/5.6/en/binary-varbinary.html for a\ndescription of how this affects comparisons. If the optional length N\nis given, BINARY(N) causes the cast to use no more than N bytes of the\nargument. Values shorter than N bytes are padded with 0x00 bytes to a\nlength of N.\n\nCHAR(N) causes the cast to use no more than N characters of the\nargument.\n\nCAST() and CONVERT(... USING ...) are standard SQL syntax. The\nnon-USING form of CONVERT() is ODBC syntax.\n\nCONVERT() with USING is used to convert data between different\ncharacter sets. In MySQL, transcoding names are the same as the\ncorresponding character set names. For example, this statement converts\nthe string \'abc\' in the default character set to the corresponding\nstring in the utf8 character set:\n\nSELECT CONVERT(\'abc\' USING utf8);\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html\n\n', 'SELECT enum_col FROM tbl_name ORDER BY CAST(enum_col AS CHAR);\n', 'http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html'),
(125, 'REPEAT LOOP', 24, 'Syntax:\n[begin_label:] REPEAT\n    statement_list\nUNTIL search_condition\nEND REPEAT [end_label]\n\nThe statement list within a REPEAT statement is repeated until the\nsearch_condition expression is true. Thus, a REPEAT always enters the\nloop at least once. statement_list consists of one or more statements,\neach terminated by a semicolon (;) statement delimiter.\n\nA REPEAT statement can be labeled. For the rules regarding label use,\nsee [HELP labels].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/repeat.html\n\n', 'mysql> delimiter //\n\nmysql> CREATE PROCEDURE dorepeat(p1 INT)\n    -> BEGIN\n    ->   SET @x = 0;\n    ->   REPEAT\n    ->     SET @x = @x + 1;\n    ->   UNTIL @x > p1 END REPEAT;\n    -> END\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL dorepeat(1000)//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n+------+\n| @x   |\n+------+\n| 1001 |\n+------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.6/en/repeat.html'),
(126, 'SMALLINT', 23, 'SMALLINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA small integer. The signed range is -32768 to 32767. The unsigned\nrange is 0 to 65535.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(127, 'DOUBLE PRECISION', 23, 'DOUBLE PRECISION[(M,D)] [UNSIGNED] [ZEROFILL], REAL[(M,D)] [UNSIGNED]\n[ZEROFILL]\n\nThese types are synonyms for DOUBLE. Exception: If the REAL_AS_FLOAT\nSQL mode is enabled, REAL is a synonym for FLOAT rather than DOUBLE.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(128, 'ORD', 38, 'Syntax:\nORD(str)\n\nIf the leftmost character of the string str is a multi-byte character,\nreturns the code for that character, calculated from the numeric values\nof its constituent bytes using this formula:\n\n  (1st byte code)\n+ (2nd byte code * 256)\n+ (3rd byte code * 2562) ...\n\nIf the leftmost character is not a multi-byte character, ORD() returns\nthe same value as the ASCII() function.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT ORD(\'2\');\n        -> 50\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(129, 'ENVELOPE', 37, 'Envelope(g)\n\nReturns the Minimum Bounding Rectangle (MBR) for the geometry value g.\nThe result is returned as a Polygon value.\n\nThe polygon is defined by the corner points of the bounding box:\n\nPOLYGON((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SELECT AsText(Envelope(GeomFromText(\'LineString(1 1,2 2)\')));\n+-------------------------------------------------------+\n| AsText(Envelope(GeomFromText(\'LineString(1 1,2 2)\'))) |\n+-------------------------------------------------------+\n| POLYGON((1 1,2 1,2 2,1 2,1 1))                        |\n+-------------------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(130, 'INET_ATON', 14, 'Syntax:\nINET_ATON(expr)\n\nGiven the dotted-quad representation of an IPv4 network address as a\nstring, returns an integer that represents the numeric value of the\naddress in network byte order (big endian). INET_ATON() returns NULL if\nit does not understand its argument.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> SELECT INET_ATON(\'10.0.5.9\');\n        -> 167773449\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(131, 'ISSIMPLE', 37, 'IsSimple(g)\n\nReturns 1 if the geometry value g has no anomalous geometric points,\nsuch as self-intersection or self-tangency. IsSimple() returns 0 if the\nargument is not simple, and NULL if it is NULL.\n\nThe description of each instantiable geometric class given earlier in\nthe chapter includes the specific conditions that cause an instance of\nthat class to be classified as not simple. (See [HELP Geometry\nhierarchy].)\n\nPrior to MySQL 5.6.1, this function always returns 0.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(132, '- BINARY', 4, 'Syntax:\n-\n\nSubtraction:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3-5;\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html'),
(133, 'WKT DEFINITION', 3, 'The Well-Known Text (WKT) representation of Geometry is designed to\nexchange geometry data in ASCII form. For a Backus-Naur grammar that\nspecifies the formal production rules for writing WKT values, see the\nOpenGIS specification document referenced in\nhttp://dev.mysql.com/doc/refman/5.6/en/spatial-extensions.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/gis-wkt-format.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/gis-wkt-format.html'),
(134, 'CURRENT_TIME', 32, 'Syntax:\nCURRENT_TIME, CURRENT_TIME([fsp])\n\nCURRENT_TIME and CURRENT_TIME() are synonyms for CURTIME().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(135, 'REVOKE', 10, 'Syntax:\nREVOKE\n    priv_type [(column_list)]\n      [, priv_type [(column_list)]] ...\n    ON [object_type] priv_level\n    FROM user [, user] ...\n\nREVOKE ALL PRIVILEGES, GRANT OPTION\n    FROM user [, user] ...\n\nREVOKE PROXY ON user\n    FROM user [, user] ...\n\nThe REVOKE statement enables system administrators to revoke privileges\nfrom MySQL accounts. Each account name uses the format described in\nhttp://dev.mysql.com/doc/refman/5.6/en/account-names.html. For example:\n\nREVOKE INSERT ON *.* FROM \'jeffrey\'@\'localhost\';\n\nIf you specify only the user name part of the account name, a host name\npart of \'%\' is used.\n\nFor details on the levels at which privileges exist, the permissible\npriv_type and priv_level values, and the syntax for specifying users\nand passwords, see [HELP GRANT]\n\nTo use the first REVOKE syntax, you must have the GRANT OPTION\nprivilege, and you must have the privileges that you are revoking.\n\nTo revoke all privileges, use the second syntax, which drops all\nglobal, database, table, column, and routine privileges for the named\nuser or users:\n\nREVOKE ALL PRIVILEGES, GRANT OPTION FROM user [, user] ...\n\nTo use this REVOKE syntax, you must have the global CREATE USER\nprivilege or the UPDATE privilege for the mysql database.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/revoke.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/revoke.html'),
(136, 'LAST_DAY', 32, 'Syntax:\nLAST_DAY(date)\n\nTakes a date or datetime value and returns the corresponding value for\nthe last day of the month. Returns NULL if the argument is invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT LAST_DAY(\'2003-02-05\');\n        -> \'2003-02-28\'\nmysql> SELECT LAST_DAY(\'2004-02-05\');\n        -> \'2004-02-29\'\nmysql> SELECT LAST_DAY(\'2004-01-01 01:01:01\');\n        -> \'2004-01-31\'\nmysql> SELECT LAST_DAY(\'2003-03-32\');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(137, 'MEDIUMINT', 23, 'MEDIUMINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA medium-sized integer. The signed range is -8388608 to 8388607. The\nunsigned range is 0 to 16777215.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(138, 'RTRIM', 38, 'Syntax:\nRTRIM(str)\n\nReturns the string str with trailing space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT RTRIM(\'barbar   \');\n        -> \'barbar\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(139, 'EXPLAIN', 29, 'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type] explainable_stmt\n\nexplain_type:\n    EXTENDED\n  | PARTITIONS\n  | FORMAT = format_name\n\nformat_name:\n    TRADITIONAL\n  | JSON\n\nexplainable_stmt:\n      SELECT statement\n    | DELETE statement\n    | INSERT statement\n    | REPLACE statement\n    | UPDATE statement\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query). The\nfollowing discussion uses the DESCRIBE and EXPLAIN keywords in\naccordance with those uses, but the MySQL parser treats them as\ncompletely synonymous.\n\nObtaining Table Structure Information\n\nDESCRIBE provides information about the columns in a table. It is a\nshortcut for SHOW COLUMNS FROM. These statements also display\ninformation for views. (See [HELP SHOW COLUMNS].)\n\ncol_name can be a column name, or a string containing the SQL \"%\" and\n\"_\" wildcard characters to obtain output only for the columns with\nnames matching the string. There is no need to enclose the string\nwithin quotation marks unless it contains spaces or other special\ncharacters.\n\nmysql> DESCRIBE City;\n+------------+----------+------+-----+---------+----------------+\n| Field      | Type     | Null | Key | Default | Extra          |\n+------------+----------+------+-----+---------+----------------+\n| Id         | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name       | char(35) | NO   |     |         |                |\n| Country    | char(3)  | NO   | UNI |         |                |\n| District   | char(20) | YES  | MUL |         |                |\n| Population | int(11)  | NO   |     | 0       |                |\n+------------+----------+------+-----+---------+----------------+\n5 rows in set (0.00 sec)\n\nThe description for SHOW COLUMNS provides more information about the\noutput columns (see [HELP SHOW COLUMNS]).\n\nIf the data types differ from what you expect them to be based on a\nCREATE TABLE statement, note that MySQL sometimes changes data types\nwhen you create or alter a table. The conditions under which this\noccurs are described in\nhttp://dev.mysql.com/doc/refman/5.6/en/silent-column-changes.html.\n\nThe DESCRIBE statement is provided for compatibility with Oracle.\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements\nalso provide information about tables. See [HELP SHOW].\n\nObtaining Query Execution Plan Information\n\nThe EXPLAIN statement provides a way to obtain information about how\nMySQL executes a statement:\n\no When you precede a statement with the keyword EXPLAIN, MySQL displays\n  information from the optimizer about the statement execution plan.\n  That is, MySQL explains how it would process the statement, including\n  information about how tables are joined and in which order. EXPLAIN\n  EXTENDED can be used to obtain additional information.\n\n  As of MySQL 5.6.3, EXPLAIN provides information about SELECT, DELETE,\n  INSERT, REPLACE, and UPDATE statements. Before MySQL 5.6.3, EXPLAIN\n  provides information only about SELECT statements.\n\n  For information about using EXPLAIN and EXPLAIN EXTENDED to obtain\n  query execution plan information, see\n  http://dev.mysql.com/doc/refman/5.6/en/using-explain.html.\n\no EXPLAIN PARTITIONS is useful only when examining queries involving\n  partitioned tables. For details, see\n  http://dev.mysql.com/doc/refman/5.6/en/partitioning-info.html.\n\no As of MySQL 5.6.5, the FORMAT option can be used to select the output\n  format. TRADITIONAL presents the output in tabular format. This is\n  the default if no FORMAT option is present. JSON format displays the\n  information in JSON format. With FORMAT = JSON, the output includes\n  extended and partition information.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/explain.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/explain.html'),
(140, 'DEGREES', 4, 'Syntax:\nDEGREES(X)\n\nReturns the argument X, converted from radians to degrees.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT DEGREES(PI());\n        -> 180\nmysql> SELECT DEGREES(PI() / 2);\n        -> 90\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(141, '- UNARY', 4, 'Syntax:\n-\n\nUnary minus. This operator changes the sign of the operand.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html\n\n', 'mysql> SELECT - 2;\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html'),
(142, 'VARCHAR', 23, '[NATIONAL] VARCHAR(M) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA variable-length string. M represents the maximum column length in\ncharacters. The range of M is 0 to 65,535. The effective maximum length\nof a VARCHAR is subject to the maximum row size (65,535 bytes, which is\nshared among all columns) and the character set used. For example, utf8\ncharacters can require up to three bytes per character, so a VARCHAR\ncolumn that uses the utf8 character set can be declared to be a maximum\nof 21,844 characters. See\nhttp://dev.mysql.com/doc/refman/5.6/en/column-count-limit.html.\n\nMySQL stores VARCHAR values as a 1-byte or 2-byte length prefix plus\ndata. The length prefix indicates the number of bytes in the value. A\nVARCHAR column uses one length byte if values require no more than 255\nbytes, two length bytes if values may require more than 255 bytes.\n\n*Note*: MySQL 5.6 follows the standard SQL specification, and does not\nremove trailing spaces from VARCHAR values.\n\nVARCHAR is shorthand for CHARACTER VARYING. NATIONAL VARCHAR is the\nstandard SQL way to define that a VARCHAR column should use some\npredefined character set. MySQL 4.1 and up uses utf8 as this predefined\ncharacter set.\nhttp://dev.mysql.com/doc/refman/5.6/en/charset-national.html. NVARCHAR\nis shorthand for NATIONAL VARCHAR.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(143, 'UNHEX', 38, 'Syntax:\n\nUNHEX(str)\n\nFor a string argument str, UNHEX(str) performs the inverse operation of\nHEX(str). That is, it interprets each pair of characters in the\nargument as a hexadecimal number and converts it to the character\nrepresented by the number. The return value is a binary string.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT UNHEX(\'4D7953514C\');\n        -> \'MySQL\'\nmysql> SELECT 0x4D7953514C;\n        -> \'MySQL\'\nmysql> SELECT UNHEX(HEX(\'string\'));\n        -> \'string\'\nmysql> SELECT HEX(UNHEX(\'1267\'));\n        -> \'1267\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(144, 'DROP TRIGGER', 40, 'Syntax:\nDROP TRIGGER [IF EXISTS] [schema_name.]trigger_name\n\nThis statement drops a trigger. The schema (database) name is optional.\nIf the schema is omitted, the trigger is dropped from the default\nschema. DROP TRIGGER requires the TRIGGER privilege for the table\nassociated with the trigger.\n\nUse IF EXISTS to prevent an error from occurring for a trigger that\ndoes not exist. A NOTE is generated for a nonexistent trigger when\nusing IF EXISTS. See [HELP SHOW WARNINGS].\n\nTriggers for a table are also dropped if you drop the table.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/drop-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/drop-trigger.html'),
(145, 'RESET MASTER', 8, 'Syntax:\nRESET MASTER\n\nDeletes all binary log files listed in the index file, resets the\nbinary log index file to be empty, and creates a new binary log file.\n\nIn MySQL 5.6.5 and later, RESET MASTER also clears the values of the\ngtid_purged system variable (known as gtid_lost in MySQL 5.6.8 and\nearlier) as well as the global value of the gtid_executed (gtid_done,\nprior to MySQL 5.6.9) system variable (but not its session value); that\nis, executing this statement sets each of these values to an empty\nstring (\'\').\n\nThis statement is intended to be used only when the master is started\nfor the first time.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/reset-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/reset-master.html'),
(146, 'PI', 4, 'Syntax:\nPI()\n\nReturns the value of π (pi). The default number of decimal places\ndisplayed is seven, but MySQL uses the full double-precision value\ninternally.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT PI();\n        -> 3.141593\nmysql> SELECT PI()+0.000000000000000000;\n        -> 3.141592653589793116\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(147, '/', 4, 'Syntax:\n/\n\nDivision:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3/5;\n        -> 0.60\n', 'http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html'),
(148, 'PURGE BINARY LOGS', 8, 'Syntax:\nPURGE { BINARY | MASTER } LOGS\n    { TO \'log_name\' | BEFORE datetime_expr }\n\nThe binary log is a set of files that contain information about data\nmodifications made by the MySQL server. The log consists of a set of\nbinary log files, plus an index file (see\nhttp://dev.mysql.com/doc/refman/5.6/en/binary-log.html).\n\nThe PURGE BINARY LOGS statement deletes all the binary log files listed\nin the log index file prior to the specified log file name or date.\nBINARY and MASTER are synonyms. Deleted log files also are removed from\nthe list recorded in the index file, so that the given log file becomes\nthe first in the list.\n\nThis statement has no effect if the server was not started with the\n--log-bin option to enable binary logging.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/purge-binary-logs.html\n\n', 'PURGE BINARY LOGS TO \'mysql-bin.010\';\nPURGE BINARY LOGS BEFORE \'2008-04-02 22:46:26\';\n', 'http://dev.mysql.com/doc/refman/5.6/en/purge-binary-logs.html'),
(149, 'STDDEV_SAMP', 16, 'Syntax:\nSTDDEV_SAMP(expr)\n\nReturns the sample standard deviation of expr (the square root of\nVAR_SAMP().\n\nSTDDEV_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(150, 'ST_TOUCHES', 31, 'ST_Touches(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially touches g2. Two\ngeometries spatially touch if the interiors of the geometries do not\nintersect, but the boundary of one of the geometries intersects either\nthe boundary or the interior of the other.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(151, 'SCHEMA', 17, 'Syntax:\nSCHEMA()\n\nThis function is a synonym for DATABASE().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(152, 'MLINEFROMWKB', 33, 'MLineFromWKB(wkb[,srid]), MultiLineStringFromWKB(wkb[,srid])\n\nConstructs a MULTILINESTRING value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(153, 'SHOW CREATE TABLE', 27, 'Syntax:\nSHOW CREATE TABLE tbl_name\n\nShows the CREATE TABLE statement that creates the given table. To use\nthis statement, you must have some privilege for the table. This\nstatement also works with views.\nSHOW CREATE TABLE quotes table and column names according to the value\nof the sql_quote_show_create option. See\nhttp://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-create-table.html\n\n', 'mysql> SHOW CREATE TABLE t\\G\n*************************** 1. row ***************************\n       Table: t\nCreate Table: CREATE TABLE t (\n  id INT(11) default NULL auto_increment,\n  s char(60) default NULL,\n  PRIMARY KEY (id)\n) ENGINE=MyISAM\n', 'http://dev.mysql.com/doc/refman/5.6/en/show-create-table.html'),
(154, 'DUAL', 28, 'You are permitted to specify DUAL as a dummy table name in situations\nwhere no tables are referenced:\n\nmysql> SELECT 1 + 1 FROM DUAL;\n        -> 2\n\nDUAL is purely for the convenience of people who require that all\nSELECT statements should have FROM and possibly other clauses. MySQL\nmay ignore the clauses. MySQL does not require FROM DUAL if no tables\nare referenced.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/select.html'),
(155, 'INSTR', 38, 'Syntax:\nINSTR(str,substr)\n\nReturns the position of the first occurrence of substring substr in\nstring str. This is the same as the two-argument form of LOCATE(),\nexcept that the order of the arguments is reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT INSTR(\'foobarbar\', \'bar\');\n        -> 4\nmysql> SELECT INSTR(\'xbar\', \'foobar\');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(156, '>=', 19, 'Syntax:\n>=\n\nGreater than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 2 >= 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(157, 'EXP', 4, 'Syntax:\nEXP(X)\n\nReturns the value of e (the base of natural logarithms) raised to the\npower of X. The inverse of this function is LOG() (using a single\nargument only) or LN().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT EXP(2);\n        -> 7.3890560989307\nmysql> SELECT EXP(-2);\n        -> 0.13533528323661\nmysql> SELECT EXP(0);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(158, 'POINTN', 13, 'PointN(ls,N)\n\nReturns the N-th Point in the Linestring value ls. Points are numbered\nbeginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(PointN(GeomFromText(@ls),2));\n+-------------------------------------+\n| AsText(PointN(GeomFromText(@ls),2)) |\n+-------------------------------------+\n| POINT(2 2)                          |\n+-------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(159, 'OCT', 38, 'Syntax:\nOCT(N)\n\nReturns a string representation of the octal value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,8). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT OCT(12);\n        -> \'14\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(160, 'SYSDATE', 32, 'Syntax:\nSYSDATE()\n\nReturns the current date and time as a value in \'YYYY-MM-DD HH:MM:SS\'\nor YYYYMMDDHHMMSS format, depending on whether the function is used in\na string or numeric context.\n\nSYSDATE() returns the time at which it executes. This differs from the\nbehavior for NOW(), which returns a constant time that indicates the\ntime at which the statement began to execute. (Within a stored function\nor trigger, NOW() returns the time at which the function or triggering\nstatement began to execute.)\n\nmysql> SELECT NOW(), SLEEP(2), NOW();\n+---------------------+----------+---------------------+\n| NOW()               | SLEEP(2) | NOW()               |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:36 |        0 | 2006-04-12 13:47:36 |\n+---------------------+----------+---------------------+\n\nmysql> SELECT SYSDATE(), SLEEP(2), SYSDATE();\n+---------------------+----------+---------------------+\n| SYSDATE()           | SLEEP(2) | SYSDATE()           |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:44 |        0 | 2006-04-12 13:47:46 |\n+---------------------+----------+---------------------+\n\nIn addition, the SET TIMESTAMP statement affects the value returned by\nNOW() but not by SYSDATE(). This means that timestamp settings in the\nbinary log have no effect on invocations of SYSDATE().\n\nBecause SYSDATE() can return different values even within the same\nstatement, and is not affected by SET TIMESTAMP, it is nondeterministic\nand therefore unsafe for replication if statement-based binary logging\nis used. If that is a problem, you can use row-based logging.\n\nAlternatively, you can use the --sysdate-is-now option to cause\nSYSDATE() to be an alias for NOW(). This works if the option is used on\nboth the master and the slave.\n\nThe nondeterministic nature of SYSDATE() also means that indexes cannot\nbe used for evaluating expressions that refer to it.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(161, 'UNINSTALL PLUGIN', 5, 'Syntax:\nUNINSTALL PLUGIN plugin_name\n\nThis statement removes an installed server plugin. It requires the\nDELETE privilege for the mysql.plugin table.\n\nplugin_name must be the name of some plugin that is listed in the\nmysql.plugin table. The server executes the plugin\'s deinitialization\nfunction and removes the row for the plugin from the mysql.plugin\ntable, so that subsequent server restarts will not load and initialize\nthe plugin. UNINSTALL PLUGIN does not remove the plugin\'s shared\nlibrary file.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/uninstall-plugin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/uninstall-plugin.html'),
(162, 'ASBINARY', 33, 'AsBinary(g), AsWKB(g)\n\nConverts a value in internal geometry format to its WKB representation\nand returns the binary result.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-to-convert-geometries-between-formats.html\n\n', 'SELECT AsBinary(g) FROM geom;\n', 'http://dev.mysql.com/doc/refman/5.6/en/functions-to-convert-geometries-between-formats.html'),
(163, 'SHOW TABLES', 27, 'Syntax:\nSHOW [FULL] TABLES [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.\n\nMatching performed by the LIKE clause is dependent on the setting of\nthe lower_case_table_names system variable.\n\nThis statement also lists any views in the database. The FULL modifier\nis supported such that SHOW FULL TABLES displays a second output\ncolumn. Values for the second column are BASE TABLE for a table and\nVIEW for a view.\n\nIf you have no privileges for a base table or view, it does not show up\nin the output from SHOW TABLES or mysqlshow db_name.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-tables.html'),
(164, 'MAKEDATE', 32, 'Syntax:\nMAKEDATE(year,dayofyear)\n\nReturns a date, given year and day-of-year values. dayofyear must be\ngreater than 0 or the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT MAKEDATE(2011,31), MAKEDATE(2011,32);\n        -> \'2011-01-31\', \'2011-02-01\'\nmysql> SELECT MAKEDATE(2011,365), MAKEDATE(2014,365);\n        -> \'2011-12-31\', \'2014-12-31\'\nmysql> SELECT MAKEDATE(2011,0);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(165, 'BINARY OPERATOR', 38, 'Syntax:\nBINARY\n\nThe BINARY operator casts the string following it to a binary string.\nThis is an easy way to force a column comparison to be done byte by\nbyte rather than character by character. This causes the comparison to\nbe case sensitive even if the column is not defined as BINARY or BLOB.\nBINARY also causes trailing spaces to be significant.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html\n\n', 'mysql> SELECT \'a\' = \'A\';\n        -> 1\nmysql> SELECT BINARY \'a\' = \'A\';\n        -> 0\nmysql> SELECT \'a\' = \'a \';\n        -> 1\nmysql> SELECT BINARY \'a\' = \'a \';\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html'),
(166, 'MBROVERLAPS', 6, 'MBROverlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 overlap. The term spatially overlaps is\nused if two geometries intersect and their intersection results in a\ngeometry of the same dimension but not equal to either of the given\ngeometries.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(167, 'INSERT SELECT', 28, 'Syntax:\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name \n    [PARTITION (partition_name,...)]\n    [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nWith INSERT ... SELECT, you can quickly insert many rows into a table\nfrom one or many tables. For example:\n\nINSERT INTO tbl_temp2 (fld_id)\n  SELECT tbl_temp1.fld_order_id\n  FROM tbl_temp1 WHERE tbl_temp1.fld_order_id > 100;\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/insert-select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/insert-select.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(168, 'CREATE PROCEDURE', 40, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    PROCEDURE sp_name ([proc_parameter[,...]])\n    [characteristic ...] routine_body\n\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    FUNCTION sp_name ([func_parameter[,...]])\n    RETURNS type\n    [characteristic ...] routine_body\n\nproc_parameter:\n    [ IN | OUT | INOUT ] param_name type\n\nfunc_parameter:\n    param_name type\n\ntype:\n    Any valid MySQL data type\n\ncharacteristic:\n    COMMENT \'string\'\n  | LANGUAGE SQL\n  | [NOT] DETERMINISTIC\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n\nroutine_body:\n    Valid SQL routine statement\n\nThese statements create stored routines. By default, a routine is\nassociated with the default database. To associate the routine\nexplicitly with a given database, specify the name as db_name.sp_name\nwhen you create it.\n\nThe CREATE FUNCTION statement is also used in MySQL to support UDFs\n(user-defined functions). See\nhttp://dev.mysql.com/doc/refman/5.6/en/adding-functions.html. A UDF can\nbe regarded as an external stored function. Stored functions share\ntheir namespace with UDFs. See\nhttp://dev.mysql.com/doc/refman/5.6/en/function-resolution.html, for\nthe rules describing how the server interprets references to different\nkinds of functions.\n\nTo invoke a stored procedure, use the CALL statement (see [HELP CALL]).\nTo invoke a stored function, refer to it in an expression. The function\nreturns a value during expression evaluation.\n\nCREATE PROCEDURE and CREATE FUNCTION require the CREATE ROUTINE\nprivilege. They might also require the SUPER privilege, depending on\nthe DEFINER value, as described later in this section. If binary\nlogging is enabled, CREATE FUNCTION might require the SUPER privilege,\nas described in\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-programs-logging.html.\n\nBy default, MySQL automatically grants the ALTER ROUTINE and EXECUTE\nprivileges to the routine creator. This behavior can be changed by\ndisabling the automatic_sp_privileges system variable. See\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-routines-privileges.html.\n\nThe DEFINER and SQL SECURITY clauses specify the security context to be\nused when checking access privileges at routine execution time, as\ndescribed later in this section.\n\nIf the routine name is the same as the name of a built-in SQL function,\na syntax error occurs unless you use a space between the name and the\nfollowing parenthesis when defining the routine or invoking it later.\nFor this reason, avoid using the names of existing SQL functions for\nyour own stored routines.\n\nThe IGNORE_SPACE SQL mode applies to built-in functions, not to stored\nroutines. It is always permissible to have spaces after a stored\nroutine name, regardless of whether IGNORE_SPACE is enabled.\n\nThe parameter list enclosed within parentheses must always be present.\nIf there are no parameters, an empty parameter list of () should be\nused. Parameter names are not case sensitive.\n\nEach parameter is an IN parameter by default. To specify otherwise for\na parameter, use the keyword OUT or INOUT before the parameter name.\n\n*Note*: Specifying a parameter as IN, OUT, or INOUT is valid only for a\nPROCEDURE. For a FUNCTION, parameters are always regarded as IN\nparameters.\n\nAn IN parameter passes a value into a procedure. The procedure might\nmodify the value, but the modification is not visible to the caller\nwhen the procedure returns. An OUT parameter passes a value from the\nprocedure back to the caller. Its initial value is NULL within the\nprocedure, and its value is visible to the caller when the procedure\nreturns. An INOUT parameter is initialized by the caller, can be\nmodified by the procedure, and any change made by the procedure is\nvisible to the caller when the procedure returns.\n\nFor each OUT or INOUT parameter, pass a user-defined variable in the\nCALL statement that invokes the procedure so that you can obtain its\nvalue when the procedure returns. If you are calling the procedure from\nwithin another stored procedure or function, you can also pass a\nroutine parameter or local routine variable as an IN or INOUT\nparameter.\n\nRoutine parameters cannot be referenced in statements prepared within\nthe routine; see\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-program-restrictions.html\n.\n\nThe following example shows a simple stored procedure that uses an OUT\nparameter:\n\nmysql> delimiter //\n\nmysql> CREATE PROCEDURE simpleproc (OUT param1 INT)\n    -> BEGIN\n    ->   SELECT COUNT(*) INTO param1 FROM t;\n    -> END//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter ;\n\nmysql> CALL simpleproc(@a);\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @a;\n+------+\n| @a   |\n+------+\n| 3    |\n+------+\n1 row in set (0.00 sec)\n\nThe example uses the mysql client delimiter command to change the\nstatement delimiter from ; to // while the procedure is being defined.\nThis enables the ; delimiter used in the procedure body to be passed\nthrough to the server rather than being interpreted by mysql itself.\nSee\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-programs-defining.html.\n\nThe RETURNS clause may be specified only for a FUNCTION, for which it\nis mandatory. It indicates the return type of the function, and the\nfunction body must contain a RETURN value statement. If the RETURN\nstatement returns a value of a different type, the value is coerced to\nthe proper type. For example, if a function specifies an ENUM or SET\nvalue in the RETURNS clause, but the RETURN statement returns an\ninteger, the value returned from the function is the string for the\ncorresponding ENUM member of set of SET members.\n\nThe following example function takes a parameter, performs an operation\nusing an SQL function, and returns the result. In this case, it is\nunnecessary to use delimiter because the function definition contains\nno internal ; statement delimiters:\n\nmysql> CREATE FUNCTION hello (s CHAR(20))\nmysql> RETURNS CHAR(50) DETERMINISTIC\n    -> RETURN CONCAT(\'Hello, \',s,\'!\');\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT hello(\'world\');\n+----------------+\n| hello(\'world\') |\n+----------------+\n| Hello, world!  |\n+----------------+\n1 row in set (0.00 sec)\n\nParameter types and function return types can be declared to use any\nvalid data type. The COLLATE attribute can be used if preceded by the\nCHARACTER SET attribute.\n\nThe routine_body consists of a valid SQL routine statement. This can be\na simple statement such as SELECT or INSERT, or a compound statement\nwritten using BEGIN and END. Compound statements can contain\ndeclarations, loops, and other control structure statements. The syntax\nfor these statements is described in\nhttp://dev.mysql.com/doc/refman/5.6/en/sql-syntax-compound-statements.h\ntml.\n\nMySQL permits routines to contain DDL statements, such as CREATE and\nDROP. MySQL also permits stored procedures (but not stored functions)\nto contain SQL transaction statements such as COMMIT. Stored functions\nmay not contain statements that perform explicit or implicit commit or\nrollback. Support for these statements is not required by the SQL\nstandard, which states that each DBMS vendor may decide whether to\npermit them.\n\nStatements that return a result set can be used within a stored\nprocedure but not within a stored function. This prohibition includes\nSELECT statements that do not have an INTO var_list clause and other\nstatements such as SHOW, EXPLAIN, and CHECK TABLE. For statements that\ncan be determined at function definition time to return a result set, a\nNot allowed to return a result set from a function error occurs\n(ER_SP_NO_RETSET). For statements that can be determined only at\nruntime to return a result set, a PROCEDURE %s can\'t return a result\nset in the given context error occurs (ER_SP_BADSELECT).\n\nUSE statements within stored routines are not permitted. When a routine\nis invoked, an implicit USE db_name is performed (and undone when the\nroutine terminates). The causes the routine to have the given default\ndatabase while it executes. References to objects in databases other\nthan the routine default database should be qualified with the\nappropriate database name.\n\nFor additional information about statements that are not permitted in\nstored routines, see\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-program-restrictions.html\n.\n\nFor information about invoking stored procedures from within programs\nwritten in a language that has a MySQL interface, see [HELP CALL].\n\nMySQL stores the sql_mode system variable setting that is in effect at\nthe time a routine is created, and always executes the routine with\nthis setting in force, regardless of the server SQL mode in effect when\nthe routine is invoked.\n\nThe switch from the SQL mode of the invoker to that of the routine\noccurs after evaluation of arguments and assignment of the resulting\nvalues to routine parameters. If you define a routine in strict SQL\nmode but invoke it in nonstrict mode, assignment of arguments to\nroutine parameters does not take place in strict mode. If you require\nthat expressions passed to a routine be assigned in strict SQL mode,\nyou should invoke the routine with strict mode in effect.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/create-procedure.html'),
(169, 'SQL_THREAD_WAIT_AFTER_GTIDS', 17, 'Syntax:\nSQL_THREAD_WAIT_AFTER_GTIDS(gtid_set[, timeout])\n\nSQL_THREAD_WAIT_AFTER_GTIDS() was added in MySQL 5.6.5, and replaced by\nWAIT_UNTIL_SQL_THREAD_AFTER_GTIDS() in MySQL 5.6.9. (Bug #14775984)\n\nFor more information, see\nhttp://dev.mysql.com/doc/refman/5.6/en/replication-gtids.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html'),
(170, 'GET DIAGNOSTICS', 24, 'Syntax:\nGET [CURRENT] DIAGNOSTICS\n{\n    statement_information_item\n    [, statement_information_item] ... \n  | CONDITION condition_number\n    condition_information_item\n    [, condition_information_item] ...\n}\n\nstatement_information_item:\n    target = statement_information_item_name\n\ncondition_information_item:\n    target = condition_information_item_name\n\nstatement_information_item_name:\n    NUMBER\n  | ROW_COUNT\n\ncondition_information_item_name:\n    CLASS_ORIGIN\n  | SUBCLASS_ORIGIN\n  | RETURNED_SQLSTATE\n  | MESSAGE_TEXT\n  | MYSQL_ERRNO\n  | CONSTRAINT_CATALOG\n  | CONSTRAINT_SCHEMA\n  | CONSTRAINT_NAME\n  | CATALOG_NAME\n  | SCHEMA_NAME\n  | TABLE_NAME\n  | COLUMN_NAME\n  | CURSOR_NAME\n\ncondition_number, target:\n    (see following discussion)\n\nSQL statements produce diagnostic information that populates the\ndiagnostics area. The GET DIAGNOSTICS statement enables applications to\ninspect this information. No special privileges are required to execute\nGET DIAGNOSTICS, which is available as of MySQL 5.6.4.\n\nThe keyword CURRENT means to retrieve information from the current\ndiagnostics area. In MySQL, it has no effect because that is the\ndefault behavior.\n\nFor a description of the diagnostics area, see\nhttp://dev.mysql.com/doc/refman/5.6/en/diagnostics-area.html. Briefly,\nit contains two kinds of information:\n\no Statement information, such as the affected-rows count or the number\n  of conditions that occurred.\n\no Condition information, such as the error code and message. If a\n  statement raises multiple conditions, this part of the diagnostics\n  area has a condition area for each one. If a statement raises no\n  conditions, this part of the diagnostics area is empty.\n\nFor a statement that produces three conditions, the diagnostics area\ncontains statement and condition information like this:\n\nStatement information:\n  row count\n  ... other statement information items ...\nCondition area list:\n  Condition area 1:\n    error code for condition 1\n    error message for condition 1\n    ... other condition information items ...\n  Condition area 2:\n    error code for condition 2:\n    error message for condition 2\n    ... other condition information items ...\n  Condition area 3:\n    error code for condition 3\n    error message for condition 3\n    ... other condition information items ...\n\nGET DIAGNOSTICS can obtain either statement or condition information,\nbut not both in the same statement:\n\no To obtain statement information, retrieve the desired statement items\n  into target variables:\n\nGET DIAGNOSTICS @p1 = ROW_COUNT, @p2 = NUMBER;\n\no To obtain condition information, specify the condition number and\n  retrieve the desired condition items into target variables:\n\nGET DIAGNOSTICS CONDITION 1\n  @p1 = RETURNED_SQLSTATE, @p2 = MESSAGE_TEXT;\n\nThe retrieval list specifies one or more target = item_name\nassignments, separated by commas. Each assignment names a target\nvariable and either a statement_information_item_name or\ncondition_information_item_name designator, depending on whether the\nstatement retrieves statement or condition information.\n\nValid target designators for storing item information can be stored\nprocedure or function parameters, stored program local variables\ndeclared with DECLARE, or user-defined variables.\n\nValid condition_number designators can be stored procedure or function\nparameters, stored program local variables declared with DECLARE,\nuser-defined variables, system variables, or literals. A character\nliteral may include a _charset introducer. A warning occurs if the\ncondition number is not in the range from 1 to the number of condition\nareas that have information. In this case, the warning is added to the\ndiagnostics area without clearing it.\n\nGET DIAGNOSTICS is typically used within stored programs, but it is a\nMySQL extension that it is permitted outside that context to check the\nexecution of any SQL statement. For example, if you invoke the mysql\nclient program, you can enter these statements at the prompt:\n\nmysql> DROP TABLE test.no_such_table;\nERROR 1051 (42S02): Unknown table \'test.no_such_table\'\nmysql> GET DIAGNOSTICS CONDITION 1\n    ->   @p1 = RETURNED_SQLSTATE, @p2 = MESSAGE_TEXT;\nmysql> SELECT @p1, @p2;\n+-------+------------------------------------+\n| @p1   | @p2                                |\n+-------+------------------------------------+\n| 42S02 | Unknown table \'test.no_such_table\' |\n+-------+------------------------------------+\n\nCurrently, not all condition items recognized by GET DIAGNOSTICS are\npopulated when a condition occurs. For example:\n\nmysql> GET DIAGNOSTICS CONDITION 1\n    ->   @p3 = SCHEMA_NAME, @p4 = TABLE_NAME;\nmysql> SELECT @p3, @p4;\n+------+------+\n| @p3  | @p4  |\n+------+------+\n|      |      |\n+------+------+\n\nFor information about permissible statement and condition information\nitems, and which ones are populated when a condition occurs, see\nhttp://dev.mysql.com/doc/refman/5.6/en/diagnostics-area.html#diagnostic\ns-area-information-items.\n\nHere is an example that uses GET DIAGNOSTICS and an exception handler\nin stored procedure context to assess the outcome of an insert\noperation. If the insert was successful, the procedure also uses GET\nDIAGNOSTICS to get the rows-affected count. This shows that you can use\nGET DIAGNOSTICS multiple times to retrieve information about a\nstatement as long as the diagnostics area has not been cleared.\n\nCREATE PROCEDURE do_insert(value INT)\nBEGIN\n  -- declare variables to hold diagnostics area information\n  DECLARE code CHAR(5) DEFAULT \'00000\';\n  DECLARE msg TEXT;\n  DECLARE rows INT;\n  DECLARE result TEXT;\n  -- declare exception handler for failed insert\n  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION\n    BEGIN\n      GET DIAGNOSTICS CONDITION 1\n        code = RETURNED_SQLSTATE, msg = MESSAGE_TEXT;\n    END;\n\n  -- perform the insert\n  INSERT INTO t1 (int_col) VALUES(value);\n  -- check whether the insert was successful\n  IF code = \'00000\' THEN\n    GET DIAGNOSTICS rows = ROW_COUNT;\n    SET result = CONCAT(\'insert succeeded, row count = \',rows);\n  ELSE\n    SET result = CONCAT(\'insert failed, error = \',code,\', message = \',msg);\n  END IF;\n  -- say what happened\n  SELECT result;\nEND;\n\nSuppose that t1.int_col is an integer column that is declared as NOT\nNULL. The procedure produces these results:\n\nmysql> CALL do_insert(1);\n+---------------------------------+\n| result                          |\n+---------------------------------+\n| insert succeeded, row count = 1 |\n+---------------------------------+\n\nmysql> CALL do_insert(NULL);\n+-------------------------------------------------------------------------+\n| result                                                                  |\n+-------------------------------------------------------------------------+\n| insert failed, error = 23000, message = Column \'int_col\' cannot be null |\n+-------------------------------------------------------------------------+\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/get-diagnostics.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/get-diagnostics.html'),
(171, 'NOT REGEXP', 38, 'Syntax:\nexpr NOT REGEXP pat, expr NOT RLIKE pat\n\nThis is the same as NOT (expr REGEXP pat).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/regexp.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/regexp.html'),
(172, 'LEAVE', 24, 'Syntax:\nLEAVE label\n\nThis statement is used to exit the flow control construct that has the\ngiven label. If the label is for the outermost stored program block,\nLEAVE exits the program.\n\nLEAVE can be used within BEGIN ... END or loop constructs (LOOP,\nREPEAT, WHILE).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/leave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/leave.html'),
(173, 'NOT IN', 19, 'Syntax:\nexpr NOT IN (value,...)\n\nThis is the same as NOT (expr IN (value,...)).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(174, '&&', 15, 'Syntax:\nAND, &&\n\nLogical AND. Evaluates to 1 if all operands are nonzero and not NULL,\nto 0 if one or more operands are 0, otherwise NULL is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html\n\n', 'mysql> SELECT 1 && 1;\n        -> 1\nmysql> SELECT 1 && 0;\n        -> 0\nmysql> SELECT 1 && NULL;\n        -> NULL\nmysql> SELECT 0 && NULL;\n        -> 0\nmysql> SELECT NULL && 0;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html'),
(175, 'X', 11, 'X(p)\n\nReturns the X-coordinate value for the Point object p as a\ndouble-precision number.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SELECT X(POINT(56.7, 53.34));\n+-----------------------+\n| X(POINT(56.7, 53.34)) |\n+-----------------------+\n|                  56.7 |\n+-----------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(176, 'FOUND_ROWS', 17, 'Syntax:\nFOUND_ROWS()\n\nA SELECT statement may include a LIMIT clause to restrict the number of\nrows the server returns to the client. In some cases, it is desirable\nto know how many rows the statement would have returned without the\nLIMIT, but without running the statement again. To obtain this row\ncount, include a SQL_CALC_FOUND_ROWS option in the SELECT statement,\nand then invoke FOUND_ROWS() afterward:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', 'mysql> SELECT SQL_CALC_FOUND_ROWS * FROM tbl_name\n    -> WHERE id > 100 LIMIT 10;\nmysql> SELECT FOUND_ROWS();\n', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(177, 'CROSSES', 31, 'Crosses(g1,g2)\n\nReturns 1 if g1 spatially crosses g2. Returns NULL if g1 is a Polygon\nor a MultiPolygon, or if g2 is a Point or a MultiPoint. Otherwise,\nreturns 0.\n\nThe term spatially crosses denotes a spatial relation between two given\ngeometries that has the following properties:\n\no The two geometries intersect\n\no Their intersection results in a geometry that has a dimension that is\n  one less than the maximum dimension of the two given geometries\n\no Their intersection is not equal to either of the two given geometries\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(178, 'BIT_XOR', 16, 'Syntax:\nBIT_XOR(expr)\n\nReturns the bitwise XOR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(179, 'FLUSH', 27, 'Syntax:\nFLUSH [NO_WRITE_TO_BINLOG | LOCAL]\n    flush_option [, flush_option] ...\n\nThe FLUSH statement has several variant forms that clear or reload\nvarious internal caches, flush tables, or acquire locks. To execute\nFLUSH, you must have the RELOAD privilege. Specific flush options might\nrequire additional privileges, as described later.\n\nBy default, the server writes FLUSH statements to the binary log so\nthat they replicate to replication slaves. To suppress logging, use the\noptional NO_WRITE_TO_BINLOG keyword or its alias LOCAL.\n\n*Note*: FLUSH LOGS, FLUSH TABLES WITH READ LOCK (with or without a\ntable list), and FLUSH TABLES tbl_name ... FOR EXPORT are not written\nto the binary log in any case because they would cause problems if\nreplicated to a slave.\n\nThe FLUSH statement causes an implicit commit. See\nhttp://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET], for\ninformation about using the RESET statement with replication.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/flush.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/flush.html'),
(180, 'BEGIN END', 24, 'Syntax:\n[begin_label:] BEGIN\n    [statement_list]\nEND [end_label]\n\nBEGIN ... END syntax is used for writing compound statements, which can\nappear within stored programs (stored procedures and functions,\ntriggers, and events). A compound statement can contain multiple\nstatements, enclosed by the BEGIN and END keywords. statement_list\nrepresents a list of one or more statements, each terminated by a\nsemicolon (;) statement delimiter. The statement_list itself is\noptional, so the empty compound statement (BEGIN END) is legal.\n\nBEGIN ... END blocks can be nested.\n\nUse of multiple statements requires that a client is able to send\nstatement strings containing the ; statement delimiter. In the mysql\ncommand-line client, this is handled with the delimiter command.\nChanging the ; end-of-statement delimiter (for example, to //) permit ;\nto be used in a program body. For an example, see\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-programs-defining.html.\n\nA BEGIN ... END block can be labeled. See [HELP labels].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/begin-end.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/begin-end.html'),
(181, 'SHOW PROCEDURE STATUS', 27, 'Syntax:\nSHOW PROCEDURE STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is a MySQL extension. It returns characteristics of a\nstored procedure, such as the database, name, type, creator, creation\nand modification dates, and character set information. A similar\nstatement, SHOW FUNCTION STATUS, displays information about stored\nfunctions (see [HELP SHOW FUNCTION STATUS]).\n\nThe LIKE clause, if present, indicates which procedure or function\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-procedure-status.html\n\n', 'mysql> SHOW PROCEDURE STATUS LIKE \'sp1\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: sp1\n                Type: PROCEDURE\n             Definer: testuser@localhost\n            Modified: 2004-08-03 15:29:37\n             Created: 2004-08-03 15:29:37\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.6/en/show-procedure-status.html'),
(182, 'STDDEV_POP', 16, 'Syntax:\nSTDDEV_POP(expr)\n\nReturns the population standard deviation of expr (the square root of\nVAR_POP()). You can also use STD() or STDDEV(), which are equivalent\nbut not standard SQL.\n\nSTDDEV_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(183, 'SHOW CHARACTER SET', 27, 'Syntax:\nSHOW CHARACTER SET\n    [LIKE \'pattern\' | WHERE expr]\n\nThe SHOW CHARACTER SET statement shows all available character sets.\nThe LIKE clause, if present, indicates which character set names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html. For example:\n\nmysql> SHOW CHARACTER SET LIKE \'latin%\';\n+---------+-----------------------------+-------------------+--------+\n| Charset | Description                 | Default collation | Maxlen |\n+---------+-----------------------------+-------------------+--------+\n| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |\n| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |\n| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |\n| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |\n+---------+-----------------------------+-------------------+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-character-set.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-character-set.html'),
(184, 'INTERSECTS', 31, 'Intersects(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially intersects g2.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(185, 'LOOP', 24, 'Syntax:\n[begin_label:] LOOP\n    statement_list\nEND LOOP [end_label]\n\nLOOP implements a simple loop construct, enabling repeated execution of\nthe statement list, which consists of one or more statements, each\nterminated by a semicolon (;) statement delimiter. The statements\nwithin the loop are repeated until the loop is terminated. Usually,\nthis is accomplished with a LEAVE statement. Within a stored function,\nRETURN can also be used, which exits the function entirely.\n\nNeglecting to include a loop-termination statement results in an\ninfinite loop.\n\nA LOOP statement can be labeled. For the rules regarding label use, see\n[HELP labels].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/loop.html\n\n', 'CREATE PROCEDURE doiterate(p1 INT)\nBEGIN\n  label1: LOOP\n    SET p1 = p1 + 1;\n    IF p1 < 10 THEN\n      ITERATE label1;\n    END IF;\n    LEAVE label1;\n  END LOOP label1;\n  SET @x = p1;\nEND;\n', 'http://dev.mysql.com/doc/refman/5.6/en/loop.html'),
(186, 'GREATEST', 19, 'Syntax:\nGREATEST(value1,value2,...)\n\nWith two or more arguments, returns the largest (maximum-valued)\nargument. The arguments are compared using the same rules as for\nLEAST().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT GREATEST(2,0);\n        -> 2\nmysql> SELECT GREATEST(34.0,3.0,5.0,767.0);\n        -> 767.0\nmysql> SELECT GREATEST(\'B\',\'A\',\'C\');\n        -> \'C\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(187, 'ST_CONTAINS', 31, 'ST_Contains(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 completely contains g2. This\ntests the opposite relationship as ST_Within().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(188, 'BIT_AND', 16, 'Syntax:\nBIT_AND(expr)\n\nReturns the bitwise AND of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(189, 'SECOND', 32, 'Syntax:\nSECOND(time)\n\nReturns the second for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT SECOND(\'10:05:03\');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(190, 'MBRCONTAINS', 6, 'MBRContains(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\ncontains the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRWithin().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', 'mysql> SET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nmysql> SET @g2 = GeomFromText(\'Point(1 1)\');\nmysql> SELECT MBRContains(@g1,@g2), MBRContains(@g2,@g1);\n----------------------+----------------------+\n| MBRContains(@g1,@g2) | MBRContains(@g2,@g1) |\n+----------------------+----------------------+\n|                    1 |                    0 |\n+----------------------+----------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(191, 'COT', 4, 'Syntax:\nCOT(X)\n\nReturns the cotangent of X.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT COT(12);\n        -> -1.5726734063977\nmysql> SELECT COT(0);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(192, 'SHOW CREATE EVENT', 27, 'Syntax:\nSHOW CREATE EVENT event_name\n\nThis statement displays the CREATE EVENT statement needed to re-create\na given event. It requires the EVENT privilege for the database from\nwhich the event is to be shown. For example (using the same event\ne_daily defined and then altered in [HELP SHOW EVENTS]):\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-create-event.html\n\n', 'mysql> SHOW CREATE EVENT test.e_daily\\G\n*************************** 1. row ***************************\n               Event: e_daily\n            sql_mode:\n           time_zone: SYSTEM\n        Create Event: CREATE EVENT `e_daily`\n                        ON SCHEDULE EVERY 1 DAY\n                        STARTS CURRENT_TIMESTAMP + INTERVAL 6 HOUR\n                        ON COMPLETION NOT PRESERVE\n                        ENABLE\n                        COMMENT \'Saves total number of sessions then\n                                clears the table each day\'\n                        DO BEGIN\n                          INSERT INTO site_activity.totals (time, total)\n                            SELECT CURRENT_TIMESTAMP, COUNT(*)\n                            FROM site_activity.sessions;\n                          DELETE FROM site_activity.sessions;\n                        END\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.6/en/show-create-event.html'),
(193, 'LOAD_FILE', 38, 'Syntax:\nLOAD_FILE(file_name)\n\nReads the file and returns the file contents as a string. To use this\nfunction, the file must be located on the server host, you must specify\nthe full path name to the file, and you must have the FILE privilege.\nThe file must be readable by all and its size less than\nmax_allowed_packet bytes. If the secure_file_priv system variable is\nset to a nonempty directory name, the file to be loaded must be located\nin that directory.\n\nIf the file does not exist or cannot be read because one of the\npreceding conditions is not satisfied, the function returns NULL.\n\nThe character_set_filesystem system variable controls interpretation of\nfile names that are given as literal strings.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> UPDATE t\n            SET blob_col=LOAD_FILE(\'/tmp/picture\')\n            WHERE id=1;\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(194, 'POINTFROMTEXT', 3, 'PointFromText(wkt[,srid])\n\nConstructs a POINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(195, 'DATE_FORMAT', 32, 'Syntax:\nDATE_FORMAT(date,format)\n\nFormats the date value according to the format string.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE_FORMAT(\'2009-10-04 22:23:00\', \'%W %M %Y\');\n        -> \'Sunday October 2009\'\nmysql> SELECT DATE_FORMAT(\'2007-10-04 22:23:00\', \'%H:%i:%s\');\n        -> \'22:23:00\'\nmysql> SELECT DATE_FORMAT(\'1900-10-04 22:23:00\',\n    ->                 \'%D %y %a %d %m %b %j\');\n        -> \'4th 00 Thu 04 10 Oct 277\'\nmysql> SELECT DATE_FORMAT(\'1997-10-04 22:23:00\',\n    ->                 \'%H %k %I %r %T %S %w\');\n        -> \'22 22 10 10:23:00 PM 22:23:00 00 6\'\nmysql> SELECT DATE_FORMAT(\'1999-01-01\', \'%X %V\');\n        -> \'1998 52\'\nmysql> SELECT DATE_FORMAT(\'2006-06-00\', \'%d\');\n        -> \'00\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(196, 'YEAR', 32, 'Syntax:\nYEAR(date)\n\nReturns the year for date, in the range 1000 to 9999, or 0 for the\n\"zero\" date.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT YEAR(\'1987-01-01\');\n        -> 1987\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(197, 'IS NULL', 19, 'Syntax:\nIS NULL\n\nTests whether a value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NULL, 0 IS NULL, NULL IS NULL;\n        -> 0, 0, 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(198, 'ALTER SERVER', 40, 'Syntax:\nALTER SERVER  server_name\n    OPTIONS (option [, option] ...)\n\nAlters the server information for server_name, adjusting any of the\noptions permitted in the CREATE SERVER statement. The corresponding\nfields in the mysql.servers table are updated accordingly. This\nstatement requires the SUPER privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/alter-server.html\n\n', 'ALTER SERVER s OPTIONS (USER \'sally\');\n', 'http://dev.mysql.com/doc/refman/5.6/en/alter-server.html'),
(199, 'RESIGNAL', 24, 'Syntax:\nRESIGNAL [condition_value]\n    [SET signal_information_item\n    [, signal_information_item] ...]\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | condition_name\n\nsignal_information_item:\n    condition_information_item_name = simple_value_specification\n\ncondition_information_item_name:\n    CLASS_ORIGIN\n  | SUBCLASS_ORIGIN\n  | MESSAGE_TEXT\n  | MYSQL_ERRNO\n  | CONSTRAINT_CATALOG\n  | CONSTRAINT_SCHEMA\n  | CONSTRAINT_NAME\n  | CATALOG_NAME\n  | SCHEMA_NAME\n  | TABLE_NAME\n  | COLUMN_NAME\n  | CURSOR_NAME\n\ncondition_name, simple_value_specification:\n    (see following discussion)\n\nRESIGNAL passes on the error condition information that is available\nduring execution of a condition handler within a compound statement\ninside a stored procedure or function, trigger, or event. RESIGNAL may\nchange some or all information before passing it on. RESIGNAL is\nrelated to SIGNAL, but instead of originating a condition as SIGNAL\ndoes, RESIGNAL relays existing condition information, possibly after\nmodifying it.\n\nRESIGNAL makes it possible to both handle an error and return the error\ninformation. Otherwise, by executing an SQL statement within the\nhandler, information that caused the handler\'s activation is destroyed.\nRESIGNAL also can make some procedures shorter if a given handler can\nhandle part of a situation, then pass the condition \"up the line\" to\nanother handler.\n\nNo special privileges are required to execute the RESIGNAL statement.\n\nTo retrieve information from diagnostics area, use the GET DIAGNOSTICS\nstatement (see [HELP GET DIAGNOSTICS]). For information about the\ndiagnostics area, see\nhttp://dev.mysql.com/doc/refman/5.6/en/diagnostics-area.html.\n\nFor condition_value and signal_information_item, the definitions and\nrules are the same for RESIGNAL as for SIGNAL (see [HELP SIGNAL]).\n\nThe RESIGNAL statement takes condition_value and SET clauses, both of\nwhich are optional. This leads to several possible uses:\n\no RESIGNAL alone:\n\nRESIGNAL;\n\no RESIGNAL with new signal information:\n\nRESIGNAL SET signal_information_item [, signal_information_item] ...;\n\no RESIGNAL with a condition value and possibly new signal information:\n\nRESIGNAL condition_value\n    [SET signal_information_item [, signal_information_item] ...];\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/resignal.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/resignal.html'),
(200, 'TIME FUNCTION', 32, 'Syntax:\nTIME(expr)\n\nExtracts the time part of the time or datetime expression expr and\nreturns it as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME(\'2003-12-31 01:02:03\');\n        -> \'01:02:03\'\nmysql> SELECT TIME(\'2003-12-31 01:02:03.000123\');\n        -> \'01:02:03.000123\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(201, 'DATE_ADD', 32, 'Syntax:\nDATE_ADD(date,INTERVAL expr unit), DATE_SUB(date,INTERVAL expr unit)\n\nThese functions perform date arithmetic. The date argument specifies\nthe starting date or datetime value. expr is an expression specifying\nthe interval value to be added or subtracted from the starting date.\nexpr is a string; it may start with a \"-\" for negative intervals. unit\nis a keyword indicating the units in which the expression should be\ninterpreted.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT \'2008-12-31 23:59:59\' + INTERVAL 1 SECOND;\n        -> \'2009-01-01 00:00:00\'\nmysql> SELECT INTERVAL 1 DAY + \'2008-12-31\';\n        -> \'2009-01-01\'\nmysql> SELECT \'2005-01-01\' - INTERVAL 1 SECOND;\n        -> \'2004-12-31 23:59:59\'\nmysql> SELECT DATE_ADD(\'2000-12-31 23:59:59\',\n    ->                 INTERVAL 1 SECOND);\n        -> \'2001-01-01 00:00:00\'\nmysql> SELECT DATE_ADD(\'2010-12-31 23:59:59\',\n    ->                 INTERVAL 1 DAY);\n        -> \'2011-01-01 23:59:59\'\nmysql> SELECT DATE_ADD(\'2100-12-31 23:59:59\',\n    ->                 INTERVAL \'1:1\' MINUTE_SECOND);\n        -> \'2101-01-01 00:01:00\'\nmysql> SELECT DATE_SUB(\'2005-01-01 00:00:00\',\n    ->                 INTERVAL \'1 1:1:1\' DAY_SECOND);\n        -> \'2004-12-30 22:58:59\'\nmysql> SELECT DATE_ADD(\'1900-01-01 00:00:00\',\n    ->                 INTERVAL \'-1 10\' DAY_HOUR);\n        -> \'1899-12-30 14:00:00\'\nmysql> SELECT DATE_SUB(\'1998-01-02\', INTERVAL 31 DAY);\n        -> \'1997-12-02\'\nmysql> SELECT DATE_ADD(\'1992-12-31 23:59:59.000002\',\n    ->            INTERVAL \'1.999999\' SECOND_MICROSECOND);\n        -> \'1993-01-01 00:00:01.000001\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(202, 'LIKE', 38, 'Syntax:\nexpr LIKE pat [ESCAPE \'escape_char\']\n\nPattern matching using SQL simple regular expression comparison.\nReturns 1 (TRUE) or 0 (FALSE). If either expr or pat is NULL, the\nresult is NULL.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html\n\n', 'mysql> SELECT \'David!\' LIKE \'David_\';\n        -> 1\nmysql> SELECT \'David!\' LIKE \'%D%v%\';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html'),
(203, 'MULTIPOINT', 25, 'MultiPoint(pt1,pt2,...)\n\nConstructs a MultiPoint value using Point or WKB Point arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(204, '>>', 20, 'Syntax:\n>>\n\nShifts a longlong (BIGINT) number to the right.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html\n\n', 'mysql> SELECT 4 >> 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html'),
(205, 'FETCH', 24, 'Syntax:\nFETCH [[NEXT] FROM] cursor_name INTO var_name [, var_name] ...\n\nThis statement fetches the next row for the SELECT statement associated\nwith the specified cursor (which must be open), and advances the cursor\npointer. If a row exists, the fetched columns are stored in the named\nvariables. The number of columns retrieved by the SELECT statement must\nmatch the number of output variables specified in the FETCH statement.\n\nIf no more rows are available, a No Data condition occurs with SQLSTATE\nvalue \'02000\'. To detect this condition, you can set up a handler for\nit (or for a NOT FOUND condition). For an example, see\nhttp://dev.mysql.com/doc/refman/5.6/en/cursors.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/fetch.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/fetch.html'),
(206, 'TRUE FALSE', 30, 'The constants TRUE and FALSE evaluate to 1 and 0, respectively. The\nconstant names can be written in any lettercase.\n\nmysql> SELECT TRUE, true, FALSE, false;\n        -> 1, 1, 0, 0\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/boolean-literals.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/boolean-literals.html'),
(207, 'MBRWITHIN', 6, 'MBRWithin(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\nis within the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRContains().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', 'mysql> SET @g1 = GeomFromText(\'Polygon((0 0,0 3,3 3,3 0,0 0))\');\nmysql> SET @g2 = GeomFromText(\'Polygon((0 0,0 5,5 5,5 0,0 0))\');\nmysql> SELECT MBRWithin(@g1,@g2), MBRWithin(@g2,@g1);\n+--------------------+--------------------+\n| MBRWithin(@g1,@g2) | MBRWithin(@g2,@g1) |\n+--------------------+--------------------+\n|                  1 |                  0 |\n+--------------------+--------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(208, 'SESSION_USER', 17, 'Syntax:\nSESSION_USER()\n\nSESSION_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(209, 'SHOW CREATE FUNCTION', 27, 'Syntax:\nSHOW CREATE FUNCTION func_name\n\nThis statement is similar to SHOW CREATE PROCEDURE but for stored\nfunctions. See [HELP SHOW CREATE PROCEDURE].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-create-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-create-function.html'),
(210, 'STR_TO_DATE', 32, 'Syntax:\nSTR_TO_DATE(str,format)\n\nThis is the inverse of the DATE_FORMAT() function. It takes a string\nstr and a format string format. STR_TO_DATE() returns a DATETIME value\nif the format string contains both date and time parts, or a DATE or\nTIME value if the string contains only date or time parts. If the date,\ntime, or datetime value extracted from str is illegal, STR_TO_DATE()\nreturns NULL and produces a warning.\n\nThe server scans str attempting to match format to it. The format\nstring can contain literal characters and format specifiers beginning\nwith %. Literal characters in format must match literally in str.\nFormat specifiers in format must match a date or time part in str. For\nthe specifiers that can be used in format, see the DATE_FORMAT()\nfunction description.\n\nmysql> SELECT STR_TO_DATE(\'01,5,2013\',\'%d,%m,%Y\');\n        -> \'2013-05-01\'\nmysql> SELECT STR_TO_DATE(\'May 1, 2013\',\'%M %d,%Y\');\n        -> \'2013-05-01\'\n\nScanning starts at the beginning of str and fails if format is found\nnot to match. Extra characters at the end of str are ignored.\n\nmysql> SELECT STR_TO_DATE(\'a09:30:17\',\'a%h:%i:%s\');\n        -> \'09:30:17\'\nmysql> SELECT STR_TO_DATE(\'a09:30:17\',\'%h:%i:%s\');\n        -> NULL\nmysql> SELECT STR_TO_DATE(\'09:30:17a\',\'%h:%i:%s\');\n        -> \'09:30:17\'\n\nUnspecified date or time parts have a value of 0, so incompletely\nspecified values in str produce a result with some or all parts set to\n0:\n\nmysql> SELECT STR_TO_DATE(\'abc\',\'abc\');\n        -> \'0000-00-00\'\nmysql> SELECT STR_TO_DATE(\'9\',\'%m\');\n        -> \'0000-09-00\'\nmysql> SELECT STR_TO_DATE(\'9\',\'%s\');\n        -> \'00:00:09\'\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(211, 'Y', 11, 'Y(p)\n\nReturns the Y-coordinate value for the Point object p as a\ndouble-precision number.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SELECT Y(POINT(56.7, 53.34));\n+-----------------------+\n| Y(POINT(56.7, 53.34)) |\n+-----------------------+\n|                 53.34 |\n+-----------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(212, 'CHECKSUM TABLE', 21, 'Syntax:\nCHECKSUM TABLE tbl_name [, tbl_name] ... [ QUICK | EXTENDED ]\n\nCHECKSUM TABLE reports a checksum for the contents of a table. You can\nuse this statement to verify that the contents are the same before and\nafter a backup, rollback, or other operation that is intended to put\nthe data back to a known state. This statement requires the SELECT\nprivilege for the table.\n\nPerformance Considerations\n\nBy default, the entire table is read row by row and the checksum is\ncalculated. For large tables, this could take a long time, thus you\nwould only perform this operation occasionally. This row-by-row\ncalculation is what you get with the EXTENDED clause, with InnoDB and\nall other storage engines other than MyISAM, and with MyISAM tables not\ncreated with the CHECKSUM=1 clause.\n\nFor MyISAM tables created with the CHECKSUM=1 clause, CHECKSUM TABLE or\nCHECKSUM TABLE ... QUICK returns the \"live\" table checksum that can be\nreturned very fast. If the table does not meet all these conditions,\nthe QUICK method returns NULL. See [HELP CREATE TABLE] for the syntax\nof the CHECKSUM clause.\n\nFor a nonexistent table, CHECKSUM TABLE returns NULL and generates a\nwarning.\n\nPrior to MySQL 5.6.4, CHECKSUM TABLE returned 0 for partitioned tables\nunless the EXTENDED option was used. (Bug #11933226, Bug #60681)\n\nThe checksum value depends on the table row format. If the row format\nchanges, the checksum also changes. For example, the storage format for\nVARCHAR changed between MySQL 4.1 and 5.0, so if a 4.1 table is\nupgraded to MySQL 5.0, the checksum value may change.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/checksum-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/checksum-table.html'),
(213, 'NUMINTERIORRINGS', 2, 'NumInteriorRings(poly)\n\nReturns the number of interior rings in the Polygon value poly.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SET @poly =\n    -> \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\nmysql> SELECT NumInteriorRings(GeomFromText(@poly));\n+---------------------------------------+\n| NumInteriorRings(GeomFromText(@poly)) |\n+---------------------------------------+\n|                                     1 |\n+---------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(214, 'INTERIORRINGN', 2, 'InteriorRingN(poly,N)\n\nReturns the N-th interior ring for the Polygon value poly as a\nLineString. Rings are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SET @poly =\n    -> \'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))\';\nmysql> SELECT AsText(InteriorRingN(GeomFromText(@poly),1));\n+----------------------------------------------+\n| AsText(InteriorRingN(GeomFromText(@poly),1)) |\n+----------------------------------------------+\n| LINESTRING(1 1,1 2,2 2,2 1,1 1)              |\n+----------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(215, 'UTC_TIME', 32, 'Syntax:\nUTC_TIME, UTC_TIME([fsp])\n\nReturns the current UTC time as a value in \'HH:MM:SS\' or HHMMSS format,\ndepending on whether the function is used in a string or numeric\ncontext.\n\nAs of MySQL 5.6.4, if the fsp argument is given to specify a fractional\nseconds precision from 0 to 6, the return value includes a fractional\nseconds part of that many digits. Before 5.6.4, any argument is\nignored.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_TIME(), UTC_TIME() + 0;\n        -> \'18:07:53\', 180753.000000\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(216, 'IS_IPV4_COMPAT', 14, 'Syntax:\nIS_IPV4_COMPAT(expr)\n\nThis function takes an IPv6 address represented in numeric form as a\nbinary string, as returned by INET6_ATON(). It returns 1 if the\nargument is a valid IPv4-compatible IPv6 address, 0 otherwise.\nIPv4-compatible addresses have the form ::ipv4_address.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> SELECT IS_IPV4_COMPAT(INET6_ATON(\'::10.0.5.9\'));\n        -> 1\nmysql> SELECT IS_IPV4_COMPAT(INET6_ATON(\'::ffff:10.0.5.9\'));\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(217, 'DROP FUNCTION', 40, 'The DROP FUNCTION statement is used to drop stored functions and\nuser-defined functions (UDFs):\n\no For information about dropping stored functions, see [HELP DROP\n  PROCEDURE].\n\no For information about dropping user-defined functions, see [HELP DROP\n  FUNCTION UDF].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/drop-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/drop-function.html'),
(218, 'STDDEV', 16, 'Syntax:\nSTDDEV(expr)\n\nReturns the population standard deviation of expr. This function is\nprovided for compatibility with Oracle. The standard SQL function\nSTDDEV_POP() can be used instead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(219, 'PERIOD_ADD', 32, 'Syntax:\nPERIOD_ADD(P,N)\n\nAdds N months to period P (in the format YYMM or YYYYMM). Returns a\nvalue in the format YYYYMM. Note that the period argument P is not a\ndate value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT PERIOD_ADD(200801,2);\n        -> 200803\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(220, 'RIGHT', 38, 'Syntax:\nRIGHT(str,len)\n\nReturns the rightmost len characters from the string str, or NULL if\nany argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT RIGHT(\'foobarbar\', 4);\n        -> \'rbar\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(221, 'CHECK TABLE', 21, 'Syntax:\nCHECK TABLE tbl_name [, tbl_name] ... [option] ...\n\noption = {FOR UPGRADE | QUICK | FAST | MEDIUM | EXTENDED | CHANGED}\n\nCHECK TABLE checks a table or tables for errors. CHECK TABLE works for\nInnoDB, MyISAM, ARCHIVE, and CSV tables. For MyISAM tables, the key\nstatistics are updated as well.\n\nTo check a table, you must have some privilege for it.\n\nCHECK TABLE can also check views for problems, such as tables that are\nreferenced in the view definition that no longer exist.\n\nCHECK TABLE is supported for partitioned tables, and you can use ALTER\nTABLE ... CHECK PARTITION to check one or more partitions; for more\ninformation, see [HELP ALTER TABLE], and\nhttp://dev.mysql.com/doc/refman/5.6/en/partitioning-maintenance.html.\n\nBeginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before\nissuing this statement (BUG#16062608).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/check-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/check-table.html'),
(222, 'BIN', 38, 'Syntax:\nBIN(N)\n\nReturns a string representation of the binary value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,2). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT BIN(12);\n        -> \'1100\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(223, 'MULTILINESTRING', 25, 'MultiLineString(ls1,ls2,...)\n\nConstructs a MultiLineString value using LineString or WKB LineString\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(224, 'SHOW RELAYLOG EVENTS', 27, 'Syntax:\nSHOW RELAYLOG EVENTS\n   [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\n\nShows the events in the relay log of a replication slave. If you do not\nspecify \'log_name\', the first relay log is displayed. This statement\nhas no effect on the master.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-relaylog-events.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-relaylog-events.html'),
(225, 'MPOINTFROMTEXT', 3, 'MPointFromText(wkt[,srid]), MultiPointFromText(wkt[,srid])\n\nConstructs a MULTIPOINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(226, 'SUBSTR', 38, 'Syntax:\nSUBSTR(str,pos), SUBSTR(str FROM pos), SUBSTR(str,pos,len), SUBSTR(str\nFROM pos FOR len)\n\nSUBSTR() is a synonym for SUBSTRING().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(227, 'CHAR', 23, '[NATIONAL] CHAR[(M)] [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA fixed-length string that is always right-padded with spaces to the\nspecified length when stored. M represents the column length in\ncharacters. The range of M is 0 to 255. If M is omitted, the length is\n1.\n\n*Note*: Trailing spaces are removed when CHAR values are retrieved\nunless the PAD_CHAR_TO_FULL_LENGTH SQL mode is enabled.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(228, 'COUNT DISTINCT', 16, 'Syntax:\nCOUNT(DISTINCT expr,[expr...])\n\nReturns a count of the number of rows with different non-NULL expr\nvalues.\n\nCOUNT(DISTINCT) returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', 'mysql> SELECT COUNT(DISTINCT results) FROM student;\n', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(229, 'SHOW CREATE VIEW', 27, 'Syntax:\nSHOW CREATE VIEW view_name\n\nThis statement shows a CREATE VIEW statement that creates the given\nview.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-create-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-create-view.html'),
(230, 'INTERVAL', 19, 'Syntax:\nINTERVAL(N,N1,N2,N3,...)\n\nReturns 0 if N < N1, 1 if N < N2 and so on or -1 if N is NULL. All\narguments are treated as integers. It is required that N1 < N2 < N3 <\n... < Nn for this function to work correctly. This is because a binary\nsearch is used (very fast).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT INTERVAL(23, 1, 15, 17, 30, 44, 200);\n        -> 3\nmysql> SELECT INTERVAL(10, 1, 10, 100, 1000);\n        -> 2\nmysql> SELECT INTERVAL(22, 23, 30, 44, 200);\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(231, 'FROM_DAYS', 32, 'Syntax:\nFROM_DAYS(N)\n\nGiven a day number N, returns a DATE value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT FROM_DAYS(730669);\n        -> \'2007-07-03\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(232, 'ALTER PROCEDURE', 40, 'Syntax:\nALTER PROCEDURE proc_name [characteristic ...]\n\ncharacteristic:\n    COMMENT \'string\'\n  | LANGUAGE SQL\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n\nThis statement can be used to change the characteristics of a stored\nprocedure. More than one change may be specified in an ALTER PROCEDURE\nstatement. However, you cannot change the parameters or body of a\nstored procedure using this statement; to make such changes, you must\ndrop and re-create the procedure using DROP PROCEDURE and CREATE\nPROCEDURE.\n\nYou must have the ALTER ROUTINE privilege for the procedure. By\ndefault, that privilege is granted automatically to the procedure\ncreator. This behavior can be changed by disabling the\nautomatic_sp_privileges system variable. See\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-routines-privileges.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/alter-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/alter-procedure.html'),
(233, 'BIT_COUNT', 20, 'Syntax:\nBIT_COUNT(N)\n\nReturns the number of bits that are set in the argument N.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html\n\n', 'mysql> SELECT BIT_COUNT(29), BIT_COUNT(b\'101010\');\n        -> 4, 3\n', 'http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html'),
(234, 'ST_WITHIN', 31, 'ST_Within(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially within g2. This\ntests the opposite relationship as ST_Contains().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(235, 'ACOS', 4, 'Syntax:\nACOS(X)\n\nReturns the arc cosine of X, that is, the value whose cosine is X.\nReturns NULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT ACOS(1);\n        -> 0\nmysql> SELECT ACOS(1.0001);\n        -> NULL\nmysql> SELECT ACOS(0);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(236, 'ISOLATION', 8, 'Syntax:\nSET [GLOBAL | SESSION] TRANSACTION\n    transaction_characteristic [, transaction_characteristic] ...\n\ntransaction_characteristic:\n    ISOLATION LEVEL level\n  | READ WRITE\n  | READ ONLY\n\nlevel:\n     REPEATABLE READ\n   | READ COMMITTED\n   | READ UNCOMMITTED\n   | SERIALIZABLE\n\nThis statement specifies transaction characteristics. It takes a list\nof one or more characteristic values separated by commas. These\ncharacteristics set the transaction isolation level or access mode. The\nisolation level is used for operations on InnoDB tables. The access\nmode may be specified as of MySQL 5.6.5 and indicates whether\ntransactions operate in read/write or read-only mode.\n\nIn addition, SET TRANSACTION can include an optional GLOBAL or SESSION\nkeyword to indicate the scope of the statement.\n\nScope of Transaction Characteristics\n\nYou can set transaction characteristics globally, for the current\nsession, or for the next transaction:\n\no With the GLOBAL keyword, the statement applies globally for all\n  subsequent sessions. Existing sessions are unaffected.\n\no With the SESSION keyword, the statement applies to all subsequent\n  transactions performed within the current session.\n\no Without any SESSION or GLOBAL keyword, the statement applies to the\n  next (not started) transaction performed within the current session.\n\nA global change to transaction characteristics requires the SUPER\nprivilege. Any session is free to change its session characteristics\n(even in the middle of a transaction), or the characteristics for its\nnext transaction.\n\nSET TRANSACTION without GLOBAL or SESSION is not permitted while there\nis an active transaction:\n\nmysql> START TRANSACTION;\nQuery OK, 0 rows affected (0.02 sec)\n\nmysql> SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;\nERROR 1568 (25001): Transaction characteristics can\'t be changed\nwhile a transaction is in progress\n\nTo set the global default isolation level at server startup, use the\n--transaction-isolation=level option to mysqld on the command line or\nin an option file. Values of level for this option use dashes rather\nthan spaces, so the permissible values are READ-UNCOMMITTED,\nREAD-COMMITTED, REPEATABLE-READ, or SERIALIZABLE. For example, to set\nthe default isolation level to REPEATABLE READ, use these lines in the\n[mysqld] section of an option file:\n\n[mysqld]\ntransaction-isolation = REPEATABLE-READ\n\nIt is possible to check or set the global and session transaction\nisolation levels at runtime by using the tx_isolation system variable:\n\nSELECT @@GLOBAL.tx_isolation, @@tx_isolation;\nSET GLOBAL tx_isolation=\'REPEATABLE-READ\';\nSET SESSION tx_isolation=\'SERIALIZABLE\';\n\nSimilarly, to set the transaction access mode at server startup or at\nruntime, use the --transaction-read-only option or tx_read_only system\nvariable. By default, these are OFF (the mode is read/write) but can be\nset to ON for a default mode of read only.\n\nSetting the global or session value of tx_isolation or tx_read_only is\nequivalent to setting the isolation level or access mode with SET\nGLOBAL TRANSACTION or SET SESSION TRANSACTION.\n\nDetails and Usage of Isolation Levels\n\nInnoDB supports each of the transaction isolation levels described here\nusing different locking strategies. You can enforce a high degree of\nconsistency with the default REPEATABLE READ level, for operations on\ncrucial data where ACID compliance is important. Or you can relax the\nconsistency rules with READ COMMITTED or even READ UNCOMMITTED, in\nsituations such as bulk reporting where precise consistency and\nrepeatable results are less important than minimizing the amount of\noverhead for locking. SERIALIZABLE enforces even stricter rules than\nREPEATABLE READ, and is used mainly in specialized situations, such as\nwith XA transactions and for troubleshooting issues with concurrency\nand deadlocks.\n\nFor full information about how these isolation levels work with InnoDB\ntransactions, see\nhttp://dev.mysql.com/doc/refman/5.6/en/innodb-transaction-model.html.\nIn particular, for additional information about InnoDB record-level\nlocks and how it uses them to execute various types of statements, see\nhttp://dev.mysql.com/doc/refman/5.6/en/innodb-record-level-locks.html\nand http://dev.mysql.com/doc/refman/5.6/en/innodb-locks-set.html.\n\nThe following list describes how MySQL supports the different\ntransaction levels. The list goes from the most commonly used level to\nthe least used.\n\no REPEATABLE READ\n\n  This is the default isolation level for InnoDB. For consistent reads,\n  there is an important difference from the READ COMMITTED isolation\n  level: All consistent reads within the same transaction read the\n  snapshot established by the first read. This convention means that if\n  you issue several plain (nonlocking) SELECT statements within the\n  same transaction, these SELECT statements are consistent also with\n  respect to each other. See\n  http://dev.mysql.com/doc/refman/5.6/en/innodb-consistent-read.html.\n\n  For locking reads (SELECT with FOR UPDATE or LOCK IN SHARE MODE),\n  UPDATE, and DELETE statements, locking depends on whether the\n  statement uses a unique index with a unique search condition, or a\n  range-type search condition. For a unique index with a unique search\n  condition, InnoDB locks only the index record found, not the gap\n  before it. For other search conditions, InnoDB locks the index range\n  scanned, using gap locks or next-key locks to block insertions by\n  other sessions into the gaps covered by the range.\n\no READ COMMITTED\n\n  A somewhat Oracle-like isolation level with respect to consistent\n  (nonlocking) reads: Each consistent read, even within the same\n  transaction, sets and reads its own fresh snapshot. See\n  http://dev.mysql.com/doc/refman/5.6/en/innodb-consistent-read.html.\n\n  For locking reads (SELECT with FOR UPDATE or LOCK IN SHARE MODE),\n  InnoDB locks only index records, not the gaps before them, and thus\n  permits the free insertion of new records next to locked records. For\n  UPDATE and DELETE statements, locking depends on whether the\n  statement uses a unique index with a unique search condition (such as\n  WHERE id = 100), or a range-type search condition (such as WHERE id >\n  100). For a unique index with a unique search condition, InnoDB locks\n  only the index record found, not the gap before it. For range-type\n  searches, InnoDB locks the index range scanned, using gap locks or\n  next-key locks to block insertions by other sessions into the gaps\n  covered by the range. This is necessary because \"phantom rows\" must\n  be blocked for MySQL replication and recovery to work.\n\n  *Note*: In MySQL 5.6, if the READ COMMITTED isolation level is used,\n  or the deprecated innodb_locks_unsafe_for_binlog system variable is\n  enabled, there is no InnoDB gap locking except for foreign-key\n  constraint checking and duplicate-key checking. Also, record locks\n  for nonmatching rows are released after MySQL has evaluated the WHERE\n  condition. If you use READ COMMITTED or enable\n  innodb_locks_unsafe_for_binlog, you must use row-based binary\n  logging.\n\no READ UNCOMMITTED\n\n  SELECT statements are performed in a nonlocking fashion, but a\n  possible earlier version of a row might be used. Thus, using this\n  isolation level, such reads are not consistent. This is also called a\n  dirty read. Otherwise, this isolation level works like READ\n  COMMITTED.\n\no SERIALIZABLE\n\n  This level is like REPEATABLE READ, but InnoDB implicitly converts\n  all plain SELECT statements to SELECT ... LOCK IN SHARE MODE if\n  autocommit is disabled. If autocommit is enabled, the SELECT is its\n  own transaction. It therefore is known to be read only and can be\n  serialized if performed as a consistent (nonlocking) read and need\n  not block for other transactions. (To force a plain SELECT to block\n  if other transactions have modified the selected rows, disable\n  autocommit.)\n\nTransaction Access Mode\n\nAs of MySQL 5.6.5, the transaction access mode may be specified with\nSET TRANSACTION. By default, a transaction takes place in read/write\nmode, with both reads and writes permitted to tables used in the\ntransaction. This mode may be specified explicitly using an access mode\nof READ WRITE.\n\nIf the transaction access mode is set to READ ONLY, changes to tables\nare prohibited. This may enable storage engines to make performance\nimprovements that are possible when writes are not permitted.\n\nIt is not permitted to specify both READ WRITE and READ ONLY in the\nsame statement.\n\nIn read-only mode, it remains possible to change tables created with\nthe TEMPORARY keyword using DML statements. Changes made with DDL\nstatements are not permitted, just as with permanent tables.\n\nThe READ WRITE and READ ONLY access modes also may be specified for an\nindividual transaction using the START TRANSACTION statement.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/set-transaction.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/set-transaction.html'),
(237, 'SIN', 4, 'Syntax:\nSIN(X)\n\nReturns the sine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT SIN(PI());\n        -> 1.2246063538224e-16\nmysql> SELECT ROUND(SIN(PI()));\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(238, 'BUFFER', 26, 'Buffer(g,d)\n\nReturns a geometry that represents all points whose distance from the\ngeometry value g is less than or equal to a distance of d.\n\nBuffer() supports negative distances for polygons, multipolygons, and\ngeometry collections containing polygons or multipolygons. For point,\nmultipoint, linestring, multilinestring, and geometry collections not\ncontaining any polygons or multipolygons, Buffer() with a negative\ndistance returns NULL.\n\nPrior to MySQL 5.6.1, this function is unimplemented.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-that-create-new-geometries-from-existing-ones.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-that-create-new-geometries-from-existing-ones.html'),
(239, 'IS', 19, 'Syntax:\nIS boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS TRUE, 0 IS FALSE, NULL IS UNKNOWN;\n        -> 1, 1, 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(240, 'GET_FORMAT', 32, 'Syntax:\nGET_FORMAT({DATE|TIME|DATETIME}, {\'EUR\'|\'USA\'|\'JIS\'|\'ISO\'|\'INTERNAL\'})\n\nReturns a format string. This function is useful in combination with\nthe DATE_FORMAT() and the STR_TO_DATE() functions.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE_FORMAT(\'2003-10-03\',GET_FORMAT(DATE,\'EUR\'));\n        -> \'03.10.2003\'\nmysql> SELECT STR_TO_DATE(\'10.31.2003\',GET_FORMAT(DATE,\'USA\'));\n        -> \'2003-10-31\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(241, 'TINYBLOB', 23, 'TINYBLOB\n\nA BLOB column with a maximum length of 255 (28 - 1) bytes. Each\nTINYBLOB value is stored using a 1-byte length prefix that indicates\nthe number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(242, 'USER', 17, 'Syntax:\nUSER()\n\nReturns the current MySQL user name and host name as a string in the\nutf8 character set.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', 'mysql> SELECT USER();\n        -> \'davida@localhost\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(243, 'REPAIR TABLE', 21, 'Syntax:\nREPAIR [NO_WRITE_TO_BINLOG | LOCAL] TABLE\n    tbl_name [, tbl_name] ...\n    [QUICK] [EXTENDED] [USE_FRM]\n\nREPAIR TABLE repairs a possibly corrupted table, for certain storage\nengines only. By default, it has the same effect as myisamchk --recover\ntbl_name.\n\n*Note*: REPAIR TABLE only applies to MyISAM, ARCHIVE, and CSV tables.\nSee http://dev.mysql.com/doc/refman/5.6/en/myisam-storage-engine.html,\nand http://dev.mysql.com/doc/refman/5.6/en/archive-storage-engine.html,\nand http://dev.mysql.com/doc/refman/5.6/en/csv-storage-engine.html\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nREPAIR TABLE is supported for partitioned tables. However, the USE_FRM\noption cannot be used with this statement on a partitioned table.\n\nBeginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before\nissuing this statement (BUG#16062608).\n\nYou can use ALTER TABLE ... REPAIR PARTITION to repair one or more\npartitions; for more information, see [HELP ALTER TABLE], and\nhttp://dev.mysql.com/doc/refman/5.6/en/partitioning-maintenance.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/repair-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/repair-table.html'),
(244, 'MERGE', 18, 'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n\"Identical\" means that all tables have identical column and index\ninformation. You cannot merge MyISAM tables in which the columns are\nlisted in a different order, do not have exactly the same columns, or\nhave the indexes in different order. However, any or all of the MyISAM\ntables can be compressed with myisampack. See\nhttp://dev.mysql.com/doc/refman/5.6/en/myisampack.html. Differences in\ntable options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS do not\nmatter.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/merge-storage-engine.html\n\n', 'mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (\'Testing\'),(\'table\'),(\'t1\');\nmysql> INSERT INTO t2 (message) VALUES (\'Testing\'),(\'table\'),(\'t2\');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n', 'http://dev.mysql.com/doc/refman/5.6/en/merge-storage-engine.html'),
(245, 'CREATE TABLE', 40, 'Syntax:\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    (create_definition,...)\n    [table_options]\n    [partition_options]\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    [(create_definition,...)]\n    [table_options]\n    [partition_options]\n    select_statement\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    { LIKE old_tbl_name | (LIKE old_tbl_name) }\n\ncreate_definition:\n    col_name column_definition\n  | [CONSTRAINT [symbol]] PRIMARY KEY [index_type] (index_col_name,...)\n      [index_option] ...\n  | {INDEX|KEY} [index_name] [index_type] (index_col_name,...)\n      [index_option] ...\n  | [CONSTRAINT [symbol]] UNIQUE [INDEX|KEY]\n      [index_name] [index_type] (index_col_name,...)\n      [index_option] ...\n  | {FULLTEXT|SPATIAL} [INDEX|KEY] [index_name] (index_col_name,...)\n      [index_option] ...\n  | [CONSTRAINT [symbol]] FOREIGN KEY\n      [index_name] (index_col_name,...) reference_definition\n  | CHECK (expr)\n\ncolumn_definition:\n    data_type [NOT NULL | NULL] [DEFAULT default_value]\n      [AUTO_INCREMENT] [UNIQUE [KEY] | [PRIMARY] KEY]\n      [COMMENT \'string\']\n      [COLUMN_FORMAT {FIXED|DYNAMIC|DEFAULT}]\n      [reference_definition]\n\ndata_type:\n    BIT[(length)]\n  | TINYINT[(length)] [UNSIGNED] [ZEROFILL]\n  | SMALLINT[(length)] [UNSIGNED] [ZEROFILL]\n  | MEDIUMINT[(length)] [UNSIGNED] [ZEROFILL]\n  | INT[(length)] [UNSIGNED] [ZEROFILL]\n  | INTEGER[(length)] [UNSIGNED] [ZEROFILL]\n  | BIGINT[(length)] [UNSIGNED] [ZEROFILL]\n  | REAL[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DOUBLE[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | FLOAT[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DECIMAL[(length[,decimals])] [UNSIGNED] [ZEROFILL]\n  | NUMERIC[(length[,decimals])] [UNSIGNED] [ZEROFILL]\n  | DATE\n  | TIME\n  | TIMESTAMP\n  | DATETIME\n  | YEAR\n  | CHAR[(length)]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | VARCHAR(length)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | BINARY[(length)]\n  | VARBINARY(length)\n  | TINYBLOB\n  | BLOB\n  | MEDIUMBLOB\n  | LONGBLOB\n  | TINYTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | TEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | MEDIUMTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | LONGTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | ENUM(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | SET(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | spatial_type\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nindex_option:\n    KEY_BLOCK_SIZE [=] value\n  | index_type\n  | WITH PARSER parser_name\n  | COMMENT \'string\'\n\nreference_definition:\n    REFERENCES tbl_name (index_col_name,...)\n      [MATCH FULL | MATCH PARTIAL | MATCH SIMPLE]\n      [ON DELETE reference_option]\n      [ON UPDATE reference_option]\n\nreference_option:\n    RESTRICT | CASCADE | SET NULL | NO ACTION\n\ntable_options:\n    table_option [[,] table_option] ...\n\ntable_option:\n    ENGINE [=] engine_name\n  | AUTO_INCREMENT [=] value\n  | AVG_ROW_LENGTH [=] value\n  | [DEFAULT] CHARACTER SET [=] charset_name\n  | CHECKSUM [=] {0 | 1}\n  | [DEFAULT] COLLATE [=] collation_name\n  | COMMENT [=] \'string\'\n  | CONNECTION [=] \'connect_string\'\n  | DATA DIRECTORY [=] \'absolute path to directory\'\n  | DELAY_KEY_WRITE [=] {0 | 1}\n  | INDEX DIRECTORY [=] \'absolute path to directory\'\n  | INSERT_METHOD [=] { NO | FIRST | LAST }\n  | KEY_BLOCK_SIZE [=] value\n  | MAX_ROWS [=] value\n  | MIN_ROWS [=] value\n  | PACK_KEYS [=] {0 | 1 | DEFAULT}\n  | PASSWORD [=] \'string\'\n  | ROW_FORMAT [=] {DEFAULT|DYNAMIC|FIXED|COMPRESSED|REDUNDANT|COMPACT}\n  | STATS_AUTO_RECALC [=] {DEFAULT|0|1}\n  | STATS_PERSISTENT [=] {DEFAULT|0|1}\n  | UNION [=] (tbl_name[,tbl_name]...)\n\npartition_options:\n    PARTITION BY\n        { [LINEAR] HASH(expr)\n        | [LINEAR] KEY [ALGORITHM={1|2}] (column_list)\n        | RANGE{(expr) | COLUMNS(column_list)}\n        | LIST{(expr) | COLUMNS(column_list)} }\n    [PARTITIONS num]\n    [SUBPARTITION BY\n        { [LINEAR] HASH(expr)\n        | [LINEAR] KEY [ALGORITHM={1|2}] (column_list) }\n      [SUBPARTITIONS num]\n    ]\n    [(partition_definition [, partition_definition] ...)]\n\npartition_definition:\n    PARTITION partition_name\n        [VALUES \n            {LESS THAN {(expr | value_list) | MAXVALUE} \n            | \n            IN (value_list)}]\n        [[STORAGE] ENGINE [=] engine_name]\n        [COMMENT [=] \'comment_text\' ]\n        [DATA DIRECTORY [=] \'data_dir\']\n        [INDEX DIRECTORY [=] \'index_dir\']\n        [MAX_ROWS [=] max_number_of_rows]\n        [MIN_ROWS [=] min_number_of_rows]\n        [(subpartition_definition [, subpartition_definition] ...)]\n\nsubpartition_definition:\n    SUBPARTITION logical_name\n        [[STORAGE] ENGINE [=] engine_name]\n        [COMMENT [=] \'comment_text\' ]\n        [DATA DIRECTORY [=] \'data_dir\']\n        [INDEX DIRECTORY [=] \'index_dir\']\n        [MAX_ROWS [=] max_number_of_rows]\n        [MIN_ROWS [=] min_number_of_rows]\n\nselect_statement:\n    [IGNORE | REPLACE] [AS] SELECT ...   (Some valid select statement)\n\nCREATE TABLE creates a table with the given name. You must have the\nCREATE privilege for the table.\n\nRules for permissible table names are given in\nhttp://dev.mysql.com/doc/refman/5.6/en/identifiers.html. By default,\nthe table is created in the default database, using the InnoDB storage\nengine. An error occurs if the table exists, if there is no default\ndatabase, or if the database does not exist.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/create-table.html'),
(246, 'MICROSECOND', 32, 'Syntax:\nMICROSECOND(expr)\n\nReturns the microseconds from the time or datetime expression expr as a\nnumber in the range from 0 to 999999.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT MICROSECOND(\'12:00:00.123456\');\n        -> 123456\nmysql> SELECT MICROSECOND(\'2009-12-31 23:59:59.000010\');\n        -> 10\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(247, 'CREATE SERVER', 40, 'Syntax:\nCREATE SERVER server_name\n    FOREIGN DATA WRAPPER wrapper_name\n    OPTIONS (option [, option] ...)\n\noption:\n  { HOST character-literal\n  | DATABASE character-literal\n  | USER character-literal\n  | PASSWORD character-literal\n  | SOCKET character-literal\n  | OWNER character-literal\n  | PORT numeric-literal }\n\nThis statement creates the definition of a server for use with the\nFEDERATED storage engine. The CREATE SERVER statement creates a new row\nin the servers table in the mysql database. This statement requires the\nSUPER privilege.\n\nThe server_name should be a unique reference to the server. Server\ndefinitions are global within the scope of the server, it is not\npossible to qualify the server definition to a specific database.\nserver_name has a maximum length of 64 characters (names longer than 64\ncharacters are silently truncated), and is case insensitive. You may\nspecify the name as a quoted string.\n\nThe wrapper_name should be mysql, and may be quoted with single\nquotation marks. Other values for wrapper_name are not currently\nsupported.\n\nFor each option you must specify either a character literal or numeric\nliteral. Character literals are UTF-8, support a maximum length of 64\ncharacters and default to a blank (empty) string. String literals are\nsilently truncated to 64 characters. Numeric literals must be a number\nbetween 0 and 9999, default value is 0.\n\n*Note*: The OWNER option is currently not applied, and has no effect on\nthe ownership or operation of the server connection that is created.\n\nThe CREATE SERVER statement creates an entry in the mysql.servers table\nthat can later be used with the CREATE TABLE statement when creating a\nFEDERATED table. The options that you specify will be used to populate\nthe columns in the mysql.servers table. The table columns are\nServer_name, Host, Db, Username, Password, Port and Socket.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-server.html\n\n', 'CREATE SERVER s\nFOREIGN DATA WRAPPER mysql\nOPTIONS (USER \'Remote\', HOST \'192.168.1.106\', DATABASE \'test\');\n', 'http://dev.mysql.com/doc/refman/5.6/en/create-server.html'),
(248, 'MAKETIME', 32, 'Syntax:\nMAKETIME(hour,minute,second)\n\nReturns a time value calculated from the hour, minute, and second\narguments.\n\nAs of MySQL 5.6.4, the second argument can have a fractional part.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT MAKETIME(12,15,30);\n        -> \'12:15:30\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(249, 'CURDATE', 32, 'Syntax:\nCURDATE()\n\nReturns the current date as a value in \'YYYY-MM-DD\' or YYYYMMDD format,\ndepending on whether the function is used in a string or numeric\ncontext.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT CURDATE();\n        -> \'2008-06-13\'\nmysql> SELECT CURDATE() + 0;\n        -> 20080613\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(250, 'SET PASSWORD', 10, 'Syntax:\nSET PASSWORD [FOR user] =\n    {\n        PASSWORD(\'cleartext password\')\n      | OLD_PASSWORD(\'cleartext password\')\n      | \'encrypted password\'\n    }\n\nThe SET PASSWORD statement assigns a password to an existing MySQL user\naccount. When the read_only system variable is enabled, the SUPER\nprivilege is required to use SET PASSWORD, in addition to whatever\nother privileges might be required.\n\nIf the password is specified using the PASSWORD() or OLD_PASSWORD()\nfunction, the cleartext (unencrypted) password should be given as the\nargument to the function, which hashes the password and returns the\nencrypted password string. If the password is specified without using\neither function, it should be the already encrypted password value as a\nliteral string. In all cases, the encrypted password string must be in\nthe format required by the authentication method used for the account.\n\nWith no FOR user clause, this statement sets the password for the\ncurrent user. (To see which account the server authenticated you as,\ninvoke the CURRENT_USER() function.) Any client who successfully\nconnects to the server using a nonanonymous account can change the\npassword for that account.\n\nWith a FOR user clause, this statement sets the password for the named\nuser. You must have the UPDATE privilege for the mysql database to do\nthis. The user account name uses the format described in\nhttp://dev.mysql.com/doc/refman/5.6/en/account-names.html. The user\nvalue should be given as \'user_name\'@\'host_name\', where \'user_name\' and\n\'host_name\' are exactly as listed in the User and Host columns of the\nmysql.user table row. (If you specify only a user name, a host name of\n\'%\' is used.) For example, to set the password for an account with User\nand Host column values of \'bob\' and \'%.example.org\', write the\nstatement like this:\n\nSET PASSWORD FOR \'bob\'@\'%.example.org\' = PASSWORD(\'cleartext password\');\n\nThat is equivalent to the following statements:\n\nUPDATE mysql.user SET Password=PASSWORD(\'cleartext password\')\n  WHERE User=\'bob\' AND Host=\'%.example.org\';\nFLUSH PRIVILEGES;\n\nAnother way to set the password is to use GRANT:\n\nGRANT USAGE ON *.* TO \'bob\'@\'%.example.org\' IDENTIFIED BY \'cleartext password\';\n\nThe old_passwords system variable value determines the hashing method\nused by PASSWORD(). If you specify the password using that function and\nSET PASSWORD rejects the password as not being in the correct format,\nit may be necessary to set old_passwords to change the hashing method.\nFor descriptions of the permitted values, see\nhttp://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/set-password.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/set-password.html'),
(251, 'DATABASE', 17, 'Syntax:\nDATABASE()\n\nReturns the default (current) database name as a string in the utf8\ncharacter set. If there is no default database, DATABASE() returns\nNULL. Within a stored routine, the default database is the database\nthat the routine is associated with, which is not necessarily the same\nas the database that is the default in the calling context.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', 'mysql> SELECT DATABASE();\n        -> \'test\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(252, 'IF FUNCTION', 7, 'Syntax:\nIF(expr1,expr2,expr3)\n\nIf expr1 is TRUE (expr1 <> 0 and expr1 <> NULL) then IF() returns\nexpr2; otherwise it returns expr3. IF() returns a numeric or string\nvalue, depending on the context in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html\n\n', 'mysql> SELECT IF(1>2,2,3);\n        -> 3\nmysql> SELECT IF(1<2,\'yes\',\'no\');\n        -> \'yes\'\nmysql> SELECT IF(STRCMP(\'test\',\'test1\'),\'no\',\'yes\');\n        -> \'no\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html'),
(253, 'POINTFROMWKB', 33, 'PointFromWKB(wkb[,srid])\n\nConstructs a POINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(254, 'POWER', 4, 'Syntax:\nPOWER(X,Y)\n\nThis is a synonym for POW().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(255, 'ATAN', 4, 'Syntax:\nATAN(X)\n\nReturns the arc tangent of X, that is, the value whose tangent is X.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT ATAN(2);\n        -> 1.1071487177941\nmysql> SELECT ATAN(-2);\n        -> -1.1071487177941\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(256, 'SHOW PROFILE', 27, 'Syntax:\nSHOW PROFILE [type [, type] ... ]\n    [FOR QUERY n]\n    [LIMIT row_count [OFFSET offset]]\n\ntype:\n    ALL\n  | BLOCK IO\n  | CONTEXT SWITCHES\n  | CPU\n  | IPC\n  | MEMORY\n  | PAGE FAULTS\n  | SOURCE\n  | SWAPS\n\nThe SHOW PROFILE and SHOW PROFILES statements display profiling\ninformation that indicates resource usage for statements executed\nduring the course of the current session.\n\n*Note*: These statements are deprecated as of MySQL 5.6.7 and will be\nremoved in a future MySQL release. Use the Performance Schema instead;\nsee http://dev.mysql.com/doc/refman/5.6/en/performance-schema.html.\n\nProfiling is controlled by the profiling session variable, which has a\ndefault value of 0 (OFF). Profiling is enabled by setting profiling to\n1 or ON:\n\nmysql> SET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nserver. The size of the list is controlled by the\nprofiling_history_size session variable, which has a default value of\n15. The maximum value is 100. Setting the value to 0 has the practical\neffect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILE and SHOW PROFILES, so\nyou will find neither of those statements in the profile list.\nMalformed statements are profiled. For example, SHOW PROFILING is an\nillegal statement, and a syntax error occurs if you try to execute it,\nbut it will show up in the profiling list.\n\nSHOW PROFILE displays detailed information about a single statement.\nWithout the FOR QUERY n clause, the output pertains to the most\nrecently executed statement. If FOR QUERY n is included, SHOW PROFILE\ndisplays information for statement n. The values of n correspond to the\nQuery_ID values displayed by SHOW PROFILES.\n\nThe LIMIT row_count clause may be given to limit the output to\nrow_count rows. If LIMIT is given, OFFSET offset may be added to begin\nthe output offset rows into the full set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The\nStatus values are like the State values displayed by SHOW PROCESSLIST,\nalthough there might be some minor differences in interpretion for the\ntwo statements for some status values (see\nhttp://dev.mysql.com/doc/refman/5.6/en/thread-information.html).\n\nOptional type values may be specified to display specific additional\ntypes of information:\n\no ALL displays all information\n\no BLOCK IO displays counts for block input and output operations\n\no CONTEXT SWITCHES displays counts for voluntary and involuntary\n  context switches\n\no CPU displays user and system CPU usage times\n\no IPC displays counts for messages sent and received\n\no MEMORY is not currently implemented\n\no PAGE FAULTS displays counts for major and minor page faults\n\no SOURCE displays the names of functions from the source code, together\n  with the name and line number of the file in which the function\n  occurs\n\no SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-profile.html\n\n', 'mysql> SELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> SET profiling = 1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DROP TABLE IF EXISTS t1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> CREATE TABLE T1 (id INT);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROFILES;\n+----------+----------+--------------------------+\n| Query_ID | Duration | Query                    |\n+----------+----------+--------------------------+\n|        0 | 0.000088 | SET PROFILING = 1        |\n|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |\n|        2 | 0.011947 | CREATE TABLE t1 (id INT) |\n+----------+----------+--------------------------+\n3 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| checking permissions | 0.000040 |\n| creating table       | 0.000056 |\n| After create         | 0.011363 |\n| query end            | 0.000375 |\n| freeing items        | 0.000089 |\n| logging slow query   | 0.000019 |\n| cleaning up          | 0.000005 |\n+----------------------+----------+\n7 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE FOR QUERY 1;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| query end          | 0.000107 |\n| freeing items      | 0.000008 |\n| logging slow query | 0.000015 |\n| cleaning up        | 0.000006 |\n+--------------------+----------+\n4 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE CPU FOR QUERY 2;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| checking permissions | 0.000040 | 0.000038 |   0.000002 |\n| creating table       | 0.000056 | 0.000028 |   0.000028 |\n| After create         | 0.011363 | 0.000217 |   0.001571 |\n| query end            | 0.000375 | 0.000013 |   0.000028 |\n| freeing items        | 0.000089 | 0.000010 |   0.000014 |\n| logging slow query   | 0.000019 | 0.000009 |   0.000010 |\n| cleaning up          | 0.000005 | 0.000003 |   0.000002 |\n+----------------------+----------+----------+------------+\n7 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.6/en/show-profile.html'),
(257, 'LN', 4, 'Syntax:\nLN(X)\n\nReturns the natural logarithm of X; that is, the base-e logarithm of X.\nIf X is less than or equal to 0, then NULL is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT LN(2);\n        -> 0.69314718055995\nmysql> SELECT LN(-2);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(258, 'RETURN', 24, 'Syntax:\nRETURN expr\n\nThe RETURN statement terminates execution of a stored function and\nreturns the value expr to the function caller. There must be at least\none RETURN statement in a stored function. There may be more than one\nif the function has multiple exit points.\n\nThis statement is not used in stored procedures, triggers, or events.\nThe LEAVE statement can be used to exit a stored program of those\ntypes.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/return.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/return.html'),
(259, 'SET SQL_LOG_BIN', 8, 'Syntax:\nSET sql_log_bin = {0|1}\n\nThe sql_log_bin variable controls whether logging to the binary log is\ndone. The default value is 1 (do logging). To change logging for the\ncurrent session, change the session value of this variable. The session\nuser must have the SUPER privilege to set this variable.\n\nIn MySQL 5.6, it is not possible to set @@session.sql_log_bin within a\ntransaction or subquery. (Bug #53437)\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/set-sql-log-bin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/set-sql-log-bin.html'),
(260, 'AES_DECRYPT', 12, 'Syntax:\nAES_DECRYPT(crypt_str,key_str)\n\nThis function decrypts data using the official AES (Advanced Encryption\nStandard) algorithm. For more information, see the description of\nAES_ENCRYPT().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(261, 'COERCIBILITY', 17, 'Syntax:\nCOERCIBILITY(str)\n\nReturns the collation coercibility value of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', 'mysql> SELECT COERCIBILITY(\'abc\' COLLATE latin1_swedish_ci);\n        -> 0\nmysql> SELECT COERCIBILITY(USER());\n        -> 3\nmysql> SELECT COERCIBILITY(\'abc\');\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(262, 'INT', 23, 'INT[(M)] [UNSIGNED] [ZEROFILL]\n\nA normal-size integer. The signed range is -2147483648 to 2147483647.\nThe unsigned range is 0 to 4294967295.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(263, 'GLENGTH', 13, 'GLength(ls)\n\nReturns as a double-precision number the length of the LineString value\nls in its associated spatial reference.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT GLength(GeomFromText(@ls));\n+----------------------------+\n| GLength(GeomFromText(@ls)) |\n+----------------------------+\n|            2.8284271247462 |\n+----------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(264, 'MAKE_SET', 38, 'Syntax:\nMAKE_SET(bits,str1,str2,...)\n\nReturns a set value (a string containing substrings separated by \",\"\ncharacters) consisting of the strings that have the corresponding bit\nin bits set. str1 corresponds to bit 0, str2 to bit 1, and so on. NULL\nvalues in str1, str2, ... are not appended to the result.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT MAKE_SET(1,\'a\',\'b\',\'c\');\n        -> \'a\'\nmysql> SELECT MAKE_SET(1 | 4,\'hello\',\'nice\',\'world\');\n        -> \'hello,world\'\nmysql> SELECT MAKE_SET(1 | 4,\'hello\',\'nice\',NULL,\'world\');\n        -> \'hello\'\nmysql> SELECT MAKE_SET(0,\'a\',\'b\',\'c\');\n        -> \'\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(265, 'FIND_IN_SET', 38, 'Syntax:\nFIND_IN_SET(str,strlist)\n\nReturns a value in the range of 1 to N if the string str is in the\nstring list strlist consisting of N substrings. A string list is a\nstring composed of substrings separated by \",\" characters. If the first\nargument is a constant string and the second is a column of type SET,\nthe FIND_IN_SET() function is optimized to use bit arithmetic. Returns\n0 if str is not in strlist or if strlist is the empty string. Returns\nNULL if either argument is NULL. This function does not work properly\nif the first argument contains a comma (\",\") character.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT FIND_IN_SET(\'b\',\'a,b,c,d\');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(266, 'MIN', 16, 'Syntax:\nMIN([DISTINCT] expr)\n\nReturns the minimum value of expr. MIN() may take a string argument; in\nsuch cases, it returns the minimum string value. See\nhttp://dev.mysql.com/doc/refman/5.6/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the minimum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMIN() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(267, 'REPLACE', 28, 'Syntax:\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name\n    [PARTITION (partition_name,...)] \n    [(col_name,...)]\n    {VALUES | VALUE} ({expr | DEFAULT},...),(...),...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name\n    [PARTITION (partition_name,...)] \n    SET col_name={expr | DEFAULT}, ...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name\n    [PARTITION (partition_name,...)]  \n    [(col_name,...)]\n    SELECT ...\n\nREPLACE works exactly like INSERT, except that if an old row in the\ntable has the same value as a new row for a PRIMARY KEY or a UNIQUE\nindex, the old row is deleted before the new row is inserted. See [HELP\nINSERT].\n\nREPLACE is a MySQL extension to the SQL standard. It either inserts, or\ndeletes and inserts. For another MySQL extension to standard SQL---that\neither inserts or updates---see\nhttp://dev.mysql.com/doc/refman/5.6/en/insert-on-duplicate.html.\n\nNote that unless the table has a PRIMARY KEY or UNIQUE index, using a\nREPLACE statement makes no sense. It becomes equivalent to INSERT,\nbecause there is no index to be used to determine whether a new row\nduplicates another.\n\nValues for all columns are taken from the values specified in the\nREPLACE statement. Any missing columns are set to their default values,\njust as happens for INSERT. You cannot refer to values from the current\nrow and use them in the new row. If you use an assignment such as SET\ncol_name = col_name + 1, the reference to the column name on the right\nhand side is treated as DEFAULT(col_name), so the assignment is\nequivalent to SET col_name = DEFAULT(col_name) + 1.\n\nTo use REPLACE, you must have both the INSERT and DELETE privileges for\nthe table.\n\nBeginning with MySQL 5.6.2, REPLACE supports explicit partition\nselection using the PARTITION option with a comma-separated list of\nnames of partitions, subpartitions, or both. As with INSERT, if it is\nnot possible to insert the new row into any of these partitions or\nsubpartitions, the REPLACE statement fails with the error Found a row\nnot matching the given partition set. See\nhttp://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html, for\nmore information.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/replace.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/replace.html'),
(268, 'CURRENT_TIMESTAMP', 32, 'Syntax:\nCURRENT_TIMESTAMP, CURRENT_TIMESTAMP([fsp])\n\nCURRENT_TIMESTAMP and CURRENT_TIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(269, 'GTID_SUBSET', 17, 'Syntax:\nGTID_SUBSET(subset,set)\n\nGiven two sets of global transaction IDs subset and set, returns true\nif all GTIDs in subset are also in set. Returns false otherwise.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html'),
(270, 'VAR_SAMP', 16, 'Syntax:\nVAR_SAMP(expr)\n\nReturns the sample variance of expr. That is, the denominator is the\nnumber of rows minus one.\n\nVAR_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(271, 'DATETIME', 23, 'DATETIME[(fsp)]\n\nA date and time combination. The supported range is \'1000-01-01\n00:00:00.000000\' to \'9999-12-31 23:59:59.999999\'. MySQL displays\nDATETIME values in \'YYYY-MM-DD HH:MM:SS[.fraction]\' format, but permits\nassignment of values to DATETIME columns using either strings or\nnumbers.\n\nAs of MySQL 5.6.4, an optional fsp value in the range from 0 to 6 may\nbe given to specify fractional seconds precision. A value of 0\nsignifies that there is no fractional part. If omitted, the default\nprecision is 0.\n\nAs of MySQL 5.6.5, automatic initialization and updating to the current\ndate and time for DATETIME columns can be specified using DEFAULT and\nON UPDATE column definition clauses, as described in\nhttp://dev.mysql.com/doc/refman/5.6/en/timestamp-initialization.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html'),
(272, 'INTEGER', 23, 'INTEGER[(M)] [UNSIGNED] [ZEROFILL]\n\nThis type is a synonym for INT.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(273, 'SHOW COLUMNS', 27, 'Syntax:\nSHOW [FULL] COLUMNS {FROM | IN} tbl_name [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views. The LIKE clause, if present, indicates which\ncolumn names to match. The WHERE clause can be given to select rows\nusing more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html.\n\nSHOW COLUMNS displays information only for those columns for which you\nhave some privilege.\n\nmysql> SHOW COLUMNS FROM City;\n+------------+----------+------+-----+---------+----------------+\n| Field      | Type     | Null | Key | Default | Extra          |\n+------------+----------+------+-----+---------+----------------+\n| Id         | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name       | char(35) | NO   |     |         |                |\n| Country    | char(3)  | NO   | UNI |         |                |\n| District   | char(20) | YES  | MUL |         |                |\n| Population | int(11)  | NO   |     | 0       |                |\n+------------+----------+------+-----+---------+----------------+\n5 rows in set (0.00 sec)\n\nIf the data types differ from what you expect them to be based on a\nCREATE TABLE statement, note that MySQL sometimes changes data types\nwhen you create or alter a table. The conditions under which this\noccurs are described in\nhttp://dev.mysql.com/doc/refman/5.6/en/silent-column-changes.html.\n\nThe FULL keyword causes the output to include the column collation and\ncomments, as well as the privileges you have for each column.\n\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. In other words, these two statements are equivalent:\n\nmysql> SHOW COLUMNS FROM mytable FROM mydb;\nmysql> SHOW COLUMNS FROM mydb.mytable;\n\nSHOW COLUMNS displays the following values for each table column:\n\nField indicates the column name.\n\nType indicates the column data type.\n\nCollation indicates the collation for nonbinary string columns, or NULL\nfor other columns. This value is displayed only if you use the FULL\nkeyword.\n\nThe Null field contains YES if NULL values can be stored in the column,\nNO if not.\n\nThe Key field indicates whether the column is indexed:\n\no If Key is empty, the column either is not indexed or is indexed only\n  as a secondary column in a multiple-column, nonunique index.\n\no If Key is PRI, the column is a PRIMARY KEY or is one of the columns\n  in a multiple-column PRIMARY KEY.\n\no If Key is UNI, the column is the first column of a UNIQUE index. (A\n  UNIQUE index permits multiple NULL values, but you can tell whether\n  the column permits NULL by checking the Null field.)\n\no If Key is MUL, the column is the first column of a nonunique index in\n  which multiple occurrences of a given value are permitted within the\n  column.\n\nIf more than one of the Key values applies to a given column of a\ntable, Key displays the one with the highest priority, in the order\nPRI, UNI, MUL.\n\nA UNIQUE index may be displayed as PRI if it cannot contain NULL values\nand there is no PRIMARY KEY in the table. A UNIQUE index may display as\nMUL if several columns form a composite UNIQUE index; although the\ncombination of the columns is unique, each column can still hold\nmultiple occurrences of a given value.\n\nThe Default field indicates the default value that is assigned to the\ncolumn. This is NULL if the column has an explicit default of NULL, or\nif the column definition has no DEFAULT clause.\n\nThe Extra field contains any additional information that is available\nabout a given column. The value is nonempty in these cases:\nauto_increment for columns that have the AUTO_INCREMENT attribute; on\nupdate CURRENT_TIMESTAMP for TIMESTAMP or DATETIME columns that have\nthe ON UPDATE CURRENT_TIMESTAMP attribute.\n\nPrivileges indicates the privileges you have for the column. This value\nis displayed only if you use the FULL keyword.\n\nComment indicates any comment the column has. This value is displayed\nonly if you use the FULL keyword.\n\nSHOW FIELDS is a synonym for SHOW COLUMNS. You can also list a table\'s\ncolumns with the mysqlshow db_name tbl_name command.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee http://dev.mysql.com/doc/refman/5.6/en/describe.html.\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements\nalso provide information about tables. See [HELP SHOW].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-columns.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-columns.html'),
(274, 'TINYINT', 23, 'TINYINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA very small integer. The signed range is -128 to 127. The unsigned\nrange is 0 to 255.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(275, 'MASTER_POS_WAIT', 14, 'Syntax:\nMASTER_POS_WAIT(log_name,log_pos[,timeout])\n\nThis function is useful for control of master/slave synchronization. It\nblocks until the slave has read and applied all updates up to the\nspecified position in the master log. The return value is the number of\nlog events the slave had to wait for to advance to the specified\nposition. The function returns NULL if the slave SQL thread is not\nstarted, the slave\'s master information is not initialized, the\narguments are incorrect, or an error occurs. It returns -1 if the\ntimeout has been exceeded. If the slave SQL thread stops while\nMASTER_POS_WAIT() is waiting, the function returns NULL. If the slave\nis past the specified position, the function returns immediately.\n\nIf a timeout value is specified, MASTER_POS_WAIT() stops waiting when\ntimeout seconds have elapsed. timeout must be greater than 0; a zero or\nnegative timeout means no timeout.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(276, '^', 20, 'Syntax:\n^\n\nBitwise XOR:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html\n\n', 'mysql> SELECT 1 ^ 1;\n        -> 0\nmysql> SELECT 1 ^ 0;\n        -> 1\nmysql> SELECT 11 ^ 3;\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html'),
(277, 'DROP VIEW', 40, 'Syntax:\nDROP VIEW [IF EXISTS]\n    view_name [, view_name] ...\n    [RESTRICT | CASCADE]\n\nDROP VIEW removes one or more views. You must have the DROP privilege\nfor each view. If any of the views named in the argument list do not\nexist, MySQL returns an error indicating by name which nonexisting\nviews it was unable to drop, but it also drops all of the views in the\nlist that do exist.\n\nThe IF EXISTS clause prevents an error from occurring for views that\ndon\'t exist. When this clause is given, a NOTE is generated for each\nnonexistent view. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE, if given, are parsed and ignored.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/drop-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/drop-view.html'),
(278, 'WEEK', 32, 'Syntax:\nWEEK(date[,mode])\n\nThis function returns the week number for date. The two-argument form\nof WEEK() enables you to specify whether the week starts on Sunday or\nMonday and whether the return value should be in the range from 0 to 53\nor from 1 to 53. If the mode argument is omitted, the value of the\ndefault_week_format system variable is used. See\nhttp://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEK(\'2008-02-20\');\n        -> 7\nmysql> SELECT WEEK(\'2008-02-20\',0);\n        -> 7\nmysql> SELECT WEEK(\'2008-02-20\',1);\n        -> 8\nmysql> SELECT WEEK(\'2008-12-31\',1);\n        -> 53\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(279, 'DROP FUNCTION UDF', 22, 'Syntax:\nDROP FUNCTION function_name\n\nThis statement drops the user-defined function (UDF) named\nfunction_name.\n\nTo drop a function, you must have the DELETE privilege for the mysql\ndatabase. This is because DROP FUNCTION removes a row from the\nmysql.func system table that records the function\'s name, type, and\nshared library name.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/drop-function-udf.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/drop-function-udf.html'),
(280, 'UPDATEXML', 38, 'Syntax:\nUpdateXML(xml_target, xpath_expr, new_xml)\n\nThis function replaces a single portion of a given fragment of XML\nmarkup xml_target with a new XML fragment new_xml, and then returns the\nchanged XML. The portion of xml_target that is replaced matches an\nXPath expression xpath_expr supplied by the user. In MySQL 5.6.6 and\nearlier, the XPath expression could contain at most 127 characters.\nThis limitation is lifted in MySQL 5.6.7. (Bug #13007062, Bug #62429)\n\nIf no expression matching xpath_expr is found, or if multiple matches\nare found, the function returns the original xml_target XML fragment.\nAll three arguments should be strings.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/xml-functions.html\n\n', 'mysql> SELECT\n    ->   UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'/a\', \'<e>fff</e>\') AS val1,\n    ->   UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'/b\', \'<e>fff</e>\') AS val2,\n    ->   UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'//b\', \'<e>fff</e>\') AS val3,\n    ->   UpdateXML(\'<a><b>ccc</b><d></d></a>\', \'/a/d\', \'<e>fff</e>\') AS val4,\n    ->   UpdateXML(\'<a><d></d><b>ccc</b><d></d></a>\', \'/a/d\', \'<e>fff</e>\') AS val5\n    -> \\G\n\n*************************** 1. row ***************************\nval1: <e>fff</e>\nval2: <a><b>ccc</b><d></d></a>\nval3: <a><e>fff</e><d></d></a>\nval4: <a><b>ccc</b><e>fff</e></a>\nval5: <a><d></d><b>ccc</b><d></d></a>\n', 'http://dev.mysql.com/doc/refman/5.6/en/xml-functions.html'),
(281, 'RESET SLAVE', 8, 'Syntax:\nRESET SLAVE [ALL]\n\nRESET SLAVE makes the slave forget its replication position in the\nmaster\'s binary log. This statement is meant to be used for a clean\nstart: It deletes the master.info and relay-log.info files, all the\nrelay log files, and starts a new relay log file. It also resets to 0\nthe replication delay specified with the MASTER_DELAY option to CHANGE\nMASTER TO. To use RESET SLAVE, the slave replication threads must be\nstopped (use STOP SLAVE if necessary).\n\n*Note*: All relay log files are deleted, even if they have not been\ncompletely executed by the slave SQL thread. (This is a condition\nlikely to exist on a replication slave if you have issued a STOP SLAVE\nstatement or if the slave is highly loaded.)\n\nIn MySQL 5.6 (unlike the case in MySQL 5.1 and earlier), RESET SLAVE\ndoes not change any replication connection parameters such as master\nhost, master port, master user, or master password, which are retained\nin memory. This means that START SLAVE can be issued without requiring\na CHANGE MASTER TO statement following RESET SLAVE.\n\nConnection parameters are reset if the slave mysqld is shut down\nfollowing RESET SLAVE. In MySQL 5.6.3 and later, you can instead use\nRESET SLAVE ALL to reset these connection parameters (Bug #11809016).\n\nIn MySQL 5.6.7 and later, RESET SLAVE causes an implicit commit of an\nongoing transaction. See\nhttp://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.\n\nIf the slave SQL thread was in the middle of replicating temporary\ntables when it was stopped, and RESET SLAVE is issued, these replicated\ntemporary tables are deleted on the slave.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/reset-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/reset-slave.html'),
(282, 'DAY', 32, 'Syntax:\nDAY(date)\n\nDAY() is a synonym for DAYOFMONTH().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(283, 'UUID', 14, 'Syntax:\nUUID()\n\nReturns a Universal Unique Identifier (UUID) generated according to\n\"DCE 1.1: Remote Procedure Call\" (Appendix A) CAE (Common Applications\nEnvironment) Specifications published by The Open Group in October 1997\n(Document Number C706,\nhttp://www.opengroup.org/public/pubs/catalog/c706.htm).\n\nA UUID is designed as a number that is globally unique in space and\ntime. Two calls to UUID() are expected to generate two different\nvalues, even if these calls are performed on two separate computers\nthat are not connected to each other.\n\nA UUID is a 128-bit number represented by a utf8 string of five\nhexadecimal numbers in aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee format:\n\no The first three numbers are generated from a timestamp.\n\no The fourth number preserves temporal uniqueness in case the timestamp\n  value loses monotonicity (for example, due to daylight saving time).\n\no The fifth number is an IEEE 802 node number that provides spatial\n  uniqueness. A random number is substituted if the latter is not\n  available (for example, because the host computer has no Ethernet\n  card, or we do not know how to find the hardware address of an\n  interface on your operating system). In this case, spatial uniqueness\n  cannot be guaranteed. Nevertheless, a collision should have very low\n  probability.\n\n  Currently, the MAC address of an interface is taken into account only\n  on FreeBSD and Linux. On other operating systems, MySQL uses a\n  randomly generated 48-bit number.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> SELECT UUID();\n        -> \'6ccd780c-baba-1026-9564-0040f4311e29\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(284, 'SLEEP', 14, 'Syntax:\nSLEEP(duration)\n\nSleeps (pauses) for the number of seconds given by the duration\nargument, then returns 0. If SLEEP() is interrupted, it returns 1. The\nduration may have a fractional part.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(285, 'LINESTRING', 25, 'LineString(pt1,pt2,...)\n\nConstructs a LineString value from a number of Point or WKB Point\narguments. If the number of arguments is less than two, the return\nvalue is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(286, 'NULLIF', 7, 'Syntax:\nNULLIF(expr1,expr2)\n\nReturns NULL if expr1 = expr2 is true, otherwise returns expr1. This is\nthe same as CASE WHEN expr1 = expr2 THEN NULL ELSE expr1 END.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html\n\n', 'mysql> SELECT NULLIF(1,1);\n        -> NULL\nmysql> SELECT NULLIF(1,2);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html'),
(287, 'ROUND', 4, 'Syntax:\nROUND(X), ROUND(X,D)\n\nRounds the argument X to D decimal places. The rounding algorithm\ndepends on the data type of X. D defaults to 0 if not specified. D can\nbe negative to cause D digits left of the decimal point of the value X\nto become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT ROUND(-1.23);\n        -> -1\nmysql> SELECT ROUND(-1.58);\n        -> -2\nmysql> SELECT ROUND(1.58);\n        -> 2\nmysql> SELECT ROUND(1.298, 1);\n        -> 1.3\nmysql> SELECT ROUND(1.298, 0);\n        -> 1\nmysql> SELECT ROUND(23.298, -1);\n        -> 20\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(288, 'TIMEDIFF', 32, 'Syntax:\nTIMEDIFF(expr1,expr2)\n\nTIMEDIFF() returns expr1 - expr2 expressed as a time value. expr1 and\nexpr2 are time or date-and-time expressions, but both must be of the\nsame type.\n\nThe result returned by TIMEDIFF() is limited to the range allowed for\nTIME values. Alternatively, you can use either of the functions\nTIMESTAMPDIFF() and UNIX_TIMESTAMP(), both of which return integers.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMEDIFF(\'2000:01:01 00:00:00\',\n    ->                 \'2000:01:01 00:00:00.000001\');\n        -> \'-00:00:00.000001\'\nmysql> SELECT TIMEDIFF(\'2008-12-31 23:59:59.000001\',\n    ->                 \'2008-12-30 01:01:01.000002\');\n        -> \'46:58:57.999999\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(289, 'STOP SLAVE', 8, 'Syntax:\nSTOP SLAVE [thread_types]\n\nthread_types:\n    [thread_type [, thread_type] ... ]\n\nthread_type: IO_THREAD | SQL_THREAD\n\nStops the slave threads. STOP SLAVE requires the SUPER privilege.\nRecommended best practice is to execute STOP SLAVE on the slave before\nstopping the slave server (see\nhttp://dev.mysql.com/doc/refman/5.6/en/server-shutdown.html, for more\ninformation).\n\nWhen using the row-based logging format: You should execute STOP SLAVE\nor STOP SLAVE SQL_THREAD on the slave prior to shutting down the slave\nserver if you are replicating any tables that use a nontransactional\nstorage engine (see the Note later in this section).\n\nLike START SLAVE, this statement may be used with the IO_THREAD and\nSQL_THREAD options to name the thread or threads to be stopped.\n\nIn MySQL 5.6.7 and later, STOP SLAVE causes an implicit commit of an\nongoing transaction. See\nhttp://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.\n\nBeginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before\nissuing this statement (BUG#16062608).\n\n*Note*: In MySQL 5.6, STOP SLAVE waits until the current replication\nevent group affecting one or more nontransactional tables has finished\nexecuting (if there is any such replication group), or until the user\nissues a KILL QUERY or KILL CONNECTION statement. (Bug #319, Bug\n#38205)\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/stop-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/stop-slave.html'),
(290, 'LINEFROMTEXT', 3, 'LineFromText(wkt[,srid]), LineStringFromText(wkt[,srid])\n\nConstructs a LINESTRING value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(291, 'ADDTIME', 32, 'Syntax:\nADDTIME(expr1,expr2)\n\nADDTIME() adds expr2 to expr1 and returns the result. expr1 is a time\nor datetime expression, and expr2 is a time expression.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT ADDTIME(\'2007-12-31 23:59:59.999999\', \'1 1:1:1.000002\');\n        -> \'2008-01-02 01:01:01.000001\'\nmysql> SELECT ADDTIME(\'01:00:00.999999\', \'02:00:00.999998\');\n        -> \'03:00:01.999997\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(292, 'UPPER', 38, 'Syntax:\nUPPER(str)\n\nReturns the string str with all characters changed to uppercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nmysql> SELECT UPPER(\'Hej\');\n        -> \'HEJ\'\n\nSee the description of LOWER() for information that also applies to\nUPPER(). This included information about how to perform lettercase\nconversion of binary strings (BINARY, VARBINARY, BLOB) for which these\nfunctions are ineffective, and information about case folding for\nUnicode character sets.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(293, 'MEDIUMBLOB', 23, 'MEDIUMBLOB\n\nA BLOB column with a maximum length of 16,777,215 (224 - 1) bytes. Each\nMEDIUMBLOB value is stored using a 3-byte length prefix that indicates\nthe number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(294, 'FROM_UNIXTIME', 32, 'Syntax:\nFROM_UNIXTIME(unix_timestamp), FROM_UNIXTIME(unix_timestamp,format)\n\nReturns a representation of the unix_timestamp argument as a value in\n\'YYYY-MM-DD HH:MM:SS\' or YYYYMMDDHHMMSS format, depending on whether\nthe function is used in a string or numeric context. The value is\nexpressed in the current time zone. unix_timestamp is an internal\ntimestamp value such as is produced by the UNIX_TIMESTAMP() function.\n\nIf format is given, the result is formatted according to the format\nstring, which is used the same way as listed in the entry for the\nDATE_FORMAT() function.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT FROM_UNIXTIME(1196440219);\n        -> \'2007-11-30 10:30:19\'\nmysql> SELECT FROM_UNIXTIME(1196440219) + 0;\n        -> 20071130103019.000000\nmysql> SELECT FROM_UNIXTIME(UNIX_TIMESTAMP(),\n    ->                      \'%Y %D %M %h:%i:%s %x\');\n        -> \'2007 30th November 10:30:59 2007\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(295, 'SHA2', 12, 'Syntax:\nSHA2(str, hash_length)\n\nCalculates the SHA-2 family of hash functions (SHA-224, SHA-256,\nSHA-384, and SHA-512). The first argument is the cleartext string to be\nhashed. The second argument indicates the desired bit length of the\nresult, which must have a value of 224, 256, 384, 512, or 0 (which is\nequivalent to 256). If either argument is NULL or the hash length is\nnot one of the permitted values, the return value is NULL. Otherwise,\nthe function result is a hash value containing the desired number of\nbits. See the notes at the beginning of this section about storing hash\nvalues efficiently.\n\nThe return value is a nonbinary string in the connection character set.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', 'mysql> SELECT SHA2(\'abc\', 224);\n        -> \'23097d223405d8228642a477bda255b32aadbce4bda0b3f7e36c9da7\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(296, 'IFNULL', 7, 'Syntax:\nIFNULL(expr1,expr2)\n\nIf expr1 is not NULL, IFNULL() returns expr1; otherwise it returns\nexpr2. IFNULL() returns a numeric or string value, depending on the\ncontext in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html\n\n', 'mysql> SELECT IFNULL(1,0);\n        -> 1\nmysql> SELECT IFNULL(NULL,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,\'yes\');\n        -> \'yes\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html'),
(297, 'SHOW FUNCTION CODE', 27, 'Syntax:\nSHOW FUNCTION CODE func_name\n\nThis statement is similar to SHOW PROCEDURE CODE but for stored\nfunctions. See [HELP SHOW PROCEDURE CODE].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-function-code.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-function-code.html'),
(298, 'LEAST', 19, 'Syntax:\nLEAST(value1,value2,...)\n\nWith two or more arguments, returns the smallest (minimum-valued)\nargument. The arguments are compared using the following rules:\n\no If any argument is NULL, the result is NULL. No comparison is needed.\n\no If the return value is used in an INTEGER context or all arguments\n  are integer-valued, they are compared as integers.\n\no If the return value is used in a REAL context or all arguments are\n  real-valued, they are compared as reals.\n\no If the arguments comprise a mix of numbers and strings, they are\n  compared as numbers.\n\no If any argument is a nonbinary (character) string, the arguments are\n  compared as nonbinary strings.\n\no In all other cases, the arguments are compared as binary strings.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT LEAST(2,0);\n        -> 0\nmysql> SELECT LEAST(34.0,3.0,5.0,767.0);\n        -> 3.0\nmysql> SELECT LEAST(\'B\',\'A\',\'C\');\n        -> \'A\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(299, 'SHOW ERRORS', 27, 'Syntax:\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW COUNT(*) ERRORS\n\nThis statement is similar to SHOW WARNINGS, except that it displays\ninformation only for errors, rather than for errors, warnings, and\nnotes.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttp://dev.mysql.com/doc/refman/5.6/en/select.html.\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You\ncan also retrieve this number from the error_count variable:\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nSHOW ERRORS and error_count apply only to errors, not warnings or\nnotes. In other respects, they are similar to SHOW WARNINGS and\nwarning_count. In particular, SHOW ERRORS cannot display information\nfor more than max_error_count messages, and error_count can exceed the\nvalue of max_error_count if the number of errors exceeds\nmax_error_count.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-errors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-errors.html'),
(300, '=', 19, '=\n\nEqual:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 1 = 0;\n        -> 0\nmysql> SELECT \'0\' = 0;\n        -> 1\nmysql> SELECT \'0.0\' = 0;\n        -> 1\nmysql> SELECT \'0.01\' = 0;\n        -> 0\nmysql> SELECT \'.01\' = 0.01;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(301, 'IS_IPV4_MAPPED', 14, 'Syntax:\nIS_IPV4_MAPPED(expr)\n\nThis function takes an IPv6 address represented in numeric form as a\nbinary string, as returned by INET6_ATON(). It returns 1 if the\nargument is a valid IPv4-mapped IPv6 address, 0 otherwise. IPv4-mapped\naddresses have the form ::ffff:ipv4_address.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> SELECT IS_IPV4_MAPPED(INET6_ATON(\'::10.0.5.9\'));\n        -> 0\nmysql> SELECT IS_IPV4_MAPPED(INET6_ATON(\'::ffff:10.0.5.9\'));\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(302, 'BOUNDARY', 37, 'Boundary(g)\n\nReturns a geometry that is the closure of the combinatorial boundary of\nthe geometry value g.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(303, 'CREATE USER', 10, 'Syntax:\nCREATE USER user_specification\n    [, user_specification] ...\n\nuser_specification:\n    user\n    [\n        IDENTIFIED BY [PASSWORD] \'password\'\n      | IDENTIFIED WITH auth_plugin [AS \'auth_string\']\n    ]\n\nThe CREATE USER statement creates new MySQL accounts. To use it, you\nmust have the global CREATE USER privilege or the INSERT privilege for\nthe mysql database. For each account, CREATE USER creates a new row in\nthe mysql.user table and assigns the account no privileges. An error\noccurs if the account already exists.\n\nFor CREATE USER statements that do not specify an IDENTIFIED WITH\nauth_plugin clause, the server associates the account with the default\nauthentication plugin. As of MySQL 5.6.6, this is the plugin named by\nthe --default-authentication-plugin option at server startup, or\nmysql_native_password if that option is not used. Before 5.6.6, the\ndefault plugin is mysql_native_password. For information about\nauthentication plugins, see\nhttp://dev.mysql.com/doc/refman/5.6/en/pluggable-authentication.html.\n\nEach account name uses the format described in\nhttp://dev.mysql.com/doc/refman/5.6/en/account-names.html. For example:\n\nCREATE USER \'jeffrey\'@\'localhost\' IDENTIFIED BY \'mypass\';\n\nIf you specify only the user name part of the account name, a host name\npart of \'%\' is used.\n\nThe user specification may indicate how the user should authenticate\nwhen connecting to the server:\n\no To enable the user to connect with no password (which is insecure),\n  include no IDENTIFIED BY clause:\n\nCREATE USER \'jeffrey\'@\'localhost\';\n\n  In this case, the account uses the default authentication plugin and\n  clients must provide no password.\n\no To assign a password, use IDENTIFIED BY with the literal plaintext\n  password value:\n\nCREATE USER \'jeffrey\'@\'localhost\' IDENTIFIED BY \'mypass\';\n\n  The account uses the default authentication plugin and clients must\n  match the given password.\n\no To avoid specifying the plaintext password if you know its hash value\n  (the value that PASSWORD() would return for the password), specify\n  the hash value preceded by the keyword PASSWORD:\n\nCREATE USER \'jeffrey\'@\'localhost\'\nIDENTIFIED BY PASSWORD \'*90E462C37378CED12064BB3388827D2BA3A9B689\';\n\n  The account uses the default authentication plugin and the has must\n  be in the format required by that plugin. Clients must match the\n  given password.\n\no To authenticate the account using a specific authentication plugin,\n  use IDENTIFIED WITH, where auth_plugin is the plugin name. It can be\n  an unquoted name or a quoted string literal. \'auth_string\' is an\n  optional quoted string literal to pass to the plugin. The plugin\n  interprets the meaning of the string, so its format is plugin\n  specific. Consult the documentation for a given plugin for\n  information about the authentication string values it accepts.\n\nCREATE USER \'jeffrey\'@\'localhost\'\nIDENTIFIED WITH my_auth_plugin;\n\n  For connections that use this account, the server invokes the named\n  plugin and clients must provide credentials as required for the\n  authentication method that the plugin implements. If the server\n  cannot find the plugin, either at account-creation time or connect\n  time, an error occurs.\n\nThe IDENTIFIED BY and IDENTIFIED WITH clauses are mutually exclusive,\nso at most one of them can be specified for a given user.\n\nFor additional information about setting passwords, see\nhttp://dev.mysql.com/doc/refman/5.6/en/assigning-passwords.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/create-user.html'),
(304, 'POINT', 25, 'Point(x,y)\n\nConstructs a Point using its coordinates.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(305, 'LCASE', 38, 'Syntax:\nLCASE(str)\n\nLCASE() is a synonym for LOWER().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(306, 'IS NOT NULL', 19, 'Syntax:\nIS NOT NULL\n\nTests whether a value is not NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NOT NULL, 0 IS NOT NULL, NULL IS NOT NULL;\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(307, 'MATCH AGAINST', 38, 'Syntax:\nMATCH (col1,col2,...) AGAINST (expr [search_modifier])\n\nMySQL has support for full-text indexing and searching:\n\no A full-text index in MySQL is an index of type FULLTEXT.\n\no Full-text indexes can be used only with InnoDB or MyISAM tables, and\n  can be created only for CHAR, VARCHAR, or TEXT columns.\n\no A FULLTEXT index definition can be given in the CREATE TABLE\n  statement when a table is created, or added later using ALTER TABLE\n  or CREATE INDEX.\n\no For large data sets, it is much faster to load your data into a table\n  that has no FULLTEXT index and then create the index after that, than\n  to load data into a table that has an existing FULLTEXT index.\n\nFull-text searching is performed using MATCH() ... AGAINST syntax.\nMATCH() takes a comma-separated list that names the columns to be\nsearched. AGAINST takes a string to search for, and an optional\nmodifier that indicates what type of search to perform. The search\nstring must be a string value that is constant during query evaluation.\nThis rules out, for example, a table column because that can differ for\neach row.\n\nThere are three types of full-text searches:\n\no A natural language search interprets the search string as a phrase in\n  natural human language (a phrase in free text). There are no special\n  operators. The stopword list applies, controlled by\n  innodb_ft_enable_stopword, innodb_ft_server_stopword_table, and\n  innodb_ft_user_stopword_table for InnoDB search indexes, and\n  ft_stopword_file for MyISAM ones.\n\no Full-text searches are natural language searches if the IN NATURAL\n  LANGUAGE MODE modifier is given or if no modifier is given. For more\n  information, see\n  http://dev.mysql.com/doc/refman/5.6/en/fulltext-natural-language.html\n  .\n\no A boolean search interprets the search string using the rules of a\n  special query language. The string contains the words to search for.\n  It can also contain operators that specify requirements such that a\n  word must be present or absent in matching rows, or that it should be\n  weighted higher or lower than usual. Certain common words (stopwords)\n  are omitted from the search index and do not match if present in the\n  search string. The IN BOOLEAN MODE modifier specifies a boolean\n  search. For more information, see\n  http://dev.mysql.com/doc/refman/5.6/en/fulltext-boolean.html.\n\no A query expansion search is a modification of a natural language\n  search. The search string is used to perform a natural language\n  search. Then words from the most relevant rows returned by the search\n  are added to the search string and the search is done again. The\n  query returns the rows from the second search. The IN NATURAL\n  LANGUAGE MODE WITH QUERY EXPANSION or WITH QUERY EXPANSION modifier\n  specifies a query expansion search. For more information, see\n  http://dev.mysql.com/doc/refman/5.6/en/fulltext-query-expansion.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/fulltext-search.html\n\n', 'mysql> SELECT id, body, MATCH (title,body) AGAINST\n    (\'Security implications of running MySQL as root\'\n    IN NATURAL LANGUAGE MODE) AS score\n    FROM articles WHERE MATCH (title,body) AGAINST\n    (\'Security implications of running MySQL as root\'\n    IN NATURAL LANGUAGE MODE);\n+----+-----------------------+------------------------------------------+\n| id | title                 | body                                     |\n+----+-----------------------+------------------------------------------+\n|  5 | MySQL vs. YourSQL     | In the following database comparison ... |\n|  1 | MySQL Tutorial        | DBMS stands for DataBase ...             |\n|  3 | Optimizing MySQL      | In this tutorial we will show ...        |\n|  6 | MySQL Security        | When configured properly, MySQL ...      |\n|  2 | How To Use MySQL Well | After you went through a ...             |\n|  4 | 1001 MySQL Tricks     | 1. Never run mysqld as root. 2. ...      |\n+----+-----------------------+------------------------------------------+\n6 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.6/en/fulltext-search.html'),
(308, 'CREATE EVENT', 40, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    EVENT\n    [IF NOT EXISTS]\n    event_name\n    ON SCHEDULE schedule\n    [ON COMPLETION [NOT] PRESERVE]\n    [ENABLE | DISABLE | DISABLE ON SLAVE]\n    [COMMENT \'comment\']\n    DO event_body;\n\nschedule:\n    AT timestamp [+ INTERVAL interval] ...\n  | EVERY interval\n    [STARTS timestamp [+ INTERVAL interval] ...]\n    [ENDS timestamp [+ INTERVAL interval] ...]\n\ninterval:\n    quantity {YEAR | QUARTER | MONTH | DAY | HOUR | MINUTE |\n              WEEK | SECOND | YEAR_MONTH | DAY_HOUR | DAY_MINUTE |\n              DAY_SECOND | HOUR_MINUTE | HOUR_SECOND | MINUTE_SECOND}\n\nThis statement creates and schedules a new event. The event will not\nrun unless the Event Scheduler is enabled. For information about\nchecking Event Scheduler status and enabling it if necessary, see\nhttp://dev.mysql.com/doc/refman/5.6/en/events-configuration.html.\n\nCREATE EVENT requires the EVENT privilege for the schema in which the\nevent is to be created. It might also require the SUPER privilege,\ndepending on the DEFINER value, as described later in this section.\n\nThe minimum requirements for a valid CREATE EVENT statement are as\nfollows:\n\no The keywords CREATE EVENT plus an event name, which uniquely\n  identifies the event in a database schema.\n\no An ON SCHEDULE clause, which determines when and how often the event\n  executes.\n\no A DO clause, which contains the SQL statement to be executed by an\n  event.\n\nThis is an example of a minimal CREATE EVENT statement:\n\nCREATE EVENT myevent\n    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR\n    DO\n      UPDATE myschema.mytable SET mycol = mycol + 1;\n\nThe previous statement creates an event named myevent. This event\nexecutes once---one hour following its creation---by running an SQL\nstatement that increments the value of the myschema.mytable table\'s\nmycol column by 1.\n\nThe event_name must be a valid MySQL identifier with a maximum length\nof 64 characters. Event names are not case sensitive, so you cannot\nhave two events named myevent and MyEvent in the same schema. In\ngeneral, the rules governing event names are the same as those for\nnames of stored routines. See\nhttp://dev.mysql.com/doc/refman/5.6/en/identifiers.html.\n\nAn event is associated with a schema. If no schema is indicated as part\nof event_name, the default (current) schema is assumed. To create an\nevent in a specific schema, qualify the event name with a schema using\nschema_name.event_name syntax.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/create-event.html'),
(309, 'MBR DEFINITION', 6, 'Its MBR (Minimum Bounding Rectangle), or Envelope. This is the bounding\ngeometry, formed by the minimum and maximum (X,Y) coordinates:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/gis-class-geometry.html\n\n', '((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n', 'http://dev.mysql.com/doc/refman/5.6/en/gis-class-geometry.html'),
(310, 'GEOMETRYCOLLECTION', 25, 'GeometryCollection(g1,g2,...)\n\nConstructs a GeometryCollection.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(311, '*', 4, 'Syntax:\n*\n\nMultiplication:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3*5;\n        -> 15\nmysql> SELECT 18014398509481984*18014398509481984.0;\n        -> 324518553658426726783156020576256.0\nmysql> SELECT 18014398509481984*18014398509481984;\n        -> out-of-range error\n', 'http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html'),
(312, 'DES_DECRYPT', 12, 'Syntax:\nDES_DECRYPT(crypt_str[,key_str])\n\nDecrypts a string encrypted with DES_ENCRYPT(). If an error occurs,\nthis function returns NULL.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.6/en/ssl-connections.html.\n\nIf no key_str argument is given, DES_DECRYPT() examines the first byte\nof the encrypted string to determine the DES key number that was used\nto encrypt the original string, and then reads the key from the DES key\nfile to decrypt the message. For this to work, the user must have the\nSUPER privilege. The key file can be specified with the --des-key-file\nserver option.\n\nIf you pass this function a key_str argument, that string is used as\nthe key for decrypting the message.\n\nIf the crypt_str argument does not appear to be an encrypted string,\nMySQL returns the given crypt_str.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(313, 'ENDPOINT', 13, 'EndPoint(ls)\n\nReturns the Point that is the endpoint of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(EndPoint(GeomFromText(@ls)));\n+-------------------------------------+\n| AsText(EndPoint(GeomFromText(@ls))) |\n+-------------------------------------+\n| POINT(3 3)                          |\n+-------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(314, 'COUNT', 16, 'Syntax:\nCOUNT(expr)\n\nReturns a count of the number of non-NULL values of expr in the rows\nretrieved by a SELECT statement. The result is a BIGINT value.\n\nCOUNT() returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', 'mysql> SELECT student.student_name,COUNT(*)\n    ->        FROM student,course\n    ->        WHERE student.student_id=course.student_id\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(315, 'INSERT', 28, 'Syntax:\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name\n    [PARTITION (partition_name,...)] \n    [(col_name,...)]\n    {VALUES | VALUE} ({expr | DEFAULT},...),(...),...\n    [ ON DUPLICATE KEY UPDATE\n      col_name=expr\n        [, col_name=expr] ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name\n    [PARTITION (partition_name,...)]\n    SET col_name={expr | DEFAULT}, ...\n    [ ON DUPLICATE KEY UPDATE\n      col_name=expr\n        [, col_name=expr] ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name\n    [PARTITION (partition_name,...)] \n    [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE\n      col_name=expr\n        [, col_name=expr] ... ]\n\nINSERT inserts new rows into an existing table. The INSERT ... VALUES\nand INSERT ... SET forms of the statement insert rows based on\nexplicitly specified values. The INSERT ... SELECT form inserts rows\nselected from another table or tables. INSERT ... SELECT is discussed\nfurther in [HELP INSERT SELECT].\n\nIn MySQL 5.6.2 and later, when inserting into a partitioned table, you\ncan control which partitions and subpartitions accept new rows. The\nPARTITION option takes a comma-separated list of the names of one or\nmore partitions or subpartitions (or both) of the table. If any of the\nrows to be inserted by a given INSERT statement do not match one of the\npartitions listed, the INSERT statement fails with the error Found a\nrow not matching the given partition set. See\nhttp://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html, for\nmore information and examples.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/insert.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/insert.html'),
(316, 'MLINEFROMTEXT', 3, 'MLineFromText(wkt[,srid]), MultiLineStringFromText(wkt[,srid])\n\nConstructs a MULTILINESTRING value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(317, 'GEOMCOLLFROMWKB', 33, 'GeomCollFromWKB(wkb[,srid]), GeometryCollectionFromWKB(wkb[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(318, 'TINYTEXT', 23, 'TINYTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 255 (28 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TINYTEXT value is stored using a 1-byte length prefix\nthat indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(319, 'DEFAULT', 14, 'Syntax:\nDEFAULT(col_name)\n\nReturns the default value for a table column. An error results if the\ncolumn has no default value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> UPDATE t SET i = DEFAULT(i)+1 WHERE id < 100;\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(320, 'DECODE', 12, 'Syntax:\nDECODE(crypt_str,pass_str)\n\nDecrypts the encrypted string crypt_str using pass_str as the password.\ncrypt_str should be a string returned from ENCODE().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(321, 'OPTIMIZE TABLE', 21, 'Syntax:\nOPTIMIZE [NO_WRITE_TO_BINLOG | LOCAL] TABLE\n    tbl_name [, tbl_name] ...\n\nReorganizes the physical storage of table data and associated index\ndata, to reduce storage space and improve I/O efficiency when accessing\nthe table. The exact changes made to each table depend on the storage\nengine used by that table.\n\nUse OPTIMIZE TABLE in these cases, depending on the type of table:\n\no After doing substantial insert, update, or delete operations on an\n  InnoDB table that has its own .ibd file because it was created with\n  the innodb_file_per_table option enabled. The table and indexes are\n  reorganized, and disk space can be reclaimed for use by the operating\n  system.\n\no After doing substantial insert, update, or delete operations on\n  columns that are part of a FULLTEXT index in an InnoDB table. Set the\n  configuration option innodb_optimize_fulltext_only=1 first. To keep\n  the index maintenance period to a reasonable time, set the\n  innodb_ft_num_word_optimize option to specify how many words to\n  update in the search index, and run a sequence of OPTIMIZE TABLE\n  statements until the search index is fully updated.\n\no After deleting a large part of a MyISAM or ARCHIVE table, or making\n  many changes to a MyISAM or ARCHIVE table with variable-length rows\n  (tables that have VARCHAR, VARBINARY, BLOB, or TEXT columns). Deleted\n  rows are maintained in a linked list and subsequent INSERT operations\n  reuse old row positions. You can use OPTIMIZE TABLE to reclaim the\n  unused space and to defragment the data file. After extensive changes\n  to a table, this statement may also improve performance of statements\n  that use the table, sometimes significantly.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nOPTIMIZE TABLE is also supported for partitioned tables. For\ninformation about using this statement with partitioned tables and\ntable partitions, see\nhttp://dev.mysql.com/doc/refman/5.6/en/partitioning-maintenance.html.\n\nBeginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before\nissuing this statement (BUG#16062608).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/optimize-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/optimize-table.html'),
(322, '<=>', 19, 'Syntax:\n<=>\n\nNULL-safe equal. This operator performs an equality comparison like the\n= operator, but returns 1 rather than NULL if both operands are NULL,\nand 0 rather than NULL if one operand is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 1 <=> 1, NULL <=> NULL, 1 <=> NULL;\n        -> 1, 1, 0\nmysql> SELECT 1 = 1, NULL = NULL, 1 = NULL;\n        -> 1, NULL, NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(323, 'RESET', 27, 'Syntax:\nRESET reset_option [, reset_option] ...\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nThe RESET statement causes an implicit commit. See\nhttp://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.\n\nBeginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before\nissuing this statement (BUG#16062608).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/reset.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/reset.html'),
(324, 'GET_LOCK', 14, 'Syntax:\nGET_LOCK(str,timeout)\n\nTries to obtain a lock with a name given by the string str, using a\ntimeout of timeout seconds. Returns 1 if the lock was obtained\nsuccessfully, 0 if the attempt timed out (for example, because another\nclient has previously locked the name), or NULL if an error occurred\n(such as running out of memory or the thread was killed with mysqladmin\nkill). If you have a lock obtained with GET_LOCK(), it is released when\nyou execute RELEASE_LOCK(), execute a new GET_LOCK(), or your\nconnection terminates (either normally or abnormally). Locks obtained\nwith GET_LOCK() do not interact with transactions. That is, committing\na transaction does not release any such locks obtained during the\ntransaction.\n\nThis function can be used to implement application locks or to simulate\nrecord locks. Names are locked on a server-wide basis. If a name has\nbeen locked by one client, GET_LOCK() blocks any request by another\nclient for a lock with the same name. This enables clients that agree\non a given lock name to use the name to perform cooperative advisory\nlocking. But be aware that it also enables a client that is not among\nthe set of cooperating clients to lock a name, either inadvertently or\ndeliberately, and thus prevent any of the cooperating clients from\nlocking that name. One way to reduce the likelihood of this is to use\nlock names that are database-specific or application-specific. For\nexample, use lock names of the form db_name.str or app_name.str.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> SELECT GET_LOCK(\'lock1\',10);\n        -> 1\nmysql> SELECT IS_FREE_LOCK(\'lock2\');\n        -> 1\nmysql> SELECT GET_LOCK(\'lock2\',10);\n        -> 1\nmysql> SELECT RELEASE_LOCK(\'lock2\');\n        -> 1\nmysql> SELECT RELEASE_LOCK(\'lock1\');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(325, 'BIGINT', 23, 'BIGINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA large integer. The signed range is -9223372036854775808 to\n9223372036854775807. The unsigned range is 0 to 18446744073709551615.\n\nSERIAL is an alias for BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(326, 'CURTIME', 32, 'Syntax:\nCURTIME([fsp])\n\nReturns the current time as a value in \'HH:MM:SS\' or HHMMSS format,\ndepending on whether the function is used in a string or numeric\ncontext. The value is expressed in the current time zone.\n\nAs of MySQL 5.6.4, if the fsp argument is given to specify a fractional\nseconds precision from 0 to 6, the return value includes a fractional\nseconds part of that many digits. Before 5.6.4, any argument is\nignored.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT CURTIME();\n        -> \'23:50:26\'\nmysql> SELECT CURTIME() + 0;\n        -> 235026.000000\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(327, 'SET', 27, 'Syntax:\nSET variable_assignment [, variable_assignment] ...\n\nvariable_assignment:\n      user_var_name = expr\n    | [GLOBAL | SESSION] system_var_name = expr\n    | [@@global. | @@session. | @@]system_var_name = expr\n\nThe SET statement assigns values to different types of variables that\naffect the operation of the server or your client.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/set-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/set-statement.html'),
(328, 'TO_BASE64()', 38, 'Syntax:\nTO_BASE64(str)\n\nConverts the string argument to base-64 encoded form and returns the\nresult as a character string with the connection character set and\ncollation. If the argument is not a string, it is converted to a string\nbefore conversion takes place. The result is NULL if the argument is\nNULL. Base-64 encoded strings can be decoded using the the\nFROM_BASE64() function.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT TO_BASE64(\'abc\'), FROM_BASE64(TO_BASE64(\'abc\'));\n        -> \'JWJj\', \'abc\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(329, 'CONV', 4, 'Syntax:\nCONV(N,from_base,to_base)\n\nConverts numbers between different number bases. Returns a string\nrepresentation of the number N, converted from base from_base to base\nto_base. Returns NULL if any argument is NULL. The argument N is\ninterpreted as an integer, but may be specified as an integer or a\nstring. The minimum base is 2 and the maximum base is 36. If to_base is\na negative number, N is regarded as a signed number. Otherwise, N is\ntreated as unsigned. CONV() works with 64-bit precision.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT CONV(\'a\',16,2);\n        -> \'1010\'\nmysql> SELECT CONV(\'6E\',18,8);\n        -> \'172\'\nmysql> SELECT CONV(-17,10,-18);\n        -> \'-H\'\nmysql> SELECT CONV(10+\'10\'+\'10\'+0xa,10,10);\n        -> \'40\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(330, 'LOAD XML', 28, 'Syntax:\nLOAD XML [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE \'file_name\'\n    [REPLACE | IGNORE]\n    INTO TABLE [db_name.]tbl_name\n    [PARTITION (partition_name,...)]\n    [CHARACTER SET charset_name]\n    [ROWS IDENTIFIED BY \'<tagname>\']\n    [IGNORE number {LINES | ROWS}]\n    [(column_or_user_var,...)]\n    [SET col_name = expr,...]\n\nThe LOAD XML statement reads data from an XML file into a table. The\nfile_name must be given as a literal string. The tagname in the\noptional ROWS IDENTIFIED BY clause must also be given as a literal\nstring, and must be surrounded by angle brackets (< and >).\n\nLOAD XML acts as the complement of running the mysql client in XML\noutput mode (that is, starting the client with the --xml option). To\nwrite data from a table to an XML file, use a command such as the\nfollowing one from the system shell:\n\nshell> mysql --xml -e \'SELECT * FROM mytable\' > file.xml\n\nTo read the file back into a table, use LOAD XML INFILE. By default,\nthe <row> element is considered to be the equivalent of a database\ntable row; this can be changed using the ROWS IDENTIFIED BY clause.\n\nThis statement supports three different XML formats:\n\no Column names as attributes and column values as attribute values:\n\n<row column1=\"value1\" column2=\"value2\" .../>\n\no Column names as tags and column values as the content of these tags:\n\n<row>\n  <column1>value1</column1>\n  <column2>value2</column2>\n</row>\n\no Column names are the name attributes of <field> tags, and values are\n  the contents of these tags:\n\n<row>\n  <field name=\'column1\'>value1</field>\n  <field name=\'column2\'>value2</field>\n</row>\n\n  This is the format used by other MySQL tools, such as mysqldump.\n\nAll 3 formats can be used in the same XML file; the import routine\nautomatically detects the format for each row and interprets it\ncorrectly. Tags are matched based on the tag or attribute name and the\ncolumn name.\n\nThe following clauses work essentially the same way for LOAD XML as\nthey do for LOAD DATA:\n\no LOW_PRIORITY or CONCURRENT\n\no LOCAL\n\no REPLACE or IGNORE\n\no PARTITION\n\no CHARACTER SET\n\no (column_or_user_var,...)\n\no SET\n\nSee [HELP LOAD DATA], for more information about these clauses.\n\nThe IGNORE number LINES or IGNORE number ROWS clause causes the first\nnumber rows in the XML file to be skipped. It is analogous to the LOAD\nDATA statement\'s IGNORE ... LINES clause.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/load-xml.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/load-xml.html'),
(331, 'ASSIGN-VALUE', 15, 'Syntax:\n:=\n\nAssignment operator. Causes the user variable on the left hand side of\nthe operator to take on the value to its right. The value on the right\nhand side may be a literal value, another variable storing a value, or\nany legal expression that yields a scalar value, including the result\nof a query (provided that this value is a scalar value). You can\nperform multiple assignments in the same SET statement. You can perform\nmultiple assignments in the same statement-\n\nUnlike =, the := operator is never interpreted as a comparison\noperator. This means you can use := in any valid SQL statement (not\njust in SET statements) to assign a value to a variable.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/assignment-operators.html\n\n', 'mysql> SELECT @var1, @var2;\n        -> NULL, NULL\nmysql> SELECT @var1 := 1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2;\n        -> 1, NULL\nmysql> SELECT @var1, @var2 := @var1;\n        -> 1, 1\nmysql> SELECT @var1, @var2;\n        -> 1, 1\n\nmysql> SELECT @var1:=COUNT(*) FROM t1;\n        -> 4\nmysql> SELECT @var1;\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.6/en/assignment-operators.html'),
(332, 'SHOW OPEN TABLES', 27, 'Syntax:\nSHOW OPEN TABLES [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttp://dev.mysql.com/doc/refman/5.6/en/table-cache.html. The FROM\nclause, if present, restricts the tables shown to those present in the\ndb_name database. The LIKE clause, if present, indicates which table\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-open-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-open-tables.html'),
(333, 'EXTRACT', 32, 'Syntax:\nEXTRACT(unit FROM date)\n\nThe EXTRACT() function uses the same kinds of unit specifiers as\nDATE_ADD() or DATE_SUB(), but extracts parts from the date rather than\nperforming date arithmetic.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT EXTRACT(YEAR FROM \'2009-07-02\');\n       -> 2009\nmysql> SELECT EXTRACT(YEAR_MONTH FROM \'2009-07-02 01:02:03\');\n       -> 200907\nmysql> SELECT EXTRACT(DAY_MINUTE FROM \'2009-07-02 01:02:03\');\n       -> 20102\nmysql> SELECT EXTRACT(MICROSECOND\n    ->                FROM \'2003-01-02 10:30:00.000123\');\n        -> 123\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(334, 'ENCRYPT', 12, 'Syntax:\nENCRYPT(str[,salt])\n\nEncrypts str using the Unix crypt() system call and returns a binary\nstring. The salt argument must be a string with at least two characters\nor the result will be NULL. If no salt argument is given, a random\nvalue is used.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', 'mysql> SELECT ENCRYPT(\'hello\');\n        -> \'VxuFAJXVARROc\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(335, 'SHOW STATUS', 27, 'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW STATUS provides server status information. This information also\ncan be obtained using the mysqladmin extended-status command. The LIKE\nclause, if present, indicates which variable names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE \'Key%\';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nWith the GLOBAL modifier, SHOW STATUS displays the status values for\nall connections to MySQL. With SESSION, it displays the status values\nfor the current connection. If no modifier is present, the default is\nSESSION. LOCAL is a synonym for SESSION.\n\nSome status variables have only a global value. For these, you get the\nsame value for both GLOBAL and SESSION. The scope for each status\nvariable is listed at\nhttp://dev.mysql.com/doc/refman/5.6/en/server-status-variables.html.\n\nEach invocation of the SHOW STATUS statement uses an internal temporary\ntable and increments the global Created_tmp_tables value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-status.html'),
(336, 'INET6_ATON', 14, 'Syntax:\nINET6_ATON(expr)\n\nGiven an IPv6 or IPv4 network address as a string, returns a binary\nstring that represents the numeric value of the address in network byte\norder (big endian). Because numeric-format IPv6 addresses require more\nbytes than the largest integer type, the representation returned by\nthis function has the VARBINARY data type: VARBINARY(16) for IPv6\naddresses and VARBINARY(4) for IPv4 addresses. If the argument is not a\nvalid address, INET6_ATON() returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> SELECT HEX(INET6_ATON(\'fdfe::5a55:caff:fefa:9089\'));\n        -> \'FDFE0000000000005A55CAFFFEFA9089\'\nmysql> SELECT HEX(INET6_ATON(\'10.0.5.9\'));\n        -> \'0A000509\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(337, 'START TRANSACTION', 8, 'Syntax:\nSTART TRANSACTION\n    [transaction_characteristic [, transaction_characteristic] ...]\n\ntransaction_characteristic:\n    WITH CONSISTENT SNAPSHOT\n  | READ WRITE\n  | READ ONLY\n\nBEGIN [WORK]\nCOMMIT [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nROLLBACK [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nSET autocommit = {0 | 1}\n\nThese statements provide control over use of transactions:\n\no START TRANSACTION or BEGIN start a new transaction.\n\no COMMIT commits the current transaction, making its changes permanent.\n\no ROLLBACK rolls back the current transaction, canceling its changes.\n\no SET autocommit disables or enables the default autocommit mode for\n  the current session.\n\nBy default, MySQL runs with autocommit mode enabled. This means that as\nsoon as you execute a statement that updates (modifies) a table, MySQL\nstores the update on disk to make it permanent. The change cannot be\nrolled back.\n\nTo disable autocommit mode implicitly for a single series of\nstatements, use the START TRANSACTION statement:\n\nSTART TRANSACTION;\nSELECT @A:=SUM(salary) FROM table1 WHERE type=1;\nUPDATE table2 SET summary=@A WHERE type=1;\nCOMMIT;\n\nWith START TRANSACTION, autocommit remains disabled until you end the\ntransaction with COMMIT or ROLLBACK. The autocommit mode then reverts\nto its previous state.\n\nSTART TRANSACTION permits several modifiers that control transaction\ncharacteristics. To specify multiple modifiers, separate them by\ncommas.\n\no The WITH CONSISTENT SNAPSHOT modifier starts a consistent read for\n  storage engines that are capable of it. This applies only to InnoDB.\n  The effect is the same as issuing a START TRANSACTION followed by a\n  SELECT from any InnoDB table. See\n  http://dev.mysql.com/doc/refman/5.6/en/innodb-consistent-read.html.\n  The WITH CONSISTENT SNAPSHOT modifier does not change the current\n  transaction isolation level, so it provides a consistent snapshot\n  only if the current isolation level is one that permits consistent\n  read (REPEATABLE READ or SERIALIZABLE).\n\no The READ WRITE and READ ONLY modifiers set the transaction access\n  mode. They permit or prohibit changes to tables used in the\n  transaction. The READ ONLY restriction prevents the transaction from\n  modifying or locking both transactional and nontransactional tables\n  that are visible to other transactions; the transaction can still\n  modify or lock temporary tables. These modifiers are available as of\n  MySQL 5.6.5.\n\n  MySQL enables extra optimizations for queries on InnoDB tables when\n  the transaction is known to be read-only. Specifying READ ONLY\n  ensures these optimizations are applied in cases where the read-only\n  status cannot be determined automatically. See\n  http://dev.mysql.com/doc/refman/5.6/en/innodb-performance.html#innodb\n  -performance-ro-txn for more information.\n\n  If no access mode is specified, the default mode applies. Unless the\n  default has been changed, it is read/write. It is not permitted to\n  specify both READ WRITE and READ ONLY in the same statement.\n\n  In read-only mode, it remains possible to change tables created with\n  the TEMPORARY keyword using DML statements. Changes made with DDL\n  statements are not permitted, just as with permanent tables.\n\n  For additional information about transaction access mode, including\n  ways to change the default mode, see [HELP ISOLATION].\n\n  If the read_only system variable is enabled, explicitly starting a\n  transaction with START TRANSACTION READ WRITE requires the SUPER\n  privilege.\n\n*Important*: Many APIs used for writing MySQL client applications (such\nas JDBC) provide their own methods for starting transactions that can\n(and sometimes should) be used instead of sending a START TRANSACTION\nstatement from the client. See\nhttp://dev.mysql.com/doc/refman/5.6/en/connectors-apis.html, or the\ndocumentation for your API, for more information.\n\nTo disable autocommit mode explicitly, use the following statement:\n\nSET autocommit=0;\n\nAfter disabling autocommit mode by setting the autocommit variable to\nzero, changes to transaction-safe tables (such as those for InnoDB or\nNDB (http://dev.mysql.com/doc/refman/5.5/en/mysql-cluster.html)) are\nnot made permanent immediately. You must use COMMIT to store your\nchanges to disk or ROLLBACK to ignore the changes.\n\nautocommit is a session variable and must be set for each session. To\ndisable autocommit mode for each new connection, see the description of\nthe autocommit system variable at\nhttp://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.\n\nBEGIN and BEGIN WORK are supported as aliases of START TRANSACTION for\ninitiating a transaction. START TRANSACTION is standard SQL syntax, is\nthe recommended way to start an ad-hoc transaction, and permits\nmodifiers that BEGIN does not.\n\nThe BEGIN statement differs from the use of the BEGIN keyword that\nstarts a BEGIN ... END compound statement. The latter does not begin a\ntransaction. See [HELP BEGIN END].\n\n*Note*: Within all stored programs (stored procedures and functions,\ntriggers, and events), the parser treats BEGIN [WORK] as the beginning\nof a BEGIN ... END block. Begin a transaction in this context with\nSTART TRANSACTION instead.\n\nThe optional WORK keyword is supported for COMMIT and ROLLBACK, as are\nthe CHAIN and RELEASE clauses. CHAIN and RELEASE can be used for\nadditional control over transaction completion. The value of the\ncompletion_type system variable determines the default completion\nbehavior. See\nhttp://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.\n\nThe AND CHAIN clause causes a new transaction to begin as soon as the\ncurrent one ends, and the new transaction has the same isolation level\nas the just-terminated transaction. The RELEASE clause causes the\nserver to disconnect the current client session after terminating the\ncurrent transaction. Including the NO keyword suppresses CHAIN or\nRELEASE completion, which can be useful if the completion_type system\nvariable is set to cause chaining or release completion by default.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/commit.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/commit.html'),
(338, 'SHOW SLAVE HOSTS', 27, 'Syntax:\nSHOW SLAVE HOSTS\n\nDisplays a list of replication slaves currently registered with the\nmaster.\n\nThe list is displayed on any server (not just the master server). The\noutput looks like this:\n\nmysql> SHOW SLAVE HOSTS;\n+-----------+-----------+-------+-----------+--------------------------------------+\n| Server_id | Host      | Port  | Master_id | Slave_UUID                           |\n+-----------+-----------+-------+-----------+--------------------------------------+\n|  192168010 | iconnect2 | 3306 | 192168011 | 14cb6624-7f93-11e0-b2c0-c80aa9429562 |\n| 1921680101 | athena    | 3306 | 192168011 | 07af4990-f41f-11df-a566-7ac56fdaf645 |\n+------------+-----------+------+-----------+--------------------------------------+\n\no Server_id: The unique server ID of the slave server, as configured in\n  the server\'s option file, or on the command line with\n  --server-id=value.\n\no Host: The host name of the slave server, as configured in the\n  server\'s option file, or on the command line with\n  --report-host=host_name. Note that this can differ from the machine\n  name as configured in the operating system.\n\no Port: The port the slave server is listening on.\n\n  In MySQL 5.6.5 and later, a zero in this column means that the slave\n  port (--report-port) was not set. Prior to MySQL 5.6.5, 3306 was used\n  as the default in such cases (Bug #13333431).\n\no Master_id: The unique server ID of the master server that the slave\n  server is replicating from.\n\no Slave_UUID: The globally unique ID of this slave, as generated on the\n  slave and found in the slave\'s auto.cnf file.\n\n  This column was added in MySQL 5.6.0.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-slave-hosts.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-slave-hosts.html'),
(339, 'TIME_FORMAT', 32, 'Syntax:\nTIME_FORMAT(time,format)\n\nThis is used like the DATE_FORMAT() function, but the format string may\ncontain format specifiers only for hours, minutes, seconds, and\nmicroseconds. Other specifiers produce a NULL value or 0.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME_FORMAT(\'100:00:00\', \'%H %k %h %I %l\');\n        -> \'100 100 04 04 4\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(340, 'CREATE DATABASE', 40, 'Syntax:\nCREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n    [create_specification] ...\n\ncreate_specification:\n    [DEFAULT] CHARACTER SET [=] charset_name\n  | [DEFAULT] COLLATE [=] collation_name\n\nCREATE DATABASE creates a database with the given name. To use this\nstatement, you need the CREATE privilege for the database. CREATE\nSCHEMA is a synonym for CREATE DATABASE.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/create-database.html'),
(341, 'VAR_POP', 16, 'Syntax:\nVAR_POP(expr)\n\nReturns the population standard variance of expr. It considers rows as\nthe whole population, not as a sample, so it has the number of rows as\nthe denominator. You can also use VARIANCE(), which is equivalent but\nis not standard SQL.\n\nVAR_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(342, 'CONCAT_WS', 38, 'Syntax:\nCONCAT_WS(separator,str1,str2,...)\n\nCONCAT_WS() stands for Concatenate With Separator and is a special form\nof CONCAT(). The first argument is the separator for the rest of the\narguments. The separator is added between the strings to be\nconcatenated. The separator can be a string, as can the rest of the\narguments. If the separator is NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT CONCAT_WS(\',\',\'First name\',\'Second name\',\'Last Name\');\n        -> \'First name,Second name,Last Name\'\nmysql> SELECT CONCAT_WS(\',\',\'First name\',NULL,\'Last Name\');\n        -> \'First name,Last Name\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(343, 'TEXT', 23, 'TEXT[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 65,535 (216 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TEXT value is stored using a 2-byte length prefix that\nindicates the number of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest TEXT type large enough to hold\nvalues M characters long.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(344, '~', 20, 'Syntax:\n~\n\nInvert all bits.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html\n\n', 'mysql> SELECT 5 & ~1;\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html'),
(345, 'ASIN', 4, 'Syntax:\nASIN(X)\n\nReturns the arc sine of X, that is, the value whose sine is X. Returns\nNULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT ASIN(0.2);\n        -> 0.20135792079033\nmysql> SELECT ASIN(\'foo\');\n\n+-------------+\n| ASIN(\'foo\') |\n+-------------+\n|           0 |\n+-------------+\n1 row in set, 1 warning (0.00 sec)\n\nmysql> SHOW WARNINGS;\n+---------+------+-----------------------------------------+\n| Level   | Code | Message                                 |\n+---------+------+-----------------------------------------+\n| Warning | 1292 | Truncated incorrect DOUBLE value: \'foo\' |\n+---------+------+-----------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(346, 'ROW_COUNT', 17, 'Syntax:\nROW_COUNT()\n\nIn MySQL 5.6, ROW_COUNT() returns a value as follows:\n\no DDL statements: 0. This applies to statements such as CREATE TABLE or\n  DROP TABLE.\n\no DML statements other than SELECT: The number of affected rows. This\n  applies to statements such as UPDATE, INSERT, or DELETE (as before),\n  but now also to statements such as ALTER TABLE and LOAD DATA INFILE.\n\no SELECT: -1 if the statement returns a result set, or the number of\n  rows \"affected\" if it does not. For example, for SELECT * FROM t1,\n  ROW_COUNT() returns -1. For SELECT * FROM t1 INTO OUTFILE\n  \'file_name\', ROW_COUNT() returns the number of rows written to the\n  file.\n\no SIGNAL statements: 0.\n\nFor UPDATE statements, the affected-rows value by default is the number\nof rows actually changed. If you specify the CLIENT_FOUND_ROWS flag to\nmysql_real_connect() when connecting to mysqld, the affected-rows value\nis the number of rows \"found\"; that is, matched by the WHERE clause.\n\nFor REPLACE statements, the affected-rows value is 2 if the new row\nreplaced an old row, because in this case, one row was inserted after\nthe duplicate was deleted.\n\nFor INSERT ... ON DUPLICATE KEY UPDATE statements, the affected-rows\nvalue is 1 if the row is inserted as a new row and 2 if an existing row\nis updated.\n\nThe ROW_COUNT() value is similar to the value from the\nmysql_affected_rows() C API function and the row count that the mysql\nclient displays following statement execution.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', 'mysql> INSERT INTO t VALUES(1),(2),(3);\nQuery OK, 3 rows affected (0.00 sec)\nRecords: 3  Duplicates: 0  Warnings: 0\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           3 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> DELETE FROM t WHERE i IN(1,2);\nQuery OK, 2 rows affected (0.00 sec)\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           2 |\n+-------------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(347, 'SIGN', 4, 'Syntax:\nSIGN(X)\n\nReturns the sign of the argument as -1, 0, or 1, depending on whether X\nis negative, zero, or positive.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT SIGN(-32);\n        -> -1\nmysql> SELECT SIGN(0);\n        -> 0\nmysql> SELECT SIGN(234);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(348, 'FLOAT', 23, 'FLOAT[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA small (single-precision) floating-point number. Permissible values\nare -3.402823466E+38 to -1.175494351E-38, 0, and 1.175494351E-38 to\n3.402823466E+38. These are the theoretical limits, based on the IEEE\nstandard. The actual range might be slightly smaller depending on your\nhardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits permitted by the hardware. A single-precision floating-point\nnumber is accurate to approximately 7 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nUsing FLOAT might give you some unexpected problems because all\ncalculations in MySQL are done with double precision. See\nhttp://dev.mysql.com/doc/refman/5.6/en/no-matching-rows.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(349, 'CHARSET', 17, 'Syntax:\nCHARSET(str)\n\nReturns the character set of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', 'mysql> SELECT CHARSET(\'abc\');\n        -> \'latin1\'\nmysql> SELECT CHARSET(CONVERT(\'abc\' USING utf8));\n        -> \'utf8\'\nmysql> SELECT CHARSET(USER());\n        -> \'utf8\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(350, 'SUBDATE', 32, 'Syntax:\nSUBDATE(date,INTERVAL expr unit), SUBDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, SUBDATE()\nis a synonym for DATE_SUB(). For information on the INTERVAL unit\nargument, see the discussion for DATE_ADD().\n\nmysql> SELECT DATE_SUB(\'2008-01-02\', INTERVAL 31 DAY);\n        -> \'2007-12-02\'\nmysql> SELECT SUBDATE(\'2008-01-02\', INTERVAL 31 DAY);\n        -> \'2007-12-02\'\n\nThe second form enables the use of an integer value for days. In such\ncases, it is interpreted as the number of days to be subtracted from\nthe date or datetime expression expr.\n\nmysql> SELECT SUBDATE(\'2008-01-02 12:00:00\', 31);\n        -> \'2007-12-02 12:00:00\'\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(351, 'DAYOFYEAR', 32, 'Syntax:\nDAYOFYEAR(date)\n\nReturns the day of the year for date, in the range 1 to 366.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFYEAR(\'2007-02-03\');\n        -> 34\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(352, '%', 4, 'Syntax:\nN % M, N MOD M\n\nModulo operation. Returns the remainder of N divided by M. For more\ninformation, see the description for the MOD() function in\nhttp://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html'),
(353, 'ASTEXT', 3, 'AsText(g), AsWKT(g)\n\nConverts a value in internal geometry format to its WKT representation\nand returns the string result.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-to-convert-geometries-between-formats.html\n\n', 'mysql> SET @g = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(GeomFromText(@g));\n+--------------------------+\n| AsText(GeomFromText(@g)) |\n+--------------------------+\n| LINESTRING(1 1,2 2,3 3)  |\n+--------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/functions-to-convert-geometries-between-formats.html'),
(354, 'DECLARE CONDITION', 24, 'Syntax:\nDECLARE condition_name CONDITION FOR condition_value\n\ncondition_value:\n    mysql_error_code\n  | SQLSTATE [VALUE] sqlstate_value\n\nThe DECLARE ... CONDITION statement declares a named error condition,\nassociating a name with a condition that needs specific handling. The\nname can be referred to in a subsequent DECLARE ... HANDLER statement\n(see [HELP DECLARE HANDLER]).\n\nCondition declarations must appear before cursor or handler\ndeclarations.\n\nThe condition_value for DECLARE ... CONDITION can be a MySQL error code\n(a number) or an SQLSTATE value (a 5-character string literal). You\nshould not use MySQL error code 0 or SQLSTATE values that begin with\n\'00\', because those indicate success rather than an error condition.\nFor a list of MySQL error codes and SQLSTATE values, see\nhttp://dev.mysql.com/doc/refman/5.6/en/error-messages-server.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/declare-condition.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/declare-condition.html'),
(355, 'MONTHNAME', 32, 'Syntax:\nMONTHNAME(date)\n\nReturns the full name of the month for date. The language used for the\nname is controlled by the value of the lc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.6/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT MONTHNAME(\'2008-02-03\');\n        -> \'February\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(356, 'NUMGEOMETRIES', 26, 'NumGeometries(gc)\n\nReturns the number of geometries in the GeometryCollection value gc.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SET @gc = \'GeometryCollection(Point(1 1),LineString(2 2, 3 3))\';\nmysql> SELECT NumGeometries(GeomFromText(@gc));\n+----------------------------------+\n| NumGeometries(GeomFromText(@gc)) |\n+----------------------------------+\n|                                2 |\n+----------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(357, 'TIMESTAMP FUNCTION', 32, 'Syntax:\nTIMESTAMP(expr), TIMESTAMP(expr1,expr2)\n\nWith a single argument, this function returns the date or datetime\nexpression expr as a datetime value. With two arguments, it adds the\ntime expression expr2 to the date or datetime expression expr1 and\nreturns the result as a datetime value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMP(\'2003-12-31\');\n        -> \'2003-12-31 00:00:00\'\nmysql> SELECT TIMESTAMP(\'2003-12-31 12:00:00\',\'12:00:00\');\n        -> \'2004-01-01 00:00:00\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(358, 'DROP DATABASE', 40, 'Syntax:\nDROP {DATABASE | SCHEMA} [IF EXISTS] db_name\n\nDROP DATABASE drops all tables in the database and deletes the\ndatabase. Be very careful with this statement! To use DROP DATABASE,\nyou need the DROP privilege on the database. DROP SCHEMA is a synonym\nfor DROP DATABASE.\n\n*Important*: When a database is dropped, user privileges on the\ndatabase are not automatically dropped. See [HELP GRANT].\n\nIF EXISTS is used to prevent an error from occurring if the database\ndoes not exist.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/drop-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/drop-database.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(359, 'CHANGE MASTER TO', 8, 'Syntax:\nCHANGE MASTER TO option [, option] ...\n\noption:\n    MASTER_BIND = \'interface_name\'\n  | MASTER_HOST = \'host_name\'\n  | MASTER_USER = \'user_name\'\n  | MASTER_PASSWORD = \'password\'\n  | MASTER_PORT = port_num\n  | MASTER_CONNECT_RETRY = interval\n  | MASTER_RETRY_COUNT = count\n  | MASTER_DELAY = interval\n  | MASTER_HEARTBEAT_PERIOD = interval\n  | MASTER_LOG_FILE = \'master_log_name\'\n  | MASTER_LOG_POS = master_log_pos\n  | MASTER_AUTO_POSITION = {0|1}\n  | RELAY_LOG_FILE = \'relay_log_name\'\n  | RELAY_LOG_POS = relay_log_pos\n  | MASTER_SSL = {0|1}\n  | MASTER_SSL_CA = \'ca_file_name\'\n  | MASTER_SSL_CAPATH = \'ca_directory_name\'\n  | MASTER_SSL_CERT = \'cert_file_name\'\n  | MASTER_SSL_CRL = \'crl_file_name\'\n  | MASTER_SSL_CRLPATH = \'crl_directory_name\'\n  | MASTER_SSL_KEY = \'key_file_name\'\n  | MASTER_SSL_CIPHER = \'cipher_list\'\n  | MASTER_SSL_VERIFY_SERVER_CERT = {0|1}\n  | IGNORE_SERVER_IDS = (server_id_list)\n\nserver_id_list:\n    [server_id [, server_id] ... ]\n\nCHANGE MASTER TO changes the parameters that the slave server uses for\nconnecting to the master server, for reading the master binary log, and\nreading the slave relay log. It also updates the contents of the\nmaster.info and relay-log.info files. To use CHANGE MASTER TO, the\nslave replication threads must be stopped (use STOP SLAVE if\nnecessary). In MySQL 5.6.11 and later, gtid_next must also be set to\nAUTOMATIC (BUG#16062608).\n\nOptions not specified retain their value, except as indicated in the\nfollowing discussion. Thus, in most cases, there is no need to specify\noptions that do not change. For example, if the password to connect to\nyour MySQL master has changed, you just need to issue these statements\nto tell the slave about the new password:\n\nSTOP SLAVE; -- if replication was running\nCHANGE MASTER TO MASTER_PASSWORD=\'new3cret\';\nSTART SLAVE; -- if you want to restart replication\n\nMASTER_HOST, MASTER_USER, MASTER_PASSWORD, and MASTER_PORT provide\ninformation to the slave about how to connect to its master:\n\no MASTER_HOST and MASTER_PORT are the host name (or IP address) of the\n  master host and its TCP/IP port.\n\n  *Note*: Replication cannot use Unix socket files. You must be able to\n  connect to the master MySQL server using TCP/IP.\n\n  If you specify the MASTER_HOST or MASTER_PORT option, the slave\n  assumes that the master server is different from before (even if the\n  option value is the same as its current value.) In this case, the old\n  values for the master binary log file name and position are\n  considered no longer applicable, so if you do not specify\n  MASTER_LOG_FILE and MASTER_LOG_POS in the statement,\n  MASTER_LOG_FILE=\'\' and MASTER_LOG_POS=4 are silently appended to it.\n\n  Setting MASTER_HOST=\'\' (that is, setting its value explicitly to an\n  empty string) is not the same as not setting MASTER_HOST at all.\n  Beginning with MySQL 5.5, trying to set MASTER_HOST to an empty\n  string fails with an error. Previously, setting MASTER_HOST to an\n  empty string caused START SLAVE subsequently to fail. (Bug #28796)\n\n  In MySQL 5.6.5 and later, values used for MASTER_HOST and other\n  CHANGE MASTER TO options are checked for linefeed (\\n or 0x0A)\n  characters; the presence of such characters in these values causes\n  the statement to fail with ER_MASTER_INFO. (Bug #11758581, Bug\n  #50801)\n\no MASTER_USER and MASTER_PASSWORD are the user name and password of the\n  account to use for connecting to the master.\n\n  In MySQL 5.6.4 and later, MASTER_USER cannot be made empty; setting\n  MASTER_USER = \'\' or leaving it unset when setting a value for for\n  MASTER_PASSWORD causes an error (Bug #13427949).\n\n  Currently, a password used for a replication slave account is\n  effectively limited to 32 characters in length; the password can be\n  longer, but any excess characters are truncated. This is not due to\n  any limit imposed by the MySQL Server generally, but rather is an\n  issue specific to MySQL Replication. (For more information, see Bug\n  #43439.)\n\n  The text of a running CHANGE MASTER TO statement, including values\n  for MASTER_USER and MASTER_PASSWORD, can be seen in the output of a\n  concurrent SHOW PROCESSLIST statement. (The complete text of a START\n  SLAVE statement is also visible to SHOW PROCESSLIST.)\n\nThe MASTER_SSL_xxx options provide information about using SSL for the\nconnection. They correspond to the --ssl-xxx options described in\nhttp://dev.mysql.com/doc/refman/5.6/en/ssl-options.html, and\nhttp://dev.mysql.com/doc/refman/5.6/en/replication-solutions-ssl.html.\nThese options can be changed even on slaves that are compiled without\nSSL support. They are saved to the master.info file, but are ignored if\nthe slave does not have SSL support enabled. MASTER_SSL_CRL and\nMASTER_SSL_CRLPATH were added in MySQL 5.6.3.\n\nMASTER_CONNECT_RETRY specifies how many seconds to wait between connect\nretries. The default is 60.\n\nMASTER_RETRY_COUNT, added in MySQL 5.6.1, limits the number of\nreconnection attempts and updates the value of the Master_Retry_Count\ncolumn in the output of SHOW SLAVE STATUS (also added in MySQL 5.6.1).\nThe default value is 24 * 3600 = 86400. MASTER_RETRY_COUNT is intended\nto replace the older --master-retry-count server option, and is now the\npreferred method for setting this limit. You are encouraged not to rely\non --master-retry-count in new applications and, when upgrading to\nMySQL 5.6.1 or later from earlier versions of MySQL, to update any\nexisting applications that rely on it, so that they use CHANGE MASTER\nTO ... MASTER_RETRY_COUNT instead.\n\nMASTER_DELAY specifies how many seconds behind the master the slave\nmust lag. An event received from the master is not executed until at\nleast interval seconds later than its execution on the master. The\ndefault is 0. An error occurs if interval is not a nonnegative integer\nin the range from 0 to 231-1. For more information, see\nhttp://dev.mysql.com/doc/refman/5.6/en/replication-delayed.html. This\noption was added in MySQL 5.6.0.\n\nMASTER_BIND is for use on replication slaves having multiple network\ninterfaces, and determines which of the slave\'s network interfaces is\nchosen for connecting to the master.\n\nThe address configured with this option, if any, can be seen in the\nMaster_Bind column of the output from SHOW SLAVE STATUS. If you are\nusing slave status log tables (server started with\n--master-info-repository=TABLE), the value can also be seen as the\nMaster_bind column of the mysql.slave_master_info table.\n\nThe ability to bind a replication slave to a specific network interface\nwas added in MySQL 5.6.2.\n\nMASTER_HEARTBEAT_PERIOD sets the interval in seconds between\nreplication heartbeats. Whenever the master\'s binary log is updated\nwith an event, the waiting period for the next heartbeat is reset.\ninterval is a decimal value having the range 0 to 4294967 seconds and a\nresolution in milliseconds; the smallest nonzero value is 0.001.\nHeartbeats are sent by the master only if there are no unsent events in\nthe binary log file for a period longer than interval.\n\nIf you are logging master connection information to tables,\nMASTER_HEARTBEAT_PERIOD can be seen as the value of the Heartbeat\ncolumn of the mysql.slave_master_info table.\n\nSetting interval to 0 disables heartbeats altogether. The default value\nfor interval is equal to the value of slave_net_timeout divided by 2.\n\nSetting @@global.slave_net_timeout to a value less than that of the\ncurrent heartbeat interval results in a warning being issued. The\neffect of issuing RESET SLAVE on the heartbeat interval is to reset it\nto the default value.\n\nMASTER_LOG_FILE and MASTER_LOG_POS are the coordinates at which the\nslave I/O thread should begin reading from the master the next time the\nthread starts. RELAY_LOG_FILE and RELAY_LOG_POS are the coordinates at\nwhich the slave SQL thread should begin reading from the relay log the\nnext time the thread starts. If you specify either of MASTER_LOG_FILE\nor MASTER_LOG_POS, you cannot specify RELAY_LOG_FILE or RELAY_LOG_POS.\nIn MySQL 5.6.5 and later, if you specify either of MASTER_LOG_FILE or\nMASTER_LOG_POS, you also cannot specify MASTER_AUTO_POSITION = 1\n(described later in this section). If neither of MASTER_LOG_FILE or\nMASTER_LOG_POS is specified, the slave uses the last coordinates of the\nslave SQL thread before CHANGE MASTER TO was issued. This ensures that\nthere is no discontinuity in replication, even if the slave SQL thread\nwas late compared to the slave I/O thread, when you merely want to\nchange, say, the password to use.\n\nMASTER_AUTO_POSITION was added in MySQL 5.6.5. If MASTER_AUTO_POSITION\n= 1 is used with CHANGE MASTER TO, the slave attempts to connect to the\nmaster using the GTID-based replication protocol. In this case, the\ncoordinates represented by MASTER_LOG_FILE and MASTER_LOG_POS are not\nused, and global transaction identifiers are used instead. Thus the use\nof either or both of these options together with MASTER_AUTO_POSITION\ncauses an error.\n\nBeginning with MySQL 5.6.10, you can see whether replication is running\nwith autopositioning enabled by checking the output of SHOW SLAVE\nSTATUS. (Bug #15992220)\n\ngtid_mode must also be enabled before issuing CHANGE MASTER TO ...\nMASTER_AUTO_POSITION = 1. Otherwise, the statement fails with an error.\n\nTo revert to the older file-based replication protocol after using\nGTIDs, you can issue a new CHANGE MASTER TO statement that specifies\nMASTER_AUTO_POSITION = 0, as well as at least one of MASTER_LOG_FILE or\nMASTER_LOG_POSITION.\n\nCHANGE MASTER TO deletes all relay log files and starts a new one,\nunless you specify RELAY_LOG_FILE or RELAY_LOG_POS. In that case, relay\nlog files are kept; the relay_log_purge global variable is set silently\nto 0.\n\nPrior to MySQL 5.6.2, RELAY_LOG_FILE required an absolute path.\nBeginning with MySQL 5.6.2, the path can be relative, in which case it\nis assumed to be relative to the slave\'s data directory. (Bug #12190)\n\nIGNORE_SERVER_IDS takes a comma-separated list of 0 or more server IDs.\nEvents originating from the corresponding servers are ignored, with the\nexception of log rotation and deletion events, which are still recorded\nin the relay log.\n\nIn circular replication, the originating server normally acts as the\nterminator of its own events, so that they are not applied more than\nonce. Thus, this option is useful in circular replication when one of\nthe servers in the circle is removed. Suppose that you have a circular\nreplication setup with 4 servers, having server IDs 1, 2, 3, and 4, and\nserver 3 fails. When bridging the gap by starting replication from\nserver 2 to server 4, you can include IGNORE_SERVER_IDS = (3) in the\nCHANGE MASTER TO statement that you issue on server 4 to tell it to use\nserver 2 as its master instead of server 3. Doing so causes it to\nignore and not to propagate any statements that originated with the\nserver that is no longer in use.\n\nIf a CHANGE MASTER TO statement is issued without any IGNORE_SERVER_IDS\noption, any existing list is preserved; RESET SLAVE also has no effect\non the server ID list. To clear the list of ignored servers, it is\nnecessary to use the option with an empty list:\n\nCHANGE MASTER TO IGNORE_SERVER_IDS = ();\n\nIf IGNORE_SERVER_IDS contains the server\'s own ID and the server was\nstarted with the --replicate-same-server-id option enabled, an error\nresults.\n\nIn MySQL 5.6, the master.info file and the output of SHOW SLAVE STATUS\nprovide the list of servers that are currently ignored. For more\ninformation, see\nhttp://dev.mysql.com/doc/refman/5.6/en/slave-logs-status.html, and\n[HELP SHOW SLAVE STATUS].\n\nIn MySQL 5.6, invoking CHANGE MASTER TO causes the previous values for\nMASTER_HOST, MASTER_PORT, MASTER_LOG_FILE, and MASTER_LOG_POS to be\nwritten to the error log, along with other information about the\nslave\'s state prior to execution.\n\nIn MySQL 5.6.7 and later, CHANGE MASTER TO causes an implicit commit of\nan ongoing transaction. See\nhttp://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.\n\nCHANGE MASTER TO is useful for setting up a slave when you have the\nsnapshot of the master and have recorded the master binary log\ncoordinates corresponding to the time of the snapshot. After loading\nthe snapshot into the slave to synchronize it to the slave, you can run\nCHANGE MASTER TO MASTER_LOG_FILE=\'log_name\', MASTER_LOG_POS=log_pos on\nthe slave to specify the coordinates at which the slave should begin\nreading the master binary log.\n\nThe following example changes the master server the slave uses and\nestablishes the master binary log coordinates from which the slave\nbegins reading. This is used when you want to set up the slave to\nreplicate the master:\n\nCHANGE MASTER TO\n  MASTER_HOST=\'master2.mycompany.com\',\n  MASTER_USER=\'replication\',\n  MASTER_PASSWORD=\'bigs3cret\',\n  MASTER_PORT=3306,\n  MASTER_LOG_FILE=\'master2-bin.001\',\n  MASTER_LOG_POS=4,\n  MASTER_CONNECT_RETRY=10;\n\nThe next example shows an operation that is less frequently employed.\nIt is used when the slave has relay log files that you want it to\nexecute again for some reason. To do this, the master need not be\nreachable. You need only use CHANGE MASTER TO and start the SQL thread\n(START SLAVE SQL_THREAD):\n\nCHANGE MASTER TO\n  RELAY_LOG_FILE=\'slave-relay-bin.006\',\n  RELAY_LOG_POS=4025;\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/change-master-to.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/change-master-to.html'),
(360, 'SHOW GRANTS', 27, 'Syntax:\nSHOW GRANTS [FOR user]\n\nThis statement lists the GRANT statement or statements that must be\nissued to duplicate the privileges that are granted to a MySQL user\naccount. The account is named using the same format as for the GRANT\nstatement; for example, \'jeffrey\'@\'localhost\'. If you specify only the\nuser name part of the account name, a host name part of \'%\' is used.\nFor additional information about specifying account names, see [HELP\nGRANT].\n\nmysql> SHOW GRANTS FOR \'root\'@\'localhost\';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT ALL PRIVILEGES ON *.* TO \'root\'@\'localhost\' WITH GRANT OPTION |\n+---------------------------------------------------------------------+\n\nTo list the privileges granted to the account that you are using to\nconnect to the server, you can use any of the following statements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nIf SHOW GRANTS FOR CURRENT_USER (or any of the equivalent syntaxes) is\nused in DEFINER context, such as within a stored procedure that is\ndefined with SQL SECURITY DEFINER), the grants displayed are those of\nthe definer and not the invoker.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-grants.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-grants.html'),
(361, 'CRC32', 4, 'Syntax:\nCRC32(expr)\n\nComputes a cyclic redundancy check value and returns a 32-bit unsigned\nvalue. The result is NULL if the argument is NULL. The argument is\nexpected to be a string and (if possible) is treated as one if it is\nnot.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT CRC32(\'MySQL\');\n        -> 3259397556\nmysql> SELECT CRC32(\'mysql\');\n        -> 2501908538\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(362, 'STARTPOINT', 13, 'StartPoint(ls)\n\nReturns the Point that is the start point of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT AsText(StartPoint(GeomFromText(@ls)));\n+---------------------------------------+\n| AsText(StartPoint(GeomFromText(@ls))) |\n+---------------------------------------+\n| POINT(1 1)                            |\n+---------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(363, 'MPOLYFROMTEXT', 3, 'MPolyFromText(wkt[,srid]), MultiPolygonFromText(wkt[,srid])\n\nConstructs a MULTIPOLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(364, 'DECLARE VARIABLE', 24, 'Syntax:\nDECLARE var_name [, var_name] ... type [DEFAULT value]\n\nThis statement declares local variables within stored programs. To\nprovide a default value for a variable, include a DEFAULT clause. The\nvalue can be specified as an expression; it need not be a constant. If\nthe DEFAULT clause is missing, the initial value is NULL.\n\nLocal variables are treated like stored routine parameters with respect\nto data type and overflow checking. See [HELP CREATE PROCEDURE].\n\nVariable declarations must appear before cursor or handler\ndeclarations.\n\nLocal variable names are not case sensitive. Permissible characters and\nquoting rules are the same as for other identifiers, as described in\nhttp://dev.mysql.com/doc/refman/5.6/en/identifiers.html.\n\nThe scope of a local variable is the BEGIN ... END block within which\nit is declared. The variable can be referred to in blocks nested within\nthe declaring block, except those blocks that declare a variable with\nthe same name.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/declare-local-variable.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/declare-local-variable.html'),
(365, 'NOT BETWEEN', 19, 'Syntax:\nexpr NOT BETWEEN min AND max\n\nThis is the same as NOT (expr BETWEEN min AND max).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(366, 'YEARWEEK', 32, 'Syntax:\nYEARWEEK(date), YEARWEEK(date,mode)\n\nReturns year and week for a date. The mode argument works exactly like\nthe mode argument to WEEK(). The year in the result may be different\nfrom the year in the date argument for the first and the last week of\nthe year.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT YEARWEEK(\'1987-01-01\');\n        -> 198653\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(367, 'BIT_OR', 16, 'Syntax:\nBIT_OR(expr)\n\nReturns the bitwise OR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(368, 'LOG10', 4, 'Syntax:\nLOG10(X)\n\nReturns the base-10 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG10(2);\n        -> 0.30102999566398\nmysql> SELECT LOG10(100);\n        -> 2\nmysql> SELECT LOG10(-100);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(369, 'DECIMAL', 23, 'DECIMAL[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nA packed \"exact\" fixed-point number. M is the total number of digits\n(the precision) and D is the number of digits after the decimal point\n(the scale). The decimal point and (for negative numbers) the \"-\" sign\nare not counted in M. If D is 0, values have no decimal point or\nfractional part. The maximum number of digits (M) for DECIMAL is 65.\nThe maximum number of supported decimals (D) is 30. If D is omitted,\nthe default is 0. If M is omitted, the default is 10.\n\nUNSIGNED, if specified, disallows negative values.\n\nAll basic calculations (+, -, *, /) with DECIMAL columns are done with\na precision of 65 digits.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(370, 'CREATE FUNCTION', 40, 'The CREATE FUNCTION statement is used to create stored functions and\nuser-defined functions (UDFs):\n\no For information about creating stored functions, see [HELP CREATE\n  PROCEDURE].\n\no For information about creating user-defined functions, see [HELP\n  CREATE FUNCTION UDF].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/create-function.html'),
(371, '<', 19, 'Syntax:\n<\n\nLess than:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 2 < 2;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(372, 'MD5', 12, 'Syntax:\nMD5(str)\n\nCalculates an MD5 128-bit checksum for the string. The value is\nreturned as a string of 32 hex digits, or NULL if the argument was\nNULL. The return value can, for example, be used as a hash key. See the\nnotes at the beginning of this section about storing hash values\nefficiently.\n\nThe return value is a nonbinary string in the connection character set.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', 'mysql> SELECT MD5(\'testing\');\n        -> \'ae2b1fca515949e5d54fb22b8ed95575\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(373, 'DAYOFMONTH', 32, 'Syntax:\nDAYOFMONTH(date)\n\nReturns the day of the month for date, in the range 1 to 31, or 0 for\ndates such as \'0000-00-00\' or \'2008-00-00\' that have a zero day part.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFMONTH(\'2007-02-03\');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(374, 'UNIX_TIMESTAMP', 32, 'Syntax:\nUNIX_TIMESTAMP(), UNIX_TIMESTAMP(date)\n\nIf called with no argument, returns a Unix timestamp (seconds since\n\'1970-01-01 00:00:00\' UTC) as an unsigned integer. If UNIX_TIMESTAMP()\nis called with a date argument, it returns the value of the argument as\nseconds since \'1970-01-01 00:00:00\' UTC. date may be a DATE string, a\nDATETIME string, a TIMESTAMP, or a number in the format YYMMDD or\nYYYYMMDD. The server interprets date as a value in the current time\nzone and converts it to an internal value in UTC. Clients can set their\ntime zone as described in\nhttp://dev.mysql.com/doc/refman/5.6/en/time-zone-support.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT UNIX_TIMESTAMP();\n        -> 1196440210\nmysql> SELECT UNIX_TIMESTAMP(\'2007-11-30 10:30:19\');\n        -> 1196440219\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(375, 'RENAME USER', 10, 'Syntax:\nRENAME USER old_user TO new_user\n    [, old_user TO new_user] ...\n\nThe RENAME USER statement renames existing MySQL accounts. To use it,\nyou must have the global CREATE USER privilege or the UPDATE privilege\nfor the mysql database. An error occurs if any old account does not\nexist or any new account exists. Each account name uses the format\ndescribed in http://dev.mysql.com/doc/refman/5.6/en/account-names.html.\nFor example:\n\nRENAME USER \'jeffrey\'@\'localhost\' TO \'jeff\'@\'127.0.0.1\';\n\nIf you specify only the user name part of the account name, a host name\npart of \'%\' is used.\n\nRENAME USER causes the privileges held by the old user to be those held\nby the new user. However, RENAME USER does not automatically drop or\ninvalidate databases or objects within them that the old user created.\nThis includes stored programs or views for which the DEFINER attribute\nnames the old user. Attempts to access such objects may produce an\nerror if they execute in definer security context. (For information\nabout security context, see\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-programs-security.html.)\n\nThe privilege changes take effect as indicated in\nhttp://dev.mysql.com/doc/refman/5.6/en/privilege-changes.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/rename-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/rename-user.html'),
(376, 'NUMPOINTS', 13, 'NumPoints(ls)\n\nReturns the number of Point objects in the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SET @ls = \'LineString(1 1,2 2,3 3)\';\nmysql> SELECT NumPoints(GeomFromText(@ls));\n+------------------------------+\n| NumPoints(GeomFromText(@ls)) |\n+------------------------------+\n|                            3 |\n+------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(377, 'LOCALTIMESTAMP', 32, 'Syntax:\nLOCALTIMESTAMP, LOCALTIMESTAMP([fsp])\n\nLOCALTIMESTAMP and LOCALTIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(378, 'ADDDATE', 32, 'Syntax:\nADDDATE(date,INTERVAL expr unit), ADDDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, ADDDATE()\nis a synonym for DATE_ADD(). The related function SUBDATE() is a\nsynonym for DATE_SUB(). For information on the INTERVAL unit argument,\nsee the discussion for DATE_ADD().\n\nmysql> SELECT DATE_ADD(\'2008-01-02\', INTERVAL 31 DAY);\n        -> \'2008-02-02\'\nmysql> SELECT ADDDATE(\'2008-01-02\', INTERVAL 31 DAY);\n        -> \'2008-02-02\'\n\nWhen invoked with the days form of the second argument, MySQL treats it\nas an integer number of days to be added to expr.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT ADDDATE(\'2008-01-02\', 31);\n        -> \'2008-02-02\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(379, 'ALTER FUNCTION', 40, 'Syntax:\nALTER FUNCTION func_name [characteristic ...]\n\ncharacteristic:\n    COMMENT \'string\'\n  | LANGUAGE SQL\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n\nThis statement can be used to change the characteristics of a stored\nfunction. More than one change may be specified in an ALTER FUNCTION\nstatement. However, you cannot change the parameters or body of a\nstored function using this statement; to make such changes, you must\ndrop and re-create the function using DROP FUNCTION and CREATE\nFUNCTION.\n\nYou must have the ALTER ROUTINE privilege for the function. (That\nprivilege is granted automatically to the function creator.) If binary\nlogging is enabled, the ALTER FUNCTION statement might also require the\nSUPER privilege, as described in\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-programs-logging.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/alter-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/alter-function.html'),
(380, 'IS_FREE_LOCK', 14, 'Syntax:\nIS_FREE_LOCK(str)\n\nChecks whether the lock named str is free to use (that is, not locked).\nReturns 1 if the lock is free (no one is using the lock), 0 if the lock\nis in use, and NULL if an error occurs (such as an incorrect argument).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(381, 'DEALLOCATE PREPARE', 8, 'Syntax:\n{DEALLOCATE | DROP} PREPARE stmt_name\n\nTo deallocate a prepared statement produced with PREPARE, use a\nDEALLOCATE PREPARE statement that refers to the prepared statement\nname. Attempting to execute a prepared statement after deallocating it\nresults in an error. If too many prepared statements are created and\nnot deallocated by either the DEALLOCATE PREPARE statement or the end\nof the session, you might encounter the upper limit enforced by the\nmax_prepared_stmt_count system variable.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/deallocate-prepare.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/deallocate-prepare.html'),
(382, 'TOUCHES', 31, 'Touches(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially touches g2. Two\ngeometries spatially touch if the interiors of the geometries do not\nintersect, but the boundary of one of the geometries intersects either\nthe boundary or the interior of the other.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(383, 'AUTO_INCREMENT', 23, 'The AUTO_INCREMENT attribute can be used to generate a unique identity\nfor new rows:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/example-auto-increment.html\n\n', 'CREATE TABLE animals (\n     id MEDIUMINT NOT NULL AUTO_INCREMENT,\n     name CHAR(30) NOT NULL,\n     PRIMARY KEY (id)\n);\n\nINSERT INTO animals (name) VALUES\n    (\'dog\'),(\'cat\'),(\'penguin\'),\n    (\'lax\'),(\'whale\'),(\'ostrich\');\n\nSELECT * FROM animals;\n', 'http://dev.mysql.com/doc/refman/5.6/en/example-auto-increment.html'),
(384, 'UNCOMPRESS', 12, 'Syntax:\nUNCOMPRESS(string_to_uncompress)\n\nUncompresses a string compressed by the COMPRESS() function. If the\nargument is not a compressed value, the result is NULL. This function\nrequires MySQL to have been compiled with a compression library such as\nzlib. Otherwise, the return value is always NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', 'mysql> SELECT UNCOMPRESS(COMPRESS(\'any string\'));\n        -> \'any string\'\nmysql> SELECT UNCOMPRESS(\'any string\');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(385, 'GEOMCOLLFROMTEXT', 3, 'GeomCollFromText(wkt[,srid]), GeometryCollectionFromText(wkt[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(386, 'LAST_INSERT_ID', 17, 'Syntax:\nLAST_INSERT_ID(), LAST_INSERT_ID(expr)\n\nLAST_INSERT_ID() (with no argument) returns a BIGINT (64-bit) value\nrepresenting the first automatically generated value successfully\ninserted for an AUTO_INCREMENT column as a result of the most recently\nexecuted INSERT statement. The value of LAST_INSERT_ID() remains\nunchanged if no rows are successfully inserted.\n\nFor example, after inserting a row that generates an AUTO_INCREMENT\nvalue, you can get the value like this:\n\nmysql> SELECT LAST_INSERT_ID();\n        -> 195\n\nThe currently executing statement does not affect the value of\nLAST_INSERT_ID(). Suppose that you generate an AUTO_INCREMENT value\nwith one statement, and then refer to LAST_INSERT_ID() in a\nmultiple-row INSERT statement that inserts rows into a table with its\nown AUTO_INCREMENT column. The value of LAST_INSERT_ID() will remain\nstable in the second statement; its value for the second and later rows\nis not affected by the earlier row insertions. (However, if you mix\nreferences to LAST_INSERT_ID() and LAST_INSERT_ID(expr), the effect is\nundefined.)\n\nIf the previous statement returned an error, the value of\nLAST_INSERT_ID() is undefined. For transactional tables, if the\nstatement is rolled back due to an error, the value of LAST_INSERT_ID()\nis left undefined. For manual ROLLBACK, the value of LAST_INSERT_ID()\nis not restored to that before the transaction; it remains as it was at\nthe point of the ROLLBACK.\n\nWithin the body of a stored routine (procedure or function) or a\ntrigger, the value of LAST_INSERT_ID() changes the same way as for\nstatements executed outside the body of these kinds of objects. The\neffect of a stored routine or trigger upon the value of\nLAST_INSERT_ID() that is seen by following statements depends on the\nkind of routine:\n\no If a stored procedure executes statements that change the value of\n  LAST_INSERT_ID(), the changed value is seen by statements that follow\n  the procedure call.\n\no For stored functions and triggers that change the value, the value is\n  restored when the function or trigger ends, so following statements\n  will not see a changed value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(387, 'FLOOR', 4, 'Syntax:\nFLOOR(X)\n\nReturns the largest integer value not greater than X.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT FLOOR(1.23);\n        -> 1\nmysql> SELECT FLOOR(-1.23);\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(388, 'COS', 4, 'Syntax:\nCOS(X)\n\nReturns the cosine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT COS(PI());\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(389, 'STD', 16, 'Syntax:\nSTD(expr)\n\nReturns the population standard deviation of expr. This is an extension\nto standard SQL. The standard SQL function STDDEV_POP() can be used\ninstead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(390, 'DATE FUNCTION', 32, 'Syntax:\nDATE(expr)\n\nExtracts the date part of the date or datetime expression expr.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE(\'2003-12-31 01:02:03\');\n        -> \'2003-12-31\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(391, 'TAN', 4, 'Syntax:\nTAN(X)\n\nReturns the tangent of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT TAN(PI());\n        -> -1.2246063538224e-16\nmysql> SELECT TAN(PI()+1);\n        -> 1.5574077246549\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(392, 'WEEKOFYEAR', 32, 'Syntax:\nWEEKOFYEAR(date)\n\nReturns the calendar week of the date as a number in the range from 1\nto 53. WEEKOFYEAR() is a compatibility function that is equivalent to\nWEEK(date,3).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEKOFYEAR(\'2008-02-20\');\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(393, 'UNCOMPRESSED_LENGTH', 12, 'Syntax:\nUNCOMPRESSED_LENGTH(compressed_string)\n\nReturns the length that the compressed string had before being\ncompressed.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', 'mysql> SELECT UNCOMPRESSED_LENGTH(COMPRESS(REPEAT(\'a\',30)));\n        -> 30\n', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(394, 'SUBTIME', 32, 'Syntax:\nSUBTIME(expr1,expr2)\n\nSUBTIME() returns expr1 - expr2 expressed as a value in the same format\nas expr1. expr1 is a time or datetime expression, and expr2 is a time\nexpression.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT SUBTIME(\'2007-12-31 23:59:59.999999\',\'1 1:1:1.000002\');\n        -> \'2007-12-30 22:58:58.999997\'\nmysql> SELECT SUBTIME(\'01:00:00.999999\', \'02:00:00.999998\');\n        -> \'-00:59:59.999999\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(395, 'LOG2', 4, 'Syntax:\nLOG2(X)\n\nReturns the base-2 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG2(65536);\n        -> 16\nmysql> SELECT LOG2(-100);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(396, 'POW', 4, 'Syntax:\nPOW(X,Y)\n\nReturns the value of X raised to the power of Y.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT POW(2,2);\n        -> 4\nmysql> SELECT POW(2,-2);\n        -> 0.25\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(397, 'DROP TABLE', 40, 'Syntax:\nDROP [TEMPORARY] TABLE [IF EXISTS]\n    tbl_name [, tbl_name] ...\n    [RESTRICT | CASCADE]\n\nDROP TABLE removes one or more tables. You must have the DROP privilege\nfor each table. All table data and the table definition are removed, so\nbe careful with this statement! If any of the tables named in the\nargument list do not exist, MySQL returns an error indicating by name\nwhich nonexisting tables it was unable to drop, but it also drops all\nof the tables in the list that do exist.\n\n*Important*: When a table is dropped, user privileges on the table are\nnot automatically dropped. See [HELP GRANT].\n\nNote that for a partitioned table, DROP TABLE permanently removes the\ntable definition, all of its partitions, and all of the data which was\nstored in those partitions. It also removes the partitioning definition\n(.par) file associated with the dropped table.\n\nUse IF EXISTS to prevent an error from occurring for tables that do not\nexist. A NOTE is generated for each nonexistent table when using IF\nEXISTS. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE are permitted to make porting easier. In MySQL\n5.6, they do nothing.\n\n*Note*: DROP TABLE automatically commits the current active\ntransaction, unless you use the TEMPORARY keyword.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/drop-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/drop-table.html'),
(398, 'NOW', 32, 'Syntax:\nNOW([fsp])\n\nReturns the current date and time as a value in \'YYYY-MM-DD HH:MM:SS\'\nor YYYYMMDDHHMMSS format, depending on whether the function is used in\na string or numeric context. The value is expressed in the current time\nzone.\n\nAs of MySQL 5.6.4, if the fsp argument is given to specify a fractional\nseconds precision from 0 to 6, the return value includes a fractional\nseconds part of that many digits. Before 5.6.4, any argument is\nignored.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT NOW();\n        -> \'2007-12-15 23:50:26\'\nmysql> SELECT NOW() + 0;\n        -> 20071215235026.000000\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(399, 'SHOW ENGINES', 27, 'Syntax:\nSHOW [STORAGE] ENGINES\n\nSHOW ENGINES displays status information about the server\'s storage\nengines. This is particularly useful for checking whether a storage\nengine is supported, or to see what the default engine is.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-engines.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-engines.html'),
(400, 'IS_IPV6', 14, 'Syntax:\nIS_IPV6(expr)\n\nReturns 1 if the argument is a valid IPv6 address specified as a\nstring, 0 otherwise. This function does not consider IPv4 addresses to\nbe valid IPv6 addresses.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> SELECT IS_IPV6(\'10.0.5.9\'), IS_IPV6(\'::1\');\n        -> 0, 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(401, 'LONGBLOB', 23, 'LONGBLOB\n\nA BLOB column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\nbytes. The effective maximum length of LONGBLOB columns depends on the\nconfigured maximum packet size in the client/server protocol and\navailable memory. Each LONGBLOB value is stored using a 4-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(402, 'ST_OVERLAPS', 31, 'ST_Overlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially overlaps g2. The term\nspatially overlaps is used if two geometries intersect and their\nintersection results in a geometry of the same dimension but not equal\nto either of the given geometries.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(403, 'YEAR DATA TYPE', 23, 'YEAR[(2|4)]\n\nA year in two-digit or four-digit format. The default is four-digit\nformat. YEAR(2) or YEAR(4) differ in display format, but have the same\nrange of values. In four-digit format, values display as 1901 to 2155,\nand 0000. In two-digit format, values display as 70 to 69, representing\nyears from 1970 to 2069. MySQL displays YEAR values in YYYY or\nYYformat, but permits assignment of values to YEAR columns using either\nstrings or numbers.\n\n*Note*: The YEAR(2) data type has certain issues that you should\nconsider before choosing to use it. As of MySQL 5.6.6, YEAR(2) is\ndeprecated. YEAR(2) columns in existing tables are treated as before,\nbut YEAR(2) in new or altered tables are converted to YEAR(4). For more\ninformation, see\nhttp://dev.mysql.com/doc/refman/5.6/en/migrating-to-year4.html.\n\nFor additional information about YEAR display format and interpretation\nof input values, see http://dev.mysql.com/doc/refman/5.6/en/year.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html'),
(404, 'SUM', 16, 'Syntax:\nSUM([DISTINCT] expr)\n\nReturns the sum of expr. If the return set has no rows, SUM() returns\nNULL. The DISTINCT keyword can be used to sum only the distinct values\nof expr.\n\nSUM() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(405, 'REPEAT FUNCTION', 38, 'Syntax:\nREPEAT(str,count)\n\nReturns a string consisting of the string str repeated count times. If\ncount is less than 1, returns an empty string. Returns NULL if str or\ncount are NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT REPEAT(\'MySQL\', 3);\n        -> \'MySQLMySQLMySQL\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(406, 'SOUNDEX', 38, 'Syntax:\nSOUNDEX(str)\n\nReturns a soundex string from str. Two strings that sound almost the\nsame should have identical soundex strings. A standard soundex string\nis four characters long, but the SOUNDEX() function returns an\narbitrarily long string. You can use SUBSTRING() on the result to get a\nstandard soundex string. All nonalphabetic characters in str are\nignored. All international alphabetic characters outside the A-Z range\nare treated as vowels.\n\n*Important*: When using SOUNDEX(), you should be aware of the following\nlimitations:\n\no This function, as currently implemented, is intended to work well\n  with strings that are in the English language only. Strings in other\n  languages may not produce reliable results.\n\no This function is not guaranteed to provide consistent results with\n  strings that use multi-byte character sets, including utf-8.\n\n  We hope to remove these limitations in a future release. See Bug\n  #22638 for more information.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT SOUNDEX(\'Hello\');\n        -> \'H400\'\nmysql> SELECT SOUNDEX(\'Quadratically\');\n        -> \'Q36324\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(407, 'MBRTOUCHES', 6, 'MBRTouches(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 touch. Two geometries spatially touch if\nthe interiors of the geometries do not intersect, but the boundary of\none of the geometries intersects either the boundary or the interior of\nthe other.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(408, 'DROP EVENT', 40, 'Syntax:\nDROP EVENT [IF EXISTS] event_name\n\nThis statement drops the event named event_name. The event immediately\nceases being active, and is deleted completely from the server.\n\nIf the event does not exist, the error ERROR 1517 (HY000): Unknown\nevent \'event_name\' results. You can override this and cause the\nstatement to generate a warning for nonexistent events instead using IF\nEXISTS.\n\nThis statement requires the EVENT privilege for the schema to which the\nevent to be dropped belongs.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/drop-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/drop-event.html'),
(409, 'VARBINARY', 23, 'VARBINARY(M)\n\nThe VARBINARY type is similar to the VARCHAR type, but stores binary\nbyte strings rather than nonbinary character strings. M represents the\nmaximum column length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(410, 'LOAD INDEX', 27, 'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [PARTITION (partition_list | ALL)]\n    [[INDEX|KEY] (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\npartition_list:\n    partition_name[, partition_name][, ...]\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise.\n\nLOAD INDEX INTO CACHE is used only for MyISAM tables. In MySQL 5.6, it\nis also supported for partitioned MyISAM tables; in addition, indexes\non partitioned tables can be preloaded for one, several, or all\npartitions.\n\nThe IGNORE LEAVES modifier causes only blocks for the nonleaf nodes of\nthe index to be preloaded.\n\nIGNORE LEAVES is also supported for partitioned MyISAM tables.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/load-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/load-index.html'),
(411, 'UNION', 28, 'Syntax:\nSELECT ...\nUNION [ALL | DISTINCT] SELECT ...\n[UNION [ALL | DISTINCT] SELECT ...]\n\nUNION is used to combine the result from multiple SELECT statements\ninto a single result set.\n\nThe column names from the first SELECT statement are used as the column\nnames for the results returned. Selected columns listed in\ncorresponding positions of each SELECT statement should have the same\ndata type. (For example, the first column selected by the first\nstatement should have the same type as the first column selected by the\nother statements.)\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/union.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/union.html'),
(412, 'TO_DAYS', 32, 'Syntax:\nTO_DAYS(date)\n\nGiven a date date, returns a day number (the number of days since year\n0).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT TO_DAYS(950501);\n        -> 728779\nmysql> SELECT TO_DAYS(\'2007-10-07\');\n        -> 733321\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(413, 'SHOW CREATE DATABASE', 27, 'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n\nShows the CREATE DATABASE statement that creates the given database. If\nthe SHOW statement includes an IF NOT EXISTS clause, the output too\nincludes such a clause. SHOW CREATE SCHEMA is a synonym for SHOW CREATE\nDATABASE.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-create-database.html\n\n', 'mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n', 'http://dev.mysql.com/doc/refman/5.6/en/show-create-database.html'),
(414, 'SHOW INDEX', 27, 'Syntax:\nSHOW {INDEX | INDEXES | KEYS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [WHERE expr]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC. This statement requires some\nprivilege for any column in the table.\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. These two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html.\n\nYou can also list a table\'s indexes with the mysqlshow -k db_name\ntbl_name command.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-index.html'),
(415, '!', 15, 'Syntax:\nNOT, !\n\nLogical NOT. Evaluates to 1 if the operand is 0, to 0 if the operand is\nnonzero, and NOT NULL returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html\n\n', 'mysql> SELECT NOT 10;\n        -> 0\nmysql> SELECT NOT 0;\n        -> 1\nmysql> SELECT NOT NULL;\n        -> NULL\nmysql> SELECT ! (1+1);\n        -> 0\nmysql> SELECT ! 1+1;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(416, 'DOUBLE', 23, 'DOUBLE[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA normal-size (double-precision) floating-point number. Permissible\nvalues are -1.7976931348623157E+308 to -2.2250738585072014E-308, 0, and\n2.2250738585072014E-308 to 1.7976931348623157E+308. These are the\ntheoretical limits, based on the IEEE standard. The actual range might\nbe slightly smaller depending on your hardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits permitted by the hardware. A double-precision floating-point\nnumber is accurate to approximately 15 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(417, 'DECLARE HANDLER', 24, 'Syntax:\nDECLARE handler_action HANDLER\n    FOR condition_value [, condition_value] ...\n    statement\n\nhandler_action:\n    CONTINUE\n  | EXIT\n  | UNDO\n\ncondition_value:\n    mysql_error_code\n  | SQLSTATE [VALUE] sqlstate_value\n  | condition_name\n  | SQLWARNING\n  | NOT FOUND\n  | SQLEXCEPTION\n\nThe DECLARE ... HANDLER statement specifies a handler that deals with\none or more conditions. If one of these conditions occurs, the\nspecified statement executes. statement can be a simple statement such\nas SET var_name = value, or a compound statement written using BEGIN\nand END (see [HELP BEGIN END]).\n\nHandler declarations must appear after variable or condition\ndeclarations.\n\nThe handler_action value indicates what action the handler takes after\nexecution of the handler statement:\n\no CONTINUE: Execution of the current program continues.\n\no EXIT: Execution terminates for the BEGIN ... END compound statement\n  in which the handler is declared. This is true even if the condition\n  occurs in an inner block.\n\no UNDO: Not supported.\n\nThe condition_value for DECLARE ... HANDLER indicates the specific\ncondition or class of conditions that activates the handler:\n\no A MySQL error code (a number) or an SQLSTATE value (a 5-character\n  string literal). You should not use MySQL error code 0 or SQLSTATE\n  values that begin with \'00\', because those indicate success rather\n  than an error condition. For a list of MySQL error codes and SQLSTATE\n  values, see\n  http://dev.mysql.com/doc/refman/5.6/en/error-messages-server.html.\n\no A condition name previously specified with DECLARE ... CONDITION. A\n  condition name can be associated with a MySQL error code or SQLSTATE\n  value. See [HELP DECLARE CONDITION].\n\no SQLWARNING is shorthand for the class of SQLSTATE values that begin\n  with \'01\'.\n\no NOT FOUND is shorthand for the class of SQLSTATE values that begin\n  with \'02\'. This is relevant within the context of cursors and is used\n  to control what happens when a cursor reaches the end of a data set.\n  If no more rows are available, a No Data condition occurs with\n  SQLSTATE value \'02000\'. To detect this condition, you can set up a\n  handler for it (or for a NOT FOUND condition). For an example, see\n  http://dev.mysql.com/doc/refman/5.6/en/cursors.html. This condition\n  also occurs for SELECT ... INTO var_list statements that retrieve no\n  rows.\n\no SQLEXCEPTION is shorthand for the class of SQLSTATE values that do\n  not begin with \'00\', \'01\', or \'02\'.\n\nFor information about how the server chooses handlers when a condition\noccurs, see http://dev.mysql.com/doc/refman/5.6/en/handler-scope.html.\n\nIf a condition occurs for which no handler has been declared, the\naction taken depends on the condition class:\n\no For SQLEXCEPTION conditions, the stored program terminates at the\n  statement that raised the condition, as if there were an EXIT\n  handler. If the program was called by another stored program, the\n  calling program handles the condition using the handler selection\n  rules applied to its own handlers.\n\no For SQLWARNING conditions, the program continues executing, as if\n  there were a CONTINUE handler.\n\no For NOT FOUND conditions, if the condition was raised normally, the\n  action is CONTINUE. If it was raised by SIGNAL or RESIGNAL, the\n  action is EXIT.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/declare-handler.html\n\n', 'mysql> CREATE TABLE test.t (s1 INT, PRIMARY KEY (s1));\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter //\n\nmysql> CREATE PROCEDURE handlerdemo ()\n    -> BEGIN\n    ->   DECLARE CONTINUE HANDLER FOR SQLSTATE \'23000\' SET @x2 = 1;\n    ->   SET @x = 1;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 2;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 3;\n    -> END;\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL handlerdemo()//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n    +------+\n    | @x   |\n    +------+\n    | 3    |\n    +------+\n    1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.6/en/declare-handler.html'),
(418, 'TIME', 23, 'TIME[(fsp)]\n\nA time. The range is \'-838:59:59.000000\' to \'838:59:59.000000\'. MySQL\ndisplays TIME values in \'HH:MM:SS[.fraction]\' format, but permits\nassignment of values to TIME columns using either strings or numbers.\n\nAs of MySQL 5.6.4, an optional fsp value in the range from 0 to 6 may\nbe given to specify fractional seconds precision. A value of 0\nsignifies that there is no fractional part. If omitted, the default\nprecision is 0.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html'),
(419, 'SYSTEM_USER', 17, 'Syntax:\nSYSTEM_USER()\n\nSYSTEM_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(420, 'CURRENT_DATE', 32, 'Syntax:\nCURRENT_DATE, CURRENT_DATE()\n\nCURRENT_DATE and CURRENT_DATE() are synonyms for CURDATE().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(421, 'TRUNCATE TABLE', 40, 'Syntax:\nTRUNCATE [TABLE] tbl_name\n\nTRUNCATE TABLE empties a table completely. It requires the DROP\nprivilege.\n\nLogically, TRUNCATE TABLE is similar to a DELETE statement that deletes\nall rows, or a sequence of DROP TABLE and CREATE TABLE statements. To\nachieve high performance, it bypasses the DML method of deleting data.\nThus, it cannot be rolled back, it does not cause ON DELETE triggers to\nfire, and it cannot be performed for InnoDB tables with parent-child\nforeign key relationships.\n\nAlthough TRUNCATE TABLE is similar to DELETE, it is classified as a DDL\nstatement rather than a DML statement. It differs from DELETE in the\nfollowing ways in MySQL 5.6:\n\no Truncate operations drop and re-create the table, which is much\n  faster than deleting rows one by one, particularly for large tables.\n\no Truncate operations cause an implicit commit, and so cannot be rolled\n  back.\n\no Truncation operations cannot be performed if the session holds an\n  active table lock.\n\no TRUNCATE TABLE fails for an InnoDB table if there are any FOREIGN KEY\n  constraints from other tables that reference the table. Foreign key\n  constraints between columns of the same table are permitted.\n\no Truncation operations do not return a meaningful value for the number\n  of deleted rows. The usual result is \"0 rows affected,\" which should\n  be interpreted as \"no information.\"\n\no As long as the table format file tbl_name.frm is valid, the table can\n  be re-created as an empty table with TRUNCATE TABLE, even if the data\n  or index files have become corrupted.\n\no Any AUTO_INCREMENT value is reset to its start value. This is true\n  even for MyISAM and InnoDB, which normally do not reuse sequence\n  values.\n\no When used with partitioned tables, TRUNCATE TABLE preserves the\n  partitioning; that is, the data and index files are dropped and\n  re-created, while the partition definitions (.par) file is\n  unaffected.\n\no The TRUNCATE TABLE statement does not invoke ON DELETE triggers.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/truncate-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/truncate-table.html'),
(422, 'AREA', 2, 'Area(poly)\n\nReturns as a double-precision number the area of the Polygon value\npoly, as measured in its spatial reference system.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SET @poly = \'Polygon((0 0,0 3,3 0,0 0),(1 1,1 2,2 1,1 1))\';\nmysql> SELECT Area(GeomFromText(@poly));\n+---------------------------+\n| Area(GeomFromText(@poly)) |\n+---------------------------+\n|                         4 |\n+---------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(423, 'START SLAVE', 8, 'Syntax:\nSTART SLAVE [thread_types] [until_option] [connection_options]\n\nthread_types:\n    [thread_type [, thread_type] ... ]\n\nthread_type: \n    IO_THREAD | SQL_THREAD\n\nuntil_option:\n    UNTIL {   {SQL_BEFORE_GTIDS | SQL_AFTER_GTIDS} = gtid_set\n          |   MASTER_LOG_FILE = \'log_name\', MASTER_LOG_POS = log_pos\n          |   RELAY_LOG_FILE = \'log_name\', RELAY_LOG_POS = log_pos\n          |   SQL_AFTER_MTS_GAPS  }\n\nconnection_options: \n    [USER=\'user_name\'] [PASSWORD=\'user_pass\'] [DEFAULT_AUTH=\'plugin_name\'] [PLUGIN_DIR=\'plugin_dir\']\n\n\ngtid_set:\n    uuid_set [, uuid_set] ...\n    | \'\'\n\nuuid_set:\n    uuid:interval[:interval]...\n\nuuid:\n    hhhhhhhh-hhhh-hhhh-hhhh-hhhhhhhhhhhh\n\nh:\n    [0-9,A-F]\n\ninterval:\n    n[-n]\n\n    (n >= 1) \n\nSTART SLAVE with no thread_type options starts both of the slave\nthreads. The I/O thread reads events from the master server and stores\nthem in the relay log. The SQL thread reads events from the relay log\nand executes them. START SLAVE requires the SUPER privilege.\n\nIf START SLAVE succeeds in starting the slave threads, it returns\nwithout any error. However, even in that case, it might be that the\nslave threads start and then later stop (for example, because they do\nnot manage to connect to the master or read its binary log, or some\nother problem). START SLAVE does not warn you about this. You must\ncheck the slave\'s error log for error messages generated by the slave\nthreads, or check that they are running satisfactorily with SHOW SLAVE\nSTATUS.\n\nIn MySQL 5.6.7 and later, START SLAVE causes an implicit commit of an\nongoing transaction. See\nhttp://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.\n\nBeginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before\nissuing this statement (BUG#16062608).\n\nMySQL 5.6.4 and later supports pluggable user-password authentication\nwith START SLAVE with the USER, PASSWORD, DEFAULT_AUTH and PLUGIN_DIR\noptions, as described in the following list:\n\no USER: User name. Cannot be set to an empty or null string, or left\n  unset if PASSWORD is used.\n\no PASSWORD: Password.\n\no DEFAULT_AUTH: Name of plugin; default is MySQL native authentication.\n\no PLUGIN_DIR: Location of plugin.\n\nStarting with MySQL 5.6.4, you cannot use the SQL_THREAD option when\nspecifying USER, PASSWORD, or both. (Bug #13083642).\n\nSee\nhttp://dev.mysql.com/doc/refman/5.6/en/pluggable-authentication.html,\nfor more information.\n\nIf an insecure connection is used with any these options, the server\nissues the warning Sending passwords in plain text without SSL/TLS is\nextremely insecure.\n\nStarting with MySQL 5.6.6, START SLAVE ... UNTIL supports two\nadditional options for use with global transaction identifiers (GTIDs)\n(see http://dev.mysql.com/doc/refman/5.6/en/replication-gtids.html).\nEach of these takes a set of one or more global transaction identifiers\ngtid_set as an argument (see\nhttp://dev.mysql.com/doc/refman/5.6/en/replication-gtids-concepts.html#\nreplication-gtids-concepts-gtid-sets, for more information).\n\nWhen no thread_type is specified, START SLAVE UNTIL SQL_BEFORE_GTIDS\ncauses both the slave SQL thread to process and the slave I/O thread to\nfetch transactions until both of them have reached the first\ntransaction whose GTID is listed in the gtid_set. START SLAVE UNTIL\nSQL_AFTER_GTIDS causes the slave threads to process all transactions\nuntil the last transaction in the gtid_set has been processed by both\nthreads. In other words, START SLAVE UNTIL SQL_BEFORE_GTIDS causes the\nslave SQL to process and I/O threads to fetch all transactions\noccurring before the first GTID in the gtid_set is reached, and START\nSLAVE UNTIL SQL_AFTER_GTIDS causes the slave threads to handle all\ntransactions, including those whose GTIDs are found in gtid_set, until\neach has encountered a transaction whose GTID is not part of the set.\nSQL_BEFORE_GTIDS and SQL_AFTER_GTIDS each support the SQL_THREAD and\nIO_THREAD options.\n\nFor example, START SLAVE SQL_THREAD UNTIL SQL_BEFORE_GTIDS =\n3E11FA47-71CA-11E1-9E33-C80AA9429562:11-56 causes the slave SQL thread\nto process all transactions originating from the master whose\nserver_uuid is 3E11FA47-71CA-11E1-9E33-C80AA9429562 until it encounters\nthe transaction having sequence number 11; it then stops without\nprocessing this transaction. In other words, all transactions up to and\nincluding the transaction with sequence number 10 are processed.\nExecuting START SLAVE IO_THREAD UNTIL SQL_AFTER_GTIDS =\n3E11FA47-71CA-11E1-9E33-C80AA9429562:11-56, on the other hand, would\ncause the slave I/O thread to obtain all transactions just mentioned\nfrom the master, including all of the transactions having the sequence\nnumbers 11 through 56, and then to stop without processing any\nadditional transactions; that is, the transaction having sequence\nnumber 56 would be the last transaction fetched by the slave I/O\nthread.\n\nWith neither the SQL_THREAD option nor the IO_THREAD option, the\nprevious statement would cause the slave SQL thread to execute all\ntransactions originating from this master, including all transactions\nwith sequence numbers 11 through 56, and then to stop without\nprocessing any additional transactions. The same command would also\ncause the slave I/O thread to start. When the SQL thread reaches the\ncondition, it is stopped. In other words, START SLAVE UNTIL\nSQL_BEFORE_GTIDS has the same effect as START SLAVE SQL_THREAD,\nIO_THREAD UNTIL SQL_BEFORE_GTIDS; the slave SQL thread and slave I/O\nthread are each started, and the SQL thread continues executing\ntransactions until the stop condition for that thread is met.\n(Similarly, START SLAVE UNTIL SQL_AFTER_GTIDS is effectively the same\nas START SLAVE SQL_THREAD, IO_THREAD UNTIL SQL_AFTER_GTIDS.)\n\n*Note*: The SQL_BEFORE_GTIDS and SQL_AFTER_GTIDS keywords are present\nin the MySQL 5.6.5 server; however, neither of them functioned\ncorrectly as options with START SLAVE [SQL_THREAD | IO_THREAD] UNTIL in\nthat version, and are therefore supported beginning only with MySQL\n5.6.6. (Bug#13810456)\n\nSTART SLAVE UNTIL SQL_AFTER_MTS_GAPS is available in MySQL 5.6.6 or\nlater. This statement causes a multi-threaded slave\'s SQL threads to\nrun until no more gaps are found in the relay log, and then to stop.\nThis statement can take an SQL_THREAD option, but the effects of the\nstatement remain unchanged. It has no effect on the slave I/O thread\n(and cannot be used with the IO_THREAD option). START SLAVE UNTIL\nSQL_AFTER_MTS_GAPS should be used before switching the slave from\nmulti-threaded mode to single-threaded mode (that is, when resetting\nslave_parallel_workers back to 0 from a positive, nonzero value) after\nslave has failed with errors in multi-threaded mode.\n\nTo change a failed multi-threaded slave to single-threaded mode, you\ncan issue the following series of statements, in the order shown:\n\nSTART SLAVE UNTIL SQL_AFTER_MTS_GAPS;\n\nSET @@GLOBAL.slave_parallel_workers = 0;\n\nSTART SLAVE SQL_THREAD;\n\nIf you were running the failed multi-threaded slave with\nrelay_log_recovery enabled, then you must issue START SLAVE UNTIL\nSQL_AFTER_MTS_GAPS prior to executing CHANGE MASTER TO. Otherwise the\nlatter statement fails.\n\n*Note*: It is possible to view the entire text of a running START SLAVE\n... statement, including any USER or PASSWORD values used, in the\noutput of SHOW PROCESSLIST. This is also true for the text of a running\nCHANGE MASTER TO statement, including any values it employs for\nMASTER_USER or MASTER_PASSWORD.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/start-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/start-slave.html'),
(424, 'SHOW WARNINGS', 27, 'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS shows information about the conditions (errors, warnings,\nand notes) that resulted from the last statement in the current session\nthat generated messages. It shows nothing if the last statement used a\ntable and generated no messages. (That is, a statement that uses a\ntable but generates no messages clears the message list.) Statements\nthat do not use tables and do not generate messages have no effect on\nthe message list.\n\nWarnings are generated for DML statements such as INSERT, UPDATE, and\nLOAD DATA INFILE as well as DDL statements such as CREATE TABLE and\nALTER TABLE.\n\nSHOW WARNINGS is also used following EXPLAIN EXTENDED, to display the\nextra information generated by EXPLAIN when the EXTENDED keyword is\nused. See http://dev.mysql.com/doc/refman/5.6/en/explain-extended.html.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttp://dev.mysql.com/doc/refman/5.6/en/select.html.\n\nA related statement, SHOW ERRORS, shows only the error conditions (it\nexcludes warnings and notes). See [HELP SHOW ERRORS]. GET DIAGNOSTICS\ncan be used to examine information for individual conditions. See [HELP\nGET DIAGNOSTICS].\n\nThe SHOW COUNT(*) WARNINGS statement displays the total number of\nerrors, warnings, and notes. You can also retrieve this number from the\nwarning_count system variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-warnings.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-warnings.html'),
(425, 'DROP USER', 10, 'Syntax:\nDROP USER user [, user] ...\n\nThe DROP USER statement removes one or more MySQL accounts and their\nprivileges. It removes privilege rows for the account from all grant\ntables. To use this statement, you must have the global CREATE USER\nprivilege or the DELETE privilege for the mysql database. Each account\nname uses the format described in\nhttp://dev.mysql.com/doc/refman/5.6/en/account-names.html. For example:\n\nDROP USER \'jeffrey\'@\'localhost\';\n\nIf you specify only the user name part of the account name, a host name\npart of \'%\' is used.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/drop-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/drop-user.html'),
(426, 'SUBSTRING', 38, 'Syntax:\nSUBSTRING(str,pos), SUBSTRING(str FROM pos), SUBSTRING(str,pos,len),\nSUBSTRING(str FROM pos FOR len)\n\nThe forms without a len argument return a substring from string str\nstarting at position pos. The forms with a len argument return a\nsubstring len characters long from string str, starting at position\npos. The forms that use FROM are standard SQL syntax. It is also\npossible to use a negative value for pos. In this case, the beginning\nof the substring is pos characters from the end of the string, rather\nthan the beginning. A negative value may be used for pos in any of the\nforms of this function.\n\nFor all forms of SUBSTRING(), the position of the first character in\nthe string from which the substring is to be extracted is reckoned as\n1.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT SUBSTRING(\'Quadratically\',5);\n        -> \'ratically\'\nmysql> SELECT SUBSTRING(\'foobarbar\' FROM 4);\n        -> \'barbar\'\nmysql> SELECT SUBSTRING(\'Quadratically\',5,6);\n        -> \'ratica\'\nmysql> SELECT SUBSTRING(\'Sakila\', -3);\n        -> \'ila\'\nmysql> SELECT SUBSTRING(\'Sakila\', -5, 3);\n        -> \'aki\'\nmysql> SELECT SUBSTRING(\'Sakila\' FROM -4 FOR 2);\n        -> \'ki\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(427, 'ISEMPTY', 37, 'IsEmpty(g)\n\nThis function is a placeholder that returns 0 for any valid geometry\nvalue, 1 for any invalid geometry value or NULL.\n\nMySQL does not support GIS EMPTY values such as POINT EMPTY.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(428, 'SHOW FUNCTION STATUS', 27, 'Syntax:\nSHOW FUNCTION STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is similar to SHOW PROCEDURE STATUS but for stored\nfunctions. See [HELP SHOW PROCEDURE STATUS].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-function-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-function-status.html'),
(429, 'LTRIM', 38, 'Syntax:\nLTRIM(str)\n\nReturns the string str with leading space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT LTRIM(\'  barbar\');\n        -> \'barbar\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(430, 'ST_CROSSES', 31, 'ST_Crosses(g1,g2)\n\nReturns 1 if g1 spatially crosses g2. Returns NULL if g1 is a Polygon\nor a MultiPolygon, or if g2 is a Point or a MultiPoint. Otherwise,\nreturns 0.\n\nThe term spatially crosses denotes a spatial relation between two given\ngeometries that has the following properties:\n\no The two geometries intersect\n\no Their intersection results in a geometry that has a dimension that is\n  one less than the maximum dimension of the two given geometries\n\no Their intersection is not equal to either of the two given geometries\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(431, 'VALUES', 14, 'Syntax:\nVALUES(col_name)\n\nIn an INSERT ... ON DUPLICATE KEY UPDATE statement, you can use the\nVALUES(col_name) function in the UPDATE clause to refer to column\nvalues from the INSERT portion of the statement. In other words,\nVALUES(col_name) in the UPDATE clause refers to the value of col_name\nthat would be inserted, had no duplicate-key conflict occurred. This\nfunction is especially useful in multiple-row inserts. The VALUES()\nfunction is meaningful only in the ON DUPLICATE KEY UPDATE clause of\nINSERT statements and returns NULL otherwise. See\nhttp://dev.mysql.com/doc/refman/5.6/en/insert-on-duplicate.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> INSERT INTO table (a,b,c) VALUES (1,2,3),(4,5,6)\n    -> ON DUPLICATE KEY UPDATE c=VALUES(a)+VALUES(b);\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(432, 'MBRDISJOINT', 6, 'MBRDisjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are disjoint (do not intersect).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(433, 'CALL', 28, 'Syntax:\nCALL sp_name([parameter[,...]])\nCALL sp_name[()]\n\nThe CALL statement invokes a stored procedure that was defined\npreviously with CREATE PROCEDURE.\n\nStored procedures that take no arguments can be invoked without\nparentheses. That is, CALL p() and CALL p are equivalent.\n\nCALL can pass back values to its caller using parameters that are\ndeclared as OUT or INOUT parameters. When the procedure returns, a\nclient program can also obtain the number of rows affected for the\nfinal statement executed within the routine: At the SQL level, call the\nROW_COUNT() function; from the C API, call the mysql_affected_rows()\nfunction.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/call.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/call.html'),
(434, 'ENCODE', 12, 'Syntax:\nENCODE(str,pass_str)\n\nEncrypt str using pass_str as the password. To decrypt the result, use\nDECODE().\n\nThe result is a binary string of the same length as str.\n\nThe strength of the encryption is based on how good the random\ngenerator is. It should suffice for short strings.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(435, 'SUBSTRING_INDEX', 38, 'Syntax:\nSUBSTRING_INDEX(str,delim,count)\n\nReturns the substring from string str before count occurrences of the\ndelimiter delim. If count is positive, everything to the left of the\nfinal delimiter (counting from the left) is returned. If count is\nnegative, everything to the right of the final delimiter (counting from\nthe right) is returned. SUBSTRING_INDEX() performs a case-sensitive\nmatch when searching for delim.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT SUBSTRING_INDEX(\'www.mysql.com\', \'.\', 2);\n        -> \'www.mysql\'\nmysql> SELECT SUBSTRING_INDEX(\'www.mysql.com\', \'.\', -2);\n        -> \'mysql.com\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(436, 'TIMESTAMPADD', 32, 'Syntax:\nTIMESTAMPADD(unit,interval,datetime_expr)\n\nAdds the integer expression interval to the date or datetime expression\ndatetime_expr. The unit for interval is given by the unit argument,\nwhich should be one of the following values: MICROSECOND\n(microseconds), SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, or\nYEAR.\n\nThe unit value may be specified using one of keywords as shown, or with\na prefix of SQL_TSI_. For example, DAY and SQL_TSI_DAY both are legal.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMPADD(MINUTE,1,\'2003-01-02\');\n        -> \'2003-01-02 00:01:00\'\nmysql> SELECT TIMESTAMPADD(WEEK,1,\'2003-01-02\');\n        -> \'2003-01-09\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(437, 'TRUNCATE', 4, 'Syntax:\nTRUNCATE(X,D)\n\nReturns the number X, truncated to D decimal places. If D is 0, the\nresult has no decimal point or fractional part. D can be negative to\ncause D digits left of the decimal point of the value X to become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT TRUNCATE(1.223,1);\n        -> 1.2\nmysql> SELECT TRUNCATE(1.999,1);\n        -> 1.9\nmysql> SELECT TRUNCATE(1.999,0);\n        -> 1\nmysql> SELECT TRUNCATE(-1.999,1);\n        -> -1.9\nmysql> SELECT TRUNCATE(122,-2);\n       -> 100\nmysql> SELECT TRUNCATE(10.28*100,0);\n       -> 1028\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(438, 'SHOW', 27, 'SHOW has many forms that provide information about databases, tables,\ncolumns, or status information about the server. This section describes\nthose following:\n\nSHOW AUTHORS\nSHOW {BINARY | MASTER} LOGS\nSHOW BINLOG EVENTS [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\nSHOW CHARACTER SET [like_or_where]\nSHOW COLLATION [like_or_where]\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name] [like_or_where]\nSHOW CONTRIBUTORS\nSHOW CREATE DATABASE db_name\nSHOW CREATE EVENT event_name\nSHOW CREATE FUNCTION func_name\nSHOW CREATE PROCEDURE proc_name\nSHOW CREATE TABLE tbl_name\nSHOW CREATE TRIGGER trigger_name\nSHOW CREATE VIEW view_name\nSHOW DATABASES [like_or_where]\nSHOW ENGINE engine_name {STATUS | MUTEX}\nSHOW [STORAGE] ENGINES\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW EVENTS\nSHOW FUNCTION CODE func_name\nSHOW FUNCTION STATUS [like_or_where]\nSHOW GRANTS FOR user\nSHOW INDEX FROM tbl_name [FROM db_name]\nSHOW MASTER STATUS\nSHOW OPEN TABLES [FROM db_name] [like_or_where]\nSHOW PLUGINS\nSHOW PROCEDURE CODE proc_name\nSHOW PROCEDURE STATUS [like_or_where]\nSHOW PRIVILEGES\nSHOW [FULL] PROCESSLIST\nSHOW PROFILE [types] [FOR QUERY n] [OFFSET n] [LIMIT n]\nSHOW PROFILES\nSHOW SLAVE HOSTS\nSHOW SLAVE STATUS\nSHOW [GLOBAL | SESSION] STATUS [like_or_where]\nSHOW TABLE STATUS [FROM db_name] [like_or_where]\nSHOW [FULL] TABLES [FROM db_name] [like_or_where]\nSHOW TRIGGERS [FROM db_name] [like_or_where]\nSHOW [GLOBAL | SESSION] VARIABLES [like_or_where]\nSHOW WARNINGS [LIMIT [offset,] row_count]\n\nlike_or_where:\n    LIKE \'pattern\'\n  | WHERE expr\n\nIf the syntax for a given SHOW statement includes a LIKE \'pattern\'\npart, \'pattern\' is a string that can contain the SQL \"%\" and \"_\"\nwildcard characters. The pattern is useful for restricting statement\noutput to matching values.\n\nSeveral SHOW statements also accept a WHERE clause that provides more\nflexibility in specifying which rows to display. See\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show.html'),
(439, 'SHOW VARIABLES', 27, 'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables. This\ninformation also can be obtained using the mysqladmin variables\ncommand. The LIKE clause, if present, indicates which variable names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html. This\nstatement does not require any privilege. It requires only the ability\nto connect to the server.\n\nWith the GLOBAL modifier, SHOW VARIABLES displays the values that are\nused for new connections to MySQL. In MySQL 5.6, if a variable has no\nglobal value, no value is displayed. With SESSION, SHOW VARIABLES\ndisplays the values that are in effect for the current connection. If\nno modifier is present, the default is SESSION. LOCAL is a synonym for\nSESSION.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE \'max_join_size\';\nSHOW SESSION VARIABLES LIKE \'max_join_size\';\n\nTo get a list of variables whose name match a pattern, use the \"%\"\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE \'%size%\';\nSHOW GLOBAL VARIABLES LIKE \'%size%\';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because \"_\" is a wildcard that matches\nany single character, you should escape it as \"\\_\" to match it\nliterally. In practice, this is rarely necessary.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-variables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-variables.html'),
(440, 'BINLOG', 27, 'Syntax:\nBINLOG \'str\'\n\nBINLOG is an internal-use statement. It is generated by the mysqlbinlog\nprogram as the printable representation of certain events in binary log\nfiles. (See http://dev.mysql.com/doc/refman/5.6/en/mysqlbinlog.html.)\nThe \'str\' value is a base 64-encoded string the that server decodes to\ndetermine the data change indicated by the corresponding event. This\nstatement requires the SUPER privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/binlog.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/binlog.html'),
(441, 'ST_DISJOINT', 31, 'ST_Disjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially disjoint from (does\nnot intersect) g2.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(442, 'ATAN2', 4, 'Syntax:\nATAN(Y,X), ATAN2(Y,X)\n\nReturns the arc tangent of the two variables X and Y. It is similar to\ncalculating the arc tangent of Y / X, except that the signs of both\narguments are used to determine the quadrant of the result.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT ATAN(-2,2);\n        -> -0.78539816339745\nmysql> SELECT ATAN2(PI(),0);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(443, 'HOUR', 32, 'Syntax:\nHOUR(time)\n\nReturns the hour for time. The range of the return value is 0 to 23 for\ntime-of-day values. However, the range of TIME values actually is much\nlarger, so HOUR can return values greater than 23.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT HOUR(\'10:05:03\');\n        -> 10\nmysql> SELECT HOUR(\'272:59:59\');\n        -> 272\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(444, 'SELECT', 28, 'Syntax:\nSELECT\n    [ALL | DISTINCT | DISTINCTROW ]\n      [HIGH_PRIORITY]\n      [STRAIGHT_JOIN]\n      [SQL_SMALL_RESULT] [SQL_BIG_RESULT] [SQL_BUFFER_RESULT]\n      [SQL_CACHE | SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS]\n    select_expr [, select_expr ...]\n    [FROM table_references\n      [PARTITION partition_list]\n    [WHERE where_condition]\n    [GROUP BY {col_name | expr | position}\n      [ASC | DESC], ... [WITH ROLLUP]]\n    [HAVING where_condition]\n    [ORDER BY {col_name | expr | position}\n      [ASC | DESC], ...]\n    [LIMIT {[offset,] row_count | row_count OFFSET offset}]\n    [PROCEDURE procedure_name(argument_list)]\n    [INTO OUTFILE \'file_name\'\n        [CHARACTER SET charset_name]\n        export_options\n      | INTO DUMPFILE \'file_name\'\n      | INTO var_name [, var_name]]\n    [FOR UPDATE | LOCK IN SHARE MODE]]\n\nSELECT is used to retrieve rows selected from one or more tables, and\ncan include UNION statements and subqueries. See [HELP UNION], and\nhttp://dev.mysql.com/doc/refman/5.6/en/subqueries.html.\n\nThe most commonly used clauses of SELECT statements are these:\n\no Each select_expr indicates a column that you want to retrieve. There\n  must be at least one select_expr.\n\no table_references indicates the table or tables from which to retrieve\n  rows. Its syntax is described in [HELP JOIN].\n\no Starting in MySQL 5.6.2, SELECT supports explicit partition selection\n  using the PARTITION keyword with a list of partitions or\n  subpartitions (or both) following the name of the table in a\n  table_reference (see [HELP JOIN]). In this case, rows are selected\n  only from the partitions listed, and any other partitions of the\n  table are ignored. For more information and examples, see\n  http://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html.\n\n  In MySQL 5.6.6 and later, SELECT ... PARTITION from tables using\n  storage engines such as MyISAM that perform table-level locks (and\n  thus partition locks) lock only the partitions or subpartitions named\n  by the PARTITION option.\n\n  See\n  http://dev.mysql.com/doc/refman/5.6/en/partitioning-limitations-locki\n  ng.html, for more information.\n\no The WHERE clause, if given, indicates the condition or conditions\n  that rows must satisfy to be selected. where_condition is an\n  expression that evaluates to true for each row to be selected. The\n  statement selects all rows if there is no WHERE clause.\n\n  In the WHERE expression, you can use any of the functions and\n  operators that MySQL supports, except for aggregate (summary)\n  functions. See\n  http://dev.mysql.com/doc/refman/5.6/en/expressions.html, and\n  http://dev.mysql.com/doc/refman/5.6/en/functions.html.\n\nSELECT can also be used to retrieve rows computed without reference to\nany table.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/select.html'),
(445, 'GROUP_CONCAT', 16, 'Syntax:\nGROUP_CONCAT(expr)\n\nThis function returns a string result with the concatenated non-NULL\nvalues from a group. It returns NULL if there are no non-NULL values.\nThe full syntax is as follows:\n\nGROUP_CONCAT([DISTINCT] expr [,expr ...]\n             [ORDER BY {unsigned_integer | col_name | expr}\n                 [ASC | DESC] [,col_name ...]]\n             [SEPARATOR str_val])\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', 'mysql> SELECT student_name,\n    ->     GROUP_CONCAT(test_score)\n    ->     FROM student\n    ->     GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(446, 'BENCHMARK', 17, 'Syntax:\nBENCHMARK(count,expr)\n\nThe BENCHMARK() function executes the expression expr repeatedly count\ntimes. It may be used to time how quickly MySQL processes the\nexpression. The result value is always 0. The intended use is from\nwithin the mysql client, which reports query execution times:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', 'mysql> SELECT BENCHMARK(1000000,ENCODE(\'hello\',\'goodbye\'));\n+----------------------------------------------+\n| BENCHMARK(1000000,ENCODE(\'hello\',\'goodbye\')) |\n+----------------------------------------------+\n|                                            0 |\n+----------------------------------------------+\n1 row in set (4.74 sec)\n', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(447, 'NAME_CONST', 14, 'Syntax:\nNAME_CONST(name,value)\n\nReturns the given value. When used to produce a result set column,\nNAME_CONST() causes the column to have the given name. The arguments\nshould be constants.\n\nmysql> SELECT NAME_CONST(\'myname\', 14);\n+--------+\n| myname |\n+--------+\n|     14 |\n+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(448, 'SHOW ENGINE', 27, 'Syntax:\nSHOW ENGINE engine_name {STATUS | MUTEX}\n\nSHOW ENGINE displays operational information about a storage engine.\nThe following statements currently are supported:\n\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE INNODB MUTEX\nSHOW ENGINE PERFORMANCE_SCHEMA STATUS\n\nSHOW ENGINE INNODB STATUS displays extensive information from the\nstandard InnoDB Monitor about the state of the InnoDB storage engine.\nFor information about the standard monitor and other InnoDB Monitors\nthat provide information about InnoDB processing, see\nhttp://dev.mysql.com/doc/refman/5.6/en/innodb-monitors.html.\n\nSHOW ENGINE INNODB MUTEX displays InnoDB mutex statistics. The\nstatement displays the following fields:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  The source file where the mutex is implemented, and the line number\n  in the file where the mutex is created. The line number may change\n  depending on your version of MySQL.\n\no Status\n\n  The mutex status. This field displays several values if UNIV_DEBUG\n  was defined at MySQL compilation time (for example, in include/univ.i\n  in the InnoDB part of the MySQL source tree). If UNIV_DEBUG was not\n  defined, the statement displays only the os_waits value. In the\n  latter case (without UNIV_DEBUG), the information on which the output\n  is based is insufficient to distinguish regular mutexes and mutexes\n  that protect rw-locks (which permit multiple readers or a single\n  writer). Consequently, the output may appear to contain multiple rows\n  for the same mutex.\n\n  o count indicates how many times the mutex was requested.\n\n  o spin_waits indicates how many times the spinlock had to run.\n\n  o spin_rounds indicates the number of spinlock rounds. (spin_rounds\n    divided by spin_waits provides the average round count.)\n\n  o os_waits indicates the number of operating system waits. This\n    occurs when the spinlock did not work (the mutex was not locked\n    during the spinlock and it was necessary to yield to the operating\n    system and wait).\n\n  o os_yields indicates the number of times a the thread trying to lock\n    a mutex gave up its timeslice and yielded to the operating system\n    (on the presumption that permitting other threads to run will free\n    the mutex so that it can be locked).\n\n  o os_wait_times indicates the amount of time (in ms) spent in\n    operating system waits, if the timed_mutexes system variable is 1\n    (ON). If timed_mutexes is 0 (OFF), timing is disabled, so\n    os_wait_times is 0. timed_mutexes is off by default.\n\nInformation from this statement can be used to diagnose system\nproblems. For example, large values of spin_waits and spin_rounds may\nindicate scalability problems.\n\nUse SHOW ENGINE PERFORMANCE_SCHEMA STATUS to inspect the internal\noperation of the Performance Schema code:\n\nmysql> SHOW ENGINE PERFORMANCE_SCHEMA STATUS\\G\n...\n*************************** 3. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.row_size\nStatus: 76\n*************************** 4. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.row_count\nStatus: 10000\n*************************** 5. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.memory\nStatus: 760000\n...\n*************************** 57. row ***************************\n  Type: performance_schema\n  Name: performance_schema.memory\nStatus: 26459600\n...\n\nThis statement is intended to help the DBA understand the effects that\ndifferent Performance Schema options have on memory requirements.\n\nName values consist of two parts, which name an internal buffer and a\nbuffer attribute, respectively. Interpret buffer names as follows:\n\no An internal buffer that is not exposed as a table is named within\n  parentheses. Examples: (pfs_cond_class).row_size,\n  (pfs_mutex_class).memory.\n\no An internal buffer that is exposed as a table in the\n  performance_schema database is named after the table, without\n  parentheses. Examples: events_waits_history.row_size,\n  mutex_instances.row_count.\n\no A value that applies to the Performance Schema as a whole begins with\n  performance_schema. Example: performance_schema.memory.\n\nBuffer attributes have these meanings:\n\no row_size is the size of the internal record used by the\n  implementation, such as the size of a row in a table. row_size values\n  cannot be changed.\n\no row_count is the number of internal records, such as the number of\n  rows in a table. row_count values can be changed using Performance\n  Schema configuration options.\n\no For a table, tbl_name.memory is the product of row_size and\n  row_count. For the Performance Schema as a whole,\n  performance_schema.memory is the sum of all the memory used (the sum\n  of all other memory values).\n\nIn some cases, there is a direct relationship between a Performance\nSchema configuration parameter and a SHOW ENGINE value. For example,\nevents_waits_history_long.row_count corresponds to\nperformance_schema_events_waits_history_long_size. In other cases, the\nrelationship is more complex. For example,\nevents_waits_history.row_count corresponds to\nperformance_schema_events_waits_history_size (the number of rows per\nthread) multiplied by performance_schema_max_thread_instances ( the\nnumber of threads).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-engine.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-engine.html'),
(449, 'RELEASE_LOCK', 14, 'Syntax:\nRELEASE_LOCK(str)\n\nReleases the lock named by the string str that was obtained with\nGET_LOCK(). Returns 1 if the lock was released, 0 if the lock was not\nestablished by this thread (in which case the lock is not released),\nand NULL if the named lock did not exist. The lock does not exist if it\nwas never obtained by a call to GET_LOCK() or if it has previously been\nreleased.\n\nThe DO statement is convenient to use with RELEASE_LOCK(). See [HELP\nDO].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(450, 'WEEKDAY', 32, 'Syntax:\nWEEKDAY(date)\n\nReturns the weekday index for date (0 = Monday, 1 = Tuesday, ... 6 =\nSunday).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEKDAY(\'2008-02-03 22:23:00\');\n        -> 6\nmysql> SELECT WEEKDAY(\'2007-11-06\');\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(451, 'TIME_TO_SEC', 32, 'Syntax:\nTIME_TO_SEC(time)\n\nReturns the time argument, converted to seconds.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME_TO_SEC(\'22:23:00\');\n        -> 80580\nmysql> SELECT TIME_TO_SEC(\'00:39:38\');\n        -> 2378\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(452, 'CONVERT_TZ', 32, 'Syntax:\nCONVERT_TZ(dt,from_tz,to_tz)\n\nCONVERT_TZ() converts a datetime value dt from the time zone given by\nfrom_tz to the time zone given by to_tz and returns the resulting\nvalue. Time zones are specified as described in\nhttp://dev.mysql.com/doc/refman/5.6/en/time-zone-support.html. This\nfunction returns NULL if the arguments are invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT CONVERT_TZ(\'2004-01-01 12:00:00\',\'GMT\',\'MET\');\n        -> \'2004-01-01 13:00:00\'\nmysql> SELECT CONVERT_TZ(\'2004-01-01 12:00:00\',\'+00:00\',\'+10:00\');\n        -> \'2004-01-01 22:00:00\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(453, 'EXPORT_SET', 38, 'Syntax:\nEXPORT_SET(bits,on,off[,separator[,number_of_bits]])\n\nReturns a string such that for every bit set in the value bits, you get\nan on string and for every bit not set in the value, you get an off\nstring. Bits in bits are examined from right to left (from low-order to\nhigh-order bits). Strings are added to the result from left to right,\nseparated by the separator string (the default being the comma\ncharacter \",\"). The number of bits examined is given by number_of_bits,\nwhich has a default of 64 if not specified. number_of_bits is silently\nclipped to 64 if larger than 64. It is treated as an unsigned integer,\nso a value of -1 is effectively the same as 64.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT EXPORT_SET(5,\'Y\',\'N\',\',\',4);\n        -> \'Y,N,Y,N\'\nmysql> SELECT EXPORT_SET(6,\'1\',\'0\',\',\',10);\n        -> \'0,1,1,0,0,0,0,0,0,0\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(454, 'CAST', 38, 'Syntax:\nCAST(expr AS type)\n\nThe CAST() function takes an expression of any type and produces a\nresult value of a specified type, similar to CONVERT(). See the\ndescription of CONVERT() for more information.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html'),
(455, 'SOUNDS LIKE', 38, 'Syntax:\nexpr1 SOUNDS LIKE expr2\n\nThis is the same as SOUNDEX(expr1) = SOUNDEX(expr2).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(456, 'PERIOD_DIFF', 32, 'Syntax:\nPERIOD_DIFF(P1,P2)\n\nReturns the number of months between periods P1 and P2. P1 and P2\nshould be in the format YYMM or YYYYMM. Note that the period arguments\nP1 and P2 are not date values.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT PERIOD_DIFF(200802,200703);\n        -> 11\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(457, 'AVG', 16, 'Syntax:\nAVG([DISTINCT] expr)\n\nReturns the average value of expr. The DISTINCT option can be used to\nreturn the average of the distinct values of expr.\n\nAVG() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, AVG(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html'),
(458, 'QUOTE', 38, 'Syntax:\nQUOTE(str)\n\nQuotes a string to produce a result that can be used as a properly\nescaped data value in an SQL statement. The string is returned enclosed\nby single quotation marks and with each instance of backslash (\"\\\"),\nsingle quote (\"\'\"), ASCII NUL, and Control+Z preceded by a backslash.\nIf the argument is NULL, the return value is the word \"NULL\" without\nenclosing single quotation marks.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT QUOTE(\'Don\\\'t!\');\n        -> \'Don\\\'t!\'\nmysql> SELECT QUOTE(NULL);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(459, 'IN', 19, 'Syntax:\nexpr IN (value,...)\n\nReturns 1 if expr is equal to any of the values in the IN list, else\nreturns 0. If all values are constants, they are evaluated according to\nthe type of expr and sorted. The search for the item then is done using\na binary search. This means IN is very quick if the IN value list\nconsists entirely of constants. Otherwise, type conversion takes place\naccording to the rules described in\nhttp://dev.mysql.com/doc/refman/5.6/en/type-conversion.html, but\napplied to all the arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 2 IN (0,3,5,7);\n        -> 0\nmysql> SELECT \'wefwf\' IN (\'wee\',\'wefwf\',\'weg\');\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(460, 'QUARTER', 32, 'Syntax:\nQUARTER(date)\n\nReturns the quarter of the year for date, in the range 1 to 4.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT QUARTER(\'2008-04-01\');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(461, 'HELP COMMAND', 27, 'Syntax:\nmysql> help search_string\n\nIf you provide an argument to the help command, mysql uses it as a\nsearch string to access server-side help from the contents of the MySQL\nReference Manual. The proper operation of this command requires that\nthe help tables in the mysql database be initialized with help topic\ninformation (see\nhttp://dev.mysql.com/doc/refman/5.6/en/server-side-help-support.html).\n\nIf there is no match for the search string, the search fails:\n\nmysql> help me\n\nNothing found\nPlease try to run \'help contents\' for a list of all accessible topics\n\nUse help contents to see a list of the help categories:\n\nmysql> help contents\nYou asked for help about help category: \"Contents\"\nFor more information, type \'help <item>\', where <item> is one of the\nfollowing categories:\n   Account Management\n   Administration\n   Data Definition\n   Data Manipulation\n   Data Types\n   Functions\n   Functions and Modifiers for Use with GROUP BY\n   Geographic Features\n   Language Structure\n   Plugins\n   Storage Engines\n   Stored Routines\n   Table Maintenance\n   Transactions\n   Triggers\n\nIf the search string matches multiple items, mysql shows a list of\nmatching topics:\n\nmysql> help logs\nMany help items for your request exist.\nTo make a more specific request, please type \'help <item>\',\nwhere <item> is one of the following topics:\n   SHOW\n   SHOW BINARY LOGS\n   SHOW ENGINE\n   SHOW LOGS\n\nUse a topic as the search string to see the help entry for that topic:\n\nmysql> help show binary logs\nName: \'SHOW BINARY LOGS\'\nDescription:\nSyntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [purge-binary-logs], that shows how\nto determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nThe search string can contain the the wildcard characters \"%\" and \"_\".\nThese have the same meaning as for pattern-matching operations\nperformed with the LIKE operator. For example, HELP rep% returns a list\nof topics that begin with rep:\n\nmysql> HELP rep%\nMany help items for your request exist.\nTo make a more specific request, please type \'help <item>\',\nwhere <item> is one of the following\ntopics:\n   REPAIR TABLE\n   REPEAT FUNCTION\n   REPEAT LOOP\n   REPLACE\n   REPLACE FUNCTION\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mysql-server-side-help.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/mysql-server-side-help.html'),
(462, 'POSITION', 38, 'Syntax:\nPOSITION(substr IN str)\n\nPOSITION(substr IN str) is a synonym for LOCATE(substr,str).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(463, 'IS_USED_LOCK', 14, 'Syntax:\nIS_USED_LOCK(str)\n\nChecks whether the lock named str is in use (that is, locked). If so,\nit returns the connection identifier of the client that holds the lock.\nOtherwise, it returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(464, 'POLYFROMTEXT', 3, 'PolyFromText(wkt[,srid]), PolygonFromText(wkt[,srid])\n\nConstructs a POLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(465, 'DES_ENCRYPT', 12, 'Syntax:\nDES_ENCRYPT(str[,{key_num|key_str}])\n\nEncrypts the string with the given key using the Triple-DES algorithm.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.6/en/ssl-connections.html.\n\nThe encryption key to use is chosen based on the second argument to\nDES_ENCRYPT(), if one was given. With no argument, the first key from\nthe DES key file is used. With a key_num argument, the given key number\n(0 to 9) from the DES key file is used. With a key_str argument, the\ngiven key string is used to encrypt str.\n\nThe key file can be specified with the --des-key-file server option.\n\nThe return string is a binary string where the first character is\nCHAR(128 | key_num). If an error occurs, DES_ENCRYPT() returns NULL.\n\nThe 128 is added to make it easier to recognize an encrypted key. If\nyou use a string key, key_num is 127.\n\nThe string length for the result is given by this formula:\n\nnew_len = orig_len + (8 - (orig_len % 8)) + 1\n\nEach line in the DES key file has the following format:\n\nkey_num des_key_str\n\nEach key_num value must be a number in the range from 0 to 9. Lines in\nthe file may be in any order. des_key_str is the string that is used to\nencrypt the message. There should be at least one space between the\nnumber and the key. The first key is the default key that is used if\nyou do not specify any key argument to DES_ENCRYPT().\n\nYou can tell MySQL to read new key values from the key file with the\nFLUSH DES_KEY_FILE statement. This requires the RELOAD privilege.\n\nOne benefit of having a set of default keys is that it gives\napplications a way to check for the existence of encrypted column\nvalues, without giving the end user the right to decrypt those values.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', 'mysql> SELECT customer_address FROM customer_table \n     > WHERE crypted_credit_card = DES_ENCRYPT(\'credit_card_number\');\n', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(466, 'ALTER USER', 10, 'Syntax:\nALTER USER user_specification\n    [, user_specification] ...\n\nuser_specification:\n    user PASSWORD EXPIRE\n\nThe ALTER USER statement alters MySQL accounts. To use it, you must\nhave the global CREATE USER privilege or the INSERT privilege for the\nmysql database. This statement was added in MySQL 5.6.6.\n\nFor each account, ALTER USER expires its password. For example:\n\nALTER USER \'jeffrey\'@\'localhost\' PASSWORD EXPIRE;\n\nThe account name uses the format described in\nhttp://dev.mysql.com/doc/refman/5.6/en/account-names.html. If you\nspecify only the user name part of the account name, a host name part\nof \'%\' is used.\n\nPassword expiration for an account affects the corresponding row of the\nmysql.user table: The server sets the password_expired column to \'Y\'.\n\n*Warning*: In MySQL 5.6.6, ALTER USER also sets the Password column to\nthe empty string, so do not use this statement until 5.6.7.\n\nAfter an account\'s password has been expired, all operations performed\nin subsequent connections to the server using the account result in an\nerror until the user issues a SET PASSWORD statement to establish a new\naccount password:\n\nmysql> SELECT 1;\nERROR 1820 (HY000): You must SET PASSWORD before executing this statement\n\nmysql> SET PASSWORD = PASSWORD(\'new_password\');\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SELECT 1;\n+---+\n| 1 |\n+---+\n| 1 |\n+---+\n1 row in set (0.00 sec)\n\nAs of MySQL 5.6.8, this restricted mode of operation also permits SET\nstatements, which is useful if the account password uses a hashing\nformat that requires old_passwords to be set to a value different from\nits default.\n\nIt is also possible for an administrative user to reset the account\npassword, but any existing connections for the account remain under\nrestriction. Clients using the account must disconnect and reconnect\nbefore statements can be executed successfully.\n\nIt is possible after password expiration to \"reset\" a password by using\nSET PASSWORD to set it to its current value. As a matter of good\npolicy, it is preferable to choose a different password.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/alter-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/alter-user.html'),
(467, 'CEIL', 4, 'Syntax:\nCEIL(X)\n\nCEIL() is a synonym for CEILING().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(468, 'WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS', 17, 'Syntax:\nWAIT_UNTIL_SQL_THREAD_AFTER_GTIDS(gtid_set[, timeout])\n\nWait until the slave SQL thread has executed all of the transactions\nwhose global transaction identifiers are contained in gtid_set (see\nhttp://dev.mysql.com/doc/refman/5.6/en/replication-gtids-concepts.html,\nfor a definition of \"GTID sets\"), or until timeout seconds have\nelapsed, whichever occurs first. timeout is optional; the default\ntimeout is 0 seconds, in which case the master simply waits until all\nof the transactions in the GTID set have been executed.\n\nPrior to MySQL 5.6.9, WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS() was named\nSQL_THREAD_WAIT_AFTER_GTIDS(). (Bug #14775984)\n\nFor more information, see\nhttp://dev.mysql.com/doc/refman/5.6/en/replication-gtids.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html\n\n', 'mysql> SELECT WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS(\'3E11FA47-71CA-11E1-9E33-C80AA9429562:1-5\');\n        -> 5\n', 'http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html'),
(469, 'LENGTH', 38, 'Syntax:\nLENGTH(str)\n\nReturns the length of the string str, measured in bytes. A multi-byte\ncharacter counts as multiple bytes. This means that for a string\ncontaining five 2-byte characters, LENGTH() returns 10, whereas\nCHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT LENGTH(\'text\');\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(470, 'WEIGHT_STRING', 38, 'Syntax:\nWEIGHT_STRING(str [AS {CHAR|BINARY}(N)] [LEVEL levels] [flags])\n\nlevels: N [ASC|DESC|REVERSE] [, N [ASC|DESC|REVERSE]] ...\n\nThis function returns the weight string for the input string. The\nreturn value is a binary string that represents the sorting and\ncomparison value of the string. It has these properties:\n\no If WEIGHT_STRING(str1) = WEIGHT_STRING(str2), then str1 = str2 (str1\n  and str2 are considered equal)\n\no If WEIGHT_STRING(str1) < WEIGHT_STRING(str2), then str1 < str2 (str1\n  sorts before str2)\n\nWEIGHT_STRING() can be used for testing and debugging of collations,\nespecially if you are adding a new collation. See\nhttp://dev.mysql.com/doc/refman/5.6/en/adding-collation.html.\n\nThe input string, str, is a string expression. If the input is a\nnonbinary (character) string such as a CHAR, VARCHAR, or TEXT value,\nthe return value contains the collation weights for the string. If the\ninput is a binary (byte) string such as a BINARY, VARBINARY, or BLOB\nvalue, the return value is the same as the input (the weight for each\nbyte in a binary string is the byte value). If the input is NULL,\nWEIGHT_STRING() returns NULL.\n\nExamples:\n\nmysql> SET @s = _latin1 \'AB\' COLLATE latin1_swedish_ci;\nmysql> SELECT @s, HEX(@s), HEX(WEIGHT_STRING(@s));\n+------+---------+------------------------+\n| @s   | HEX(@s) | HEX(WEIGHT_STRING(@s)) |\n+------+---------+------------------------+\n| AB   | 4142    | 4142                   |\n+------+---------+------------------------+\n\nmysql> SET @s = _latin1 \'ab\' COLLATE latin1_swedish_ci;\nmysql> SELECT @s, HEX(@s), HEX(WEIGHT_STRING(@s));\n+------+---------+------------------------+\n| @s   | HEX(@s) | HEX(WEIGHT_STRING(@s)) |\n+------+---------+------------------------+\n| ab   | 6162    | 4142                   |\n+------+---------+------------------------+\n\nmysql> SET @s = CAST(\'AB\' AS BINARY);\nmysql> SELECT @s, HEX(@s), HEX(WEIGHT_STRING(@s));\n+------+---------+------------------------+\n| @s   | HEX(@s) | HEX(WEIGHT_STRING(@s)) |\n+------+---------+------------------------+\n| AB   | 4142    | 4142                   |\n+------+---------+------------------------+\n\nmysql> SET @s = CAST(\'ab\' AS BINARY);\nmysql> SELECT @s, HEX(@s), HEX(WEIGHT_STRING(@s));\n+------+---------+------------------------+\n| @s   | HEX(@s) | HEX(WEIGHT_STRING(@s)) |\n+------+---------+------------------------+\n| ab   | 6162    | 6162                   |\n+------+---------+------------------------+\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(471, 'ST_EQUALS', 31, 'ST_Equals(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially equal to g2.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(472, 'ALTER EVENT', 40, 'Syntax:\nALTER\n    [DEFINER = { user | CURRENT_USER }]\n    EVENT event_name\n    [ON SCHEDULE schedule]\n    [ON COMPLETION [NOT] PRESERVE]\n    [RENAME TO new_event_name]\n    [ENABLE | DISABLE | DISABLE ON SLAVE]\n    [COMMENT \'comment\']\n    [DO event_body]\n\nThe ALTER EVENT statement changes one or more of the characteristics of\nan existing event without the need to drop and recreate it. The syntax\nfor each of the DEFINER, ON SCHEDULE, ON COMPLETION, COMMENT, ENABLE /\nDISABLE, and DO clauses is exactly the same as when used with CREATE\nEVENT. (See [HELP CREATE EVENT].)\n\nAny user can alter an event defined on a database for which that user\nhas the EVENT privilege. When a user executes a successful ALTER EVENT\nstatement, that user becomes the definer for the affected event.\n\nALTER EVENT works only with an existing event:\n\nmysql> ALTER EVENT no_such_event \n     >     ON SCHEDULE \n     >       EVERY \'2:3\' DAY_HOUR;\nERROR 1517 (HY000): Unknown event \'no_such_event\'\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/alter-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/alter-event.html'),
(473, 'DATE_SUB', 32, 'Syntax:\nDATE_SUB(date,INTERVAL expr unit)\n\nSee the description for DATE_ADD().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(474, '|', 20, 'Syntax:\n|\n\nBitwise OR:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html\n\n', 'mysql> SELECT 29 | 15;\n        -> 31\n', 'http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html'),
(475, 'UUID_SHORT', 14, 'Syntax:\nUUID_SHORT()\n\nReturns a \"short\" universal identifier as a 64-bit unsigned integer\n(rather than a string-form 128-bit identifier as returned by the UUID()\nfunction).\n\nThe value of UUID_SHORT() is guaranteed to be unique if the following\nconditions hold:\n\no The server_id of the current host is unique among your set of master\n  and slave servers\n\no server_id is between 0 and 255\n\no You do not set back your system time for your server between mysqld\n  restarts\n\no You do not invoke UUID_SHORT() on average more than 16 million times\n  per second between mysqld restarts\n\nThe UUID_SHORT() return value is constructed this way:\n\n  (server_id & 255) << 56\n+ (server_startup_time_in_seconds << 24)\n+ incremented_variable++;\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> SELECT UUID_SHORT();\n        -> 92395783831158784\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(476, 'GEOMFROMTEXT', 3, 'GeomFromText(wkt[,srid]), GeometryFromText(wkt[,srid])\n\nConstructs a geometry value of any type using its WKT representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(477, 'DATEDIFF', 32, 'Syntax:\nDATEDIFF(expr1,expr2)\n\nDATEDIFF() returns expr1 - expr2 expressed as a value in days from one\ndate to the other. expr1 and expr2 are date or date-and-time\nexpressions. Only the date parts of the values are used in the\ncalculation.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATEDIFF(\'2007-12-31 23:59:59\',\'2007-12-30\');\n        -> 1\nmysql> SELECT DATEDIFF(\'2010-11-30 23:59:59\',\'2010-12-31\');\n        -> -31\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(478, 'DROP PROCEDURE', 40, 'Syntax:\nDROP {PROCEDURE | FUNCTION} [IF EXISTS] sp_name\n\nThis statement is used to drop a stored procedure or function. That is,\nthe specified routine is removed from the server. You must have the\nALTER ROUTINE privilege for the routine. (If the\nautomatic_sp_privileges system variable is enabled, that privilege and\nEXECUTE are granted automatically to the routine creator when the\nroutine is created and dropped from the creator when the routine is\ndropped. See\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-routines-privileges.html.\n)\n\nThe IF EXISTS clause is a MySQL extension. It prevents an error from\noccurring if the procedure or function does not exist. A warning is\nproduced that can be viewed with SHOW WARNINGS.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/drop-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/drop-procedure.html'),
(479, 'INSTALL PLUGIN', 5, 'Syntax:\nINSTALL PLUGIN plugin_name SONAME \'shared_library_name\'\n\nThis statement installs a server plugin. It requires the INSERT\nprivilege for the mysql.plugin table.\n\nplugin_name is the name of the plugin as defined in the plugin\ndescriptor structure contained in the library file (see\nhttp://dev.mysql.com/doc/refman/5.6/en/plugin-data-structures.html).\nPlugin names are not case sensitive. For maximal compatibility, plugin\nnames should be limited to ASCII letters, digits, and underscore\nbecause they are used in C source files, shell command lines, M4 and\nBourne shell scripts, and SQL environments.\n\nshared_library_name is the name of the shared library that contains the\nplugin code. The name includes the file name extension (for example,\nlibmyplugin.so, libmyplugin.dll, or libmyplugin.dylib).\n\nThe shared library must be located in the plugin directory (the\ndirectory named by the plugin_dir system variable). The library must be\nin the plugin directory itself, not in a subdirectory. By default,\nplugin_dir is the plugin directory under the directory named by the\npkglibdir configuration variable, but it can be changed by setting the\nvalue of plugin_dir at server startup. For example, set its value in a\nmy.cnf file:\n\n[mysqld]\nplugin_dir=/path/to/plugin/directory\n\nIf the value of plugin_dir is a relative path name, it is taken to be\nrelative to the MySQL base directory (the value of the basedir system\nvariable).\n\nINSTALL PLUGIN loads and initializes the plugin code to make the plugin\navailable for use. A plugin is initialized by executing its\ninitialization function, which handles any setup that the plugin must\nperform before it can be used. When the server shuts down, it executes\nthe deinitialization function for each plugin that is loaded so that\nthe plugin has a change to perform any final cleanup.\n\nINSTALL PLUGIN also registers the plugin by adding a line that\nindicates the plugin name and library file name to the mysql.plugin\ntable. At server startup, the server loads and initializes any plugin\nthat is listed in the mysql.plugin table. This means that a plugin is\ninstalled with INSTALL PLUGIN only once, not every time the server\nstarts. Plugin loading at startup does not occur if the server is\nstarted with the --skip-grant-tables option.\n\nA plugin library can contain multiple plugins. For each of them to be\ninstalled, use a separate INSTALL PLUGIN statement. Each statement\nnames a different plugin, but all of them specify the same library\nname.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/install-plugin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/install-plugin.html'),
(480, 'LOAD DATA', 28, 'Syntax:\nLOAD DATA [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE \'file_name\'\n    [REPLACE | IGNORE]\n    INTO TABLE tbl_name\n    [PARTITION (partition_name,...)]\n    [CHARACTER SET charset_name]\n    [{FIELDS | COLUMNS}\n        [TERMINATED BY \'string\']\n        [[OPTIONALLY] ENCLOSED BY \'char\']\n        [ESCAPED BY \'char\']\n    ]\n    [LINES\n        [STARTING BY \'string\']\n        [TERMINATED BY \'string\']\n    ]\n    [IGNORE number {LINES | ROWS}]\n    [(col_name_or_user_var,...)]\n    [SET col_name = expr,...]\n\nThe LOAD DATA INFILE statement reads rows from a text file into a table\nat a very high speed. The file name must be given as a literal string.\n\nLOAD DATA INFILE is the complement of SELECT ... INTO OUTFILE. (See\nhttp://dev.mysql.com/doc/refman/5.6/en/select-into.html.) To write data\nfrom a table to a file, use SELECT ... INTO OUTFILE. To read the file\nback into a table, use LOAD DATA INFILE. The syntax of the FIELDS and\nLINES clauses is the same for both statements. Both clauses are\noptional, but FIELDS must precede LINES if both are specified.\n\nFor more information about the efficiency of INSERT versus LOAD DATA\nINFILE and speeding up LOAD DATA INFILE, see\nhttp://dev.mysql.com/doc/refman/5.6/en/insert-speed.html.\n\nThe character set indicated by the character_set_database system\nvariable is used to interpret the information in the file. SET NAMES\nand the setting of character_set_client do not affect interpretation of\ninput. If the contents of the input file use a character set that\ndiffers from the default, it is usually preferable to specify the\ncharacter set of the file by using the CHARACTER SET clause. A\ncharacter set of binary specifies \"no conversion.\"\n\nLOAD DATA INFILE interprets all fields in the file as having the same\ncharacter set, regardless of the data types of the columns into which\nfield values are loaded. For proper interpretation of file contents,\nyou must ensure that it was written with the correct character set. For\nexample, if you write a data file with mysqldump -T or by issuing a\nSELECT ... INTO OUTFILE statement in mysql, be sure to use a\n--default-character-set option with mysqldump or mysql so that output\nis written in the character set to be used when the file is loaded with\nLOAD DATA INFILE.\n\n*Note*: It is not possible to load data files that use the ucs2, utf16,\nutf16le, or utf32 character set.\n\nThe character_set_filesystem system variable controls the\ninterpretation of the file name.\n\nYou can also load data files by using the mysqlimport utility; it\noperates by sending a LOAD DATA INFILE statement to the server. The\n--local option causes mysqlimport to read data files from the client\nhost. You can specify the --compress option to get better performance\nover slow networks if the client and server support the compressed\nprotocol. See http://dev.mysql.com/doc/refman/5.6/en/mysqlimport.html.\n\nIf you use LOW_PRIORITY, execution of the LOAD DATA statement is\ndelayed until no other clients are reading from the table. This affects\nonly storage engines that use only table-level locking (such as MyISAM,\nMEMORY, and MERGE).\n\nIf you specify CONCURRENT with a MyISAM table that satisfies the\ncondition for concurrent inserts (that is, it contains no free blocks\nin the middle), other threads can retrieve data from the table while\nLOAD DATA is executing. Using this option affects the performance of\nLOAD DATA a bit, even if no other thread is using the table at the same\ntime.\n\nPrior to MySQL 5.5.1, CONCURRENT was not replicated when using\nstatement-based replication (see Bug #34628). However, it is replicated\nwhen using row-based replication, regardless of the version. See\nhttp://dev.mysql.com/doc/refman/5.6/en/replication-features-load-data.h\ntml, for more information.\n\nThe LOCAL keyword, if specified, is interpreted with respect to the\nclient end of the connection:\n\no If LOCAL is specified, the file is read by the client program on the\n  client host and sent to the server. The file can be given as a full\n  path name to specify its exact location. If given as a relative path\n  name, the name is interpreted relative to the directory in which the\n  client program was started.\n\n  When using LOCAL with LOAD DATA, a copy of the file is created in the\n  server\'s temporary directory. This is not the directory determined by\n  the value of tmpdir or slave_load_tmpdir, but rather the operating\n  system\'s temporary directory, and is not configurable in the MySQL\n  Server. (Typically the system temporary directory is /tmp on Linux\n  systems and C:\\WINDOWS\\TEMP on Windows.) Lack of sufficient space for\n  the copy in this directory can cause the LOAD DATA LOCAL statement to\n  fail.\n\no If LOCAL is not specified, the file must be located on the server\n  host and is read directly by the server. The server uses the\n  following rules to locate the file:\n\n  o If the file name is an absolute path name, the server uses it as\n    given.\n\n  o If the file name is a relative path name with one or more leading\n    components, the server searches for the file relative to the\n    server\'s data directory.\n\n  o If a file name with no leading components is given, the server\n    looks for the file in the database directory of the default\n    database.\n\nNote that, in the non-LOCAL case, these rules mean that a file named as\n./myfile.txt is read from the server\'s data directory, whereas the file\nnamed as myfile.txt is read from the database directory of the default\ndatabase. For example, if db1 is the default database, the following\nLOAD DATA statement reads the file data.txt from the database directory\nfor db1, even though the statement explicitly loads the file into a\ntable in the db2 database:\n\nLOAD DATA INFILE \'data.txt\' INTO TABLE db2.my_table;\n\nWindows path names are specified using forward slashes rather than\nbackslashes. If you do use backslashes, you must double them.\n\nIn MySQL 5.6.2 and later, LOAD DATA supports explicit partition\nselection using the PARTITION option with a comma-separated list of\nmore or more names of partitions, subpartitions, or both. When this\noption is used, if any rows from the file cannot be inserted into any\nof the partitions or subpartitions named in the list, the statement\nfails with the error Found a row not matching the given partition set.\nFor more information, see\nhttp://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html.\n\nFor security reasons, when reading text files located on the server,\nthe files must either reside in the database directory or be readable\nby all. Also, to use LOAD DATA INFILE on server files, you must have\nthe FILE privilege. See\nhttp://dev.mysql.com/doc/refman/5.6/en/privileges-provided.html. For\nnon-LOCAL load operations, if the secure_file_priv system variable is\nset to a nonempty directory name, the file to be loaded must be located\nin that directory.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/load-data.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/load-data.html'),
(481, 'DECLARE CURSOR', 24, 'Syntax:\nDECLARE cursor_name CURSOR FOR select_statement\n\nThis statement declares a cursor and associates it with a SELECT\nstatement that retrieves the rows to be traversed by the cursor. To\nfetch the rows later, use a FETCH statement. The number of columns\nretrieved by the SELECT statement must match the number of output\nvariables specified in the FETCH statement.\n\nThe SELECT statement cannot have an INTO clause.\n\nCursor declarations must appear before handler declarations and after\nvariable and condition declarations.\n\nA stored program may contain multiple cursor declarations, but each\ncursor declared in a given block must have a unique name. For an\nexample, see http://dev.mysql.com/doc/refman/5.6/en/cursors.html.\n\nFor information available through SHOW statements, it is possible in\nmany cases to obtain equivalent information by using a cursor with an\nINFORMATION_SCHEMA table.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/declare-cursor.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/declare-cursor.html'),
(482, 'LOCALTIME', 32, 'Syntax:\nLOCALTIME, LOCALTIME([fsp])\n\nLOCALTIME and LOCALTIME() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(483, 'SHA1', 12, 'Syntax:\nSHA1(str), SHA(str)\n\nCalculates an SHA-1 160-bit checksum for the string, as described in\nRFC 3174 (Secure Hash Algorithm). The value is returned as a string of\n40 hex digits, or NULL if the argument was NULL. One of the possible\nuses for this function is as a hash key. See the notes at the beginning\nof this section about storing hash values efficiently. You can also use\nSHA1() as a cryptographic function for storing passwords. SHA() is\nsynonymous with SHA1().\n\nThe return value is a nonbinary string in the connection character set.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', 'mysql> SELECT SHA1(\'abc\');\n        -> \'a9993e364706816aba3e25717850c26c9cd0d89d\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(484, 'BLOB', 23, 'BLOB[(M)]\n\nA BLOB column with a maximum length of 65,535 (216 - 1) bytes. Each\nBLOB value is stored using a 2-byte length prefix that indicates the\nnumber of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest BLOB type large enough to hold\nvalues M bytes long.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(485, 'PASSWORD', 12, 'Syntax:\nPASSWORD(str)\n\nCalculates and returns a hashed password string from the cleartext\npassword str and returns a nonbinary string in the connection character\nset, or NULL if the argument is NULL. This function is the SQL\ninterface to the algorithm used by the server to encrypt MySQL\npasswords for storage in the mysql.user grant table.\n\nThe password hashing method used by PASSWORD() depends on the value of\nthe old_passwords system variable:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', 'mysql> SET old_passwords = 0;\nmysql> SELECT PASSWORD(\'mypass\');\n+-------------------------------------------+\n| PASSWORD(\'mypass\')                        |\n+-------------------------------------------+\n| *6C8989366EAF75BB670AD8EA7A7FC1176A95CEF4 |\n+-------------------------------------------+\n\nmysql> SET old_passwords = 1;\nmysql> SELECT PASSWORD(\'mypass\');\n+--------------------+\n| PASSWORD(\'mypass\') |\n+--------------------+\n| 6f8c114b58f2ce9e   |\n+--------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(486, 'UTC_DATE', 32, 'Syntax:\nUTC_DATE, UTC_DATE()\n\nReturns the current UTC date as a value in \'YYYY-MM-DD\' or YYYYMMDD\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_DATE(), UTC_DATE() + 0;\n        -> \'2003-08-14\', 20030814\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(487, 'DIMENSION', 37, 'Dimension(g)\n\nReturns the inherent dimension of the geometry value g. The result can\nbe -1, 0, 1, or 2. The meaning of these values is given in\nhttp://dev.mysql.com/doc/refman/5.6/en/gis-class-geometry.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SELECT Dimension(GeomFromText(\'LineString(1 1,2 2)\'));\n+------------------------------------------------+\n| Dimension(GeomFromText(\'LineString(1 1,2 2)\')) |\n+------------------------------------------------+\n|                                              1 |\n+------------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html'),
(488, 'BIT', 23, 'BIT[(M)]\n\nA bit-field type. M indicates the number of bits per value, from 1 to\n64. The default is 1 if M is omitted.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html'),
(489, 'EQUALS', 31, 'Equals(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially equal to g2.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html'),
(490, 'XA', 8, 'Syntax:\nXA {START|BEGIN} xid [JOIN|RESUME]\n\nXA END xid [SUSPEND [FOR MIGRATE]]\n\nXA PREPARE xid\n\nXA COMMIT xid [ONE PHASE]\n\nXA ROLLBACK xid\n\nXA RECOVER\n\nFor XA START, the JOIN and RESUME clauses are not supported.\n\nFor XA END the SUSPEND [FOR MIGRATE] clause is not supported.\n\nEach XA statement begins with the XA keyword, and most of them require\nan xid value. An xid is an XA transaction identifier. It indicates\nwhich transaction the statement applies to. xid values are supplied by\nthe client, or generated by the MySQL server. An xid value has from one\nto three parts:\n\nxid: gtrid [, bqual [, formatID ]]\n\ngtrid is a global transaction identifier, bqual is a branch qualifier,\nand formatID is a number that identifies the format used by the gtrid\nand bqual values. As indicated by the syntax, bqual and formatID are\noptional. The default bqual value is \'\' if not given. The default\nformatID value is 1 if not given.\n\ngtrid and bqual must be string literals, each up to 64 bytes (not\ncharacters) long. gtrid and bqual can be specified in several ways. You\ncan use a quoted string (\'ab\'), hex string (0x6162, X\'ab\'), or bit\nvalue (b\'nnnn\').\n\nformatID is an unsigned integer.\n\nThe gtrid and bqual values are interpreted in bytes by the MySQL\nserver\'s underlying XA support routines. However, while an SQL\nstatement containing an XA statement is being parsed, the server works\nwith some specific character set. To be safe, write gtrid and bqual as\nhex strings.\n\nxid values typically are generated by the Transaction Manager. Values\ngenerated by one TM must be different from values generated by other\nTMs. A given TM must be able to recognize its own xid values in a list\nof values returned by the XA RECOVER statement.\n\nXA START xid starts an XA transaction with the given xid value. Each XA\ntransaction must have a unique xid value, so the value must not\ncurrently be used by another XA transaction. Uniqueness is assessed\nusing the gtrid and bqual values. All following XA statements for the\nXA transaction must be specified using the same xid value as that given\nin the XA START statement. If you use any of those statements but\nspecify an xid value that does not correspond to some existing XA\ntransaction, an error occurs.\n\nOne or more XA transactions can be part of the same global transaction.\nAll XA transactions within a given global transaction must use the same\ngtrid value in the xid value. For this reason, gtrid values must be\nglobally unique so that there is no ambiguity about which global\ntransaction a given XA transaction is part of. The bqual part of the\nxid value must be different for each XA transaction within a global\ntransaction. (The requirement that bqual values be different is a\nlimitation of the current MySQL XA implementation. It is not part of\nthe XA specification.)\n\nThe XA RECOVER statement returns information for those XA transactions\non the MySQL server that are in the PREPARED state. (See\nhttp://dev.mysql.com/doc/refman/5.6/en/xa-states.html.) The output\nincludes a row for each such XA transaction on the server, regardless\nof which client started it.\n\nXA RECOVER output rows look like this (for an example xid value\nconsisting of the parts \'abc\', \'def\', and 7):\n\nmysql> XA RECOVER;\n+----------+--------------+--------------+--------+\n| formatID | gtrid_length | bqual_length | data   |\n+----------+--------------+--------------+--------+\n|        7 |            3 |            3 | abcdef |\n+----------+--------------+--------------+--------+\n\nThe output columns have the following meanings:\n\no formatID is the formatID part of the transaction xid\n\no gtrid_length is the length in bytes of the gtrid part of the xid\n\no bqual_length is the length in bytes of the bqual part of the xid\n\no data is the concatenation of the gtrid and bqual parts of the xid\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/xa-statements.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/xa-statements.html'),
(491, 'OCTET_LENGTH', 38, 'Syntax:\nOCTET_LENGTH(str)\n\nOCTET_LENGTH() is a synonym for LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(492, 'UTC_TIMESTAMP', 32, 'Syntax:\nUTC_TIMESTAMP, UTC_TIMESTAMP([fsp])\n\nReturns the current UTC date and time as a value in \'YYYY-MM-DD\nHH:MM:SS\' or YYYYMMDDHHMMSS format, depending on whether the function\nis used in a string or numeric context.\n\nAs of MySQL 5.6.4, if the fsp argument is given to specify a fractional\nseconds precision from 0 to 6, the return value includes a fractional\nseconds part of that many digits. Before 5.6.4, any argument is\nignored.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_TIMESTAMP(), UTC_TIMESTAMP() + 0;\n        -> \'2003-08-14 18:08:04\', 20030814180804.000000\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(493, 'AES_ENCRYPT', 12, 'Syntax:\nAES_ENCRYPT(str,key_str)\n\nAES_ENCRYPT() and AES_DECRYPT() enable encryption and decryption of\ndata using the official AES (Advanced Encryption Standard) algorithm,\npreviously known as \"Rijndael.\" Encoding with a 128-bit key length is\nused, but you can extend it up to 256 bits by modifying the source. We\nchose 128 bits because it is much faster and it is secure enough for\nmost purposes.\n\nAES_ENCRYPT() encrypts a string and returns a binary string.\nAES_DECRYPT() decrypts the encrypted string and returns the original\nstring. The input arguments may be any length. If either argument is\nNULL, the result of this function is also NULL.\n\nBecause AES is a block-level algorithm, padding is used to encode\nuneven length strings and so the result string length may be calculated\nusing this formula:\n\n16 * (trunc(string_length / 16) + 1)\n\nIf AES_DECRYPT() detects invalid data or incorrect padding, it returns\nNULL. However, it is possible for AES_DECRYPT() to return a non-NULL\nvalue (possibly garbage) if the input data or the key is invalid.\n\nYou can use the AES functions to store data in an encrypted form by\nmodifying your queries:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html\n\n', 'INSERT INTO t VALUES (1,AES_ENCRYPT(\'text\',\'password\'));\n', 'http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html'),
(494, '+', 4, 'Syntax:\n+\n\nAddition:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3+5;\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html'),
(495, 'GTID_SUBTRACT', 17, 'Syntax:\nGTID_SUBTRACT(set,subset)\n\nGiven two sets of global transaction IDs subset and set, returns only\nthose GTIDs from set that are not in subset.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html'),
(496, 'INET_NTOA', 14, 'Syntax:\nINET_NTOA(expr)\n\nGiven a numeric IPv4 network address in network byte order, returns the\ndotted-quad string representation of the address as a nonbinary string\nin the connection character set. INET_NTOA() returns NULL if it does\nnot understand its argument.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> SELECT INET_NTOA(167773449);\n        -> \'10.0.5.9\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(497, 'DAYOFWEEK', 32, 'Syntax:\nDAYOFWEEK(date)\n\nReturns the weekday index for date (1 = Sunday, 2 = Monday, ..., 7 =\nSaturday). These index values correspond to the ODBC standard.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFWEEK(\'2007-02-03\');\n        -> 7\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(498, 'CEILING', 4, 'Syntax:\nCEILING(X)\n\nReturns the smallest integer value not less than X.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT CEILING(1.23);\n        -> 2\nmysql> SELECT CEILING(-1.23);\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(499, 'LINEFROMWKB', 33, 'LineFromWKB(wkb[,srid]), LineStringFromWKB(wkb[,srid])\n\nConstructs a LINESTRING value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(500, 'SHOW PROCESSLIST', 27, 'Syntax:\nSHOW [FULL] PROCESSLIST\n\nSHOW PROCESSLIST shows you which threads are running. You can also get\nthis information from the INFORMATION_SCHEMA PROCESSLIST table or the\nmysqladmin processlist command. If you have the PROCESS privilege, you\ncan see all threads. Otherwise, you can see only your own threads (that\nis, threads associated with the MySQL account that you are using). If\nyou do not use the FULL keyword, only the first 100 characters of each\nstatement are shown in the Info field.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-processlist.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-processlist.html'),
(501, 'GEOMETRYTYPE', 37, 'GeometryType(g)\n\nReturns as a binary string the name of the geometry type of which the\ngeometry instance g is a member. The name corresponds to one of the\ninstantiable Geometry subclasses.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html\n\n', 'mysql> SELECT GeometryType(GeomFromText(\'POINT(1 1)\'));\n+------------------------------------------+\n| GeometryType(GeomFromText(\'POINT(1 1)\')) |\n+------------------------------------------+\n| POINT                                    |\n+------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(502, 'CREATE VIEW', 40, 'Syntax:\nCREATE\n    [OR REPLACE]\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThe CREATE VIEW statement creates a new view, or replaces an existing\none if the OR REPLACE clause is given. If the view does not exist,\nCREATE OR REPLACE VIEW is the same as CREATE VIEW. If the view does\nexist, CREATE OR REPLACE VIEW is the same as ALTER VIEW.\n\nThe select_statement is a SELECT statement that provides the definition\nof the view. (When you select from the view, you select in effect using\nthe SELECT statement.) select_statement can select from base tables or\nother views.\n\nThe view definition is \"frozen\" at creation time, so changes to the\nunderlying tables afterward do not affect the view definition. For\nexample, if a view is defined as SELECT * on a table, new columns added\nto the table later do not become part of the view.\n\nThe ALGORITHM clause affects how MySQL processes the view. The DEFINER\nand SQL SECURITY clauses specify the security context to be used when\nchecking access privileges at view invocation time. The WITH CHECK\nOPTION clause can be given to constrain inserts or updates to rows in\ntables referenced by the view. These clauses are described later in\nthis section.\n\nThe CREATE VIEW statement requires the CREATE VIEW privilege for the\nview, and some privilege for each column selected by the SELECT\nstatement. For columns used elsewhere in the SELECT statement you must\nhave the SELECT privilege. If the OR REPLACE clause is present, you\nmust also have the DROP privilege for the view. CREATE VIEW might also\nrequire the SUPER privilege, depending on the DEFINER value, as\ndescribed later in this section.\n\nWhen a view is referenced, privilege checking occurs as described later\nin this section.\n\nA view belongs to a database. By default, a new view is created in the\ndefault database. To create the view explicitly in a given database,\nspecify the name as db_name.view_name when you create it:\n\nmysql> CREATE VIEW test.v AS SELECT * FROM t;\n\nWithin a database, base tables and views share the same namespace, so a\nbase table and a view cannot have the same name.\n\nColumns retrieved by the SELECT statement can be simple references to\ntable columns. They can also be expressions that use functions,\nconstant values, operators, and so forth.\n\nViews must have unique column names with no duplicates, just like base\ntables. By default, the names of the columns retrieved by the SELECT\nstatement are used for the view column names. To define explicit names\nfor the view columns, the optional column_list clause can be given as a\nlist of comma-separated identifiers. The number of names in column_list\nmust be the same as the number of columns retrieved by the SELECT\nstatement.\n\nUnqualified table or view names in the SELECT statement are interpreted\nwith respect to the default database. A view can refer to tables or\nviews in other databases by qualifying the table or view name with the\nproper database name.\n\nA view can be created from many kinds of SELECT statements. It can\nrefer to base tables or other views. It can use joins, UNION, and\nsubqueries. The SELECT need not even refer to any tables. The following\nexample defines a view that selects two columns from another table, as\nwell as an expression calculated from those columns:\n\nmysql> CREATE TABLE t (qty INT, price INT);\nmysql> INSERT INTO t VALUES(3, 50);\nmysql> CREATE VIEW v AS SELECT qty, price, qty*price AS value FROM t;\nmysql> SELECT * FROM v;\n+------+-------+-------+\n| qty  | price | value |\n+------+-------+-------+\n|    3 |    50 |   150 |\n+------+-------+-------+\n\nA view definition is subject to the following restrictions:\n\no The SELECT statement cannot contain a subquery in the FROM clause.\n\no The SELECT statement cannot refer to system or user variables.\n\no Within a stored program, the definition cannot refer to program\n  parameters or local variables.\n\no The SELECT statement cannot refer to prepared statement parameters.\n\no Any table or view referred to in the definition must exist. However,\n  after a view has been created, it is possible to drop a table or view\n  that the definition refers to. In this case, use of the view results\n  in an error. To check a view definition for problems of this kind,\n  use the CHECK TABLE statement.\n\no The definition cannot refer to a TEMPORARY table, and you cannot\n  create a TEMPORARY view.\n\no Any tables named in the view definition must exist at definition\n  time.\n\no You cannot associate a trigger with a view.\n\no Aliases for column names in the SELECT statement are checked against\n  the maximum column length of 64 characters (not the maximum alias\n  length of 256 characters).\n\nORDER BY is permitted in a view definition, but it is ignored if you\nselect from a view using a statement that has its own ORDER BY.\n\nFor other options or clauses in the definition, they are added to the\noptions or clauses of the statement that references the view, but the\neffect is undefined. For example, if a view definition includes a LIMIT\nclause, and you select from the view using a statement that has its own\nLIMIT clause, it is undefined which limit applies. This same principle\napplies to options such as ALL, DISTINCT, or SQL_SMALL_RESULT that\nfollow the SELECT keyword, and to clauses such as INTO, FOR UPDATE,\nLOCK IN SHARE MODE, and PROCEDURE.\n\nIf you create a view and then change the query processing environment\nby changing system variables, that may affect the results that you get\nfrom the view:\n\nmysql> CREATE VIEW v (mycol) AS SELECT \'abc\';\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SET sql_mode = \'\';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT \"mycol\" FROM v;\n+-------+\n| mycol |\n+-------+\n| mycol |\n+-------+\n1 row in set (0.01 sec)\n\nmysql> SET sql_mode = \'ANSI_QUOTES\';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT \"mycol\" FROM v;\n+-------+\n| mycol |\n+-------+\n| abc   |\n+-------+\n1 row in set (0.00 sec)\n\nThe DEFINER and SQL SECURITY clauses determine which MySQL account to\nuse when checking access privileges for the view when a statement is\nexecuted that references the view. The valid SQL SECURITY\ncharacteristic values are DEFINER and INVOKER. These indicate that the\nrequired privileges must be held by the user who defined or invoked the\nview, respectively. The default SQL SECURITY value is DEFINER.\n\nIf a user value is given for the DEFINER clause, it should be a MySQL\naccount specified as \'user_name\'@\'host_name\' (the same format used in\nthe GRANT statement), CURRENT_USER, or CURRENT_USER(). The default\nDEFINER value is the user who executes the CREATE VIEW statement. This\nis the same as specifying DEFINER = CURRENT_USER explicitly.\n\nIf you specify the DEFINER clause, these rules determine the valid\nDEFINER user values:\n\no If you do not have the SUPER privilege, the only valid user value is\n  your own account, either specified literally or by using\n  CURRENT_USER. You cannot set the definer to some other account.\n\no If you have the SUPER privilege, you can specify any syntactically\n  valid account name. If the account does not actually exist, a warning\n  is generated.\n\no Although it is possible to create a view with a nonexistent DEFINER\n  account, an error occurs when the view is referenced if the SQL\n  SECURITY value is DEFINER but the definer account does not exist.\n\nFor more information about view security, see\nhttp://dev.mysql.com/doc/refman/5.6/en/stored-programs-security.html.\n\nWithin a view definition, CURRENT_USER returns the view\'s DEFINER value\nby default. For views defined with the SQL SECURITY INVOKER\ncharacteristic, CURRENT_USER returns the account for the view\'s\ninvoker. For information about user auditing within views, see\nhttp://dev.mysql.com/doc/refman/5.6/en/account-activity-auditing.html.\n\nWithin a stored routine that is defined with the SQL SECURITY DEFINER\ncharacteristic, CURRENT_USER returns the routine\'s DEFINER value. This\nalso affects a view defined within such a routine, if the view\ndefinition contains a DEFINER value of CURRENT_USER.\n\nView privileges are checked like this:\n\no At view definition time, the view creator must have the privileges\n  needed to use the top-level objects accessed by the view. For\n  example, if the view definition refers to table columns, the creator\n  must have some privilege for each column in the select list of the\n  definition, and the SELECT privilege for each column used elsewhere\n  in the definition. If the definition refers to a stored function,\n  only the privileges needed to invoke the function can be checked. The\n  privileges required at function invocation time can be checked only\n  as it executes: For different invocations, different execution paths\n  within the function might be taken.\n\no The user who references a view must have appropriate privileges to\n  access it (SELECT to select from it, INSERT to insert into it, and so\n  forth.)\n\no When a view has been referenced, privileges for objects accessed by\n  the view are checked against the privileges held by the view DEFINER\n  account or invoker, depending on whether the SQL SECURITY\n  characteristic is DEFINER or INVOKER, respectively.\n\no If reference to a view causes execution of a stored function,\n  privilege checking for statements executed within the function depend\n  on whether the function SQL SECURITY characteristic is DEFINER or\n  INVOKER. If the security characteristic is DEFINER, the function runs\n  with the privileges of the DEFINER account. If the characteristic is\n  INVOKER, the function runs with the privileges determined by the\n  view\'s SQL SECURITY characteristic.\n\nExample: A view might depend on a stored function, and that function\nmight invoke other stored routines. For example, the following view\ninvokes a stored function f():\n\nCREATE VIEW v AS SELECT * FROM t WHERE t.id = f(t.name);\n\nSuppose that f() contains a statement such as this:\n\nIF name IS NULL then\n  CALL p1();\nELSE\n  CALL p2();\nEND IF;\n\nThe privileges required for executing statements within f() need to be\nchecked when f() executes. This might mean that privileges are needed\nfor p1() or p2(), depending on the execution path within f(). Those\nprivileges must be checked at runtime, and the user who must possess\nthe privileges is determined by the SQL SECURITY values of the view v\nand the function f().\n\nThe DEFINER and SQL SECURITY clauses for views are extensions to\nstandard SQL. In standard SQL, views are handled using the rules for\nSQL SECURITY DEFINER. The standard says that the definer of the view,\nwhich is the same as the owner of the view\'s schema, gets applicable\nprivileges on the view (for example, SELECT) and may grant them. MySQL\nhas no concept of a schema \"owner\", so MySQL adds a clause to identify\nthe definer. The DEFINER clause is an extension where the intent is to\nhave what the standard has; that is, a permanent record of who defined\nthe view. This is why the default DEFINER value is the account of the\nview creator.\n\nThe optional ALGORITHM clause is a MySQL extension to standard SQL. It\naffects how MySQL processes the view. ALGORITHM takes three values:\nMERGE, TEMPTABLE, or UNDEFINED. The default algorithm is UNDEFINED if\nno ALGORITHM clause is present. For more information, see\nhttp://dev.mysql.com/doc/refman/5.6/en/view-algorithms.html.\n\nSome views are updatable. That is, you can use them in statements such\nas UPDATE, DELETE, or INSERT to update the contents of the underlying\ntable. For a view to be updatable, there must be a one-to-one\nrelationship between the rows in the view and the rows in the\nunderlying table. There are also certain other constructs that make a\nview nonupdatable.\n\nThe WITH CHECK OPTION clause can be given for an updatable view to\nprevent inserts or updates to rows except those for which the WHERE\nclause in the select_statement is true.\n\nIn a WITH CHECK OPTION clause for an updatable view, the LOCAL and\nCASCADED keywords determine the scope of check testing when the view is\ndefined in terms of another view. The LOCAL keyword restricts the CHECK\nOPTION only to the view being defined. CASCADED causes the checks for\nunderlying views to be evaluated as well. When neither keyword is\ngiven, the default is CASCADED.\n\nFor more information about updatable views and the WITH CHECK OPTION\nclause, see\nhttp://dev.mysql.com/doc/refman/5.6/en/view-updatability.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/create-view.html'),
(503, 'TRIM', 38, 'Syntax:\nTRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr\nFROM] str)\n\nReturns the string str with all remstr prefixes or suffixes removed. If\nnone of the specifiers BOTH, LEADING, or TRAILING is given, BOTH is\nassumed. remstr is optional and, if not specified, spaces are removed.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT TRIM(\'  bar   \');\n        -> \'bar\'\nmysql> SELECT TRIM(LEADING \'x\' FROM \'xxxbarxxx\');\n        -> \'barxxx\'\nmysql> SELECT TRIM(BOTH \'x\' FROM \'xxxbarxxx\');\n        -> \'bar\'\nmysql> SELECT TRIM(TRAILING \'xyz\' FROM \'barxxyz\');\n        -> \'barx\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(504, 'INET6_NTOA', 14, 'Syntax:\nINET6_NTOA(expr)\n\nGiven an IPv6 or IPv4 network address represented in numeric form as a\nbinary string, returns the string representation of the address as a\nnonbinary string in the connection character set. If the argument is\nnot a valid address, INET6_NTOA() returns NULL.\n\nINET6_NTOA() has these properties:\n\no It does not use operating system functions to perform conversions,\n  thus the output string is platform independent.\n\no The return string has a maximum length of 39 (4 x 8 + 7). Given this\n  statement:\n\nCREATE TABLE t AS SELECT INET6_NTOA(expr) AS c1;\n\n  The resulting table would have this definition:\n\nCREATE TABLE t (c1 VARCHAR(39) CHARACTER SET utf8 DEFAULT NULL);\n\no The return string uses lowercase letters for IPv6 addresses.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html\n\n', 'mysql> SELECT INET6_NTOA(INET6_ATON(\'fdfe::5a55:caff:fefa:9089\'));\n        -> \'fdfe::5a55:caff:fefa:9089\'\nmysql> SELECT INET6_NTOA(INET6_ATON(\'10.0.5.9\'));\n        -> \'10.0.5.9\'\n\nmysql> SELECT INET6_NTOA(UNHEX(\'FDFE0000000000005A55CAFFFEFA9089\'));\n        -> \'fdfe::5a55:caff:fefa:9089\'\nmysql> SELECT INET6_NTOA(UNHEX(\'0A000509\'));\n        -> \'10.0.5.9\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html'),
(505, 'SIGNAL', 24, 'Syntax:\nSIGNAL condition_value\n    [SET signal_information_item\n    [, signal_information_item] ...]\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | condition_name\n\nsignal_information_item:\n    condition_information_item_name = simple_value_specification\n\ncondition_information_item_name:\n    CLASS_ORIGIN\n  | SUBCLASS_ORIGIN\n  | MESSAGE_TEXT\n  | MYSQL_ERRNO\n  | CONSTRAINT_CATALOG\n  | CONSTRAINT_SCHEMA\n  | CONSTRAINT_NAME\n  | CATALOG_NAME\n  | SCHEMA_NAME\n  | TABLE_NAME\n  | COLUMN_NAME\n  | CURSOR_NAME\n\ncondition_name, simple_value_specification:\n    (see following discussion)\n\nSIGNAL is the way to \"return\" an error. SIGNAL provides error\ninformation to a handler, to an outer portion of the application, or to\nthe client. Also, it provides control over the error\'s characteristics\n(error number, SQLSTATE value, message). Without SIGNAL, it is\nnecessary to resort to workarounds such as deliberately referring to a\nnonexistent table to cause a routine to return an error.\n\nNo special privileges are required to execute the SIGNAL statement.\n\nTo retrieve information from diagnostics area, use the GET DIAGNOSTICS\nstatement (see [HELP GET DIAGNOSTICS]). For information about the\ndiagnostics area, see\nhttp://dev.mysql.com/doc/refman/5.6/en/diagnostics-area.html.\n\nThe condition_value in a SIGNAL statement indicates the error value to\nbe returned. It can be an SQLSTATE value (a 5-character string literal)\nor a condition_name that refers to a named condition previously defined\nwith DECLARE ... CONDITION (see [HELP DECLARE CONDITION]).\n\nAn SQLSTATE value can indicate errors, warnings, or \"not found.\" The\nfirst two characters of the value indicate its error class, as\ndiscussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/signal.html#signal-condition-inf\normation-items. Some signal values cause statement termination; see\nhttp://dev.mysql.com/doc/refman/5.6/en/signal.html#signal-effects.\n\nThe SQLSTATE value for a SIGNAL statement should not start with \'00\'\nbecause such values indicate success and are not valid for signaling an\nerror. This is true whether the SQLSTATE value is specified directly in\nthe SIGNAL statement or in a named condition referred to in the\nstatement. If the value is invalid, a Bad SQLSTATE error occurs.\n\nTo signal a generic SQLSTATE value, use \'45000\', which means \"unhandled\nuser-defined exception.\"\n\nThe SIGNAL statement optionally includes a SET clause that contains\nmultiple signal items, in a comma-separated list of\ncondition_information_item_name = simple_value_specification\nassignments.\n\nEach condition_information_item_name may be specified only once in the\nSET clause. Otherwise, a Duplicate condition information item error\noccurs.\n\nValid simple_value_specification designators can be specified using\nstored procedure or function parameters, stored program local variables\ndeclared with DECLARE, user-defined variables, system variables, or\nliterals. A character literal may include a _charset introducer.\n\nFor information about permissible condition_information_item_name\nvalues, see\nhttp://dev.mysql.com/doc/refman/5.6/en/signal.html#signal-condition-inf\normation-items.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/signal.html\n\n', 'CREATE PROCEDURE p (pval INT)\nBEGIN\n  DECLARE specialty CONDITION FOR SQLSTATE \'45000\';\n  IF pval = 0 THEN\n    SIGNAL SQLSTATE \'01000\';\n  ELSEIF pval = 1 THEN\n    SIGNAL SQLSTATE \'45000\'\n      SET MESSAGE_TEXT = \'An error occurred\';\n  ELSEIF pval = 2 THEN\n    SIGNAL specialty\n      SET MESSAGE_TEXT = \'An error occurred\';\n  ELSE\n    SIGNAL SQLSTATE \'01000\'\n      SET MESSAGE_TEXT = \'A warning occurred\', MYSQL_ERRNO = 1000;\n    SIGNAL SQLSTATE \'45000\'\n      SET MESSAGE_TEXT = \'An error occurred\', MYSQL_ERRNO = 1001;\n  END IF;\nEND;\n', 'http://dev.mysql.com/doc/refman/5.6/en/signal.html'),
(506, 'SAVEPOINT', 8, 'Syntax:\nSAVEPOINT identifier\nROLLBACK [WORK] TO [SAVEPOINT] identifier\nRELEASE SAVEPOINT identifier\n\nInnoDB supports the SQL statements SAVEPOINT, ROLLBACK TO SAVEPOINT,\nRELEASE SAVEPOINT and the optional WORK keyword for ROLLBACK.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/savepoint.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/savepoint.html'),
(507, 'MPOINTFROMWKB', 33, 'MPointFromWKB(wkb[,srid]), MultiPointFromWKB(wkb[,srid])\n\nConstructs a MULTIPOINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html'),
(508, 'ALTER TABLE', 40, 'Syntax:\nALTER [IGNORE] TABLE tbl_name\n    [alter_specification [, alter_specification] ...]\n    [partition_options]\n\nalter_specification:\n    table_options\n  | ADD [COLUMN] col_name column_definition\n        [FIRST | AFTER col_name ]\n  | ADD [COLUMN] (col_name column_definition,...)\n  | ADD {INDEX|KEY} [index_name]\n        [index_type] (index_col_name,...) [index_option] ...\n  | ADD [CONSTRAINT [symbol]] PRIMARY KEY\n        [index_type] (index_col_name,...) [index_option] ...\n  | ADD [CONSTRAINT [symbol]]\n        UNIQUE [INDEX|KEY] [index_name]\n        [index_type] (index_col_name,...) [index_option] ...\n  | ADD FULLTEXT [INDEX|KEY] [index_name]\n        (index_col_name,...) [index_option] ...\n  | ADD SPATIAL [INDEX|KEY] [index_name]\n        (index_col_name,...) [index_option] ...\n  | ADD [CONSTRAINT [symbol]]\n        FOREIGN KEY [index_name] (index_col_name,...)\n        reference_definition\n  | ALGORITHM [=] {DEFAULT|INPLACE|COPY}\n  | ALTER [COLUMN] col_name {SET DEFAULT literal | DROP DEFAULT}\n  | CHANGE [COLUMN] old_col_name new_col_name column_definition\n        [FIRST|AFTER col_name]\n  | LOCK [=] {DEFAULT|NONE|SHARED|EXCLUSIVE}\n  | MODIFY [COLUMN] col_name column_definition\n        [FIRST | AFTER col_name]\n  | DROP [COLUMN] col_name\n  | DROP PRIMARY KEY\n  | DROP {INDEX|KEY} index_name\n  | DROP FOREIGN KEY fk_symbol\n  | DISABLE KEYS\n  | ENABLE KEYS\n  | RENAME [TO|AS] new_tbl_name\n  | ORDER BY col_name [, col_name] ...\n  | CONVERT TO CHARACTER SET charset_name [COLLATE collation_name]\n  | [DEFAULT] CHARACTER SET [=] charset_name [COLLATE [=] collation_name]\n  | DISCARD TABLESPACE\n  | IMPORT TABLESPACE\n  | FORCE\n  | ADD PARTITION (partition_definition)\n  | DROP PARTITION partition_names\n  | TRUNCATE PARTITION {partition_names | ALL}\n  | COALESCE PARTITION number\n  | REORGANIZE PARTITION partition_names INTO (partition_definitions)\n  | EXCHANGE PARTITION partition_name WITH TABLE tbl_name\n  | ANALYZE PARTITION {partition_names | ALL}\n  | CHECK PARTITION {partition_names | ALL}\n  | OPTIMIZE PARTITION {partition_names | ALL}\n  | REBUILD PARTITION {partition_names | ALL}\n  | REPAIR PARTITION {partition_names | ALL}\n  | REMOVE PARTITIONING\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nindex_option:\n    KEY_BLOCK_SIZE [=] value\n  | index_type\n  | WITH PARSER parser_name\n  | COMMENT \'string\'\n\ntable_options:\n    table_option [[,] table_option] ...  (see CREATE TABLE options)\n\npartition_options:\n    (see CREATE TABLE options)\n\nALTER TABLE changes the structure of a table. For example, you can add\nor delete columns, create or destroy indexes, change the type of\nexisting columns, or rename columns or the table itself. You can also\nchange characteristics such as the storage engine used for the table or\nthe table comment.\n\nPartitioning-related clauses for ALTER TABLE can be used with\npartitioned tables for repartitioning, for adding, dropping, merging,\nand splitting partitions, and for performing partitioning maintenance.\nIt is possible for an ALTER TABLE statement to contain a PARTITION BY\nor REMOVE PARTITION clause in an addition to other alter\nspecifications, but the PARTITION BY or REMOVE PARTITION clause must be\nspecified last after any other specifications. The ADD PARTITION, DROP\nPARTITION, COALESCE PARTITION, REORGANIZE PARTITION, ANALYZE PARTITION,\nCHECK PARTITION, and REPAIR PARTITION options cannot be combined with\nother alter specifications in a single ALTER TABLE, since the options\njust listed act on individual partitions. For more information, see\nhttp://dev.mysql.com/doc/refman/5.6/en/alter-table-partition-operations\n.html.\n\nFollowing the table name, specify the alterations to be made. If none\nare given, ALTER TABLE does nothing.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/alter-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/alter-table.html'),
(509, 'LABELS', 24, 'Syntax:\n[begin_label:] BEGIN\n    [statement_list]\nEND [end_label]\n\n[begin_label:] LOOP\n    statement_list\nEND LOOP [end_label]\n\n[begin_label:] REPEAT\n    statement_list\nUNTIL search_condition\nEND REPEAT [end_label]\n\n[begin_label:] WHILE search_condition DO\n    statement_list\nEND WHILE [end_label]\n\nLabels are permitted for BEGIN ... END blocks and for the LOOP, REPEAT,\nand WHILE statements. Label use for those statements follows these\nrules:\n\no begin_label must be followed by a colon.\n\no begin_label can be given without end_label. If end_label is present,\n  it must be the same as begin_label.\n\no end_label cannot be given without begin_label.\n\no Labels at the same nesting level must be distinct.\n\no Labels can be up to 16 characters long.\n\nTo refer to a label within the labeled construct, use an ITERATE or\nLEAVE statement. The following example uses those statements to\ncontinue iterating or terminate the loop:\n\nCREATE PROCEDURE doiterate(p1 INT)\nBEGIN\n  label1: LOOP\n    SET p1 = p1 + 1;\n    IF p1 < 10 THEN ITERATE label1; END IF;\n    LEAVE label1;\n  END LOOP label1;\nEND;\n\nThe scope of a block label does not include the code for handlers\ndeclared within the block. For details, see [HELP DECLARE HANDLER].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/statement-labels.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/statement-labels.html'),
(510, 'CHAR BYTE', 23, 'The CHAR BYTE data type is an alias for the BINARY data type. This is a\ncompatibility feature.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(511, '>', 19, 'Syntax:\n>\n\nGreater than:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT 2 > 2;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(512, 'ANALYZE TABLE', 21, 'Syntax:\nANALYZE [NO_WRITE_TO_BINLOG | LOCAL] TABLE\n    tbl_name [, tbl_name] ...\n\nANALYZE TABLE analyzes and stores the key distribution for a table.\nDuring the analysis, the table is locked with a read lock for InnoDB\nand MyISAM. This statement works with InnoDB, NDB, and MyISAM tables.\nFor MyISAM tables, this statement is equivalent to using myisamchk\n--analyze.\n\nFor more information on how the analysis works within InnoDB, see\nhttp://dev.mysql.com/doc/refman/5.6/en/innodb-performance.html#innodb-p\nersistent-stats and\nhttp://dev.mysql.com/doc/refman/5.6/en/innodb-restrictions.html. In\nparticular, when you enable the innodb_stats_persistent option, you\nmust run ANALYZE TABLE after loading substantial data into an InnoDB\ntable, or creating a new index for one.\n\nMySQL uses the stored key distribution to decide the order in which\ntables should be joined when you perform a join on something other than\na constant. In addition, key distributions can be used when deciding\nwhich indexes to use for a specific table within a query.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nANALYZE TABLE is supported for partitioned tables, and you can use\nALTER TABLE ... ANALYZE PARTITION to analyze one or more partitions;\nfor more information, see [HELP ALTER TABLE], and\nhttp://dev.mysql.com/doc/refman/5.6/en/partitioning-maintenance.html.\n\nBeginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before\nissuing this statement (BUG#16062608).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/analyze-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/analyze-table.html'),
(513, 'FIELD', 38, 'Syntax:\nFIELD(str,str1,str2,str3,...)\n\nReturns the index (position) of str in the str1, str2, str3, ... list.\nReturns 0 if str is not found.\n\nIf all arguments to FIELD() are strings, all arguments are compared as\nstrings. If all arguments are numbers, they are compared as numbers.\nOtherwise, the arguments are compared as double.\n\nIf str is NULL, the return value is 0 because NULL fails equality\ncomparison with any value. FIELD() is the complement of ELT().\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html\n\n', 'mysql> SELECT FIELD(\'ej\', \'Hej\', \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> 2\nmysql> SELECT FIELD(\'fo\', \'Hej\', \'ej\', \'Heja\', \'hej\', \'foo\');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-functions.html'),
(514, 'CONSTRAINT', 40, 'MySQL supports foreign keys, which let you cross-reference related data\nacross tables, and foreign key constraints, which help keep this\nspread-out data consistent. The essential syntax for a foreign key\nconstraint definition in a CREATE TABLE or ALTER TABLE statement looks\nlike this:\n\n[CONSTRAINT [symbol]] FOREIGN KEY\n    [index_name] (index_col_name, ...)\n    REFERENCES tbl_name (index_col_name,...)\n    [ON DELETE reference_option]\n    [ON UPDATE reference_option]\n\nreference_option:\n    RESTRICT | CASCADE | SET NULL | NO ACTION\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/create-table-foreign-keys.html\n\n', 'CREATE TABLE product (\n    category INT NOT NULL, id INT NOT NULL,\n    price DECIMAL,\n    PRIMARY KEY(category, id)\n)   ENGINE=INNODB;\n\nCREATE TABLE customer (\n    id INT NOT NULL,\n    PRIMARY KEY (id)\n)   ENGINE=INNODB;\n\nCREATE TABLE product_order (\n    no INT NOT NULL AUTO_INCREMENT,\n    product_category INT NOT NULL,\n    product_id INT NOT NULL,\n    customer_id INT NOT NULL,\n\n    PRIMARY KEY(no),\n    INDEX (product_category, product_id),\n    INDEX (customer_id),\n\n    FOREIGN KEY (product_category, product_id)\n      REFERENCES product(category, id)\n      ON UPDATE CASCADE ON DELETE RESTRICT,\n\n    FOREIGN KEY (customer_id)\n      REFERENCES customer(id)\n)   ENGINE=INNODB;\n', 'http://dev.mysql.com/doc/refman/5.6/en/create-table-foreign-keys.html'),
(515, 'ENUM', 23, 'ENUM(\'value1\',\'value2\',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nAn enumeration. A string object that can have only one value, chosen\nfrom the list of values \'value1\', \'value2\', ..., NULL or the special \'\'\nerror value. ENUM values are represented internally as integers.\n\nAn ENUM column can have a maximum of 65,535 distinct elements. (The\npractical limit is less than 3000.) A table can have no more than 255\nunique element list definitions among its ENUM and SET columns\nconsidered as a group. For more information on these limits, see\nhttp://dev.mysql.com/doc/refman/5.6/en/limits-frm-file.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(516, 'STRCMP', 38, 'Syntax:\nSTRCMP(expr1,expr2)\n\nSTRCMP() returns 0 if the strings are the same, -1 if the first\nargument is smaller than the second according to the current sort\norder, and 1 otherwise.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html\n\n', 'mysql> SELECT STRCMP(\'text\', \'text2\');\n        -> -1\nmysql> SELECT STRCMP(\'text2\', \'text\');\n        -> 1\nmysql> SELECT STRCMP(\'text\', \'text\');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html'),
(517, 'INSERT DELAYED', 28, 'Syntax:\nINSERT DELAYED ...\n\nThe DELAYED option for the INSERT statement is a MySQL extension to\nstandard SQL that can be used for certain kinds of tables (such as\nMyISAM). When a client uses INSERT DELAYED, it gets an okay from the\nserver at once, and the row is queued to be inserted when the table is\nnot in use by any other thread.\n\n*Note*: INSERT DELAYED is slower than a normal INSERT if the table is\nnot otherwise in use. There is also the additional overhead for the\nserver to handle a separate thread for each table for which there are\ndelayed rows. This means that you should use INSERT DELAYED only when\nyou are really sure that you need it. As of MySQL 5.6.6, INSERT DELAYED\nis deprecated, and will be removed in a future release. Use INSERT\n(without DELAYED) instead.\n\nThe queued rows are held only in memory until they are inserted into\nthe table. This means that if you terminate mysqld forcibly (for\nexample, with kill -9) or if mysqld dies unexpectedly, any queued rows\nthat have not been written to disk are lost.\n\nThere are some constraints on the use of DELAYED:\n\no INSERT DELAYED works only with MyISAM, MEMORY, ARCHIVE, and BLACKHOLE\n  tables. For engines that do not support DELAYED, an error occurs.\n\no An error occurs for INSERT DELAYED if used with a table that has been\n  locked with LOCK TABLES because the insert must be handled by a\n  separate thread, not by the session that holds the lock.\n\no For MyISAM tables, if there are no free blocks in the middle of the\n  data file, concurrent SELECT and INSERT statements are supported.\n  Under these circumstances, you very seldom need to use INSERT DELAYED\n  with MyISAM.\n\no INSERT DELAYED should be used only for INSERT statements that specify\n  value lists. The server ignores DELAYED for INSERT ... SELECT or\n  INSERT ... ON DUPLICATE KEY UPDATE statements.\n\no Because the INSERT DELAYED statement returns immediately, before the\n  rows are inserted, you cannot use LAST_INSERT_ID() to get the\n  AUTO_INCREMENT value that the statement might generate.\n\no DELAYED rows are not visible to SELECT statements until they actually\n  have been inserted.\n\no Prior to MySQL 5.6, INSERT DELAYED was treated as a normal INSERT if\n  the statement inserted multiple rows, binary logging was enabled, and\n  the global logging format was statement-based (that is, whenever\n  binlog_format was set to STATEMENT). Beginning with MySQL 5.6, INSERT\n  DELAYED is always handled as a simple INSERT (that is, without the\n  DELAYED option) whenever the value of binlog_format is STATEMENT or\n  MIXED. (In the latter case, the statement no longer triggers a switch\n  to row-based logging, and so is logged using the statement-based\n  format.)\n\n  This does not apply when using row-based binary logging mode\n  (binlog_format set to ROW), in which INSERT DELAYED statements are\n  always executed using the DELAYED option as specified, and logged as\n  row-update events.\n\no DELAYED is ignored on slave replication servers, so that INSERT\n  DELAYED is treated as a normal INSERT on slaves. This is because\n  DELAYED could cause the slave to have different data than the master.\n\no Pending INSERT DELAYED statements are lost if a table is write locked\n  and ALTER TABLE is used to modify the table structure.\n\no INSERT DELAYED is not supported for views.\n\no INSERT DELAYED is not supported for partitioned tables.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/insert-delayed.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/insert-delayed.html'),
(518, 'SHOW PROCEDURE CODE', 27, 'Syntax:\nSHOW PROCEDURE CODE proc_name\n\nThis statement is a MySQL extension that is available only for servers\nthat have been built with debugging support. It displays a\nrepresentation of the internal implementation of the named stored\nprocedure. A similar statement, SHOW FUNCTION CODE, displays\ninformation about stored functions (see [HELP SHOW FUNCTION CODE]).\n\nBoth statements require that you be the owner of the routine or have\nSELECT access to the mysql.proc table.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one \"instruction\" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-procedure-code.html\n\n', 'mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n    -> BEGIN\n    ->   DECLARE fanta INT DEFAULT 55;\n    ->   DROP TABLE t2;\n    ->   LOOP\n    ->     INSERT INTO t3 VALUES (fanta);\n    ->     END LOOP;\n    ->   END//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 \"DROP TABLE t2\"                 |\n|   2 | stmt 5 \"INSERT INTO t3 VALUES (fanta)\" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.6/en/show-procedure-code.html'),
(519, 'MEDIUMTEXT', 23, 'MEDIUMTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 16,777,215 (224 - 1) characters.\nThe effective maximum length is less if the value contains multi-byte\ncharacters. Each MEDIUMTEXT value is stored using a 3-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html'),
(520, 'LOG', 4, 'Syntax:\nLOG(X), LOG(B,X)\n\nIf called with one parameter, this function returns the natural\nlogarithm of X. If X is less than or equal to 0, then NULL is returned.\n\nThe inverse of this function (when called with a single argument) is\nthe EXP() function.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG(2);\n        -> 0.69314718055995\nmysql> SELECT LOG(-2);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(521, 'SHOW COLLATION', 27, 'Syntax:\nSHOW COLLATION\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement lists collations supported by the server. By default,\nthe output from SHOW COLLATION includes all available collations. The\nLIKE clause, if present, indicates which collation names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttp://dev.mysql.com/doc/refman/5.6/en/extended-show.html. For example:\n\nmysql> SHOW COLLATION LIKE \'latin1%\';\n+-------------------+---------+----+---------+----------+---------+\n| Collation         | Charset | Id | Default | Compiled | Sortlen |\n+-------------------+---------+----+---------+----------+---------+\n| latin1_german1_ci | latin1  |  5 |         |          |       0 |\n| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       0 |\n| latin1_danish_ci  | latin1  | 15 |         |          |       0 |\n| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |\n| latin1_bin        | latin1  | 47 |         | Yes      |       0 |\n| latin1_general_ci | latin1  | 48 |         |          |       0 |\n| latin1_general_cs | latin1  | 49 |         |          |       0 |\n| latin1_spanish_ci | latin1  | 94 |         |          |       0 |\n+-------------------+---------+----+---------+----------+---------+\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/show-collation.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.6/en/show-collation.html'),
(522, '!=', 19, 'Syntax:\n<>, !=\n\nNot equal:\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT \'.01\' <> \'0.01\';\n        -> 1\nmysql> SELECT .01 <> \'0.01\';\n        -> 0\nmysql> SELECT \'zapp\' <> \'zappp\';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(523, 'WHILE', 24, 'Syntax:\n[begin_label:] WHILE search_condition DO\n    statement_list\nEND WHILE [end_label]\n\nThe statement list within a WHILE statement is repeated as long as the\nsearch_condition expression is true. statement_list consists of one or\nmore SQL statements, each terminated by a semicolon (;) statement\ndelimiter.\n\nA WHILE statement can be labeled. For the rules regarding label use,\nsee [HELP labels].\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/while.html\n\n', 'CREATE PROCEDURE dowhile()\nBEGIN\n  DECLARE v1 INT DEFAULT 5;\n\n  WHILE v1 > 0 DO\n    ...\n    SET v1 = v1 - 1;\n  END WHILE;\nEND;\n', 'http://dev.mysql.com/doc/refman/5.6/en/while.html'),
(524, 'DAYNAME', 32, 'Syntax:\nDAYNAME(date)\n\nReturns the name of the weekday for date. The language used for the\nname is controlled by the value of the lc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.6/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYNAME(\'2007-02-03\');\n        -> \'Saturday\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html'),
(525, 'COLLATION', 17, 'Syntax:\nCOLLATION(str)\n\nReturns the collation of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', 'mysql> SELECT COLLATION(\'abc\');\n        -> \'latin1_swedish_ci\'\nmysql> SELECT COLLATION(_utf8\'abc\');\n        -> \'utf8_general_ci\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html'),
(526, 'RADIANS', 4, 'Syntax:\nRADIANS(X)\n\nReturns the argument X, converted from degrees to radians. (Note that\nπ radians equals 180 degrees.)\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html\n\n', 'mysql> SELECT RADIANS(90);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html'),
(527, 'COALESCE', 19, 'Syntax:\nCOALESCE(value,...)\n\nReturns the first non-NULL value in the list, or NULL if there are no\nnon-NULL values.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html\n\n', 'mysql> SELECT COALESCE(NULL,1);\n        -> 1\nmysql> SELECT COALESCE(NULL,NULL,NULL);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html'),
(528, 'VERSION', 17, 'Syntax:\nVERSION()\n\nReturns a string that indicates the MySQL server version. The string\nuses the utf8 character set. The value might have a suffix in addition\nto the version number. See the description of the version system\nvariable in\nhttp://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html\n\n', 'mysql> SELECT VERSION();\n        -> \'5.6.12-standard\'\n', 'http://dev.mysql.com/doc/refman/5.6/en/information-functions.html');

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE `host` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Host privileges;  Merged with database privileges';

-- --------------------------------------------------------

--
-- Table structure for table `index_stats`
--

CREATE TABLE `index_stats` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefix_arity` int(11) UNSIGNED NOT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Statistics on Indexes';

-- --------------------------------------------------------

--
-- Table structure for table `innodb_index_stats`
--

CREATE TABLE `innodb_index_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stat_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `stat_value` bigint(20) UNSIGNED NOT NULL,
  `sample_size` bigint(20) UNSIGNED DEFAULT NULL,
  `stat_description` varchar(1024) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `innodb_index_stats`
--

INSERT INTO `innodb_index_stats` (`database_name`, `table_name`, `index_name`, `last_update`, `stat_name`, `stat_value`, `sample_size`, `stat_description`) VALUES
('mysql', 'carrinho', 'PRIMARY', '2018-11-17 23:41:04', 'n_diff_pfx01', 0, 1, 'idCarrinho'),
('mysql', 'carrinho', 'PRIMARY', '2018-11-17 23:41:04', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'carrinho', 'PRIMARY', '2018-11-17 23:41:04', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'categoria', 'PRIMARY', '2018-11-17 23:41:12', 'n_diff_pfx01', 0, 1, 'idCategoria'),
('mysql', 'categoria', 'PRIMARY', '2018-11-17 23:41:12', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'categoria', 'PRIMARY', '2018-11-17 23:41:12', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'cidade', 'PRIMARY', '2018-11-17 23:41:13', 'n_diff_pfx01', 0, 1, 'idCidade'),
('mysql', 'cidade', 'PRIMARY', '2018-11-17 23:41:13', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'cidade', 'PRIMARY', '2018-11-17 23:41:13', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'cliente', 'PRIMARY', '2018-11-17 23:41:14', 'n_diff_pfx01', 2, 1, 'idCliente'),
('mysql', 'cliente', 'PRIMARY', '2018-11-17 23:41:14', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'cliente', 'PRIMARY', '2018-11-17 23:41:14', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'endereco', 'PRIMARY', '2018-11-17 23:41:16', 'n_diff_pfx01', 0, 1, 'idEndereco'),
('mysql', 'endereco', 'PRIMARY', '2018-11-17 23:41:16', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'endereco', 'PRIMARY', '2018-11-17 23:41:16', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'entrega', 'PRIMARY', '2018-11-17 23:41:18', 'n_diff_pfx01', 0, 1, 'idEntrega'),
('mysql', 'entrega', 'PRIMARY', '2018-11-17 23:41:18', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'entrega', 'PRIMARY', '2018-11-17 23:41:18', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'estado', 'PRIMARY', '2018-11-17 23:41:19', 'n_diff_pfx01', 0, 1, 'idEstado'),
('mysql', 'estado', 'PRIMARY', '2018-11-17 23:41:19', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'estado', 'PRIMARY', '2018-11-17 23:41:19', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'foto', 'PRIMARY', '2018-11-17 23:41:20', 'n_diff_pfx01', 0, 1, 'idFoto'),
('mysql', 'foto', 'PRIMARY', '2018-11-17 23:41:20', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'foto', 'PRIMARY', '2018-11-17 23:41:20', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'gtid_slave_pos', 'PRIMARY', '2015-11-06 15:13:16', 'n_diff_pfx01', 0, 1, 'domain_id'),
('mysql', 'gtid_slave_pos', 'PRIMARY', '2015-11-06 15:13:16', 'n_diff_pfx02', 0, 1, 'domain_id,sub_id'),
('mysql', 'gtid_slave_pos', 'PRIMARY', '2015-11-06 15:13:16', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'gtid_slave_pos', 'PRIMARY', '2015-11-06 15:13:16', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'item', 'GEN_CLUST_INDEX', '2018-11-17 23:41:01', 'n_diff_pfx01', 0, 1, 'DB_ROW_ID'),
('mysql', 'item', 'GEN_CLUST_INDEX', '2018-11-17 23:41:01', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'item', 'GEN_CLUST_INDEX', '2018-11-17 23:41:01', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'pagamento', 'PRIMARY', '2018-11-17 23:41:21', 'n_diff_pfx01', 0, 1, 'idPagamento'),
('mysql', 'pagamento', 'PRIMARY', '2018-11-17 23:41:21', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'pagamento', 'PRIMARY', '2018-11-17 23:41:21', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'pedido', 'PRIMARY', '2018-11-17 23:41:22', 'n_diff_pfx01', 0, 1, 'idPedido'),
('mysql', 'pedido', 'PRIMARY', '2018-11-17 23:41:22', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'pedido', 'PRIMARY', '2018-11-17 23:41:22', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'produto', 'PRIMARY', '2018-11-17 23:41:23', 'n_diff_pfx01', 0, 1, 'idProduto'),
('mysql', 'produto', 'PRIMARY', '2018-11-17 23:41:23', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'produto', 'PRIMARY', '2018-11-17 23:41:23', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'produtocategoria', 'GEN_CLUST_INDEX', '2018-11-17 23:41:02', 'n_diff_pfx01', 0, 1, 'DB_ROW_ID'),
('mysql', 'produtocategoria', 'GEN_CLUST_INDEX', '2018-11-17 23:41:02', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'produtocategoria', 'GEN_CLUST_INDEX', '2018-11-17 23:41:02', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'propriedades', 'GEN_CLUST_INDEX', '2018-11-17 23:41:03', 'n_diff_pfx01', 0, 1, 'DB_ROW_ID'),
('mysql', 'propriedades', 'GEN_CLUST_INDEX', '2018-11-17 23:41:03', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'propriedades', 'GEN_CLUST_INDEX', '2018-11-17 23:41:03', 'size', 1, NULL, 'Number of pages in the index'),
('mysql', 'statuspedido', 'PRIMARY', '2018-11-17 23:41:24', 'n_diff_pfx01', 0, 1, 'idStatusPedido'),
('mysql', 'statuspedido', 'PRIMARY', '2018-11-17 23:41:24', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('mysql', 'statuspedido', 'PRIMARY', '2018-11-17 23:41:24', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__bookmark', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'id'),
('phpmyadmin', 'pma__bookmark', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__bookmark', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__central_columns', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'db_name'),
('phpmyadmin', 'pma__central_columns', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'db_name,col_name'),
('phpmyadmin', 'pma__central_columns', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__central_columns', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__column_info', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'id'),
('phpmyadmin', 'pma__column_info', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__column_info', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__column_info', 'db_name', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'db_name'),
('phpmyadmin', 'pma__column_info', 'db_name', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'db_name,table_name'),
('phpmyadmin', 'pma__column_info', 'db_name', '2015-11-10 15:25:30', 'n_diff_pfx03', 0, 1, 'db_name,table_name,column_name'),
('phpmyadmin', 'pma__column_info', 'db_name', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__column_info', 'db_name', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__designer_settings', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'username'),
('phpmyadmin', 'pma__designer_settings', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__designer_settings', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__export_templates', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'id'),
('phpmyadmin', 'pma__export_templates', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__export_templates', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__export_templates', 'u_user_type_template', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'username'),
('phpmyadmin', 'pma__export_templates', 'u_user_type_template', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'username,export_type'),
('phpmyadmin', 'pma__export_templates', 'u_user_type_template', '2015-11-10 15:25:30', 'n_diff_pfx03', 0, 1, 'username,export_type,template_name'),
('phpmyadmin', 'pma__export_templates', 'u_user_type_template', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__export_templates', 'u_user_type_template', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__favorite', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'username'),
('phpmyadmin', 'pma__favorite', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__favorite', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__history', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'id'),
('phpmyadmin', 'pma__history', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__history', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__history', 'username', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'username'),
('phpmyadmin', 'pma__history', 'username', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'username,db'),
('phpmyadmin', 'pma__history', 'username', '2015-11-10 15:25:30', 'n_diff_pfx03', 0, 1, 'username,db,table'),
('phpmyadmin', 'pma__history', 'username', '2015-11-10 15:25:30', 'n_diff_pfx04', 0, 1, 'username,db,table,timevalue'),
('phpmyadmin', 'pma__history', 'username', '2015-11-10 15:25:30', 'n_diff_pfx05', 0, 1, 'username,db,table,timevalue,id'),
('phpmyadmin', 'pma__history', 'username', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__history', 'username', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__navigationhiding', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'username'),
('phpmyadmin', 'pma__navigationhiding', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'username,item_name'),
('phpmyadmin', 'pma__navigationhiding', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx03', 0, 1, 'username,item_name,item_type'),
('phpmyadmin', 'pma__navigationhiding', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx04', 0, 1, 'username,item_name,item_type,db_name'),
('phpmyadmin', 'pma__navigationhiding', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx05', 0, 1, 'username,item_name,item_type,db_name,table_name'),
('phpmyadmin', 'pma__navigationhiding', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__navigationhiding', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__pdf_pages', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'page_nr'),
('phpmyadmin', 'pma__pdf_pages', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__pdf_pages', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__pdf_pages', 'db_name', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'db_name'),
('phpmyadmin', 'pma__pdf_pages', 'db_name', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'db_name,page_nr'),
('phpmyadmin', 'pma__pdf_pages', 'db_name', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__pdf_pages', 'db_name', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__recent', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'username'),
('phpmyadmin', 'pma__recent', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__recent', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__relation', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'master_db'),
('phpmyadmin', 'pma__relation', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'master_db,master_table'),
('phpmyadmin', 'pma__relation', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx03', 0, 1, 'master_db,master_table,master_field'),
('phpmyadmin', 'pma__relation', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__relation', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__relation', 'foreign_field', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'foreign_db'),
('phpmyadmin', 'pma__relation', 'foreign_field', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'foreign_db,foreign_table'),
('phpmyadmin', 'pma__relation', 'foreign_field', '2015-11-10 15:25:30', 'n_diff_pfx03', 0, 1, 'foreign_db,foreign_table,master_db'),
('phpmyadmin', 'pma__relation', 'foreign_field', '2015-11-10 15:25:30', 'n_diff_pfx04', 0, 1, 'foreign_db,foreign_table,master_db,master_table'),
('phpmyadmin', 'pma__relation', 'foreign_field', '2015-11-10 15:25:30', 'n_diff_pfx05', 0, 1, 'foreign_db,foreign_table,master_db,master_table,master_field'),
('phpmyadmin', 'pma__relation', 'foreign_field', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__relation', 'foreign_field', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__savedsearches', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'id'),
('phpmyadmin', 'pma__savedsearches', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__savedsearches', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__savedsearches', 'u_savedsearches_username_dbname', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'username'),
('phpmyadmin', 'pma__savedsearches', 'u_savedsearches_username_dbname', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'username,db_name'),
('phpmyadmin', 'pma__savedsearches', 'u_savedsearches_username_dbname', '2015-11-10 15:25:30', 'n_diff_pfx03', 0, 1, 'username,db_name,search_name'),
('phpmyadmin', 'pma__savedsearches', 'u_savedsearches_username_dbname', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__savedsearches', 'u_savedsearches_username_dbname', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__table_coords', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'db_name'),
('phpmyadmin', 'pma__table_coords', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'db_name,table_name'),
('phpmyadmin', 'pma__table_coords', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx03', 0, 1, 'db_name,table_name,pdf_page_number'),
('phpmyadmin', 'pma__table_coords', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__table_coords', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__table_info', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'db_name'),
('phpmyadmin', 'pma__table_info', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'db_name,table_name'),
('phpmyadmin', 'pma__table_info', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__table_info', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__table_uiprefs', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'username'),
('phpmyadmin', 'pma__table_uiprefs', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'username,db_name'),
('phpmyadmin', 'pma__table_uiprefs', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx03', 0, 1, 'username,db_name,table_name'),
('phpmyadmin', 'pma__table_uiprefs', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__table_uiprefs', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__tracking', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'db_name'),
('phpmyadmin', 'pma__tracking', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'db_name,table_name'),
('phpmyadmin', 'pma__tracking', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx03', 0, 1, 'db_name,table_name,version'),
('phpmyadmin', 'pma__tracking', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__tracking', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__userconfig', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'username'),
('phpmyadmin', 'pma__userconfig', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__userconfig', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__usergroups', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'usergroup'),
('phpmyadmin', 'pma__usergroups', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'usergroup,tab'),
('phpmyadmin', 'pma__usergroups', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx03', 0, 1, 'usergroup,tab,allowed'),
('phpmyadmin', 'pma__usergroups', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__usergroups', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('phpmyadmin', 'pma__users', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx01', 0, 1, 'username'),
('phpmyadmin', 'pma__users', 'PRIMARY', '2015-11-10 15:25:30', 'n_diff_pfx02', 0, 1, 'username,usergroup'),
('phpmyadmin', 'pma__users', 'PRIMARY', '2015-11-10 15:25:30', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('phpmyadmin', 'pma__users', 'PRIMARY', '2015-11-10 15:25:30', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'aluguel', 'PRIMARY', '2018-10-09 17:05:40', 'n_diff_pfx01', 16005, 20, 'aluguel_id'),
('test', 'aluguel', 'PRIMARY', '2018-10-09 17:05:40', 'n_leaf_pages', 47, NULL, 'Number of leaf pages in the index'),
('test', 'aluguel', 'PRIMARY', '2018-10-09 17:05:40', 'size', 97, NULL, 'Number of pages in the index'),
('test', 'aluguel', 'data_de_aluguel', '2018-10-09 17:05:40', 'n_diff_pfx01', 15815, 24, 'data_de_aluguel'),
('test', 'aluguel', 'data_de_aluguel', '2018-10-09 17:05:40', 'n_diff_pfx02', 16044, 24, 'data_de_aluguel,inventario_id'),
('test', 'aluguel', 'data_de_aluguel', '2018-10-09 17:05:40', 'n_diff_pfx03', 16044, 24, 'data_de_aluguel,inventario_id,cliente_id'),
('test', 'aluguel', 'data_de_aluguel', '2018-10-09 17:05:40', 'n_leaf_pages', 24, NULL, 'Number of leaf pages in the index'),
('test', 'aluguel', 'data_de_aluguel', '2018-10-09 17:05:40', 'size', 25, NULL, 'Number of pages in the index'),
('test', 'aluguel', 'idx_fk_cliente_id', '2018-10-09 17:05:40', 'n_diff_pfx01', 599, 16, 'cliente_id'),
('test', 'aluguel', 'idx_fk_cliente_id', '2018-10-09 17:05:40', 'n_diff_pfx02', 16044, 16, 'cliente_id,aluguel_id'),
('test', 'aluguel', 'idx_fk_cliente_id', '2018-10-09 17:05:40', 'n_leaf_pages', 16, NULL, 'Number of leaf pages in the index'),
('test', 'aluguel', 'idx_fk_cliente_id', '2018-10-09 17:05:40', 'size', 17, NULL, 'Number of pages in the index'),
('test', 'aluguel', 'idx_fk_funcionario_id', '2018-10-09 17:05:40', 'n_diff_pfx01', 2, 13, 'funcionario_id'),
('test', 'aluguel', 'idx_fk_funcionario_id', '2018-10-09 17:05:40', 'n_diff_pfx02', 16044, 13, 'funcionario_id,aluguel_id'),
('test', 'aluguel', 'idx_fk_funcionario_id', '2018-10-09 17:05:40', 'n_leaf_pages', 13, NULL, 'Number of leaf pages in the index'),
('test', 'aluguel', 'idx_fk_funcionario_id', '2018-10-09 17:05:40', 'size', 14, NULL, 'Number of pages in the index'),
('test', 'aluguel', 'idx_fk_inventario_id', '2018-10-09 17:05:40', 'n_diff_pfx01', 4580, 16, 'inventario_id'),
('test', 'aluguel', 'idx_fk_inventario_id', '2018-10-09 17:05:40', 'n_diff_pfx02', 16044, 16, 'inventario_id,aluguel_id'),
('test', 'aluguel', 'idx_fk_inventario_id', '2018-10-09 17:05:40', 'n_leaf_pages', 16, NULL, 'Number of leaf pages in the index'),
('test', 'aluguel', 'idx_fk_inventario_id', '2018-10-09 17:05:40', 'size', 17, NULL, 'Number of pages in the index'),
('test', 'ator', 'PRIMARY', '2018-10-09 17:05:19', 'n_diff_pfx01', 200, 1, 'ator_id'),
('test', 'ator', 'PRIMARY', '2018-10-09 17:05:19', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'ator', 'PRIMARY', '2018-10-09 17:05:19', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'ator', 'idx_ator_ultimo_nome', '2018-10-09 17:05:19', 'n_diff_pfx01', 121, 1, 'ultimo_nome'),
('test', 'ator', 'idx_ator_ultimo_nome', '2018-10-09 17:05:19', 'n_diff_pfx02', 200, 1, 'ultimo_nome,ator_id'),
('test', 'ator', 'idx_ator_ultimo_nome', '2018-10-09 17:05:19', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'ator', 'idx_ator_ultimo_nome', '2018-10-09 17:05:19', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'categoria', 'PRIMARY', '2018-10-09 17:04:47', 'n_diff_pfx01', 16, 1, 'categoria_id'),
('test', 'categoria', 'PRIMARY', '2018-10-09 17:04:47', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'categoria', 'PRIMARY', '2018-10-09 17:04:47', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'cidade', 'PRIMARY', '2018-10-09 17:04:48', 'n_diff_pfx01', 600, 2, 'cidade_id'),
('test', 'cidade', 'PRIMARY', '2018-10-09 17:04:48', 'n_leaf_pages', 2, NULL, 'Number of leaf pages in the index'),
('test', 'cidade', 'PRIMARY', '2018-10-09 17:04:48', 'size', 3, NULL, 'Number of pages in the index'),
('test', 'cidade', 'idx_fk_pais_id', '2018-10-09 17:04:48', 'n_diff_pfx01', 109, 1, 'pais_id'),
('test', 'cidade', 'idx_fk_pais_id', '2018-10-09 17:04:48', 'n_diff_pfx02', 600, 1, 'pais_id,cidade_id'),
('test', 'cidade', 'idx_fk_pais_id', '2018-10-09 17:04:48', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'cidade', 'idx_fk_pais_id', '2018-10-09 17:04:48', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'cliente', 'PRIMARY', '2018-10-09 17:04:51', 'n_diff_pfx01', 599, 4, 'cliente_id'),
('test', 'cliente', 'PRIMARY', '2018-10-09 17:04:51', 'n_leaf_pages', 4, NULL, 'Number of leaf pages in the index'),
('test', 'cliente', 'PRIMARY', '2018-10-09 17:04:51', 'size', 5, NULL, 'Number of pages in the index'),
('test', 'cliente', 'idx_fk_endereco_id', '2018-10-09 17:04:51', 'n_diff_pfx01', 599, 1, 'endereco_id'),
('test', 'cliente', 'idx_fk_endereco_id', '2018-10-09 17:04:51', 'n_diff_pfx02', 599, 1, 'endereco_id,cliente_id'),
('test', 'cliente', 'idx_fk_endereco_id', '2018-10-09 17:04:51', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'cliente', 'idx_fk_endereco_id', '2018-10-09 17:04:51', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'cliente', 'idx_fk_loja_id', '2018-10-09 17:04:51', 'n_diff_pfx01', 2, 1, 'loja_id'),
('test', 'cliente', 'idx_fk_loja_id', '2018-10-09 17:04:51', 'n_diff_pfx02', 599, 1, 'loja_id,cliente_id'),
('test', 'cliente', 'idx_fk_loja_id', '2018-10-09 17:04:51', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'cliente', 'idx_fk_loja_id', '2018-10-09 17:04:51', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'cliente', 'idx_ultimo_nome', '2018-10-09 17:04:51', 'n_diff_pfx01', 599, 1, 'ultimo_nome'),
('test', 'cliente', 'idx_ultimo_nome', '2018-10-09 17:04:51', 'n_diff_pfx02', 599, 1, 'ultimo_nome,cliente_id'),
('test', 'cliente', 'idx_ultimo_nome', '2018-10-09 17:04:51', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'cliente', 'idx_ultimo_nome', '2018-10-09 17:04:51', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'endereco', 'PRIMARY', '2018-10-09 17:04:48', 'n_diff_pfx01', 603, 4, 'endereco_id'),
('test', 'endereco', 'PRIMARY', '2018-10-09 17:04:48', 'n_leaf_pages', 4, NULL, 'Number of leaf pages in the index'),
('test', 'endereco', 'PRIMARY', '2018-10-09 17:04:48', 'size', 5, NULL, 'Number of pages in the index'),
('test', 'endereco', 'idx_fk_cidade_id', '2018-10-09 17:04:48', 'n_diff_pfx01', 599, 1, 'cidade_id'),
('test', 'endereco', 'idx_fk_cidade_id', '2018-10-09 17:04:48', 'n_diff_pfx02', 603, 1, 'cidade_id,endereco_id'),
('test', 'endereco', 'idx_fk_cidade_id', '2018-10-09 17:04:48', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'endereco', 'idx_fk_cidade_id', '2018-10-09 17:04:48', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'filme', 'PRIMARY', '2018-10-09 17:04:52', 'n_diff_pfx01', 1000, 11, 'filme_id'),
('test', 'filme', 'PRIMARY', '2018-10-09 17:04:52', 'n_leaf_pages', 11, NULL, 'Number of leaf pages in the index'),
('test', 'filme', 'PRIMARY', '2018-10-09 17:04:52', 'size', 12, NULL, 'Number of pages in the index'),
('test', 'filme', 'idx_fk_idioma_id', '2018-10-09 17:04:52', 'n_diff_pfx01', 1, 1, 'idioma_id'),
('test', 'filme', 'idx_fk_idioma_id', '2018-10-09 17:04:52', 'n_diff_pfx02', 1000, 1, 'idioma_id,filme_id'),
('test', 'filme', 'idx_fk_idioma_id', '2018-10-09 17:04:52', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'filme', 'idx_fk_idioma_id', '2018-10-09 17:04:52', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'filme', 'idx_fk_idioma_original_id', '2018-10-09 17:04:52', 'n_diff_pfx01', 1, 1, 'idioma_original_id'),
('test', 'filme', 'idx_fk_idioma_original_id', '2018-10-09 17:04:52', 'n_diff_pfx02', 1000, 1, 'idioma_original_id,filme_id'),
('test', 'filme', 'idx_fk_idioma_original_id', '2018-10-09 17:04:52', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'filme', 'idx_fk_idioma_original_id', '2018-10-09 17:04:52', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'filme', 'idx_titulo', '2018-10-09 17:04:52', 'n_diff_pfx01', 1000, 2, 'titulo'),
('test', 'filme', 'idx_titulo', '2018-10-09 17:04:52', 'n_diff_pfx02', 1000, 2, 'titulo,filme_id'),
('test', 'filme', 'idx_titulo', '2018-10-09 17:04:52', 'n_leaf_pages', 2, NULL, 'Number of leaf pages in the index'),
('test', 'filme', 'idx_titulo', '2018-10-09 17:04:52', 'size', 3, NULL, 'Number of pages in the index'),
('test', 'filme_ator', 'PRIMARY', '2018-10-09 17:04:58', 'n_diff_pfx01', 200, 11, 'ator_id'),
('test', 'filme_ator', 'PRIMARY', '2018-10-09 17:04:58', 'n_diff_pfx02', 5462, 11, 'ator_id,filme_id'),
('test', 'filme_ator', 'PRIMARY', '2018-10-09 17:04:58', 'n_leaf_pages', 11, NULL, 'Number of leaf pages in the index'),
('test', 'filme_ator', 'PRIMARY', '2018-10-09 17:04:58', 'size', 12, NULL, 'Number of pages in the index'),
('test', 'filme_ator', 'idx_fk_filme_id', '2018-10-09 17:04:58', 'n_diff_pfx01', 997, 4, 'filme_id'),
('test', 'filme_ator', 'idx_fk_filme_id', '2018-10-09 17:04:58', 'n_diff_pfx02', 5462, 4, 'filme_id,ator_id'),
('test', 'filme_ator', 'idx_fk_filme_id', '2018-10-09 17:04:58', 'n_leaf_pages', 4, NULL, 'Number of leaf pages in the index'),
('test', 'filme_ator', 'idx_fk_filme_id', '2018-10-09 17:04:58', 'size', 5, NULL, 'Number of pages in the index'),
('test', 'filme_categoria', 'PRIMARY', '2018-10-09 17:05:09', 'n_diff_pfx01', 1000, 3, 'filme_id'),
('test', 'filme_categoria', 'PRIMARY', '2018-10-09 17:05:09', 'n_diff_pfx02', 1000, 3, 'filme_id,categoria_id'),
('test', 'filme_categoria', 'PRIMARY', '2018-10-09 17:05:09', 'n_leaf_pages', 3, NULL, 'Number of leaf pages in the index'),
('test', 'filme_categoria', 'PRIMARY', '2018-10-09 17:05:09', 'size', 4, NULL, 'Number of pages in the index'),
('test', 'filme_categoria', 'fk_filme_categoria_categoria', '2018-10-09 17:05:09', 'n_diff_pfx01', 16, 1, 'categoria_id'),
('test', 'filme_categoria', 'fk_filme_categoria_categoria', '2018-10-09 17:05:09', 'n_diff_pfx02', 1000, 1, 'categoria_id,filme_id'),
('test', 'filme_categoria', 'fk_filme_categoria_categoria', '2018-10-09 17:05:09', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'filme_categoria', 'fk_filme_categoria_categoria', '2018-10-09 17:05:09', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'funcionario', 'PRIMARY', '2018-10-09 17:04:50', 'n_diff_pfx01', 2, 1, 'funcionario_id'),
('test', 'funcionario', 'PRIMARY', '2018-10-09 17:04:50', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'funcionario', 'PRIMARY', '2018-10-09 17:04:50', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'funcionario', 'idx_fk_endereco_id', '2018-10-09 17:04:50', 'n_diff_pfx01', 2, 1, 'endereco_id'),
('test', 'funcionario', 'idx_fk_endereco_id', '2018-10-09 17:04:50', 'n_diff_pfx02', 2, 1, 'endereco_id,funcionario_id'),
('test', 'funcionario', 'idx_fk_endereco_id', '2018-10-09 17:04:50', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'funcionario', 'idx_fk_endereco_id', '2018-10-09 17:04:50', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'funcionario', 'idx_fk_loja_id', '2018-10-09 17:04:50', 'n_diff_pfx01', 2, 1, 'loja_id'),
('test', 'funcionario', 'idx_fk_loja_id', '2018-10-09 17:04:50', 'n_diff_pfx02', 2, 1, 'loja_id,funcionario_id'),
('test', 'funcionario', 'idx_fk_loja_id', '2018-10-09 17:04:50', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'funcionario', 'idx_fk_loja_id', '2018-10-09 17:04:50', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'idioma', 'PRIMARY', '2018-10-09 17:04:46', 'n_diff_pfx01', 6, 1, 'idioma_id'),
('test', 'idioma', 'PRIMARY', '2018-10-09 17:04:46', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'idioma', 'PRIMARY', '2018-10-09 17:04:46', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'inventario', 'PRIMARY', '2018-10-09 17:05:29', 'n_diff_pfx01', 4581, 10, 'inventario_id'),
('test', 'inventario', 'PRIMARY', '2018-10-09 17:05:29', 'n_leaf_pages', 10, NULL, 'Number of leaf pages in the index'),
('test', 'inventario', 'PRIMARY', '2018-10-09 17:05:29', 'size', 11, NULL, 'Number of pages in the index'),
('test', 'inventario', 'idx_fk_filme_id', '2018-10-09 17:05:29', 'n_diff_pfx01', 958, 4, 'filme_id'),
('test', 'inventario', 'idx_fk_filme_id', '2018-10-09 17:05:29', 'n_diff_pfx02', 4581, 4, 'filme_id,inventario_id'),
('test', 'inventario', 'idx_fk_filme_id', '2018-10-09 17:05:29', 'n_leaf_pages', 4, NULL, 'Number of leaf pages in the index'),
('test', 'inventario', 'idx_fk_filme_id', '2018-10-09 17:05:29', 'size', 5, NULL, 'Number of pages in the index'),
('test', 'inventario', 'idx_loja_id_filme_id', '2018-10-09 17:05:29', 'n_diff_pfx01', 2, 6, 'loja_id'),
('test', 'inventario', 'idx_loja_id_filme_id', '2018-10-09 17:05:29', 'n_diff_pfx02', 1521, 6, 'loja_id,filme_id'),
('test', 'inventario', 'idx_loja_id_filme_id', '2018-10-09 17:05:29', 'n_diff_pfx03', 4581, 6, 'loja_id,filme_id,inventario_id'),
('test', 'inventario', 'idx_loja_id_filme_id', '2018-10-09 17:05:29', 'n_leaf_pages', 6, NULL, 'Number of leaf pages in the index'),
('test', 'inventario', 'idx_loja_id_filme_id', '2018-10-09 17:05:29', 'size', 7, NULL, 'Number of pages in the index'),
('test', 'loja', 'PRIMARY', '2018-10-09 17:04:49', 'n_diff_pfx01', 2, 1, 'loja_id'),
('test', 'loja', 'PRIMARY', '2018-10-09 17:04:49', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'loja', 'PRIMARY', '2018-10-09 17:04:49', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'loja', 'idx_fk_endereco_id', '2018-10-09 17:04:49', 'n_diff_pfx01', 2, 1, 'endereco_id'),
('test', 'loja', 'idx_fk_endereco_id', '2018-10-09 17:04:49', 'n_diff_pfx02', 2, 1, 'endereco_id,loja_id'),
('test', 'loja', 'idx_fk_endereco_id', '2018-10-09 17:04:49', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'loja', 'idx_fk_endereco_id', '2018-10-09 17:04:49', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'loja', 'idx_unique_manager', '2018-10-09 17:04:49', 'n_diff_pfx01', 2, 1, 'gerente_id'),
('test', 'loja', 'idx_unique_manager', '2018-10-09 17:04:49', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'loja', 'idx_unique_manager', '2018-10-09 17:04:49', 'size', 1, NULL, 'Number of pages in the index'),
('test', 'pagamento', 'PRIMARY', '2018-10-09 17:05:50', 'n_diff_pfx01', 16086, 20, 'pagamento_id'),
('test', 'pagamento', 'PRIMARY', '2018-10-09 17:05:50', 'n_leaf_pages', 44, NULL, 'Number of leaf pages in the index'),
('test', 'pagamento', 'PRIMARY', '2018-10-09 17:05:50', 'size', 97, NULL, 'Number of pages in the index'),
('test', 'pagamento', 'fk_pagamento_aluguel', '2018-10-09 17:05:50', 'n_diff_pfx01', 16045, 16, 'aluguel_id'),
('test', 'pagamento', 'fk_pagamento_aluguel', '2018-10-09 17:05:50', 'n_diff_pfx02', 16049, 16, 'aluguel_id,pagamento_id'),
('test', 'pagamento', 'fk_pagamento_aluguel', '2018-10-09 17:05:50', 'n_leaf_pages', 16, NULL, 'Number of leaf pages in the index'),
('test', 'pagamento', 'fk_pagamento_aluguel', '2018-10-09 17:05:50', 'size', 17, NULL, 'Number of pages in the index'),
('test', 'pagamento', 'idx_fk_cliente_id', '2018-10-09 17:05:50', 'n_diff_pfx01', 599, 10, 'cliente_id'),
('test', 'pagamento', 'idx_fk_cliente_id', '2018-10-09 17:05:50', 'n_diff_pfx02', 16049, 10, 'cliente_id,pagamento_id'),
('test', 'pagamento', 'idx_fk_cliente_id', '2018-10-09 17:05:50', 'n_leaf_pages', 10, NULL, 'Number of leaf pages in the index'),
('test', 'pagamento', 'idx_fk_cliente_id', '2018-10-09 17:05:50', 'size', 11, NULL, 'Number of pages in the index'),
('test', 'pagamento', 'idx_fk_funcionario_id', '2018-10-09 17:05:50', 'n_diff_pfx01', 2, 10, 'funcionario_id'),
('test', 'pagamento', 'idx_fk_funcionario_id', '2018-10-09 17:05:50', 'n_diff_pfx02', 16049, 10, 'funcionario_id,pagamento_id'),
('test', 'pagamento', 'idx_fk_funcionario_id', '2018-10-09 17:05:50', 'n_leaf_pages', 10, NULL, 'Number of leaf pages in the index'),
('test', 'pagamento', 'idx_fk_funcionario_id', '2018-10-09 17:05:50', 'size', 11, NULL, 'Number of pages in the index'),
('test', 'pais', 'PRIMARY', '2018-10-09 17:04:48', 'n_diff_pfx01', 109, 1, 'pais_id'),
('test', 'pais', 'PRIMARY', '2018-10-09 17:04:48', 'n_leaf_pages', 1, NULL, 'Number of leaf pages in the index'),
('test', 'pais', 'PRIMARY', '2018-10-09 17:04:48', 'size', 1, NULL, 'Number of pages in the index');

-- --------------------------------------------------------

--
-- Table structure for table `innodb_table_stats`
--

CREATE TABLE `innodb_table_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `n_rows` bigint(20) UNSIGNED NOT NULL,
  `clustered_index_size` bigint(20) UNSIGNED NOT NULL,
  `sum_of_other_index_sizes` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `innodb_table_stats`
--

INSERT INTO `innodb_table_stats` (`database_name`, `table_name`, `last_update`, `n_rows`, `clustered_index_size`, `sum_of_other_index_sizes`) VALUES
('mysql', 'carrinho', '2018-11-17 23:41:04', 0, 1, 0),
('mysql', 'categoria', '2018-11-17 23:41:12', 0, 1, 0),
('mysql', 'cidade', '2018-11-17 23:41:13', 0, 1, 0),
('mysql', 'cliente', '2018-11-17 23:41:14', 2, 1, 0),
('mysql', 'endereco', '2018-11-17 23:41:16', 0, 1, 0),
('mysql', 'entrega', '2018-11-17 23:41:18', 0, 1, 0),
('mysql', 'estado', '2018-11-17 23:41:19', 0, 1, 0),
('mysql', 'foto', '2018-11-17 23:41:20', 0, 1, 0),
('mysql', 'gtid_slave_pos', '2015-11-06 15:13:16', 0, 1, 0),
('mysql', 'item', '2018-11-17 23:41:01', 0, 1, 0),
('mysql', 'pagamento', '2018-11-17 23:41:21', 0, 1, 0),
('mysql', 'pedido', '2018-11-17 23:41:22', 0, 1, 0),
('mysql', 'produto', '2018-11-17 23:41:23', 0, 1, 0),
('mysql', 'produtocategoria', '2018-11-17 23:41:02', 0, 1, 0),
('mysql', 'propriedades', '2018-11-17 23:41:03', 0, 1, 0),
('mysql', 'statuspedido', '2018-11-17 23:41:24', 0, 1, 0),
('phpmyadmin', 'pma__bookmark', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__central_columns', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__column_info', '2015-11-10 15:25:30', 0, 1, 1),
('phpmyadmin', 'pma__designer_settings', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__export_templates', '2015-11-10 15:25:30', 0, 1, 1),
('phpmyadmin', 'pma__favorite', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__history', '2015-11-10 15:25:30', 0, 1, 1),
('phpmyadmin', 'pma__navigationhiding', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__pdf_pages', '2015-11-10 15:25:30', 0, 1, 1),
('phpmyadmin', 'pma__recent', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__relation', '2015-11-10 15:25:30', 0, 1, 1),
('phpmyadmin', 'pma__savedsearches', '2015-11-10 15:25:30', 0, 1, 1),
('phpmyadmin', 'pma__table_coords', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__table_info', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__table_uiprefs', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__tracking', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__userconfig', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__usergroups', '2015-11-10 15:25:30', 0, 1, 0),
('phpmyadmin', 'pma__users', '2015-11-10 15:25:30', 0, 1, 0),
('test', 'aluguel', '2018-10-09 17:05:40', 16005, 97, 73),
('test', 'ator', '2018-10-09 17:05:19', 200, 1, 1),
('test', 'categoria', '2018-10-09 17:04:47', 16, 1, 0),
('test', 'cidade', '2018-10-09 17:04:48', 600, 3, 1),
('test', 'cliente', '2018-10-09 17:04:51', 599, 5, 3),
('test', 'endereco', '2018-10-09 17:04:48', 603, 5, 1),
('test', 'filme', '2018-10-09 17:04:52', 1000, 12, 5),
('test', 'filme_ator', '2018-10-09 17:04:58', 5462, 12, 5),
('test', 'filme_categoria', '2018-10-09 17:05:09', 1000, 4, 1),
('test', 'funcionario', '2018-10-09 17:04:50', 2, 1, 2),
('test', 'idioma', '2018-10-09 17:04:46', 6, 1, 0),
('test', 'inventario', '2018-10-09 17:05:29', 4581, 11, 12),
('test', 'loja', '2018-10-09 17:04:49', 2, 1, 2),
('test', 'pagamento', '2018-10-09 17:05:50', 16086, 97, 39),
('test', 'pais', '2018-10-09 17:04:48', 109, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Pedido_idPedido` int(10) UNSIGNED NOT NULL,
  `Produto_idProduto` int(11) NOT NULL,
  `Carrinho_idCarrinho` int(11) NOT NULL,
  `idItem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Pedido_idPedido`, `Produto_idProduto`, `Carrinho_idCarrinho`, `idItem`) VALUES
(2, 40, 0, 1),
(2, 40, 0, 2),
(3, 40, 0, 3),
(3, 40, 0, 4),
(4, 40, 0, 5),
(4, 40, 0, 6),
(6, 40, 0, 7),
(7, 40, 0, 8),
(8, 40, 0, 9),
(8, 40, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ndb_binlog_index`
--

CREATE TABLE `ndb_binlog_index` (
  `Position` bigint(20) UNSIGNED NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint(20) UNSIGNED NOT NULL,
  `inserts` int(10) UNSIGNED NOT NULL,
  `updates` int(10) UNSIGNED NOT NULL,
  `deletes` int(10) UNSIGNED NOT NULL,
  `schemaops` int(10) UNSIGNED NOT NULL,
  `orig_server_id` int(10) UNSIGNED NOT NULL,
  `orig_epoch` bigint(20) UNSIGNED NOT NULL,
  `gci` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pagamento`
--

CREATE TABLE `pagamento` (
  `idPagamento` int(11) NOT NULL,
  `tipoPagamento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(10) UNSIGNED NOT NULL,
  `dataPedido` date DEFAULT NULL,
  `valorPedido` float DEFAULT NULL,
  `Pedidocol` varchar(45) DEFAULT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  `Pagamento_idPagamento` int(11) NOT NULL,
  `StatusPedido_idStatusPedido` int(11) NOT NULL,
  `Entrega_idEntrega` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`idPedido`, `dataPedido`, `valorPedido`, `Pedidocol`, `Cliente_idCliente`, `Pagamento_idPagamento`, `StatusPedido_idStatusPedido`, `Entrega_idEntrega`) VALUES
(1, '2018-12-08', 80, NULL, 23, 1, 1, 1),
(2, '2018-12-08', 80, NULL, 23, 1, 1, 1),
(3, '2018-12-08', 80, NULL, 23, 1, 1, 1),
(4, '2018-12-08', 80, NULL, 23, 1, 1, 1),
(5, '2018-12-08', 80, NULL, 23, 1, 1, 1),
(6, '2018-12-08', 120, NULL, 23, 1, 1, 1),
(7, '2018-12-08', 160, NULL, 23, 1, 1, 1),
(8, '2018-12-08', 240, NULL, 23, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plugin`
--

CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MySQL plugins';

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'acdb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"carrinho\",\"categoria\",\"cidade\",\"cliente\",\"columns_priv\",\"column_stats\",\"db\",\"endereco\",\"entrega\",\"estado\",\"event\",\"foto\",\"func\",\"general_log\",\"gtid_slave_pos\",\"help_category\",\"help_keyword\",\"help_relation\",\"help_topic\",\"host\",\"index_stats\",\"innodb_index_stats\",\"innodb_table_stats\",\"item\",\"ndb_binlog_index\",\"pagamento\",\"pedido\",\"plugin\",\"proc\",\"procs_priv\",\"produto\",\"produtocategoria\",\"propriedades\",\"proxies_priv\",\"roles_mapping\",\"servers\",\"slave_master_info\",\"slave_relay_log_info\",\"slave_worker_info\",\"slow_log\",\"statuspedido\",\"tables_priv\",\"table_stats\",\"time_zone\",\"time_zone_leap_second\",\"time_zone_name\",\"time_zone_transition\",\"time_zone_transition_type\",\"user\"],\"table_structure[]\":[\"carrinho\",\"categoria\",\"cidade\",\"cliente\",\"columns_priv\",\"column_stats\",\"db\",\"endereco\",\"entrega\",\"estado\",\"event\",\"foto\",\"func\",\"general_log\",\"gtid_slave_pos\",\"help_category\",\"help_keyword\",\"help_relation\",\"help_topic\",\"host\",\"index_stats\",\"innodb_index_stats\",\"innodb_table_stats\",\"item\",\"ndb_binlog_index\",\"pagamento\",\"pedido\",\"plugin\",\"proc\",\"procs_priv\",\"produto\",\"produtocategoria\",\"propriedades\",\"proxies_priv\",\"roles_mapping\",\"servers\",\"slave_master_info\",\"slave_relay_log_info\",\"slave_worker_info\",\"slow_log\",\"statuspedido\",\"tables_priv\",\"table_stats\",\"time_zone\",\"time_zone_leap_second\",\"time_zone_name\",\"time_zone_transition\",\"time_zone_transition_type\",\"user\"],\"table_data[]\":[\"carrinho\",\"categoria\",\"cidade\",\"cliente\",\"columns_priv\",\"column_stats\",\"db\",\"endereco\",\"entrega\",\"estado\",\"event\",\"foto\",\"func\",\"general_log\",\"gtid_slave_pos\",\"help_category\",\"help_keyword\",\"help_relation\",\"help_topic\",\"host\",\"index_stats\",\"innodb_index_stats\",\"innodb_table_stats\",\"item\",\"ndb_binlog_index\",\"pagamento\",\"pedido\",\"plugin\",\"proc\",\"procs_priv\",\"produto\",\"produtocategoria\",\"propriedades\",\"proxies_priv\",\"roles_mapping\",\"servers\",\"slave_master_info\",\"slave_relay_log_info\",\"slave_worker_info\",\"slow_log\",\"statuspedido\",\"tables_priv\",\"table_stats\",\"time_zone\",\"time_zone_leap_second\",\"time_zone_name\",\"time_zone_transition\",\"time_zone_transition_type\",\"user\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuaÃ§Ã£o)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"ConteÃºdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"ConteÃºdo da tabela @TABLE@ (continuaÃ§Ã£o)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-12-03 22:47:29', '{\"lang\":\"pt\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `proc`
--

CREATE TABLE `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` char(141) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';

-- --------------------------------------------------------

--
-- Table structure for table `procs_priv`
--

CREATE TABLE `procs_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` char(141) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';

-- --------------------------------------------------------

--
-- Table structure for table `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `destaqueProduto` tinyint(4) DEFAULT '0',
  `nomeProduto` varchar(45) DEFAULT NULL,
  `estoqueProduto` int(11) DEFAULT NULL,
  `skuProduto` varchar(45) DEFAULT NULL,
  `valorProduto` float DEFAULT NULL,
  `valorDescontoProduto` float DEFAULT NULL,
  `descricaoProduto` varchar(500) DEFAULT NULL,
  `fotoProduto` varchar(45) DEFAULT NULL,
  `dataCriacaoProduto` date DEFAULT NULL,
  `dataAlteracaoProduto` date DEFAULT NULL,
  `Produtocol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produto`
--

INSERT INTO `produto` (`idProduto`, `destaqueProduto`, `nomeProduto`, `estoqueProduto`, `skuProduto`, `valorProduto`, `valorDescontoProduto`, `descricaoProduto`, `fotoProduto`, `dataCriacaoProduto`, `dataAlteracaoProduto`, `Produtocol`) VALUES
(1, 1, 'Camiseta', 1, '22', 40, 30, 'Camiseta básica', NULL, '2018-12-04', '2018-12-04', NULL),
(3, 1, 'Dinara Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-03', NULL),
(4, 0, 'Dinara Lima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produtocategoria`
--

CREATE TABLE `produtocategoria` (
  `Produto_idProduto` int(11) NOT NULL,
  `Categoria_idCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `propriedades`
--

CREATE TABLE `propriedades` (
  `Produto_idProduto` int(11) NOT NULL,
  `chavePropriedade` varchar(45) DEFAULT NULL,
  `valorPropriedade` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proxies_priv`
--

CREATE TABLE `proxies_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_user` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` char(141) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User proxy privileges';

--
-- Dumping data for table `proxies_priv`
--

INSERT INTO `proxies_priv` (`Host`, `User`, `Proxied_host`, `Proxied_user`, `With_grant`, `Grantor`, `Timestamp`) VALUES
('localhost', 'root', '', '', 1, '', '2013-04-05 13:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `roles_mapping`
--

CREATE TABLE `roles_mapping` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Role` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Admin_option` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Granted roles';

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(64) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(80) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MySQL Foreign Servers table';

-- --------------------------------------------------------

--
-- Table structure for table `slave_master_info`
--

CREATE TABLE `slave_master_info` (
  `Number_of_lines` int(10) UNSIGNED NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint(20) UNSIGNED NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'The host name of the master.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int(10) UNSIGNED NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int(10) UNSIGNED NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint(20) UNSIGNED NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slave_relay_log_info`
--

CREATE TABLE `slave_relay_log_info` (
  `Number_of_lines` int(10) UNSIGNED NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint(20) UNSIGNED NOT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint(20) UNSIGNED NOT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int(11) NOT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int(10) UNSIGNED NOT NULL,
  `Id` int(10) UNSIGNED NOT NULL COMMENT 'Internal Id that uniquely identifies this record.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slave_worker_info`
--

CREATE TABLE `slave_worker_info` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint(20) UNSIGNED NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint(20) UNSIGNED NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint(20) UNSIGNED NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint(20) UNSIGNED NOT NULL,
  `Checkpoint_seqno` int(10) UNSIGNED NOT NULL,
  `Checkpoint_group_size` int(10) UNSIGNED NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slow_log`
--

CREATE TABLE `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) UNSIGNED NOT NULL,
  `sql_text` mediumtext NOT NULL,
  `thread_id` bigint(21) UNSIGNED NOT NULL,
  `rows_affected` int(11) NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';

-- --------------------------------------------------------

--
-- Table structure for table `statuspedido`
--

CREATE TABLE `statuspedido` (
  `idStatusPedido` int(11) NOT NULL,
  `nomeStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tables_priv`
--

CREATE TABLE `tables_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` char(141) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';

-- --------------------------------------------------------

--
-- Table structure for table `table_stats`
--

CREATE TABLE `table_stats` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `cardinality` bigint(21) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Statistics on Tables';

-- --------------------------------------------------------

--
-- Table structure for table `time_zone`
--

CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) UNSIGNED NOT NULL,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zones';

-- --------------------------------------------------------

--
-- Table structure for table `time_zone_leap_second`
--

CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Leap seconds information for time zones';

-- --------------------------------------------------------

--
-- Table structure for table `time_zone_name`
--

CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone names';

-- --------------------------------------------------------

--
-- Table structure for table `time_zone_transition`
--

CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) UNSIGNED NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transitions';

-- --------------------------------------------------------

--
-- Table structure for table `time_zone_transition_type`
--

CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) UNSIGNED NOT NULL,
  `Transition_type_id` int(10) UNSIGNED NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT '0',
  `Is_DST` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transition types';

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password` char(41) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `max_updates` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `max_connections` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `max_user_connections` int(11) NOT NULL DEFAULT '0',
  `plugin` char(64) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `authentication_string` text COLLATE utf8_bin NOT NULL,
  `password_expired` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `is_role` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `default_role` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_statement_time` decimal(12,6) NOT NULL DEFAULT '0.000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Host`, `User`, `Password`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Reload_priv`, `Shutdown_priv`, `Process_priv`, `File_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Show_db_priv`, `Super_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Execute_priv`, `Repl_slave_priv`, `Repl_client_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Create_user_priv`, `Event_priv`, `Trigger_priv`, `Create_tablespace_priv`, `ssl_type`, `ssl_cipher`, `x509_issuer`, `x509_subject`, `max_questions`, `max_updates`, `max_connections`, `max_user_connections`, `plugin`, `authentication_string`, `password_expired`, `is_role`, `default_role`, `max_statement_time`) VALUES
('localhost', 'root', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0, '', '', 'N', 'N', '', '0.000000'),
('127.0.0.1', 'root', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0, '', '', 'N', 'N', '', '0.000000'),
('::1', 'root', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0, '', '', 'N', 'N', '', '0.000000'),
('localhost', '', '', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', '', '', 0, 0, 0, 0, '', '', 'N', 'N', '', '0.000000'),
('localhost', 'pma', '', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', '', '', 0, 0, 0, 0, '', '', 'N', 'N', '', '0.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`idCarrinho`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`idCidade`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indexes for table `columns_priv`
--
ALTER TABLE `columns_priv`
  ADD PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`);

--
-- Indexes for table `column_stats`
--
ALTER TABLE `column_stats`
  ADD PRIMARY KEY (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `db`
--
ALTER TABLE `db`
  ADD PRIMARY KEY (`Host`,`Db`,`User`),
  ADD KEY `User` (`User`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Indexes for table `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`idEntrega`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idEstado`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`db`,`name`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`idFoto`);

--
-- Indexes for table `func`
--
ALTER TABLE `func`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `gtid_slave_pos`
--
ALTER TABLE `gtid_slave_pos`
  ADD PRIMARY KEY (`domain_id`,`sub_id`);

--
-- Indexes for table `help_category`
--
ALTER TABLE `help_category`
  ADD PRIMARY KEY (`help_category_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `help_keyword`
--
ALTER TABLE `help_keyword`
  ADD PRIMARY KEY (`help_keyword_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `help_relation`
--
ALTER TABLE `help_relation`
  ADD PRIMARY KEY (`help_keyword_id`,`help_topic_id`);

--
-- Indexes for table `help_topic`
--
ALTER TABLE `help_topic`
  ADD PRIMARY KEY (`help_topic_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`Host`,`Db`);

--
-- Indexes for table `index_stats`
--
ALTER TABLE `index_stats`
  ADD PRIMARY KEY (`db_name`,`table_name`,`index_name`,`prefix_arity`);

--
-- Indexes for table `innodb_index_stats`
--
ALTER TABLE `innodb_index_stats`
  ADD PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`);

--
-- Indexes for table `innodb_table_stats`
--
ALTER TABLE `innodb_table_stats`
  ADD PRIMARY KEY (`database_name`,`table_name`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`idItem`);

--
-- Indexes for table `ndb_binlog_index`
--
ALTER TABLE `ndb_binlog_index`
  ADD PRIMARY KEY (`epoch`,`orig_server_id`,`orig_epoch`);

--
-- Indexes for table `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`idPagamento`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`);

--
-- Indexes for table `plugin`
--
ALTER TABLE `plugin`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `proc`
--
ALTER TABLE `proc`
  ADD PRIMARY KEY (`db`,`name`,`type`);

--
-- Indexes for table `procs_priv`
--
ALTER TABLE `procs_priv`
  ADD PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  ADD KEY `Grantor` (`Grantor`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- Indexes for table `proxies_priv`
--
ALTER TABLE `proxies_priv`
  ADD PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  ADD KEY `Grantor` (`Grantor`);

--
-- Indexes for table `roles_mapping`
--
ALTER TABLE `roles_mapping`
  ADD UNIQUE KEY `Host` (`Host`,`User`,`Role`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`Server_name`);

--
-- Indexes for table `slave_master_info`
--
ALTER TABLE `slave_master_info`
  ADD PRIMARY KEY (`Host`,`Port`);

--
-- Indexes for table `slave_relay_log_info`
--
ALTER TABLE `slave_relay_log_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `slave_worker_info`
--
ALTER TABLE `slave_worker_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `statuspedido`
--
ALTER TABLE `statuspedido`
  ADD PRIMARY KEY (`idStatusPedido`);

--
-- Indexes for table `tables_priv`
--
ALTER TABLE `tables_priv`
  ADD PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  ADD KEY `Grantor` (`Grantor`);

--
-- Indexes for table `table_stats`
--
ALTER TABLE `table_stats`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `time_zone`
--
ALTER TABLE `time_zone`
  ADD PRIMARY KEY (`Time_zone_id`);

--
-- Indexes for table `time_zone_leap_second`
--
ALTER TABLE `time_zone_leap_second`
  ADD PRIMARY KEY (`Transition_time`);

--
-- Indexes for table `time_zone_name`
--
ALTER TABLE `time_zone_name`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `time_zone_transition`
--
ALTER TABLE `time_zone_transition`
  ADD PRIMARY KEY (`Time_zone_id`,`Transition_time`);

--
-- Indexes for table `time_zone_transition_type`
--
ALTER TABLE `time_zone_transition_type`
  ADD PRIMARY KEY (`Time_zone_id`,`Transition_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Host`,`User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `idCidade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `entrega`
--
ALTER TABLE `entrega`
  MODIFY `idEntrega` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `idEstado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `idPagamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statuspedido`
--
ALTER TABLE `statuspedido`
  MODIFY `idStatusPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_zone`
--
ALTER TABLE `time_zone`
  MODIFY `Time_zone_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
