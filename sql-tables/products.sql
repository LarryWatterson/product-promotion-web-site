SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `img_filename` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'product', 'description', 10.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (2, 'product', 'description', 20.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (3, 'product', 'description', 30.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (4, 'product', 'description', 40.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (5, 'product', 'description', 50.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (6, 'product', 'description', 60.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (7, 'product', 'description', 70.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (8, 'product', 'description', 80.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (9, 'product', 'description', 90.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (10, 'product', 'description', 100.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (11, 'product', 'description', 110.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (12, 'product', 'description', 120.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (13, 'product', 'description', 130.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (14, 'product', 'description', 140.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (15, 'product', 'description', 150.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (16, 'product', 'description', 160.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (17, 'product', 'description', 170.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (18, 'product', 'description', 180.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (19, 'product', 'description', 190.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (20, 'product', 'description', 200.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (21, 'product', 'description', 210.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (22, 'product', 'description', 220.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (23, 'product', 'description', 230.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (24, 'product', 'description', 240.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (25, 'product', 'description', 250.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (26, 'product', 'description', 260.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (27, 'product', 'description', 270.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (28, 'product', 'description', 280.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (29, 'product', 'description', 290.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (30, 'product', 'description', 300.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (31, 'product', 'description', 310.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (32, 'product', 'description', 320.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (33, 'product', 'description', 330.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (34, 'product', 'description', 340.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (35, 'product', 'description', 350.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (36, 'product', 'description', 360.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (37, 'product', 'description', 370.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (38, 'product', 'description', 380.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (39, 'product', 'description', 390.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (40, 'product', 'description', 400.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (41, 'product', 'description', 410.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (42, 'product', 'description', 420.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (43, 'product', 'description', 430.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (44, 'product', 'description', 440.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (45, 'product', 'description', 450.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (46, 'product', 'description', 460.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (47, 'product', 'description', 470.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (48, 'product', 'description', 480.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (49, 'product', 'description', 490.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (50, 'product', 'description', 500.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (51, 'product', 'description', 510.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (52, 'product', 'description', 520.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (53, 'product', 'description', 530.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (54, 'product', 'description', 540.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (55, 'product', 'description', 550.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (56, 'product', 'description', 560.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (57, 'product', 'description', 570.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (58, 'product', 'description', 580.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (59, 'product', 'description', 590.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (60, 'product', 'description', 600.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (61, 'product', 'description', 610.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (62, 'product', 'description', 620.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (63, 'product', 'description', 630.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (64, 'product', 'description', 640.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (65, 'product', 'description', 650.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (66, 'product', 'description', 660.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (67, 'product', 'description', 670.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (68, 'product', 'description', 680.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (69, 'product', 'description', 690.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (70, 'product', 'description', 700.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (71, 'product', 'description', 710.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (72, 'product', 'description', 720.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (73, 'product', 'description', 730.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (74, 'product', 'description', 740.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (75, 'product', 'description', 750.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (76, 'product', 'description', 760.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (77, 'product', 'description', 770.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (78, 'product', 'description', 780.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (79, 'product', 'description', 790.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (80, 'product', 'description', 800.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (81, 'product', 'description', 810.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (82, 'product', 'description', 820.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (83, 'product', 'description', 830.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (84, 'product', 'description', 840.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (85, 'product', 'description', 850.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (86, 'product', 'description', 860.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (87, 'product', 'description', 870.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (88, 'product', 'description', 880.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (89, 'product', 'description', 890.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (90, 'product', 'description', 900.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (91, 'product', 'description', 910.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (92, 'product', 'description', 920.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (93, 'product', 'description', 930.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (94, 'product', 'description', 940.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (95, 'product', 'description', 950.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (96, 'product', 'description', 960.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (97, 'product', 'description', 970.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (98, 'product', 'description', 980.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (99, 'product', 'description', 990.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (100, 'product', 'description', 1000.00, 'image-1685203251631-396662168.png', '2023-05-27 19:23:58');
INSERT INTO `products` VALUES (101, 'product101', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis libero enim, suscipit a tellus in, elementum sollicitudin nisi. Integer quis auctor turpis. Aenean non ex.', 5000.00, 'image-1685203251631-396662168.png', '2023-05-27 20:52:04');

SET FOREIGN_KEY_CHECKS = 1;
