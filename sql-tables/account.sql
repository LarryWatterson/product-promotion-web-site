SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'unique id',
  `username` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `password` varchar(48) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `surname` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `e_mail` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `is_active` tinyint(1) UNSIGNED NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'root', 'c4ca4238a0b923820dcc509a6f75849b', 'UNIT', 'TEST', 'unittest@test.com', 1);

SET FOREIGN_KEY_CHECKS = 1;
