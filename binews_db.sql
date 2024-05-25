/*
 Navicat Premium Data Transfer

 Source Server         : DOCKER_MARIA
 Source Server Type    : MariaDB
 Source Server Version : 101107 (10.11.7-MariaDB-1:10.11.7+maria~ubu2204)
 Source Host           : localhost:3306
 Source Schema         : binews_db

 Target Server Type    : MariaDB
 Target Server Version : 101107 (10.11.7-MariaDB-1:10.11.7+maria~ubu2204)
 File Encoding         : 65001

 Date: 24/05/2024 15:34:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cancelled_at` int(11) NULL DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2024_05_16_031102_create_categories_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_05_16_032805_create_settings_table', 1);
INSERT INTO `migrations` VALUES (6, '2024_05_16_033146_create_artikels_table', 1);
INSERT INTO `migrations` VALUES (7, '2024_05_16_033210_create_banners_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_05_16_033227_create_beritas_table', 1);
INSERT INTO `migrations` VALUES (9, '2024_05_16_033343_create_galleries_table', 1);
INSERT INTO `migrations` VALUES (10, '2024_05_16_033436_create_profiles_table', 1);
INSERT INTO `migrations` VALUES (11, '2024_05_16_065601_create_kabupatens_table', 1);
INSERT INTO `migrations` VALUES (12, '2024_05_16_074525_create_komens_table', 1);
INSERT INTO `migrations` VALUES (13, '2024_05_17_032250_create_statis_pages_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id`) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('QBW5Ds3asyn03Nwo1I91A0TVszqi3SW4ig3W4zzd', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm5zbWl0UWVrWm5BTmoyOEhDamdycXMxZnNnaVN3NWlqZjBWOFpXNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716539078);
INSERT INTO `sessions` VALUES ('TkA4AylojpvIAKyGK0Qq1iffhaeOKctYwXcvbPhj', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTGtYTmpldW9IOFc4U0U3U0s1cHpzSjhDRU5WSDlTWUdSRTE1ZG9FdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716534068);

-- ----------------------------
-- Table structure for tb_artikels
-- ----------------------------
DROP TABLE IF EXISTS `tb_artikels`;
CREATE TABLE `tb_artikels`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_artikels
-- ----------------------------

-- ----------------------------
-- Table structure for tb_banners
-- ----------------------------
DROP TABLE IF EXISTS `tb_banners`;
CREATE TABLE `tb_banners`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_banners
-- ----------------------------

-- ----------------------------
-- Table structure for tb_beritas
-- ----------------------------
DROP TABLE IF EXISTS `tb_beritas`;
CREATE TABLE `tb_beritas`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `video_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pub_date` timestamp NULL DEFAULT NULL,
  `source_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `source_priority` int(11) NOT NULL DEFAULT 0,
  `source_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `source_icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_beritas_category_id_foreign`(`category_id`) USING BTREE,
  CONSTRAINT `tb_beritas_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `tb_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_beritas
-- ----------------------------
INSERT INTO `tb_beritas` VALUES (88, 'D¥N Dynasty Global akan menjadi token pembayaran BrickMark Group', 'Crypto Valley: Dua pelopor ini memulai pasar real estat global Penerbit D¥N, Dynasty, mengakuisisi saham di penyedia layanan tokenisasi, BrickMark Penyelesaian investasi senilai CHF 10 juta dengan token pembayaran Dynasty Tokenisasi real estat senilai CHF 1,5 miliar direncanakan melalui...', 'N/A', 'https://www.prnewswire.com/id/rilis-berita/dn-dynasty-global-akan-menjadi-token-pembayaran-brickmark-group-302154529.html', 'https://mma.prnewswire.com/media/2419496/Dynasty_Global.jpg?p=publish', '495ea563dec321105bb16177a42f8d7f', 'bot_scrap', NULL, '2024-05-23 17:06:00', 'prnewswire_id', 1822, 'https://www.prnewswire.com/id', 'https://i.bytvi.com/domain_icons/prnewswire_id.png', 'indonesian', 'indonesia', NULL, 'business', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (89, 'Rehabilitasi Pelabuhan Teluk Palu Selesai, Ekonomi Siap Digeber', 'Dalam proses penyelesaian rehabilitasi dan rekonstruksi Pelabuhan Teluk Palu, telah dilakukan penelitian, pengujian, dan pendataan aset yang diserahterimakan.', 'N/A', 'https://finance.detik.com/infrastruktur/d-7355179/rehabilitasi-pelabuhan-teluk-palu-selesai-ekonomi-siap-digeber', 'https://akcdn.detik.net.id/community/media/visual/2015/11/17/13a85d3b-0953-4187-9294-08c0cdbd90de_169.jpg?w=360&q=90', '0d474c224a50144992df4853b53f129e', 'bot_scrap', NULL, '2024-05-23 16:00:11', 'detik', 55638, 'https://news.detik.com', 'https://i.bytvi.com/domain_icons/detik.png', 'indonesian', 'indonesia', NULL, 'business', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (90, 'Daya Saing Digital RI di Tiap Daerah Menunjukkan Tren Positif', 'Daya saing digital setiap daerah di Indonesia terus menunjukkan tren positif. Hal itu terlihat dengan skor East VenturesDigital Competitiveness Index (EV-DCI) 2024 sebesar 38,1.', 'N/A', 'https://ekbis.sindonews.com/read/1382535/39/daya-saing-digital-ri-di-tiap-daerah-menunjukkan-tren-positif-1716476746', 'https://pict-b.sindonews.net/dyn/850/pena/news/2024/05/23/39/1382535/daya-saing-digital-ri-di-tiap-daerah-menunjukkan-tren-positif-ekk.jpeg', 'ee7784c0cbd83f12575c84cf7482717d', 'bot_scrap', NULL, '2024-05-23 15:58:54', 'sindonews', 329339, 'https://www.sindonews.com', 'https://i.bytvi.com/domain_icons/sindonews.png', 'indonesian', 'indonesia', NULL, 'business', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (91, 'Solusi logistik \"one-stop AMR on-site\" dipamerkan Syrius Technology di CeMAT South East Asia 2024', 'SINGAPURA, 23 Mei 2024 /PRNewswire/ -- Pada 15-17 Mei lalu, Singapore Logistics Technology and Transportation Exhibition (CeMAT South East Asia) berlangsung dengan sukses. Di ajang ini, Syrius Technology memamerkan solusi AMR inovatif untuk penanganan logistik internal, memperlihatkan...', 'N/A', 'https://www.prnewswire.com/id/rilis-berita/solusi-logistik-one-stop-amr-on-site-dipamerkan-syrius-technology-di-cemat-south-east-asia-2024-302154422.html', 'https://mma.prnewswire.com/media/2420530/image_5029554_38344786.jpg?p=original', 'f45fd913e7c6f612f9ec1bb4438bdb77', 'bot_scrap', NULL, '2024-05-23 15:44:00', 'prnewswire_id', 1822, 'https://www.prnewswire.com/id', 'https://i.bytvi.com/domain_icons/prnewswire_id.png', 'indonesian', 'indonesia', NULL, 'business, technology', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (92, 'Naik 17%, Laba Bersih Citibank Tembus Rp 665,9 M Kuartal I 2024', 'Citibank, N.A., Indonesia (Citi Indonesia) membukukan laba bersih sebesar Rp 665,9 miliar pada triwulan I 2024.', 'N/A', 'https://finance.detik.com/moneter/d-7355188/naik-17-laba-bersih-citibank-tembus-rp-665-9-m-kuartal-i-2024', 'https://akcdn.detik.net.id/community/media/visual/2016/04/21/9ad72e71-0c74-4bf1-9587-59c6aac76be3_169.jpg?w=360&q=90', 'c45143e398e9e8e17257603fbbb1f517', 'bot_scrap', NULL, '2024-05-23 15:35:20', 'detik', 55638, 'https://news.detik.com', 'https://i.bytvi.com/domain_icons/detik.png', 'indonesian', 'indonesia', NULL, 'business', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (93, 'Omdia perkirakan bahwa OLED untuk pasar PC seluler akan menumbuhkan CAGR hingga 37% pada tahun 2031', 'LONDON, 23 Mei 2024 /PRNewswire/ -- Menurut pelacak perkiraan Omdia tentang permintaan jangka panjang terhadap layar, permintaan layar OLED PC seluler diperkirakan menumbuhkan CAGR hingga 37% dari tahun 2023 hingga 2031. Lonjakan ini menunjukkan tren semakin banyak merek yang...', 'N/A', 'https://www.prnewswire.com/id/rilis-berita/omdia-perkirakan-bahwa-oled-untuk-pasar-pc-seluler-akan-menumbuhkan-cagr-hingga-37-pada-tahun-2031-302154400.html', 'https://mma.prnewswire.com/media/2419703/Omdia_OLED_demand_forecast_for_mobile_PC.jpg?p=publish', '8f7a94d783f09660a142261da2128925', 'bot_scrap', NULL, '2024-05-23 15:32:00', 'prnewswire_id', 1822, 'https://www.prnewswire.com/id', 'https://i.bytvi.com/domain_icons/prnewswire_id.png', 'indonesian', 'indonesia', NULL, 'business, technology', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (94, 'Target Kandas, Produsen Mobil Listrik Ini Diminta Pulangkan Subsidi Rp 420 M', 'Otoritas daerah di China meminta produsen mobil listrik Evergrande New Energy Vehicle (NEV) mengembalikan subsidi senilai 1,9 miliar yuan. Kenapa?', 'N/A', 'https://finance.detik.com/industri/d-7355161/target-kandas-produsen-mobil-listrik-ini-diminta-pulangkan-subsidi-rp-420-m', 'https://akcdn.detik.net.id/community/media/visual/2021/09/13/ilustrasi-colokan-mobil-listrik_169.jpeg?w=360&q=90', 'cabde4ee701490196ad9bc848023b5e6', 'bot_scrap', NULL, '2024-05-23 15:00:03', 'detik', 55638, 'https://news.detik.com', 'https://i.bytvi.com/domain_icons/detik.png', 'indonesian', 'indonesia', NULL, 'business', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (95, 'Top 3: Cara Daftar Beasiswa BUMN 2024, Buka Link Berikut', 'Berita mengenai syarat daftar beasiswa BUMN ini menjadi yang paling banyak dibaca.', 'N/A', 'https://www.liputan6.com/bisnis/read/5603045/top-3-cara-daftar-beasiswa-bumn-2024-buka-link-berikut', 'https://cdn0-production-images-kly.akamaized.net/_A5NvCM9Z4Cmk5iB20IUaxtfejU=/673x379/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2972284/original/035160900_1574218221-DJI_0146.JPG.jpeg', '25b8114387e4c122291fd3487bdf520c', 'bot_scrap', NULL, '2024-05-23 14:41:45', 'liputan6', 111731, 'https://www.liputan6.com', 'https://i.bytvi.com/domain_icons/liputan6.png', 'indonesian', 'indonesia', NULL, 'business', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (96, 'Analis Standard Chartered Optimis SEC Beri Izin ETF Spot Ethereum Pekan Ini', 'Pasar tengah mengamati Komisi Sekuritas dan Bursa AS (SEC) ketika regulator hampir memutuskan apakah akan menyetujui ETF spot Ethereum', 'N/A', 'https://www.liputan6.com/crypto/read/5602515/analis-standard-chartered-optimis-sec-beri-izin-etf-spot-ethereum-pekan-ini', 'https://cdn1-production-images-kly.akamaized.net/JOprLUQ7husMGuaSth2zOX64Qnw=/673x379/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3358841/original/016664200_1611571070-cryptocurrency-3085139.jpg', 'aa837bd3db9e5ce674717c15f5721454', 'bot_scrap', NULL, '2024-05-23 14:25:56', 'liputan6', 111731, 'https://www.liputan6.com', 'https://i.bytvi.com/domain_icons/liputan6.png', 'indonesian', 'indonesia', NULL, 'business', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (97, 'Ramai Jukir Liar, Alfamart Pertegas soal Aturan Bayar Parkir', 'Corporate Affairs Alfamart, Solihin, mengatakan para pelanggan dipastikan tidak perlu membayar tarif parkir.', 'N/A', 'https://finance.detik.com/berita-ekonomi-bisnis/d-7355110/ramai-jukir-liar-alfamart-pertegas-soal-aturan-bayar-parkir', 'https://akcdn.detik.net.id/community/media/visual/2022/05/27/salah-satu-gerai-alfamart-1_169.jpeg?w=360&q=90', 'cd05cc085f61ead3c6bcc85bb25f9d25', 'bot_scrap', NULL, '2024-05-23 14:20:36', 'detik', 55638, 'https://news.detik.com', 'https://i.bytvi.com/domain_icons/detik.png', 'indonesian', 'indonesia', NULL, 'business', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (98, 'Petugas Gabungan Razia Bus Pariwisata di Tulungagung, Ini Hasilnya', 'Petugas Gabungan Razia Bus Pariwisata di Tulungagung, Ini Hasilnya. 👇Petugas gabungan dari unsur Dinas Perhubungan, TNI dan Kepolisian melakukan razia angkutan pengangkut wisatawan di Tulungagung.--Ikuti kami di 👉https://bit.ly/392voLE#beritaviral #jawatimur #viral berita #beritaterkini #terpopuler #news #beritajatim #infojatim #newsupdate #FYI #fyp', 'N/A', 'https://beritajatim.com/hukum-kriminal/petugas-gabungan-razia-bus-pariwisata-di-tulungagung-ini-hasilnya/', 'https://beritajatim.com/cdn-cgi/image/width=1280,height=720,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2024/05/2dabfc1c-193d-4e07-9a69-4699fc882c74_11zon.jpeg', 'f8697022e949402ba51b1ea997977e7c', 'bot_scrap', NULL, '2024-05-23 15:07:57', 'beritajatim', 7085593, 'https://beritajatim.com', 'https://i.bytvi.com/domain_icons/beritajatim.png', 'indonesian', 'indonesia', NULL, 'crime', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (99, 'Kapolres Pamekasan: Pers Bagai Pelita dan Harus Cerdaskan Publik', 'Kapolres Pamekasan: Pers Bagai Pelita dan Harus Cerdaskan Publik. 👇Kapolres Pamekasan, AKBP Jazuli Dani Iriawan menilai pers sebagai pelita, sekaligus diminta agar selalu bisa mencerdaskan publik.--Ikuti kami di 👉https://bit.ly/392voLE#beritaviral #jawatimur #viral berita #beritaterkini #terpopuler #news #beritajatim #infojatim #newsupdate #FYI #fyp', 'N/A', 'https://beritajatim.com/hukum-kriminal/kapolres-pamekasan-pers-bagai-pelita-dan-harus-cerdaskan-publik/', 'https://beritajatim.com/cdn-cgi/image/width=720,height=444,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2024/05/IMG_20240523_192220.jpg', 'd513facad65e3d9359b3d836903f1682', 'bot_scrap', NULL, '2024-05-23 13:58:20', 'beritajatim', 7085593, 'https://beritajatim.com', 'https://i.bytvi.com/domain_icons/beritajatim.png', 'indonesian', 'indonesia', NULL, 'crime', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (100, 'Polisi Kantongi Identitas Jambret Handphone di Pasar Kembang yang Kabur', 'Polisi Kantongi Identitas Jambret Handphone di Pasar Kembang yang Kabur. 👇Setelah melakukan interogasi dan pemeriksaan kepada Ahmad Fuad (25) jambret handphone yang tertangkap warga di Traffic Light flyover Pasar Kembang.--Ikuti kami di 👉https://bit.ly/392voLE#beritaviral #jawatimur #viral berita #beritaterkini #terpopuler #news #beritajatim #infojatim #newsupdate #FYI #fyp', 'N/A', 'https://beritajatim.com/hukum-kriminal/polisi-kantongi-identitas-jambret-handphone-di-pasar-kembang-yang-kabur/', 'https://beritajatim.com/cdn-cgi/image/width=900,height=600,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2024/05/IMG_20240522_162305_11zon.jpg', '6074773ebcb7790910ddab2c8e327ad9', 'bot_scrap', NULL, '2024-05-23 13:33:05', 'beritajatim', 7085593, 'https://beritajatim.com', 'https://i.bytvi.com/domain_icons/beritajatim.png', 'indonesian', 'indonesia', NULL, 'crime', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (101, 'Bawaslu Blitar Coret Panwascam Terpilih Eks Napi Narkoba', 'Bawaslu Blitar Coret Panwascam Terpilih Eks Napi Narkoba. 👇Badan Pengawas Pemilihan Umum (Bawaslu) Kabupaten Blitar akhirnya mencoret Panwascam Terpilih Kecamatan Wonotirto, EAYP, lantaran eks narapidana kasus narkoba.--Ikuti kami di 👉https://bit.ly/392voLE#beritaviral #jawatimur #viral berita #beritaterkini #terpopuler #news #beritajatim #infojatim #newsupdate #FYI #fyp', 'N/A', 'https://beritajatim.com/hukum-kriminal/bawaslu-blitar-coret-panwascam-terpilih-eks-napi-narkoba/', 'https://beritajatim.com/cdn-cgi/image/width=900,height=600,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2024/05/bawaslu-blitar.webp', '23c54f0cac5d69e0daf4d5acc8ea1964', 'bot_scrap', NULL, '2024-05-23 13:25:17', 'beritajatim', 7085593, 'https://beritajatim.com', 'https://i.bytvi.com/domain_icons/beritajatim.png', 'indonesian', 'indonesia', NULL, 'crime', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (102, 'Pesta Miras Berujung Maut di Bojonegoro, 2 Orang Jadi Tersangka', 'Pesta Miras Berujung Maut di Bojonegoro, 2 Orang Jadi Tersangka. 👇Satuan Reserse Kriminal (Satreskrim) Polres Bojonegoro bekerja keras mengungkap kematian dua orang yang usai melakukan pesta miras.--Ikuti kami di 👉https://bit.ly/392voLE#beritaviral #jawatimur #viral berita #beritaterkini #terpopuler #news #beritajatim #infojatim #newsupdate #FYI #fyp', 'N/A', 'https://beritajatim.com/hukum-kriminal/pesta-miras-berujung-maut-di-bojonegoro-2-orang-jadi-tersangka/', 'https://beritajatim.com/cdn-cgi/image/width=900,height=600,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2024/03/IMG_COM_20240320_0131_29_3481.jpg', '14b6ea56695b0606e3fc30030b7052f4', 'bot_scrap', NULL, '2024-05-23 13:04:01', 'beritajatim', 7085593, 'https://beritajatim.com', 'https://i.bytvi.com/domain_icons/beritajatim.png', 'indonesian', 'indonesia', NULL, 'crime', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (103, 'Terbesar di Kalteng, Pengungkapan 33,8 Kg Sabu oleh Polres Lamandau', 'NANGA BULIK, PROKALTENG.CO - Keberhasilan Kepolisian Resort (Polres) Lamandau dalam mengungkap kasus peredaran gelap narkoba di wilayah hukumnya, patut diapresiasi.', 'N/A', 'https://prokalteng.jawapos.com/prohukrim/kasuistika/23/05/2024/terbesar-di-kalteng-pengungkapan-338-kg-sabu-oleh-polres-lamandau/', 'https://prokalteng.jawapos.com/wp-content/uploads/2024/05/IMG-20240523-WA0019_copy_626x352.jpg', '3bcfbed2965b0857d62c9ed487cbfb5f', 'bot_scrap', NULL, '2024-05-23 05:21:06', 'prokalteng_jawapos', 934323, 'https://prokalteng.jawapos.com', 'https://i.bytvi.com/domain_icons/prokalteng_jawapos.png', 'indonesian', 'indonesia', NULL, 'crime', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (104, 'Akayah! Seorang Ibu Biarkan Anaknya Disetubuhi Pacar, saat Hamil Disuruh Aborsi', 'Seorang ibu berinisial NKS (47), membiarkan putri kandungnya berisinial HR (16) untuk disetubuhi oleh pacarnya di hadapannya.Kapolres Metro Jakarta Timur, Kombes Pol Nicolas Ari Lilipaly mengungkapkan, dibiarkannya hubungan seksual itu membuat HR hamil.', 'N/A', 'https://prokalteng.jawapos.com/prohukrim/kasuistika/23/05/2024/akayah-seorang-ibu-biarkan-anaknya-disetubuhi-pacar-saat-hamil-disuruh-aborsi/', 'https://prokalteng.jawapos.com/wp-content/uploads/2024/05/Janin.jpg', '0e9ad611e98f0745e094f7e02badb849', 'bot_scrap', NULL, '2024-05-23 04:58:54', 'prokalteng_jawapos', 934323, 'https://prokalteng.jawapos.com', 'https://i.bytvi.com/domain_icons/prokalteng_jawapos.png', 'indonesian', 'indonesia', NULL, 'crime', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (105, 'Tingkatkan Pelayanan, Kapolda Kalteng Tandatangani Prasasti Peresmian Aula Tantya Sudhirajati', 'NANGA BULIK, PROKALTENG.CO - Kepala Kepolisian Daerah (Kapolda), Kalimantan Tengah, (Kalteng) Irjen Pol Drs. Djoko Poerwanto, meresmikan Gedung Kantor Persiapan Polsek Menthobi Raya Polres lamandau serta Ruang Kantor dan Aula Tantya Sudhirajati, Rabu (22/5).', 'N/A', 'https://prokalteng.jawapos.com/prohukrim/pro-kalteng/23/05/2024/tingkatkan-pelayanan-kapolda-kalteng-tandatangani-prasasti-peresmian-aula-tantya-sudhirajati/', 'https://prokalteng.jawapos.com/wp-content/uploads/2024/05/IMG-20240523-WA0016.jpg', '3fcced999725d3bc25352ba2733e72d4', 'bot_scrap', NULL, '2024-05-23 04:42:11', 'prokalteng_jawapos', 934323, 'https://prokalteng.jawapos.com', 'https://i.bytvi.com/domain_icons/prokalteng_jawapos.png', 'indonesian', 'indonesia', NULL, 'crime', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (106, 'Diterpa Isu Miring, Lapas Lubuk Pakam Lakukan Razia', 'DELI SERDANG – Lembaga Pemasyarakatan Kelas IIB Lubuk Pakam Kementerian Hukum dan HAM Kantor Wilayah Sumatera Utara lakukan Razia terhadap sejumlah kamar blok WBP pada Rabu 22 Mei 2024. Kegiatan yang dilaksanakan di 5 (lima) kamar hunian ini, merupakan atensi langsung Alanta Imanuel Ketaren (Kalapas Lubuk Pakam) terhadap jajaran pengamanan. Atas atensi tersebut, Ka. KPLP [...]', 'N/A', 'https://dnaberita.com/diterpa-isu-miring-lapas-lubuk-pakam-lakukan-razia/', 'https://dnaberita.com/wp-content/uploads/2024/05/IMG_20240523_095754-860x1134.jpg', '4fd0642cf4f623f7845521926539f4f6', 'bot_scrap', NULL, '2024-05-23 03:00:58', 'dnaberita', 14003998, 'https://dnaberita.com', 'https://i.bytvi.com/domain_icons/dnaberita.jpg', 'indonesian', 'indonesia', NULL, 'crime', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (107, 'Istana Restui Pembentukan Satgas Khusus Pemberantasan Judi Online', 'Jakarta,-Presiden Joko Widodo menggelar rapat internal bersama sejumlah Menteri Kabinet Indonesia Maju di Istana Merdeka, Jakarta, Rabu (22/5/2024). Ini yang membahas soal pemberantasan judi daring atau ‘online’ di Tanah Air. Dalam rapat tersebut, Presiden Jokowi dan para menteri sepakat untuk membentuk Satuan Tugas (Satgas) Pemberantasan Judi Online. Ini sebagai salah satu langkah tegas dalam memberantas [...]', 'N/A', 'https://dnaberita.com/istana-restui-pembentukan-satgas-khusus-pemberantasan-judi-online/', 'https://dnaberita.com/wp-content/uploads/2023/10/Jud.jpg', '89bf4d9848befed1fd186ce5737e57f6', 'bot_scrap', NULL, '2024-05-23 01:22:07', 'dnaberita', 14003998, 'https://dnaberita.com', 'https://i.bytvi.com/domain_icons/dnaberita.jpg', 'indonesian', 'indonesia', NULL, 'crime', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (108, 'Bupati Ipuk Pastikan Pembangunan Jalur Pantai Selatan Banyuwangi Bakal Dilanjutkan', 'Untuk mempercepat proses penyiapan lahan jalur lingkar selatan, lanjut ia, Pemkab Banyuwangi melakukan beberapa hal, di antaranya telah mengajukan rangkaian persyaratan permohonan persetujuan penggunaan kawasan yang akan dibangun jalur Pantai Selatan.', 'N/A', 'https://www.liputan6.com/surabaya/read/5602573/bupati-ipuk-pastikan-pembangunan-jalur-pantai-selatan-banyuwangi-bakal-dilanjutkan', 'https://cdn0-production-images-kly.akamaized.net/AR2IX8LWzD-6xucWwPXY1AYPUV8=/673x379/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4808587/original/063556600_1713755982-bupati_ipuk.jpg', 'fdeaf869988db030afaf99f0c6009f4c', 'bot_scrap', NULL, '2024-05-23 16:57:43', 'liputan6', 111731, 'https://www.liputan6.com', 'https://i.bytvi.com/domain_icons/liputan6.png', 'indonesian', 'indonesia', NULL, 'politics', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (109, 'Pilkada Bojonegoro 2024, Anna Mu’awanah Diberikan Kebebasan Pilih Wakilnya Sendiri oleh DPP PKB', 'Pilkada Bojonegoro 2024, Anna Mu’awanah Diberikan Kebebasan Pilih Wakilnya Sendiri oleh DPP PKB. 👇DPC PKB Bojonegoro mengusung Anna Mu\'awanah sebagai bakal calon bupati (bacabup) dalam Pilkada Bojonegoro 2024 mendatang.--Ikuti kami di 👉https://bit.ly/392voLE#beritaviral #jawatimur #viral berita #beritaterkini #terpopuler #news #beritajatim #infojatim #newsupdate #FYI #fyp', 'N/A', 'https://beritajatim.com/politik-pemerintahan/pilkada-bojonegoro-2024-anna-muawanah-diberikan-kebebasan-pilih-wakilnya-sendiri-oleh-dpp-pkb/', 'https://beritajatim.com/cdn-cgi/image/width=1055,height=792,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2023/07/20230723_123705.jpg', 'f034299b390d8dd4bd96c234de244378', 'bot_scrap', NULL, '2024-05-23 15:45:19', 'beritajatim', 7085593, 'https://beritajatim.com', 'https://i.bytvi.com/domain_icons/beritajatim.png', 'indonesian', 'indonesia', NULL, 'politics', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (110, 'Crazy Rich Surabaya Tom Liwafa Tetap Melaju ke Senayan Usai MK Tolak Gugatan Caleg PAN', 'Atas putusan MK tersebut, Arizal Tom Liwafa mengaku selalu menghormati keputusan dari KPU, Bawaslu dan partai (PAN).', 'N/A', 'https://www.liputan6.com/surabaya/read/5602628/crazy-rich-surabaya-tom-liwafa-tetap-melaju-ke-senayan-usai-mk-tolak-gugatan-caleg-pan', 'https://cdn0-production-images-kly.akamaized.net/pIiH6FbGkiN67tqrXAscXRh3eTw=/673x379/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4678677/original/046817100_1702009388-IMG-20231208-WA0001.jpg', '0c60349543eec537ca3085c4fcd61efe', 'bot_scrap', NULL, '2024-05-23 15:04:27', 'liputan6', 111731, 'https://www.liputan6.com', 'https://i.bytvi.com/domain_icons/liputan6.png', 'indonesian', 'indonesia', NULL, 'politics', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (111, 'Herjuna Satriatmaja Widayat Siap Maju di Pilkada Kabupaten Semarang', 'Pendiri Arus Bawah Indonesia, Herjuna Satriatmaja Widayat, siap mengikuti pencalonan Bupati/Wakil Bupati di Kabupaten Semarang dalam Pemilihan Kepala Daerah (Pilkada) 2024 yang akan dilaksanakan serentak pada November mendatang.', 'N/A', 'https://www.liputan6.com/pemilu/read/5603007/herjuna-satriatmaja-widayat-siap-maju-di-pilkada-kabupaten-semarang', 'https://cdn1-production-images-kly.akamaized.net/q6_MoUzr8H_DnS2_2InvT_a-uWo=/673x379/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4840938/original/091650400_1716469759-WhatsApp_Image_2024-05-23_at_19.13.01.jpeg', '2bc61f174e1910b53246d1332699b620', 'bot_scrap', NULL, '2024-05-23 15:00:20', 'liputan6', 111731, 'https://www.liputan6.com', 'https://i.bytvi.com/domain_icons/liputan6.png', 'indonesian', 'indonesia', NULL, 'politics', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (112, 'Momen Haru Warnai Pelepasan Jamaah Haji Kloter 51 Lumajang', 'Momen Haru Warnai Pelepasan Jamaah Haji Kloter 51 Lumajang. 👇Momen haru mewarnai pelepasan keberangkatan 191 jamaah haji kloter 51 Lumajang pada Kamis sore (23/5/2024) di depan Pendopo Arya Wiraraja.--Ikuti kami di 👉https://bit.ly/392voLE#beritaviral #jawatimur #viral berita #beritaterkini #terpopuler #news #beritajatim #infojatim #newsupdate #FYI #fyp', 'N/A', 'https://beritajatim.com/politik-pemerintahan/momen-haru-warnai-pelepasan-jamaah-haji-kloter-51-lumajang/', 'https://beritajatim.com/cdn-cgi/image/width=964,height=543,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2024/05/20240523_194229_11zon.jpg', 'b076f5c701d5b71c6694d6e5fb7fdaf2', 'bot_scrap', NULL, '2024-05-23 14:38:10', 'beritajatim', 7085593, 'https://beritajatim.com', 'https://i.bytvi.com/domain_icons/beritajatim.png', 'indonesian', 'indonesia', NULL, 'politics', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (113, 'Radar NasDem Sebut Ada Nama Sudirman Said di Pilgub Jakarta', 'Sekretaris Jenderal NasDem Hermawi Taslim mengatakan, sejumlah nama tengah digodok untuk menjadi bakal calon gubernur Jakarta di Pilkada 2024.', 'N/A', 'https://www.liputan6.com/pemilu/read/5603037/radar-nasdem-sebut-ada-nama-sudirman-said-di-pilgub-jakarta', 'https://cdn1-production-images-kly.akamaized.net/FSjmPPohasvjcHhuyx_O1FKk8C8=/673x379/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4840962/original/063210200_1716474186-WhatsApp_Image_2024-05-23_at_21.05.04__1_.jpeg', '97b3effd07faa1a71b1a846ddec1a25a', 'bot_scrap', NULL, '2024-05-23 14:26:51', 'liputan6', 111731, 'https://www.liputan6.com', 'https://i.bytvi.com/domain_icons/liputan6.png', 'indonesian', 'indonesia', NULL, 'politics', 0, 1, NULL);
INSERT INTO `tb_beritas` VALUES (114, '3 Nama yang Dinilai Lawan Kuat Anies di Pilkada Jakarta', 'Ada tiga nama yang disebut bisa menjadi lawan Anies Rasyid Baswedan dalam Pemilihan Gubernur (Pilgub) atau Pemilihan Kepala Daerah (Pilkada) Jakarta 2024. Siapa saja?', 'N/A', 'https://www.liputan6.com/pemilu/read/5603027/3-nama-yang-dinilai-lawan-kuat-anies-di-pilkada-jakarta', 'https://cdn1-production-images-kly.akamaized.net/tHJeEuWHeUchKFWij4VvOayXhB8=/673x379/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3479131/original/079597200_1623378827-WhatsApp_Image_2021-06-11_at_08.35.15.jpeg', 'b6ee67b7a54494d7a96bf92adf844fdb', 'bot_scrap', NULL, '2024-05-23 14:24:04', 'liputan6', 111731, 'https://www.liputan6.com', 'https://i.bytvi.com/domain_icons/liputan6.png', 'indonesian', 'indonesia', NULL, 'politics', 0, 1, NULL);

-- ----------------------------
-- Table structure for tb_categories
-- ----------------------------
DROP TABLE IF EXISTS `tb_categories`;
CREATE TABLE `tb_categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_categories` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_categories
-- ----------------------------
INSERT INTO `tb_categories` VALUES (1, 'Politik', '1', 1, NULL, NULL, NULL);
INSERT INTO `tb_categories` VALUES (2, 'Hukum', '1', 1, NULL, NULL, NULL);
INSERT INTO `tb_categories` VALUES (3, 'Ekonomi', '1', 1, NULL, NULL, NULL);
INSERT INTO `tb_categories` VALUES (4, 'Olahraga', '1', 1, NULL, NULL, NULL);
INSERT INTO `tb_categories` VALUES (5, 'Gaya Hidup', '1', 1, NULL, NULL, NULL);
INSERT INTO `tb_categories` VALUES (6, 'Hiburan', '1', 1, NULL, NULL, NULL);
INSERT INTO `tb_categories` VALUES (7, 'Kesehatan', '1', 1, NULL, NULL, NULL);
INSERT INTO `tb_categories` VALUES (8, 'Teknologi', '1', 1, NULL, NULL, NULL);
INSERT INTO `tb_categories` VALUES (9, 'Pariwisata', '1', 1, NULL, NULL, NULL);
INSERT INTO `tb_categories` VALUES (10, 'Peristiwa', '1', 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_galleries
-- ----------------------------
DROP TABLE IF EXISTS `tb_galleries`;
CREATE TABLE `tb_galleries`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_galleries
-- ----------------------------

-- ----------------------------
-- Table structure for tb_kabupaten_kota
-- ----------------------------
DROP TABLE IF EXISTS `tb_kabupaten_kota`;
CREATE TABLE `tb_kabupaten_kota`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_kabupaten_kota
-- ----------------------------
INSERT INTO `tb_kabupaten_kota` VALUES (1, 'Kabupaten Tanah Datar', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (2, 'Kabupaten Agam', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (3, 'Kabupaten Lima Puluh Kota', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (4, 'Kabupaten Padang Pariaman', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (5, 'Kabupaten Pasaman Barat', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (6, 'Kabupaten Pasaman', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (7, 'Kabupaten Pesisir Selatan', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (8, 'Kabupaten Solok', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (9, 'Kabupaten Wok Selatan', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (10, 'Kabupaten Sijunjung', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (11, 'Kabupaten Dharmasraya', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (12, 'Kabupaten Mentawai', 'Kabupaten', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (13, 'Kota Padang', 'Kota', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (14, 'Kota Bukit Tinggi', 'Kota', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (15, 'Kota Payakumbuh', 'Kota', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (16, 'Kota Padang Panjang', 'Kota', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (17, 'Kota Pariaman', 'Kota', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (18, 'Kota Solok', 'Kota', 1, NULL, NULL);
INSERT INTO `tb_kabupaten_kota` VALUES (19, 'Kota Sawahlunto', 'Kota', 1, NULL, NULL);

-- ----------------------------
-- Table structure for tb_komens
-- ----------------------------
DROP TABLE IF EXISTS `tb_komens`;
CREATE TABLE `tb_komens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_komens_news_id_foreign`(`news_id`) USING BTREE,
  CONSTRAINT `tb_komens_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `tb_beritas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_komens
-- ----------------------------

-- ----------------------------
-- Table structure for tb_profiles
-- ----------------------------
DROP TABLE IF EXISTS `tb_profiles`;
CREATE TABLE `tb_profiles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for tb_settings
-- ----------------------------
DROP TABLE IF EXISTS `tb_settings`;
CREATE TABLE `tb_settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_settings
-- ----------------------------
INSERT INTO `tb_settings` VALUES (1, 'company_logo', '/images/logo.png', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (2, 'company_logo_dark', '/images/logo-dark.png', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (3, 'company_favicon', '/images/favicon.ico', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (4, 'company_sidebar_logo', '/images/logo.png', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (5, 'company_sidebar_logo_dark', '/images/logo-dark.png', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (6, 'title_text', 'BiNews', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (7, 'subtitle_text', 'Portal Berita Kesayangan Kamu', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (8, 'site_currency', 'IDR', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (9, 'site_currency_symbol', 'Rp', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (10, 'site_currency_symbol_position', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (11, 'site_date_format', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (12, 'site_time_format', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (13, 'invoice_prefix', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (14, 'proposal_prefix', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (15, 'bill_prefix', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (16, 'customer_prefix', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (17, 'vendor_prefix', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (18, 'journal_prefix', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (19, 'footer_title_notes', '', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (20, 'footer_title_notes_2', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (21, 'decimal_number', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (22, 'shipping_display', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (23, 'company_name', 'BiNews', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (24, 'company_address', 'Komp. Kodam 65 Siteba - Padang Sumatera Barat', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (25, 'company_city', 'Surabaya', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (26, 'company_state', 'Jawa Timur', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (27, 'company_zipcode', '25146', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (28, 'company_country', 'Indonesia', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (29, 'company_telephone', '(0751)38834', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (30, 'company_email', ' admin@binews.id', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (31, 'company_email_from_name', 'notif@binews.id', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (32, 'registration_number', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (33, 'tax_type', 'enabled', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (34, 'tax_fee', '11', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (35, 'tax_tempo_date', '20', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (36, 'tax_date_line', '2', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (37, 'isolir', '1', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (38, 'vat_number', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (39, 'display_landing_page', ' ', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (40, 'title_text_option', 'BiNews', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (41, 'footer_text_option', 'BiNews', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (42, 'default_language', 'id', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (43, 'meta_description', 'BiNews - Berpikir Merdeka, Santun dalam Berita', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (44, 'meta_keywords', 'news, global, elite, network, isp, anchor, breakingnews,', '1', NULL, NULL);
INSERT INTO `tb_settings` VALUES (45, 'foot_note_remarks', 'https://berdikari.web.id', '1', NULL, NULL);

-- ----------------------------
-- Table structure for tb_statis_pages
-- ----------------------------
DROP TABLE IF EXISTS `tb_statis_pages`;
CREATE TABLE `tb_statis_pages`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `edited_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_statis_pages
-- ----------------------------
INSERT INTO `tb_statis_pages` VALUES (1, 'tentang', '/images/logo.png', '1', NULL, NULL, NULL, NULL);
INSERT INTO `tb_statis_pages` VALUES (2, 'redaksi', '/images/logo.png', '1', NULL, NULL, NULL, NULL);
INSERT INTO `tb_statis_pages` VALUES (3, 'ketentuan', '/images/logo.png', '1', NULL, NULL, NULL, NULL);
INSERT INTO `tb_statis_pages` VALUES (4, 'pedoman', '/images/logo.png', '1', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Test User', 'test@example.com', '2024-05-24 06:16:07', '$2y$12$Z1n7Rfq7XQS/vdn4m5/JYexuEsFR8EKKw7iXFUdc7gXQXwIEDuv9W', 'GJ0ezR2iWM', '2024-05-24 06:16:07', '2024-05-24 06:16:07');

SET FOREIGN_KEY_CHECKS = 1;
