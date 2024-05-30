TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER trigger_juan BEFORE INSERT ON other_types\n       FOR EACH ROW\n     BEGIN\n           SET NEW.populatedViaTrigger = 2;\n       END' 'CREATE DEFINER=`root`@`localhost` TRIGGER trigger_two AFTER UPDATE ON other_types\n       FOR EACH ROW\n     BEGIN\n           UPDATE other_types\n              SET populatedViaTrigger2 = 3\n            WHERE ot_id = NEW.ot_id;\n       END'
sql_modes=1073741832 1073741832
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci'
