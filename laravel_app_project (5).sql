-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th9 16, 2024 lúc 07:59 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_app_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `abouts`
--

INSERT INTO `abouts` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>About Sazao</strong></p><p>Welcome to Sazao, your one-stop e-commerce platform where we connect buyers and sellers to bring the best shopping experience right to your fingertips. At Sazao, we strive to create a marketplace that offers a wide range of products, from daily essentials to exclusive items, all in one place.</p><h3>Our Mission</h3><p>At Sazao, our mission is simple: to make online shopping convenient, secure, and accessible for everyone. We believe in empowering small businesses and individual sellers by giving them the tools to reach a wider audience while ensuring that customers have access to quality products at competitive prices.</p><h3>Why Choose Sazao?</h3><ul><li><strong>Diverse Product Range</strong>: We offer a broad selection of items, ranging from electronics, fashion, home goods, to personal care products. No matter what you need, you can find it on Sazao.</li><li><strong>Secure Transactions</strong>: We prioritize the security of our users by providing encrypted payment options and secure checkout processes. Your data and transactions are always protected.</li><li><strong>Reliable Vendors</strong>: We carefully vet each vendor to ensure that they meet our quality and customer service standards. Whether you\'re purchasing from a large brand or an independent seller, you can shop with confidence.</li><li><strong>Fast Shipping</strong>: We understand that timely delivery is important to our customers. Sazao partners with reliable logistics providers to ensure that your orders arrive quickly and safely.</li><li><strong>Customer Support</strong>: Our dedicated customer service team is here to assist you with any questions or concerns. From order tracking to product inquiries, we\'re just a click away.</li></ul><h3>Supporting Vendors</h3><p>For our vendors, Sazao is more than just a selling platform—it\'s a place to grow your business. We offer:</p><ul><li><strong>Customizable Storefronts</strong>: Create a unique and professional storefront that reflects your brand.</li><li><strong>Seller Support</strong>: Access tools, analytics, and customer feedback to help you optimize your business performance.</li><li><strong>Seamless Transactions</strong>: We handle the technical aspects, from secure payments to invoicing, so you can focus on what matters most—growing your business.</li></ul><h3>Join the Sazao Community</h3><p>Whether you\'re here to shop or sell, Sazao is built to meet your needs. We are committed to providing a seamless experience for all users, fostering trust, and delivering value with every transaction.</p><p>Thank you for choosing Sazao. Together, let\'s build a vibrant marketplace where everyone thrives!</p>', '2024-09-06 01:59:05', '2024-09-06 07:35:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `advertisements`
--

INSERT INTO `advertisements` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'homepage_section_banner_one', '{\"banner_one\":{\"banner_image\":\"uploads\\/media_66d19958b9343.PNG\",\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/advertisement\",\"status\":1}}', '2024-08-29 20:32:37', '2024-08-30 03:05:12'),
(3, 'homepage_section_banner_two', '{\"banner_one\":{\"banner_image\":\"uploads\\/media_66d199652b5a1.PNG\",\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/advertisement\",\"status\":1},\"banner_two\":{\"banner_image\":\"uploads\\/media_66d199652b9a4.PNG\",\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/advertisement\",\"status\":1}}', '2024-08-29 20:59:40', '2024-08-30 03:05:25'),
(4, 'homepage_section_banner_three', '{\"banner_one\":{\"banner_image\":\"uploads\\/media_66d199780654b.PNG\",\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/advertisement\",\"status\":1},\"banner_two\":{\"banner_image\":\"uploads\\/media_66d19978070d2.PNG\",\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/advertisement\",\"status\":1},\"banner_three\":{\"banner_image\":\"uploads\\/media_66d1997807763.PNG\",\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/advertisement\",\"status\":1}}', '2024-08-30 02:17:44', '2024-08-30 03:05:44'),
(5, 'homepage_section_banner_four', '{\"banner_one\":{\"banner_image\":\"uploads\\/media_66d19985c0891.PNG\",\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/advertisement\",\"status\":1}}', '2024-08-30 02:28:19', '2024-08-30 03:05:57'),
(6, 'product_page_banner_section', '{\"banner_one\":{\"banner_image\":\"uploads\\/media_66d1d2b4e3a98.PNG\",\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/advertisement\",\"status\":1}}', '2024-08-30 02:40:27', '2024-08-30 07:09:56'),
(7, 'cart_page_banner_section', '{\"banner_one\":{\"banner_image\":\"uploads\\/media_66d1d2ed29587.PNG\",\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/advertisement\",\"status\":1},\"banner_two\":{\"banner_image\":\"uploads\\/media_66d1d2ed2997e.PNG\",\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/advertisement\",\"status\":1}}', '2024-08-30 02:50:16', '2024-08-30 07:10:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `category_id`, `image`, `title`, `slug`, `description`, `seo_title`, `seo_description`, `status`, `created_at`, `updated_at`) VALUES
(3, 4, 5, 'uploads/media_66df030159c46.jpg', 'Influencer là gì mà có thu nhập lên tới 300 triệu đồng/tháng ?', 'influencer-la-gi-ma-co-thu-nhap-len-toi-300-trieu-dongthang', '<h2 class=\"detail-sapo\" data-role=\"sapo\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border-top: 1px solid rgb(235, 235, 235); font-size: 17px; line-height: 26px; color: rgb(41, 41, 41); padding: 24px 0px; font-family: Merriweather;\">Influencer là người có sức ảnh hưởng trên mạng xã hội , có thể kiếm tiền từ việc hợp tác trải nghiệm sản phẩm, dịch vụ… từ đó suy nghĩ ra cách truyền tải thông điệp một cách sáng tạo nhất.</h2><div class=\"detail-cmain\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px; margin-bottom: 24px; color: rgb(51, 51, 51); font-family: Merriweather;\"><div class=\"detail-content afcbc-body\" data-role=\"content\" itemprop=\"articleBody\" data-io-article-url=\"https://thanhnien.vn/influencer-la-gi-ma-co-thu-nhap-len-toi-300-trieu-dongthang-1851534924.htm\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px; font-family: Inter; font-size: 17px; color: rgb(41, 41, 41); max-width: 100%; line-height: 26px !important;\"><div data-check-position=\"body_start\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px; height: 0px;\"></div><h2 style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px; font-size: 20px; font-family: Merriweather; text-align: justify;\">Influencer sáng tạo, đổi mới</h2><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px; text-align: justify;\">Bắt đầu xây dựng nội dung trên&nbsp;<a href=\"https://thanhnien.vn/ky-8-tet-can-ke-lo-nhat-dieu-gi-ngan-ngam-nhich-tung-met-duong-ve-que-post1533793.html\" title=\"[Kỳ 8] Tết cận kề lo nhất điều gì?: Ngán ngẩm nhích từng mét đường về quê\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(0, 152, 209); outline: 0px;\">TikTok</a>&nbsp;từ năm 2017, với những video \"thả thính\", diễn hài, tuy nhiên đến năm 2018 thì Nguyễn Văn Việt (23 tuổi, nghệ danh Hoàng Việt) mới có được sự chú ý và tương tác của nhiều người theo dõi trên TikTok, Facebook…</p><table class=\"picture\" align=\"center\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; text-align: justify;\"><tbody style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"pic\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; max-height: 422px;\"><img loading=\"lazy\" data-image-id=\"4089502\" src=\"https://thanhnien.mediacdn.vn/Uploaded/diennv/2022_12_23/z3974675031578-07390e9c25ec0a1e7053cc6a3852d6f6-8962.jpg\" data-width=\"2560\" data-height=\"1704\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; width: 634px; max-width: 100%; display: block; image-rendering: -webkit-optimize-contrast; color: transparent; height: auto;\"></td></tr><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"caption\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; font-size: 15px !important;\"><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px;\">Hoàng Việt</p></td></tr><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"author\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px;\">NVCC</p></td></tr></tbody></table><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px; text-align: justify;\">Theo Hoàng Việt, ban đầu tạo ra những video chỉ với mục đích vui chơi, làm kỷ niệm nhưng sau đó nhận được nhiều sự ủng hộ của cộng đồng mạng nên mình mới định hướng bản thân trở thành một influencer. Hiện tại, Hoàng Việt có hơn 160.000 người theo dõi trên Facebook, anh tập trung chia sẻ các nội dung giới thiệu những trải nghiệm xung quanh cuộc sống như: thời trang, ẩm thực… lên mạng xã hội.</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px; text-align: justify;\"></p><div style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px;\"><div class=\"aries_stage aries_horizontalAxis\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px; display: flex; flex-direction: row; font-size: 0px; overflow: hidden; visibility: initial; position: relative; width: 640px; height: auto;\"></div></div>“Influencer có thu nhập “khủng”, có thể lên tới 200 - 300 triệu đồng/tháng. Tuy thu nhập cao nhưng mình phải đổi lại rất nhiều thời gian để suy nghĩ, sáng tạo nội dung, đôi khi là chịu áp lực do cạn ý tưởng. Vào khoảng thời gian cận tết như thế này, mỗi ngày mình chỉ ngủ được 4 tiếng như thế mới có thể xử lý xong khối lượng công việc”, Việt cho biết.<p></p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px; text-align: justify;\">Theo Việt, ngoài thu nhập “khủng” ra thì lý do inflencer thu hút người trẻ là sự tự do, không gò bó thời gian và phát huy được cá tính, sự sáng tạo của mỗi cá nhân. Việt cho biết những&nbsp;<a href=\"https://thanhnien.vn/gioi-tre/\" title=\"bạn trẻ\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(0, 152, 209); outline: 0px;\">bạn trẻ</a>&nbsp;muốn trở thành một influencer cần rèn luyện khả năng giao tiếp, kỹ năng quay dựng video…</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px; text-align: justify;\">Sở hữu trang&nbsp;<a href=\"https://thanhnien.vn/gen-z-ban-ve-so-gay-quy-trao-hoc-bong-cho-tre-em-mo-coi-post1533216.html\" title=\"Gen Z bán \'vé số\' gây quỹ trao học bổng cho trẻ em mồ côi\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(0, 152, 209); outline: 0px;\">Facebook</a>&nbsp;có hơn 177.000 người theo dõi và thường xuyên được mời hợp tác cho những nhãn hàng với vai trò một influencer, Ngô Bảo Ngọc (27 tuổi) cho biết: “Theo mình, áp lực lớn nhất là việc phải nghĩ ra nội dung đăng tải lên những trang mạng xã hội để duy trì lượt tương tác với những người theo dõi. Việc sử dụng một lúc nhiều mạng xã hội đòi hỏi một lượng nội dung rất lớn, trong khi mình còn phải đi học, đi làm việc khác nên điều này hơi quá sức\".</p><table class=\"picture\" align=\"center\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; text-align: justify;\"><tbody style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"pic\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><img loading=\"lazy\" data-image-id=\"4089501\" src=\"https://thanhnien.mediacdn.vn/Uploaded/diennv/2022_12_23/z3888710003367-0f59ee46dff946078874750754b81300-2872.jpg\" data-width=\"1364\" data-height=\"2048\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; width: 634px; max-width: 100%; display: block; image-rendering: -webkit-optimize-contrast; color: transparent; height: auto;\"></td></tr><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"caption\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; font-size: 15px !important;\"><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px;\">Người đẹp Ngô Bảo Ngọc</p></td></tr><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"author\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px;\">NVCC</p></td></tr></tbody></table><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px; text-align: justify;\">Song song đó, Bảo Ngọc cho biết thêm: \"Chúng ta phải luôn đổi mới nội dung để những người theo dõi mình không nhàm chán. Đôi lúc mình rất nghiêm túc, tốn chi phí để chuẩn bị từ: quần áo, trang điểm… đến trợ lý, quay phim để có được những tấm ảnh, video chuẩn nhất nhưng lại không đạt được lượt tương tác như mong muốn”.</p><table class=\"picture\" align=\"center\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; text-align: justify;\"><tbody style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"pic\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><img loading=\"lazy\" data-image-id=\"4089512\" src=\"https://thanhnien.mediacdn.vn/Uploaded/diennv/2022_12_23/z3982522954830-cedcd46d4a7159b16956d91cf166d203-4642.jpg\" data-width=\"2560\" data-height=\"1920\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; width: 634px; max-width: 100%; display: block; image-rendering: -webkit-optimize-contrast; color: transparent; height: auto;\"></td></tr><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"caption\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; font-size: 15px !important;\"><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px;\">Influencer là người có sức ảnh hưởng trên mạng xã hội, có thể kiếm tiền từ việc hợp tác trải nghiệm sản phẩm, dịch vụ… từ đó suy nghĩ ra cách truyền tải thông điệp một cách sáng tạo nhất</p></td></tr><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"author\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px;\">NVCC</p></td></tr></tbody></table><div class=\"dable_placeholder\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px; margin: 0px auto; padding: 10px 0px; width: 640px;\"><div id=\"dablewidget_QXedqQel\" data-widget_id=\"QXedqQel\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px; height: 0px; overflow: hidden;\"><iframe width=\"100%\" height=\"0\" title=\"추천 아이템\" frameborder=\"0\" scrolling=\"no\" name=\"dableframe-0.4938921840653696\" src=\"https://api.dable.io/widgets/id/QXedqQel/users/85902277.1676898925018?from=https%3A%2F%2Fthanhnien.vn%2Finfluencer-la-gi-ma-co-thu-nhap-len-toi-300-trieu-dongthang-1851534924.htm&amp;url=https%3A%2F%2Fthanhnien.vn%2Finfluencer-la-gi-ma-co-thu-nhap-len-toi-300-trieu-dongthang-1851534924.htm&amp;ref=https%3A%2F%2Fthanhnien.vn%2Flifestyle.html&amp;cid=85902277.1676898925018&amp;uid=85902277.1676898925018&amp;site=thanhnien.vn&amp;gdpr=0&amp;service_id=5937&amp;service_type=news&amp;country=VN&amp;client_id=1736&amp;lazyload_widget_ids=x7yEvG76&amp;lazyload_widget_ids=1oVpGklP&amp;randomStr=3e8b79ae-b929-4ea5-8eec-b5563d9bc855&amp;id=dablewidget_QXedqQel&amp;category1=Gi%E1%BB%9Bi%20tr%E1%BA%BB&amp;author=Kim%20Ng%E1%BB%8Dc%20Nghi%C3%AAn&amp;item_id=1851534924&amp;item_pub_date=2022-12-23T17%3A16%3A06&amp;pixel_ratio=1&amp;ua=Mozilla%2F5.0%20(Windows%20NT%2010.0%3B%20Win64%3B%20x64)%20AppleWebKit%2F537.36%20(KHTML%2C%20like%20Gecko)%20Chrome%2F128.0.6613.120%20Safari%2F537.36&amp;client_width=640&amp;network=non-wifi&amp;lang=vi&amp;is_top_win=1&amp;top_win_accessible=1&amp;is_lazyload=0&amp;inarticle_init=1\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; border-width: 0px; border-style: initial;\"></iframe></div></div><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px; text-align: justify;\">Theo Bảo Ngọc, khi đầu tư quá nhiều mà lượt theo dõi không tăng như mong muốn thì một influencer cần phải thay đổi, học hỏi những người có sức ảnh hưởng khác. Bảo Ngọc cũng cho biết là một người có sức ảnh hưởng trên mạng xã hội nên cô luôn cẩn trọng trong việc phát ngôn, nỗ lực để đưa đến người xem một hình ảnh chỉn chu, tích cực để truyền cảm hứng cho nhiều người.</p><h2 style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px; font-size: 20px; font-family: Merriweather; text-align: justify;\"><span style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(51, 51, 51);\">Influencer phải có điểm nhấn, khác biệt nhưng không dị biệt</span></h2><div id=\"zone-l2srqb41\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px;\"><div id=\"share-l2srqbkq\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px;\"><div id=\"placement-kspipz1y\" revenue=\"cpd\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px;\"><div id=\"banner-l2srqb41-kspiq11b\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px; min-height: 0px; min-width: 0px;\"><div id=\"slot-1-l2srqb41-kspiq11b\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; outline: 0px;\"></div></div></div></div></div><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px; text-align: justify;\">Thạc sĩ Phan Thế Anh, giảng viên môn marketing tại Trường ĐH quốc tế Miền Đông, và cũng là một influencer có hơn 200.000 người theo dõi trên Facebook. Thạc sĩ Phan Thế Anh chia sẻ: “Influencer có thu nhập cao nhưng không ổn định, đòi hỏi phải chăm chỉ, nỗ lực rất nhiều. Đây là một nghề triển vọng vì các&nbsp;<a href=\"https://thanhnien.vn/tai-chinh-kinh-doanh/doanh-nghiep/\" title=\"doanh nghiệp\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(0, 152, 209); outline: 0px;\">doanh nghiệp</a>, nhãn hàng mong muốn thông qua các influencer mà sản phẩm hay dịch vụ của họ đến gần hơn với&nbsp;<a href=\"https://thanhnien.vn/tai-chinh-kinh-doanh/tieu-dung/\" title=\"người tiêu dùng\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(0, 152, 209); outline: 0px;\">người tiêu dùng</a>”.</p><table class=\"picture\" align=\"center\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; text-align: justify;\"><tbody style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"pic\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><img loading=\"lazy\" data-image-id=\"4089500\" src=\"https://thanhnien.mediacdn.vn/Uploaded/voba/2022_12_23/z3888710152273-bbdf74578a7e7c6ee2b3c9958098a6ca-4425.jpg\" data-width=\"1535\" data-height=\"2048\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; width: 634px; max-width: 100%; display: block; image-rendering: -webkit-optimize-contrast; color: transparent; height: auto;\"></td></tr><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"caption\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; font-size: 15px !important;\"><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px;\">Thạc sĩ Phan Thế Anh</p></td></tr><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"author\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px;\">NVCC</p></td></tr></tbody></table><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px; text-align: justify;\">Theo thạc sĩ Thế Anh, người trẻ muốn làm influencer đòi hỏi phải đối mặt với sự cạnh tranh cao vì thị trường ngành này không còn quá nhiều để người chơi mới có thể khám phá và chinh phục. Công việc influencer cũng đòi hỏi đầu tư rất lâu, không chỉ một hai ngày mà được nhãn hàng biết đến, mà đó là sự đầu tư đường dài và chấp nhận rủi ro.</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px; text-align: justify;\">Chia sẻ về cách nhận biết giữa 2 khái niệm influencer và KOL (Key Opinion Leader: người có tầm ảnh hưởng) có gì khác? Thạc sĩ Thế Anh lý giải: \"Influencer có thể hiểu như những “macro influencer” (một người có từ 100.000 đến 1 triệu lượt theo dõi) họ có tầm ảnh hưởng về nội dung, lẫn truyền thông và có một lượng người theo dõi đông hơn KOL. Trong khi đó, KOL là người có kiến thức chuyên môn, sức ảnh hưởng trong một lĩnh vực cụ thể như thời trang,&nbsp;<a href=\"https://thanhnien.vn/suc-khoe/\" title=\"sức khỏe\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(0, 152, 209); outline: 0px;\">sức khỏe</a>...”.</p><table class=\"picture\" align=\"center\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; text-align: justify;\"><tbody style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"pic\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><img loading=\"lazy\" data-image-id=\"4089499\" src=\"https://thanhnien.mediacdn.vn/Uploaded/diennv/2022_12_23/z3888734995805-aa90e2f4121e5ab2e3a7574726d0735d-9631.jpg\" data-width=\"1170\" data-height=\"1918\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; width: 634px; max-width: 100%; display: block; image-rendering: -webkit-optimize-contrast; color: transparent; height: auto;\"></td></tr><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"caption\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; font-size: 15px !important;\"><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px;\">Một bài đăng giới thiệu sản phẩm của T.S Phan Thế Anh trên trang cá nhân nhận được hơn 2.000 lượt tương tác</p></td></tr><tr style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><td class=\"author\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px;\">CHỤP MÀN HÌNH</p></td></tr></tbody></table><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px 24px; text-align: justify;\">Thạc sĩ Thế Anh cho rằng: “Người trẻ muốn trở thành influencer cần xây dựng&nbsp;<a href=\"https://thanhnien.vn/thi-sinh-nam-bieu-dien-nhu-hoa-hau-thay-doi-dinh-kien-ve-nguoi-hoc-su-pham-post1532931.html\" title=\"Thí sinh nam biểu diễn như hoa hậu: Thay đổi định kiến về người học sư phạm?\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(0, 152, 209); outline: 0px;\">hình ảnh</a>&nbsp;sạch đẹp, có thông tin tốt tạo được tính cộng hưởng với nhãn hàng. Hiện nay, các influencer có rất nhiều lượt theo dõi nhưng không có nhãn hàng nào muốn hợp tác vì họ sử dụng những nội dung công kích, bóc phốt, tạo kịch tính để thu hút người xem. Mặc dù phát triển rất nhanh nhưng nhãn hàng rất dè chừng và họ chỉ muốn hợp tác với những người có hình ảnh sạch, nội dung thuần chất. Để tránh bị đào thải, influencer phải có điểm nhấn, khác biệt nhưng không dị biệt”.</p></div></div>', NULL, NULL, 1, '2024-09-09 07:15:29', '2024-09-09 07:15:29'),
(4, 4, 4, 'uploads/media_66dff525c2acf.jpg', 'Alanis Morissette, Nia Long, Kyrie Irving celebrate 20 years of 3.1 Phillip Lim at NYFW', 'alanis-morissette-nia-long-kyrie-irving-celebrate-20-years-of-31-phillip-lim-at-nyfw', '<p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\">NEW YORK − For&nbsp;<a href=\"https://www.usatoday.com/story/entertainment/celebrities/2023/09/10/phillip-lim-nyfw-return-awkwafina-hayley-williams-teyana-taylor/70819971007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">3.1 Phillip Lim</a>\'s 20th anniversary show at&nbsp;<a href=\"https://www.usatoday.com/story/entertainment/celebrities/2024/09/01/new-york-fashion-week-guide-2024/74740489007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">New York Fashion Week</a>, stars from every facet of the industry came out to support.</p><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\">The front row was a mix of major star power from music to sports and actors to fashion folks.&nbsp;<a href=\"https://www.usatoday.com/story/entertainment/music/2023/11/09/alanis-morissette-joan-jett-tour-how-to-get-tickets-presale/71516104007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Alanis Morissette</a>,&nbsp;<a href=\"https://www.usatoday.com/story/sports/nba/2024/06/07/kyrie-irving-return-to-boston-features-boos-not-much-else/74009619007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Kyrie Irving</a>,&nbsp;<a href=\"https://www.usatoday.com/story/entertainment/celebrities/2023/11/08/jeezy-nia-long-interview-divorce/71501390007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Nia Long</a>,&nbsp;<a href=\"https://www.usatoday.com/story/entertainment/music/2024/03/30/beyonce-blackbird-cover-female-country-artists/73154005007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Tanner Adell</a>,&nbsp;<a href=\"https://www.usatoday.com/story/entertainment/tv/2021/03/10/daniel-dae-kim-anti-asian-violence-breakthrough-roles/4631558001/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Daniel Dae Kim</a>,&nbsp;<a href=\"https://www.usatoday.com/story/entertainment/celebrities/2023/09/19/prabal-gurung-interview-designer-nyfw-kylie-jenner-lady-gaga-oprah/70853745007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Prabal Gurung</a>,&nbsp;<a href=\"https://www.usatoday.com/story/sports/nba/2024/04/02/rajon-rondo-officially-announces-retirement/73175463007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Rajon Rondo</a>&nbsp;and more were on hand to celebrate two decades of Phillip Lim at the designer\'s showing of his spring/summer 2025 collection on Sunday.</p><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\">\"The community always establishes itself. It\'s like birds of a feather, you know? You gather to what you\'re attracted to, and when I put out the clothes, it\'s like sending a signal to my flock,\" Lim says backstage after the show. \"And the ones that are here, they\'ve been here for a while. They show up every season. I\'m grateful for that. So what you saw was a mixture of 20 years of our history.\"</p><figure class=\"gnt_em gnt_em_img gnt_em_img__inset\" style=\"contain: content; clear: right; width: 300px; margin-top: 10px; margin-bottom: 24px; margin-left: 31px; display: flex; flex-flow: wrap; float: right; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\"><img class=\"gnt_em_img_i\" fetchpriority=\"high\" data-g-r=\"lazy\" decoding=\"async\" alt=\"Alanis Morissette turned out in neutral color-blocking for the 3.1 Phillip Lim fashion show during New York Fashion Week on Sept. 8, 2024.\" src=\"https://www.usatoday.com/gcdn/authoring/authoring-images/2024/09/09/USAT/75141110007-2170879133.jpg?width=300&amp;height=437&amp;fit=crop&amp;format=pjpg&amp;auto=webp\" srcset=\"/gcdn/authoring/authoring-images/2024/09/09/USAT/75141110007-2170879133.jpg?width=600&amp;height=874&amp;fit=crop&amp;format=pjpg&amp;auto=webp 2x\" style=\"object-fit: contain; width: 300px; color: rgb(255, 255, 255); background: rgb(0, 0, 0); height: 437px;\"><div class=\"gnt_em_img_ccw gnt_em_img_ccw__cap gnt_em_img_ccw__crd\" data-c-caption=\"Alanis Morissette turned out in neutral color-blocking for the 3.1 Phillip Lim fashion show during New York Fashion Week on Sept. 8, 2024.\" data-c-credit=\"Paul Morigi, Getty Images\" style=\"width: 300px; margin: 6px 0px 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: 15px; font-family: \" helvetica=\"\" neue\",=\"\" \"arial=\"\" nova\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></div></figure><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\">Morissette, fresh off of her summer&nbsp;<a href=\"https://www.usatoday.com/story/entertainment/music/2023/11/09/alanis-morissette-joan-jett-tour-how-to-get-tickets-presale/71516104007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Triple Moon tour</a>, arrived early for the show, posing for photos in a low-key corner of the venue in the Meatpacking District. The singer found her seat, nestled between Long and&nbsp;<a href=\"https://www.usatoday.com/story/entertainment/tv/2023/06/20/sarah-jessica-parker-and-just-like-that-season-2-kim-cattrall/70330641007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">\"And Just Like That\" actress Sarita Choudhury</a>.</p><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\">Leon Bridges and actress&nbsp;<a href=\"https://www.usatoday.com/story/life/movies/2016/08/22/southside-with-you-barack-michelle-obama/89046780/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Tika Sumpter</a>&nbsp;were also earlier arrivals, seated in the same row as singers&nbsp;<a href=\"https://www.instagram.com/fireboydml/?hl=en\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|z|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Fireboy DML</a>&nbsp;and&nbsp;<a href=\"https://www.instagram.com/destinconrad/?hl=en\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|z|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Destin Conrad</a>.</p><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\"><strong>Need a break?</strong>&nbsp;<a target=\"_blank\" rel=\"noopener\" data-t-l=\":body nav (cw)|e|auto spike click:6|${u}\" class=\"gnt_ar_b_a\" href=\"https://puzzles.usatoday.com/\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Play the USA TODAY Daily Crossword Puzzle.</a></p><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\"><strong class=\"gnt_ar_b_al\" style=\"margin-right: 3px;\">NYFW:</strong><a href=\"https://www.usatoday.com/story/entertainment/celebrities/2024/09/06/ralph-lauren-nyfw-fashion-week-jill-biden-hamptons/75067022007/\" target=\"_blank\" rel=\"noopener\" data-t-l=\":b|e|spike click:7|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Ralph Lauren takes the Hamptons for chic fashion show with Jill Biden, H.E.R., Usher, more</a></p><figure class=\"gnt_em gnt_em_img gnt_em_img__inset\" style=\"contain: content; clear: right; width: 300px; margin-top: 10px; margin-bottom: 24px; margin-left: 31px; display: flex; flex-flow: wrap; float: right; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\"><img class=\"gnt_em_img_i\" fetchpriority=\"high\" data-g-r=\"lazy\" decoding=\"async\" alt=\"Leon Bridges chose black denim for the 3.1 Phillip Lim fashion show.\" src=\"https://www.usatoday.com/gcdn/authoring/authoring-images/2024/09/09/USAT/75141112007-2170879911.jpg?width=300&amp;height=465&amp;fit=crop&amp;format=pjpg&amp;auto=webp\" srcset=\"/gcdn/authoring/authoring-images/2024/09/09/USAT/75141112007-2170879911.jpg?width=600&amp;height=930&amp;fit=crop&amp;format=pjpg&amp;auto=webp 2x\" style=\"object-fit: contain; width: 300px; color: rgb(255, 255, 255); background: rgb(0, 0, 0); height: 465px;\"><div class=\"gnt_em_img_ccw gnt_em_img_ccw__cap gnt_em_img_ccw__crd\" data-c-caption=\"Leon Bridges chose black denim for the 3.1 Phillip Lim fashion show.\" data-c-credit=\"Paul Morigi, Getty Images\" style=\"width: 300px; margin: 6px 0px 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: 15px; font-family: \" helvetica=\"\" neue\",=\"\" \"arial=\"\" nova\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></div></figure><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\">The NBA was also well represented with Dallas Mavericks star player Irving,&nbsp;<a href=\"https://www.usatoday.com/story/sports/nba/2024/02/14/pj-tucker-will-be-away-from-clippers-until-after-the-all-star-break/72597304007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Los Angeles Clippers player P.J. Tucker</a>&nbsp;and the newly retired Rondo. Irving and Tucker were among the last to be seated before the start of the show, which the designer called a \"joyful return to origin\" in the show notes. Rondo stuck around after to congratulate the designer backstage.</p><figure class=\"gnt_em gnt_em_img gnt_em_img__inset\" style=\"contain: content; clear: right; width: 300px; margin-top: 10px; margin-bottom: 24px; margin-left: 31px; display: flex; flex-flow: wrap; float: right; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\"><img class=\"gnt_em_img_i\" fetchpriority=\"high\" data-g-r=\"lazy\" decoding=\"async\" alt=\"Latoia Rondo, left, and Rajon Rondo were in attendance for the 3.1 Phillip Lim fashion show.\" src=\"https://www.usatoday.com/gcdn/authoring/authoring-images/2024/09/09/USAT/75141120007-2170879535.jpg?width=300&amp;height=448&amp;fit=crop&amp;format=pjpg&amp;auto=webp\" srcset=\"/gcdn/authoring/authoring-images/2024/09/09/USAT/75141120007-2170879535.jpg?width=600&amp;height=896&amp;fit=crop&amp;format=pjpg&amp;auto=webp 2x\" style=\"object-fit: contain; width: 300px; color: rgb(255, 255, 255); background: rgb(0, 0, 0); height: 448px;\"><div class=\"gnt_em_img_ccw gnt_em_img_ccw__cap gnt_em_img_ccw__crd\" data-c-caption=\"Latoia Rondo, left, and Rajon Rondo were in attendance for the 3.1 Phillip Lim fashion show.\" data-c-credit=\"Paul Morigi, Getty Images\" style=\"width: 300px; margin: 6px 0px 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: 15px; font-family: \" helvetica=\"\" neue\",=\"\" \"arial=\"\" nova\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></div></figure><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\">After&nbsp;<a href=\"https://www.usatoday.com/story/entertainment/celebrities/2023/09/10/phillip-lim-nyfw-return-awkwafina-hayley-williams-teyana-taylor/70819971007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">returning to the NYFW calendar last September</a>&nbsp;for his first show since 2019, Lim took his 20th anniversary year as a time to celebrate community. The designer\'s&nbsp;<a href=\"https://www.usatoday.com/story/entertainment/celebrities/2024/02/18/nyfw-2024-highlights-fashion-shows-events-analysis/72584269007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">\"Intersections\"&nbsp;installation in the spring</a>&nbsp;paired clothing and accessories hanging from the ceiling with the work of multigenerational AAPI artists. And for Sunday\'s show, joy was on the menu.</p><figure class=\"gnt_em gnt_em_img gnt_em_img__inset\" style=\"contain: content; clear: right; width: 300px; margin-top: 10px; margin-bottom: 24px; margin-left: 31px; display: flex; flex-flow: wrap; float: right; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\"><img class=\"gnt_em_img_i\" fetchpriority=\"high\" data-g-r=\"lazy\" decoding=\"async\" alt=\"Daniel Dae Kim\" src=\"https://www.usatoday.com/gcdn/authoring/authoring-images/2024/09/09/USAT/75141111007-2170879835.jpg?width=300&amp;height=450&amp;fit=crop&amp;format=pjpg&amp;auto=webp\" srcset=\"/gcdn/authoring/authoring-images/2024/09/09/USAT/75141111007-2170879835.jpg?width=600&amp;height=900&amp;fit=crop&amp;format=pjpg&amp;auto=webp 2x\" style=\"object-fit: contain; width: 300px; color: rgb(255, 255, 255); background: rgb(0, 0, 0); height: 450px;\"><div class=\"gnt_em_img_ccw gnt_em_img_ccw__cap gnt_em_img_ccw__crd\" data-c-caption=\"Daniel Dae Kim\" data-c-credit=\"Paul Morigi, Getty Images\" style=\"width: 300px; margin: 6px 0px 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: 15px; font-family: \" helvetica=\"\" neue\",=\"\" \"arial=\"\" nova\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></div></figure><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\">\"Joy is in the air, folks,\" Lim says. \"When we started this collection, this was pre-<a href=\"https://www.usatoday.com/story/news/politics/elections/2024/08/22/democratic-national-convention-dnc-live-updates-kamala-harris-presidential-nomination-speech/74898796007/\" target=\"_blank\" rel=\"noreferrer noopener\" data-t-l=\":b|e|k|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">DNC and the amazing Harris and Walz movement</a>, and they use joy, too. I was thinking about this earlier in this year, so it must be in the air. It\'s like there\'s a sea change coming in. We need joy, collectively, to fuel and push this to make it happen.\"</p><p><a class=\"gnt_em gnt_em_gl gnt_em__el\" href=\"https://www.usatoday.com/picture-gallery/entertainment/celebrities/2024/09/04/new-york-fashion-week-2025-celebrities/75060219007/\" data-t-l=\":l|l|c|view gallery:inline promo\" aria-label=\"View Gallery - New York Fashion Week 2025 celeb sightings: Camila Cabello, Zayn, Anna Wintour and more\" data-g-r=\"nav_mo\" data-g-tn=\"pgcss\" data-g-mtn=\"pg75060219007\" data-g-moh=\"hpgm\" aria-haspopup=\"dialog\" aria-expanded=\"false\" data-c-id=\"75060219007\" style=\"contain: content; display: flex; flex-flow: wrap; clear: both; max-width: 660px; margin: 30px 0px; font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><img class=\"gnt_em_gl_i\" data-g-r=\"lazy\" decoding=\"async\" alt=\"\" width=\"660\" height=\"372\" src=\"https://www.usatoday.com/gcdn/authoring/authoring-images/2024/09/08/USAT/75136967007-gty-2170848619.jpg?crop=5999,3375,x0,y0&amp;width=660&amp;height=372&amp;format=pjpg&amp;auto=webp\" srcset=\"/gcdn/authoring/authoring-images/2024/09/08/USAT/75136967007-gty-2170848619.jpg?crop=5999,3375,x0,y0&amp;width=1320&amp;height=744&amp;format=pjpg&amp;auto=webp 2x\" style=\"width: 660px; height: 372px; background: rgb(0, 0, 0);\"></a></p><div class=\"gnt_em_gl_i_nt\" style=\"display: inline-flex; width: 64px; height: 64px; margin: -218px 0px 0px auto; background: rgb(0, 152, 254);\"></div><div class=\"gnt_em_gl_vg\" data-c-tc=\"106\" style=\"display: flex; z-index: 2; width: 660px; height: 36px; border-top: 4px solid rgb(0, 152, 254); background: rgb(48, 48, 48); color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-weight: 700; font-stretch: normal; line-height: 18px; font-family: \" unify=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" \"arial=\"\" nova\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" -webkit-font-smoothing:=\"\" antialiased;\"=\"\"><svg class=\"gnt_em_gl_vg_svg__ca\"><use xlink:href=\"#gnt_svg_camera\"></use></svg><svg class=\"gnt_em_gl_vg_svg\"><use xlink:href=\"#gnt_svg_expand\"></use></svg></div><div class=\"gnt_em_t gnt_em_t__hb\" data-c-et=\"New York Fashion Week 2025 celeb sightings: Camila Cabello, Zayn, Anna Wintour and more\" aria-label=\"Stars are flocking to the Big Apple in their sartorial best for NYFW\'s spring/summer 2025 collections. Here\'s who\'s been spotted so far.\" style=\"width: 660px; margin: 3px 0px 11px; color: rgb(48, 48, 48);\"></div><p><a class=\"gnt_em gnt_em_gl gnt_em__el\" href=\"https://www.usatoday.com/picture-gallery/entertainment/celebrities/2024/09/04/new-york-fashion-week-2025-celebrities/75060219007/\" data-t-l=\":l|l|c|view gallery:inline promo\" aria-label=\"View Gallery - New York Fashion Week 2025 celeb sightings: Camila Cabello, Zayn, Anna Wintour and more\" data-g-r=\"nav_mo\" data-g-tn=\"pgcss\" data-g-mtn=\"pg75060219007\" data-g-moh=\"hpgm\" aria-haspopup=\"dialog\" aria-expanded=\"false\" data-c-id=\"75060219007\" style=\"contain: content; display: flex; flex-flow: wrap; clear: both; max-width: 660px; margin: 30px 0px; font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"></a></p><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\">The designer\'s collection melded edginess with softness for a spring/summer collection that went beyond the sheer looks and other interpretations of the season seen on many runways this fashion week.</p><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\"><strong class=\"gnt_ar_b_al\" style=\"margin-right: 3px;\">Kicking off fashion week:</strong><a href=\"https://www.usatoday.com/story/entertainment/celebrities/2024/09/06/christian-siriano-nyfw-front-row-lil-kim-cyndi-lauper-tiffany-haddish/75110000007/\" target=\"_blank\" rel=\"noopener\" data-t-l=\":b|e|spike click:16|${u}\" class=\"gnt_ar_b_a\" style=\"color: rgb(48, 48, 48); text-decoration-line: underline; text-decoration-thickness: 2px; text-decoration-color: rgb(0, 152, 254); text-underline-offset: 2px;\">Lil\' Kim joins Christian Siriano\'s NYFW front row fashionably late, mid-fashion show</a></p><figure class=\"gnt_em gnt_em_img gnt_em_img__inset\" style=\"contain: content; clear: right; width: 300px; margin-top: 10px; margin-bottom: 24px; margin-left: 31px; display: flex; flex-flow: wrap; float: right; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\"><div class=\"gnt_em_img_ccw gnt_em_img_ccw__cap gnt_em_img_ccw__crd\" data-c-caption=\"Designer Phillip Lim took his bow in a camo jacket and athletic shoes.\" data-c-credit=\"Paul Morigi, Getty Images\" style=\"width: 300px; margin: 6px 0px 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: 15px; font-family: \" helvetica=\"\" neue\",=\"\" \"arial=\"\" nova\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></div></figure><p class=\"gnt_ar_b_p\" style=\"overflow-wrap: break-word; margin: 14px 0px; color: rgb(48, 48, 48); font-family: \" georgia=\"\" pro\",=\"\" georgia,=\"\" \"droid=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 18px;\"=\"\">Against the backdrop of an industrial space, the collection felt uniquely ethereal. Lightweight lace paired beautifully with delicate feathers on skirts, tops and jackets, buoyant as they came down the runway. Romantic tops were juxtaposed with infusions of camo on shorts and pants. Tasseled sequins and jewels felt breezy; open-knit mesh in clothes and bags gave a feeling of openness with a cool factor. And statement shirts with messages like \"Don\'t cry tonight,\" \"Enjoy the moment\" and \"Always forever baby\" punctuated the sentiment of 20 years in the fashion industry.</p>', NULL, NULL, 1, '2024-09-10 00:28:37', '2024-09-10 00:35:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Clothes', 'clothes', 1, '2024-09-09 01:25:36', '2024-09-09 01:25:36'),
(3, 'Entertainment', 'entertainment', 1, '2024-09-09 01:25:51', '2024-09-09 01:25:51'),
(4, 'Fashion', 'fashion', 1, '2024-09-09 01:25:56', '2024-09-09 01:25:56'),
(5, 'Lifestyle', 'lifestyle', 1, '2024-09-09 01:26:04', '2024-09-09 01:26:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `logo`, `name`, `slug`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/media_66a62ca6e0f54.png', 'MSI', 'msi', 1, 1, '2024-07-28 04:05:32', '2024-07-28 04:33:58'),
(2, 'uploads/media_66a6262cb705d.png', 'ASUS', 'asus', 1, 1, '2024-07-28 04:06:20', '2024-07-28 04:42:14'),
(6, 'uploads/media_66b0ad0e9740a.png', 'Apple', 'apple', 1, 1, '2024-08-05 03:43:44', '2024-08-05 03:44:30'),
(7, 'uploads/media_66c98511a53df.png', 'Gopro', 'gopro', 1, 1, '2024-08-24 00:00:01', '2024-08-24 00:00:33'),
(8, 'uploads/media_66cac28ac4f6e.png', 'Samsung', 'samsung', 1, 1, '2024-08-24 22:33:36', '2024-08-24 22:35:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Electronics', 'electronics', 'fas fa-mobile-alt', 1, '2024-07-27 05:55:48', '2024-07-27 05:55:48'),
(11, 'Fashion', 'fashion', 'fas fa-tshirt', 1, '2024-07-27 05:56:29', '2024-08-24 22:29:00'),
(12, 'Womens Fashion', 'womens-fashion', 'fas fa-star', 1, '2024-07-27 05:56:51', '2024-07-27 05:56:51'),
(13, 'Shoes', 'shoes', 'fas fa-shoe-prints', 1, '2024-07-27 05:57:14', '2024-07-27 05:57:14'),
(14, 'Health and Beauty', 'health-and-beauty', 'fas fa-hands-helping', 1, '2024-07-27 05:58:01', '2024-07-27 05:59:00'),
(15, 'Groceries', 'groceries', 'fas fa-layer-group', 1, '2024-07-27 06:00:00', '2024-07-27 06:00:00'),
(16, 'Home and Life', 'home-and-life', 'fas fa-home', 1, '2024-07-27 06:00:27', '2024-07-27 06:00:27'),
(17, 'Sports and Outdoors', 'sports-and-outdoors', 'fab fa-hubspot', 1, '2024-07-27 06:00:51', '2024-07-27 06:00:51'),
(18, 'Automotive', 'automotive', 'fas fa-car-alt', 1, '2024-07-27 06:01:22', '2024-07-27 06:01:22'),
(19, 'Babies and Toys', 'babies-and-toys', 'fas fa-atom', 1, '2024-07-27 06:01:43', '2024-07-28 00:17:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(6, 10, 8, 'Canon', 'canon', 1, '2024-07-27 06:05:09', '2024-07-27 06:05:09'),
(7, 10, 8, 'DJI', 'dji', 1, '2024-07-27 06:05:24', '2024-07-27 06:05:24'),
(8, 10, 8, 'GoPro', 'gopro', 1, '2024-07-27 06:05:39', '2024-07-27 06:05:39'),
(9, 10, 8, 'Pentax', 'pentax', 1, '2024-07-27 06:05:49', '2024-07-27 06:05:49'),
(10, 10, 9, 'Acer', 'acer', 1, '2024-07-27 06:05:58', '2024-07-27 06:05:58'),
(11, 10, 9, 'ASUS', 'asus', 1, '2024-07-27 06:06:13', '2024-07-27 06:06:13'),
(12, 10, 9, 'Lenovo', 'lenovo', 1, '2024-07-27 06:06:44', '2024-07-27 06:06:44'),
(13, 10, 9, 'MSI', 'msi', 1, '2024-07-27 06:07:03', '2024-07-27 06:07:03'),
(14, 10, 10, 'Google Pixel', 'google-pixel', 1, '2024-07-27 06:07:24', '2024-07-27 06:07:24'),
(15, 10, 10, 'One Plus', 'one-plus', 1, '2024-07-27 06:07:41', '2024-07-27 06:07:41'),
(16, 10, 10, 'SAMSUNG', 'samsung', 1, '2024-07-27 06:08:00', '2024-07-28 00:48:52'),
(17, 10, 10, 'Sony Xperia', 'sony-xperia', 1, '2024-07-27 06:08:22', '2024-07-28 00:48:46'),
(18, 10, 11, 'Apple', 'apple', 1, '2024-07-27 06:08:48', '2024-07-27 06:08:48'),
(19, 10, 10, 'Iphone', 'iphone', 1, '2024-08-23 23:51:13', '2024-08-23 23:51:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cod_settings`
--

CREATE TABLE `cod_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cod_settings`
--

INSERT INTO `cod_settings` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-09-15 07:52:00', '2024-09-15 07:52:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `max_use` int UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `total_used` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `quantity`, `max_use`, `start_date`, `end_date`, `discount_type`, `discount`, `status`, `total_used`, `created_at`, `updated_at`) VALUES
(1, '30% discount', 'OFFER30', 100, 1, '2024-08-02', '2024-08-12', 'percent', 30, 1, 0, '2024-08-02 06:07:38', '2024-08-02 06:27:25'),
(2, '40% discount', 'OFFER40', 150, 1, '2024-08-02', '2024-08-25', 'percent', 40, 1, 0, '2024-08-02 06:08:26', '2024-08-19 00:56:35'),
(4, 'Flat discount 100', 'FLAT100', 100, 2, '2024-08-06', '2024-08-10', 'amount', 100, 1, 0, '2024-08-05 23:01:45', '2024-08-05 23:01:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `email`, `host`, `username`, `password`, `port`, `encryption`, `created_at`, `updated_at`) VALUES
(1, 'support@sazao.com', 'sandbox.smtp.mailtrap.io', '13bc40e86140ef', '05feeb5d9988f4', '2525', 'tls', '2024-08-27 22:04:23', '2024-08-28 08:01:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `end_date`, `created_at`, `updated_at`) VALUES
(1, '2024-08-31', '2024-08-04 04:24:34', '2024-08-04 04:26:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flash_sale_items`
--

CREATE TABLE `flash_sale_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `flash_sale_id` bigint UNSIGNED NOT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flash_sale_items`
--

INSERT INTO `flash_sale_items` (`id`, `product_id`, `flash_sale_id`, `show_at_home`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 1, 1, '2024-08-04 07:12:02', '2024-08-04 07:12:02'),
(5, 4, 1, 1, 1, '2024-08-05 00:38:14', '2024-08-05 00:38:14'),
(6, 6, 1, 1, 1, '2024-08-05 03:50:08', '2024-08-05 03:50:08'),
(7, 7, 1, 1, 1, '2024-08-05 03:58:26', '2024-08-05 03:58:26'),
(8, 8, 1, 0, 1, '2024-08-23 23:55:42', '2024-08-23 23:55:59'),
(9, 9, 1, 0, 1, '2024-08-24 00:03:22', '2024-08-24 00:03:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer_grid_threes`
--

CREATE TABLE `footer_grid_threes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `footer_grid_threes`
--

INSERT INTO `footer_grid_threes` (`id`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Shipping', 'http://127.0.0.1:8000/admin/footer-socials/create', 1, '2024-08-27 20:34:04', '2024-08-27 20:34:04'),
(3, 'Payment Change Policy', 'http://127.0.0.1:8000/admin/footer-socials/create', 1, '2024-08-27 20:34:26', '2024-08-27 20:34:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer_grid_twos`
--

CREATE TABLE `footer_grid_twos` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `footer_grid_twos`
--

INSERT INTO `footer_grid_twos` (`id`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'http://127.0.0.1:8000/admin/footer-socials/create', 1, '2024-08-27 03:51:17', '2024-08-27 20:27:40'),
(3, 'Support', 'http://127.0.0.1:8000/admin/footer-socials/create', 1, '2024-08-27 20:24:32', '2024-08-27 20:24:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer_infos`
--

CREATE TABLE `footer_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `footer_infos`
--

INSERT INTO `footer_infos` (`id`, `logo`, `phone`, `email`, `address`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'uploads/media_66cd92d10ea0c.png', '+84 375566576', 'phongdt16@sazao.com', 'Thinh Liet, Hoang Mai district, Hanoi', 'Copyright © 2021 Sazao shop. All Rights Reserved.', '2024-08-27 01:48:17', '2024-08-27 01:53:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer_socials`
--

CREATE TABLE `footer_socials` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `footer_socials`
--

INSERT INTO `footer_socials` (`id`, `icon`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-facebook-f', 'Facebook', 'https://www.facebook.com/phongjua.204', 1, '2024-08-27 03:02:41', '2024-08-27 03:59:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer_titles`
--

CREATE TABLE `footer_titles` (
  `id` bigint UNSIGNED NOT NULL,
  `footer_grid_two_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_grid_three_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `footer_titles`
--

INSERT INTO `footer_titles` (`id`, `footer_grid_two_title`, `footer_grid_three_title`, `created_at`, `updated_at`) VALUES
(1, 'More Link', 'Helper Link', '2024-08-27 04:16:27', '2024-08-27 20:32:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `layout`, `contact_email`, `contact_phone`, `contact_address`, `map`, `currency_name`, `currency_icon`, `time_zone`, `created_at`, `updated_at`) VALUES
(1, 'Sazao', 'LTR', 'Sazao@contact.mail', '+84 375566576', 'No. 81, Alley 42 Thinh Liet, Hoang Mai District, Hanoi', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.498574457652!2d105.84417911107178!3d20.972642489622576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac48ac90cb4b%3A0xececf4460103c358!2zODEgTmcuIDQyIFRo4buLbmggTGnhu4d0LCBUaOG7i25oIExp4buHdCwgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1725637122312!5m2!1svi!2s\" width=\"1600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"100\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'USD', '$', 'Asia/Ho_Chi_Minh', '2024-08-05 07:26:16', '2024-09-15 03:53:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_page_settings`
--

CREATE TABLE `home_page_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `home_page_settings`
--

INSERT INTO `home_page_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'popular_category_section', '[{\"category\":\"10\",\"sub_category\":null,\"child_category\":null},{\"category\":\"10\",\"sub_category\":\"8\",\"child_category\":null},{\"category\":\"10\",\"sub_category\":\"9\",\"child_category\":null},{\"category\":\"10\",\"sub_category\":\"11\",\"child_category\":\"18\"}]', '2024-08-23 02:16:08', '2024-08-23 23:51:52'),
(2, 'product_slider_section_one', '{\"category\":\"10\",\"sub_category\":null,\"child_category\":null}', '2024-08-24 08:41:34', '2024-09-12 03:16:36'),
(3, 'product_slider_section_two', '{\"category\":\"10\",\"sub_category\":null,\"child_category\":null}', '2024-08-24 22:20:13', '2024-08-25 02:05:27'),
(4, 'product_slider_section_three', '[{\"category\":\"10\",\"sub_category\":null,\"child_category\":null},{\"category\":\"10\",\"sub_category\":null,\"child_category\":null}]', '2024-08-25 00:49:35', '2024-08-25 02:02:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo_settings`
--

CREATE TABLE `logo_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `logo_settings`
--

INSERT INTO `logo_settings` (`id`, `logo`, `favicon`, `created_at`, `updated_at`) VALUES
(1, 'uploads/media_66e6ae249babe.png', 'uploads/media_66e6b089288d8.png', '2024-09-15 02:51:32', '2024-09-15 03:01:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_07_18_031915_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 2),
(3, '2024_07_18_033016_create_categories_table', 3),
(4, '2024_07_18_033402_create_sub_categories_table', 4),
(5, '2024_07_18_033625_create_child_categories_table', 5),
(6, '2024_07_18_032418_create_products_table', 6),
(24, '2024_07_18_034124_create_product_image_galleries_table', 7),
(25, '2024_07_18_034333_create_product_variants_table', 8),
(26, '2024_07_18_034627_create_product_variant_item_table', 9),
(27, '2024_07_18_035333_create_user_addresses_table', 10),
(28, '2024_07_18_040027_create_orders_table', 11),
(29, '2024_07_18_040729_create_order_products_table', 12),
(30, '2024_07_18_041119_create_product_reviews_table', 13),
(31, '2024_07_18_041346_create_blogs_table', 14),
(32, '2024_07_18_041609_create_product_review_galleries_table', 15),
(33, '2014_10_12_100000_create_password_reset_tokens_table', 16),
(34, '2019_08_19_000000_create_failed_jobs_table', 16),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 16),
(36, '2024_07_18_033959_create_brands_table', 16),
(37, '2024_07_18_034927_create_coupons_table', 16),
(38, '2024_07_18_035650_create_sliders_table', 16),
(39, '2024_07_18_042011_create_wishlists_table', 16),
(40, '2024_07_18_044640_create_shipping_rules_table', 16),
(41, '2014_10_12_100000_create_password_resets_table', 17),
(42, '2024_07_28_102529_add_brands_table', 17),
(44, '2024_07_28_131817_create_vendors_table', 18),
(47, '2024_07_29_075811_change_products_table', 19),
(48, '2024_07_31_075427_rename_product_variant_item_table_to_product_variant_items_table', 20),
(50, '2024_08_01_014342_add_shop_name_to_vendors_table', 21),
(51, '2024_08_04_065025_create_flash_sales_table', 22),
(52, '2024_08_04_091401_create_flash_sale_items_table', 22),
(53, '2024_08_05_111318_create_general_settings_table', 23),
(54, '2024_08_06_074328_add_order_products_table', 24),
(55, '2024_08_16_020104_create_paypal_settings_table', 25),
(56, '2024_08_19_072437_create_transactions_table', 26),
(57, '2024_08_22_121728_create_home_page_settings_table', 27),
(58, '2024_08_27_081153_create_footer_infos_table', 28),
(59, '2024_08_27_092550_create_footer_socials_table', 29),
(60, '2024_08_27_104302_create_footer_grid_twos_table', 30),
(62, '2024_08_27_110735_create_footer_titles_table', 31),
(63, '2024_08_28_031744_create_footer_grid_threes_table', 32),
(64, '2024_08_28_042721_create_email_configurations_table', 33),
(65, '2024_08_28_053633_create_newsletter_subscribers_table', 34),
(66, '2024_08_29_142854_create_advertisements_table', 35),
(67, '2024_08_30_162016_add_product_reviews_table', 36),
(68, '2024_09_05_072258_add_vendors_table', 37),
(69, '2024_09_06_081900_create_vendor_conditions_table', 38),
(70, '2024_09_06_084427_create_abouts_table', 39),
(71, '2024_09_06_142126_create_terms_and_conditions_table', 40),
(73, '2024_09_06_152505_add_general_settings_table', 41),
(74, '2024_09_08_140725_create_blog_categories_table', 42),
(77, '2024_09_09_081516_add_blogs_table', 43),
(78, '2024_09_10_073930_create_blog_comments_table', 44),
(79, '2024_09_15_085753_create_logo_settings_table', 45),
(80, '2024_09_15_144840_create_cod_settings_table', 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `email`, `verified_token`, `is_verified`, `created_at`, `updated_at`) VALUES
(11, 'bong@gmail.com', 'verified', '1', '2024-08-28 08:17:37', '2024-08-29 01:49:36'),
(12, 'bongteo@gmail.com', 'verified', '1', '2024-08-28 08:18:52', '2024-08-29 01:16:09'),
(13, 'phonghehe@gmail.com', 'verified', '1', '2024-08-29 01:18:20', '2024-08-29 01:18:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `sub_total` double NOT NULL,
  `amount` double NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` int UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `order_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `user_id`, `sub_total`, `amount`, `currency_name`, `currency_symbol`, `product_qty`, `payment_method`, `payment_status`, `order_address`, `shipping_method`, `coupon`, `order_status`, `created_at`, `updated_at`) VALUES
(5, '762257', 4, 1422, 903.2, 'USD', '$', 1, 'paypal', 1, '{\"id\":5,\"user_id\":4,\"name\":\"\\u0110\\u1eb7ng Thanh Phong\",\"email\":\"phongzau2004@gmail.com\",\"phone\":\"0375566576\",\"zip\":\"11700\",\"country\":\"Vietnam\",\"city\":\"H\\u00e0 N\\u1ed9i\",\"address\":\"S\\u1ed1 81 ng\\u00f5 42 Th\\u1ecbnh Li\\u1ec7t ho\\u00e0ng mai h\\u00e0 n\\u1ed9i\",\"created_at\":\"2024-08-13T12:13:10.000000Z\",\"updated_at\":\"2024-08-13T12:13:10.000000Z\"}', '{\"id\":2,\"name\":\"Ahamove\",\"type\":\"flat_cost\",\"cost\":50}', '{\"coupon_name\":\"40% discount\",\"coupon_code\":\"OFFER40\",\"discount_type\":\"percent\",\"discount\":40}', 'delivered', '2024-08-19 02:52:44', '2024-08-21 04:38:52'),
(6, '993103', 5, 1800, 1850, 'USD', '$', 1, 'paypal', 1, '{\"id\":2,\"user_id\":5,\"name\":\"Nguy\\u1ec5n Th\\u1ecb Anh\",\"email\":\"anhnt@gmail.com\",\"phone\":\"0836808980\",\"zip\":\"11700\",\"country\":\"Vietnam\",\"city\":\"H\\u00e0 N\\u1ed9i\",\"address\":\"S\\u1ed1 81 ng\\u00f5 42 V\\u0129nh Ph\\u00fac H\\u00e0 N\\u1ed9i\",\"created_at\":\"2024-08-02T17:03:24.000000Z\",\"updated_at\":\"2024-08-02T17:03:24.000000Z\"}', '{\"id\":2,\"name\":\"Ahamove\",\"type\":\"flat_cost\",\"cost\":50}', 'null', 'delivered', '2024-08-22 00:05:20', '2024-09-16 00:49:35'),
(7, '724128', 5, 4061, 2486.6, 'USD', '$', 4, 'paypal', 1, '{\"id\":4,\"user_id\":5,\"name\":\"Nguy\\u1ec5n Th\\u1ecb B\\u00f4ng\",\"email\":\"phongdtph38207@fpt.edu.vn\",\"phone\":\"0836808980\",\"zip\":\"11700\",\"country\":\"0\",\"city\":\"H\\u00e0 N\\u1ed9i\",\"address\":\"S\\u1ed1 81 ng\\u00f5 42 Th\\u1ecbnh Li\\u1ec7t ho\\u00e0ng mai h\\u00e0 n\\u1ed9i\",\"created_at\":\"2024-08-06T06:42:17.000000Z\",\"updated_at\":\"2024-08-06T06:42:17.000000Z\"}', '{\"id\":2,\"name\":\"Ahamove\",\"type\":\"flat_cost\",\"cost\":50}', '{\"coupon_name\":\"40% discount\",\"coupon_code\":\"OFFER40\",\"discount_type\":\"percent\",\"discount\":40}', 'delivered', '2024-08-22 03:22:39', '2024-09-14 03:28:58'),
(8, '566412', 5, 711, 761, 'USD', '$', 1, 'COD', 1, '{\"id\":1,\"user_id\":5,\"name\":\"\\u0110\\u1eb7ng Thanh Phong\",\"email\":\"phongzau2004@gmail.com\",\"phone\":\"0375566576\",\"zip\":\"11700\",\"country\":\"Vietnam\",\"city\":\"H\\u00e0 N\\u1ed9i\",\"address\":\"S\\u1ed1 81 ng\\u00f5 42 Th\\u1ecbnh Li\\u1ec7t ho\\u00e0ng mai h\\u00e0 n\\u1ed9i\",\"created_at\":\"2024-08-02T17:02:05.000000Z\",\"updated_at\":\"2024-08-02T17:02:05.000000Z\"}', '{\"id\":2,\"name\":\"Ahamove\",\"type\":\"flat_cost\",\"cost\":50}', 'null', 'delivered', '2024-09-15 08:51:48', '2024-09-15 08:53:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `vendor_id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variants` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_total` int UNSIGNED NOT NULL,
  `unit_price` int UNSIGNED NOT NULL,
  `qty` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `vendor_id`, `product_name`, `variants`, `variant_total`, `unit_price`, `qty`, `created_at`, `updated_at`) VALUES
(10, 5, 1, 1, 'Laptop MSI Gaming GF63 12UC-887VN', '{\"Capacity\":{\"name\":\"512 GB\",\"price\":0},\"Ram\":{\"name\":\"8GB\",\"price\":0}}', 0, 711, 2, '2024-08-19 02:52:44', '2024-08-19 02:52:44'),
(11, 6, 4, 3, 'Laptop ASUS TUF Gaming A15 FA507NU-LP140W', '[]', 0, 900, 2, '2024-08-22 00:05:20', '2024-08-22 00:05:20'),
(12, 7, 1, 1, 'Laptop MSI Gaming GF63 12UC-887VN', '{\"Capacity\":{\"name\":\"512 GB\",\"price\":0},\"Ram\":{\"name\":\"8GB\",\"price\":0}}', 0, 711, 1, '2024-08-22 03:22:39', '2024-08-22 03:22:39'),
(13, 7, 6, 1, 'iPhone 15 | Chính hãng VN/A', '[]', 0, 1000, 1, '2024-08-22 03:22:39', '2024-08-22 03:22:39'),
(14, 7, 7, 1, 'Samsung Galaxy S24 Ultra', '[]', 0, 1450, 1, '2024-08-22 03:22:39', '2024-08-22 03:22:39'),
(15, 7, 4, 3, 'Laptop ASUS TUF Gaming A15 FA507NU-LP140W', '[]', 0, 900, 1, '2024-08-22 03:22:39', '2024-08-22 03:22:39'),
(16, 8, 1, 1, 'Laptop MSI Gaming GF63 12UC-887VN', '{\"Capacity\":{\"name\":\"512 GB\",\"price\":0},\"Ram\":{\"name\":\"8GB\",\"price\":0}}', 0, 711, 1, '2024-09-15 08:51:48', '2024-09-15 08:51:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `paypal_settings`
--

CREATE TABLE `paypal_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `client_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `paypal_settings`
--

INSERT INTO `paypal_settings` (`id`, `status`, `mode`, `country_name`, `currency_name`, `currency_rate`, `client_id`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'United States', 'USD', 1, 'AT6LsMSCKFmxWf49DKTgHXgB970SnZyGYHBYHCS4KtNNWIMReYlj4N8Ge3FxGNb9yhpBZ5jYBjbsx1aQ', 'EGPLW137hz_rlJatIZRPEvFAv5j4kW670tKcTuzX0moqWwf1T4GosYTUV2jAqR5v2OMVfHMSiSbEmM2U', '2024-08-15 19:47:35', '2024-08-16 06:19:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED DEFAULT NULL,
  `child_category_id` bigint UNSIGNED DEFAULT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `qty` int UNSIGNED NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_approved` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 'Laptop MSI Gaming GF63 12UC-887VN', 'laptop-msi-gaming-gf63-12uc-887vn', 'uploads/media_66a77da92b807.webp', 1, 10, 9, 13, 1, 100, 'Laptop MSI (Micro-Star International) nổi tiếng với thiết kế mạnh mẽ, chuyên dụng cho game thủ và người dùng cần hiệu năng cao.', '<h1 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); font-size: 20px; text-align: center;\"><span style=\"margin: 0px; font-weight: bolder;\"><span style=\"margin: 0px; font-size: 24pt;\">MSI GF63 Thin 12VE-460VN: Gaming chính hãng siêu khỏe i5-12450H + RTX 4050 chiến game cực mượt - Nâng cấp cực đỉnh</span></span></h1><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(0, 0, 0);\"><a href=\"https://laptop88.vn/new-100-laptop-msi-gaming-gf63-thin-12ve-460vn-intel-core-i5-12450h-rtx-4050-4gb-15.6-inch-full-hd-144hz.html\" style=\"margin: 0px; color: rgb(0, 0, 0);\"><span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN</span></a> là mẫu <a href=\"https://laptop88.vn/laptop-gaming.html\" target=\"_blank\" style=\"margin: 0px; color: rgb(0, 0, 0);\">laptop gaming</a> đang cực kỳ HOT trong thời gian gần đây đến từ thương hiệu l<a href=\"https://laptop88.vn/laptop-msi.html\" target=\"_blank\" style=\"margin: 0px; color: rgb(0, 0, 0);\">aptop MSI</a>. Mẫu <a href=\"https://laptop88.vn/may-tinh-xach-tay.html\" target=\"_blank\" style=\"margin: 0px; color: rgb(0, 0, 0);\">laptop</a>/ <a href=\"https://laptop88.vn/may-tinh-xach-tay.html\" target=\"_blank\" style=\"margin: 0px; color: rgb(0, 0, 0);\">máy tính xách tay</a> này không chỉ sở hữu thiết kế cơ động, dễ dàng mang theo mọi nơi, mà máy còn sở hữu sức mạnh vượt trội để đáp ứng nhu cầu làm việc, giải trí và chơi game với chip i5 12450H + RTX 4050 và khả năng nâng cấp RAM cực tốt, làm đa nhiệm cực mượt,... Cùng Laptop88 tìm hiểu kỹ hơn về sản phẩm trên thông qua nội dung bài viết sau đây nhé!</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; color: rgb(0, 0, 0);\"> </span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Cấu hình siêu chất khi sở hữu chip core i5 gen 12 đời mới được tích hợp card rời RTX 4050 cho phép chiến mọi tựa game đồ họa nặng đều siêu mượt mà</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Sẵn 8GB RAM đa nhiệm cực mượt mà. Khả năng nâng cấp cực tốt đến 64GB tha hồ mở nhiều tabs không giật lag</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Màn 15.6 Full HD với tần số quét 144Hz cho hình ảnh được chuyển động mượt mà, sắc nét, chơi game cực phê không có hiện tượng bị xé hình</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Hệ thống tản nhiệt tốt nhất giúp máy luôn duy trì nhiệt độ ổn định khi chiến game và thao tác trên các ứng dụng đồ họa nặng</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Thiết kế mạnh mẽ, đậm chất gaming cùng build máy chắc chắn, sử dụng bền bỉ trong nhiều năm dài</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt; color: rgb(255, 0, 0);\">- Bảo hành chính hãng 12 tháng dài lâu cực yên tâm</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><br><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN: Hiệu năng mạnh mẽ chiến tốt mọi tựa game</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">MSI GF63 Thin 12VE-460VN mang đến hiệu năng tuyệt vời với trang bị cấu hình chip i5 - 12450H có tới 8 nhân 12 luồng, xung nhịp giao động cũng cực cao: Tần số Turbo tối đa của E-core là 3.30 GHz và Tần số Turbo tối đa của P-core là 4.40 GHz. Hậu tố H trên tên chip cho thấy hiệu năng xử lý vượt trội cho các dòng laptop gaming, đáp ứng tốt mọi tác vụ nặng nhất như chơi các tựa game AAA cấu hình cao, hay chỉnh sửa ảnh, đồ hoạ,...</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Kết hợp với đó là card đồ họa RTX 4050. Đây là một sản phẩm card có series mới nhất hiện nay và sở hữu tất cả những công nghệ mới, mạnh mẽ nhất như: Lõi Tensor thế hệ thứ 4 được hỗ trợ nhiều hơn từ công nghệ trí thông minh nhân tạo (AI); cải thiện được hiệu suất đổ bóng tốt,... Và đặc biệt là cho hiệu năng hoạt động cực ấn tượng với 1440 pixel, khiến nhiều game thủ cảm thấy ngợp với với hiệu suất 4K.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"><span style=\"margin: 0px; font-size: 14pt;\"><img src=\"https://laptop88.vn/media/lib/28-02-2024/msi-gf63-thin-12ve-460vn-3.jpg\" alt=\"\" style=\"margin: 0px auto; max-width: 100%; height: auto; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Với bộ cấu hình kể trên, game thủ có thể thoải mái chơi mọi tựa game bom tấn như GTA V, PUBG, Tomb Raider, ... trên MSI GF63 Thin 12VE-460VN. Ngoài ra, với công nghệ Ray Tracing đổ bóng, khử răng cưa mượt, tối ưu rất tốt cho mọi tác vụ đồ họa nặng như 3Ds Max, Sketchup, PTS, chỉnh sửa video, dựng phim, sáng tạo nội dung, thiết kế công trình... siêu mượt mà.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Chưa kể, MSI GF63 Thin 12VE-460VN còn có sẵn dung lượng RAM 8GB DDR4, có khả năng nâng cấp tốt đến tối đa 64GB RAM và ổ cứng SSD 512GB tốc độ cao hỗ trợ cho mọi nhu cầu sử dụng đa nhiệm không giật lag/ khởi động game, các phần mềm, ứng dụng siêu nhanh giúp các game thủ chinh phục mọi cuộc chơi dễ dàng</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><table width=\"402\" style=\"margin: 0px auto; font-family: Roboto, sans-serif; max-width: 100%; width: 768.312px; color: rgb(34, 34, 34);\"><tbody style=\"margin: 0px;\"><tr style=\"margin: 0px;\"><td style=\"margin: 0px; text-align: right;\"><br></td><td style=\"margin: 0px;\"></td></tr></tbody></table><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN sở hữu màn hình sắc nét, 144Hz siêu mượt mà</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">MSI GF63 Thin 12VE-460VN sở hữu màn hình kích thước 15.6 inch, với độ phân giải đạt Full HD (1920 x 1080) cho khả năng hiển thị hình ảnh cực kỳ sắc nét và chân thực. Tần số quét màn hình lên tới 144Hz giúp loại bỏ hiện tượng chuyển động nhòe và để lại trải nghiệm hình ảnh hoàn hảo mượt mà, tạo ra một cái nhìn rõ ràng về kẻ thù và là chìa khóa để dẫn chiến thắng.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"><span style=\"margin: 0px; font-size: 14pt;\"><img src=\"https://laptop88.vn/media/lib/28-02-2024/msi-gf63-thin-12ve-460vn-1.jpg\" alt=\"\" style=\"margin: 0px auto; max-width: 100%; height: auto; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Ngoài ra, tấm màn IPS tiên tiến cung cấp góc nhìn rộng lên đến 178 độ, giúp nâng cao trải nghiệm hình ảnh so với các loại màn hình thông thường, dù ở góc nhìn nào thì hình ảnh vẫn luôn giữ được chất lượng tốt nhất.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN: Thiết kế cơ động, dễ dàng di chuyển</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">MSI GF63 Thin 12VE-460VN sở hữu ngoại hình mỏng nhẹ đến bất ngờ vì chỉ có trọng lượng 1.86kg. Đây là thiết kế đề cao tính di động cao - cực phù hợp với những bạn có nhu cầu di chuyển nhiều.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"><span style=\"margin: 0px; font-size: 14pt;\"><img src=\"https://laptop88.vn/media/lib/28-02-2024/msi-gf63-thin-12ve-460vn-4.jpg\" alt=\"\" style=\"margin: 0px auto; max-width: 100%; height: auto; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Mỏng nhẹ nhưng MSI Gaming GF63 Thin 12VE-460VN vẫn vô cùng chắc chắn khi vỏ và mặt bàn phím được làm từ chất liệu nhôm phay xước. Các góc máy được làm vuông vức với màu đen đầy quyền lực, logo rồng đỏ đặc trưng mang đến phong cách thiết kế tối giản, tinh tế nhưng mạnh mẽ và đầy quyền lực đậm chất MSI.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Bản lề chắc chắn, build máy được hoàn thiện cứng cáp giúp bạn yên tâm sử dụng máy trong nhiều năm liền mà không lo tã máy.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><br><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN: Tản nhiệt mát mẻ</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Ở phiên bản MSI GF63 Thin 12VE-460VN này, MSI đã tinh chỉnh hướng đến khả năng thoát nhiệt êm hơn, mát hơn giúp đem lại hiệu năng sử dụng mạnh mẽ nhất đến game thủ. Các khe thoát khí được trang bị ở mặt dưới cùng 2 bên cạnh máy của máy giúp quá trình lưu thông khí nóng diễn ra nhanh chóng hơn.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"> <img src=\"https://laptop88.vn/media/lib/28-02-2024/msi-gf63-thin-12ve-460vn-2.jpg\" alt=\"\" style=\"margin: 0px auto; max-width: 100%; height: auto; display: block;\"></p><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">Bàn phím gõ sướng, độ nảy tốt với MSI GF63 Thin 12VE-460VN</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Do sở hữu màn hình rộng 15.6 inch nên chiếc laptop gaming HP Victus RTX 2050 này được trang bị cả bàn phím số riêng biệt cực kỳ tiện lợi từ các công việc tính toán, nhập liệu đến chơi game. Trải nghiệm gõ phím cũng cực kỳ thích, độ nảy tốt, hành trình phím sâu. Bên cạnh đó, máy cũng có trang bị LED phím đơn sắc có độ sáng đèn lại đủ nhìn, tiện dụng khi sử dụng trong điều kiện thiếu sáng.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"><span style=\"margin: 0px; font-size: 14pt;\"><img src=\"https://laptop88.vn/media/lib/28-02-2024/msi-gf63-thin-12ve-460vn-5.jpg\" alt=\"\" style=\"margin: 0px auto; max-width: 100%; height: auto; display: block;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">MSI Gaming GF63 Thin 12VE-460VN có hành trình phím sâu, êm, độ nảy tốt mang lại trải nghiệm gõ phím cực đã. Đèn nền phím với công nghệ Single Backlit màu đỏ cho phép điều chỉnh độ sáng tạo hiệu ứng bắt mắt khi chơi game.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\"><br></span></p><h2 style=\"margin-right: 0px; margin-left: 0px; font-family: Roboto, sans-serif; font-weight: 500; color: rgb(34, 34, 34); padding-bottom: 10px; text-align: justify;\"><span style=\"margin: 0px; font-size: 18pt;\"><span style=\"margin: 0px; font-weight: bolder;\">Cổng kết nối đa dạng đáp ứng mọi nhu cầu</span></span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">MSI GF63 Thin 12VE-460VN sở hữu hàng loạt cổng kết nối đa dạng đáp ứng mọi nhu cầu làm việc và giải trí bao gồm: 1x Type-C USB3.2 Gen1; 3x Type-A USB3.2 Gen1; 1x (4K @ 30Hz) HDMI; 1x Mic-in; 1x Headphone-out</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><span style=\"margin: 0px; font-size: 14pt;\">Đồng thời, việc trang bị thêm cổng kết nối WIFI 6, Bluetooth 5.1 còn giúp gia tăng tốc độ kết nối, mạng internet được truyền tải nhanh hơn và hạn chế các tình trạng giật, lag trong quá trình chơi game.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"> </p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><em style=\"margin: 0px;\"><span style=\"margin: 0px; font-size: 14pt;\">Trong tầm giá này, <span style=\"margin: 0px; font-weight: bolder;\">MSI GF63 Thin 12VE-460VN</span> thực sự là một lựa chọn xuất sắc dành cho các game thủ mong muốn sở hữu một chiếc máy cấu hình khỏe chiến mượt mọi tựa game nặng nhưng vẫn giữ được dáng vẻ gọn nhẹ, dễ dàng di chuyển. Liên hệ Laptop88 ngay nhé!</span></em></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34); text-align: justify;\"><br></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 20px; padding-bottom: 10px; color: rgb(34, 34, 34);\"><br></p>', 'ELEC-6312887', 711, 650, '2024-07-30', '2024-08-27', 'new_arrival', 1, 1, '2024-07-29 04:31:53', '2024-08-04 06:47:50'),
(4, 'Laptop ASUS TUF Gaming A15 FA507NU-LP140W', 'laptop-asus-tuf-gaming-a15-fa507nu-lp140w', 'uploads/media_66b09cf0dee16.jfif', 3, 10, 9, 11, 2, 100, 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản suất\r\nBảo hành pin 12 tháng\r\nCáp, sạc, sách hướng dẫn sử dụng\r\nBảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', '<div class=\"ksp-content p-2 mb-2\" style=\"box-sizing: inherit; margin: auto; background-color: rgb(242, 242, 242); border-radius: 0.5rem; width: 800px; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; text-align: justify;\"><h2 class=\"ksp-title has-text-centered\" style=\"box-sizing: inherit; font-size: 18px; font-weight: 600; color: rgb(215, 0, 24); text-align: center !important;\">ĐẶC ĐIỂM NỔI BẬT</h2><div style=\"box-sizing: inherit;\"><ul style=\"box-sizing: inherit; overflow-y: auto; scrollbar-width: none;\"><li style=\"box-sizing: inherit; margin-bottom: 5px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Một chiếc laptop dành cho game thủ, với cấu hình khủng và thiết kế độc đáo</li><li style=\"box-sizing: inherit; margin-bottom: 5px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Bộ vi xử lý AMD R5-7535HS và card đồ họa NVIDIA Geforce RTX 4050 giúp bạn chinh phục mọi tựa game nặng và đòi hỏi cao về đồ họa</li><li style=\"box-sizing: inherit; margin-bottom: 5px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">RAM 8 GB cùng ổ cứng SSD 512 GB cho không gian lưu trữ rộng rãi, hỗ trợ mở máy, mở ứng dụng nhanh chóng</li><li style=\"box-sizing: inherit; margin-bottom: 5px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Màn hình IPS 15.6 inch cho hình ảnh sắc nét, mượt mà và rực rỡ, với tần số quét 144 Hz, độ phân giải FHD và dải màu sRGB rộng</li><li style=\"box-sizing: inherit; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Laptop còn có thiết kế chắc chắn, chống va đập và bụi bẩn hiệu quả</li></ul><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"></p></div></div><div style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; text-align: justify;\"><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Laptop Asus TUF Gaming A15 FA507NU-LP140W </span>đem tới hiệu suất xử lý khủng nhờ được trang bị chipset AMD Ryzen 5 7535HS và VGA NVIDIA GeForce RTX 4050 6GB. Cùng với đó là khả năng lưu trữ và đa nhiệm xuất sắc thông qua dung lượng RAM 8GB DDR5-4800 SO-DIMM cùng ổ cứng 512GB PCIe 4.0 NVMe M.2 SSD. Ngoài ra, dòng <a href=\"https://cellphones.com.vn/laptop/asus/tuf.html\" title=\"laptop Asus Tuf gaming\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\"><span style=\"box-sizing: inherit; color: currentcolor; font-weight: 700;\">laptop Asus Tuf gaming</span></a> này còn sở hữu màn hình 15.6 inches với công nghệ hiển thị tiên tiến, hỗ trợ độ sáng 250nits và độ phủ màu sRGB 100% siêu thực.</p><h2 style=\"box-sizing: inherit; font-size: 21px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Laptop Asus TUF Gaming A15 FA507NU-LP140W - Hiệu năng đỉnh cao, chất lượng hình ảnh sắc nét</span></h2><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Laptop Asus TUF Gaming A15 FA507NU-LP140W </span>không chỉ nổi bật với cấu hình khủng mà còn thu hút người dùng bởi thiết kế độc đáo và hiện đại. Sở hữu một kiểu dáng góc cạnh, cứng cáp, Asus TUF Gaming A15 FA507NU-LP140W cực kỳ phù hợp với phong cách mạnh mẽ của game thủ và người dùng cá tính. Bên cạnh đó, dòng laptop Gaming tới từ nhà Asus này còn hỗ trợ kết nối đa dạng, từ HDMI, USB, đến Wifi 6, mang lại sự tiện lợi và đảm bảo linh hoạt trong sử dụng.</p><h3 style=\"box-sizing: inherit; margin-bottom: 0px; padding-top: 8px; padding-bottom: 8px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Dễ dàng xử lý mọi tác vụ đồ họa, chiến game khủng với hiệu năng mạnh</span></h3><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Laptop Asus TUF Gaming A15 FA507NU-LP140W khẳng định vị thế của mình trong thế giới gaming bằng thông số cấu hình cực khủng. Cụ thể, nhờ được hỗ trợ bởi bộ vi xử lý AMD Ryzen 5 và card đồ họa NVIDIA GeForce RTX 4050, dòng laptop gaming này không chỉ đảm bảo hiệu suất cao khi xử lý các tác vụ hằng ngày mà còn làm chủ mọi tựa game đòi hỏi cấu hình cao. </p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/laptop/Asus/Gaming/laptop-asus-tuf-gaming-a15-fa507nu-lp140w-1.jpg\" alt=\"Cấu hình laptop Asus TUF Gaming A15 FA507NU-LP140W\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%; float: none;\" class=\"\"></p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Sự kết hợp ấn tượng giữa CPU mạnh mẽ và GPU hiệu quả, cùng công nghệ làm mát tiên tiến, đã cho phép Asus TUF Gaming A15 FA507NU-LP140W duy trì hiệu suất ổn định dài lâu, đem lại trải nghiệm gaming mượt mà, không giới hạn.</p><h3 style=\"box-sizing: inherit; margin-bottom: 0px; padding-top: 8px; padding-bottom: 8px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bộ nhớ ổn định giúp đa nhiệm linh hoạt và ghi nhớ dữ liệu cỡ lớn dễ dàng</span></h3><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Asus TUF Gaming A15 FA507NU-LP140W không chỉ mạnh mẽ về hiệu suất mà còn ấn tượng với khả năng lưu trữ và đa nhiệm. Với RAM DDR5 8GB và ổ cứng SSD PCIe 4.0 NVMe M.2 512GB, phân khúc laptop Gaming nhà Asus này cung cấp tới người dùng một không gian lưu trữ rộng rãi và tốc độ truy cập dữ liệu cực nhanh. </p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/laptop/Asus/Gaming/laptop-asus-tuf-gaming-a15-fa507nu-lp140w-4.jpg\" alt=\"Cấu hình laptop Asus TUF Gaming A15 FA507NU-LP140W\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Ngoài bộ nhớ tiêu chuẩn trên máy <a href=\"https://cellphones.com.vn/laptop/asus/gaming.html\" title=\"Asus Gaming\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\"><span style=\"box-sizing: inherit; color: currentcolor; font-weight: 700;\">Asus Gaming</span></a> thì bạn cũng có thể mở rộng RAM lên tới 32GB và nâng cấp thêm ổ cứng để đáp ứng nhu cầu lưu trữ cũng như đa nhiệm mà không gặp bất kỳ khó khăn nào. Điểm nhấn về bộ nhớ này đặc biệt hữu ích cho game thủ và những người sử dụng cần xử lý công việc nặng như chỉnh sửa video, đồ họa mà không cần lo lắng về không gian lưu trữ và đa nhiệm.</p><h3 style=\"box-sizing: inherit; margin-bottom: 0px; padding-top: 8px; padding-bottom: 8px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Kiểu dáng hầm hố, mạnh mẽ chuẩn Gaming</span></h3><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Thiết kế của Asus TUF Gaming A15 FA507NU-LP140W hội tụ đầy đủ các nét nổi trội của một phân khúc laptop gaming: mạnh mẽ, cứng cáp và đầy cá tính. Theo đó, Asus TUF Gaming A15 FA507NU-LP140W mang một vẻ ngoài hiện đại với góc cạnh được tinh chỉnh kỹ lưỡng, cùng màu sắc và hoàn thiện bề mặt độc đáo, tạo nên điểm nhấn nổi bật cho không gian làm việc hay giải trí của bạn. </p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Thông qua đó, thế hệ laptop nhà Asus này không chỉ thu hút người dùng bởi hiệu suất ấn tượng mà còn bởi thiết kế ngoại hình cuốn hút, phản ánh phong cách và đẳng cấp của người sở hữu.</p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/laptop/Asus/Gaming/laptop-asus-tuf-gaming-a15-fa507nu-lp140w-5.jpg\" alt=\"Thiết kế  laptop Asus TUF Gaming A15 FA507NU-LP140W\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%; float: none;\" class=\"\"></p><h3 style=\"box-sizing: inherit; margin-bottom: 0px; padding-top: 8px; padding-bottom: 8px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Hiển thị siêu thực, mượt mà trong từng khung hình với tần số quét lớn</span></h3><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Màn hình của Asus TUF Gaming A15 FA507NU-LP140W đem lại trải nghiệm hình ảnh đỉnh cao với độ phân giải Full HD 1920 x 1080 pixels, cùng công nghệ màn hình IPS chống chói giúp màu sắc hiển thị thêm phần rực rỡ, sống động. Đặc biệt, tần số quét trên Asus TUF Gaming A15 FA507NU-LP140W còn lên đến 144Hz, mang lại khả năng hiển thị mượt mà, giảm nhiễu và xé hình. </p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Nhờ vậy mà mọi nhu cầu chiến game hay xem phim của người dùng đều được đáp ứng với trải nghiệm mượt mà hàng đầu. Kèm theo đó là độ phủ màu NTSC 72%, SRGB 100%, Adobe 75.35%, cho phép dòng máy tính xách tay Gaming nhà Asus đảm bảo trải nghiệm hình ảnh chân thực và sắc nét, trong từng chi tiết nhỏ.</p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/laptop/Asus/Gaming/laptop-asus-tuf-gaming-a15-fa507nu-lp140w-3.jpg\" alt=\"Màn hình laptop Asus TUF Gaming A15 FA507NU-LP140W\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><h3 style=\"box-sizing: inherit; margin-bottom: 0px; padding-top: 8px; padding-bottom: 8px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Viên pin lớn, cho phép thoải mái chiến game hay xử lý đồ hoạ suốt ngày dài</span></h3><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Asus TUF Gaming A15 FA507NU-LP140W không chỉ mạnh mẽ về hiệu suất mà còn ấn tượng với khả năng sử dụng pin dài lâu. Theo đó, Asus TUF Gaming A15 FA507NU-LP140W sở hữu viên pin dung lượng lớn 90WHrs, hỗ trợ người dùng trong nhiều giờ làm việc, giải trí mà không cần sạc liên tục. </p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/laptop/Asus/Gaming/laptop-asus-tuf-gaming-a15-fa507nu-lp140w-2.jpg\" alt=\"Pin laptop Asus TUF Gaming A15 FA507NU-LP140W\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Kết hợp với mức năng lượng lớn này công nghệ sạc nhanh xuất sắc giúp giảm thiểu thời gian chờ đợi của người dùng trong quá trình nạp lại năng lượng cho máy. Thông qua tính năng ấn tượng về pin và khả năng sạc này, Asus TUF Gaming A15 FA507NU-LP140W trở thành lựa chọn lý tưởng cho những ai cần một phiên bản laptop đáng tin cậy mà không lo lắng về việc cạn kiệt năng lượng.</p><h2 style=\"box-sizing: inherit; font-size: 21px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Mua laptop Asus TUF Gaming A15 FA507NU-LP140W tại CellphoneS</span></h2><p style=\"box-sizing: inherit; margin-bottom: 10px; font-size: 15px; line-height: 1.5;\">Khi bạn tìm kiếm một địa chỉ đáng tin cậy để mua laptop Asus TUF Gaming A15 FA507NU-LP140W, CellphoneS chính là lựa chọn không nên bỏ qua. Với hơn 100 chi nhánh trên toàn quốc cùng các ưu đãi giảm giá hấp dẫn, CellphoneS không chỉ cung cấp sản phẩm chính hãng mà còn mang đến cho bạn những phút giây mua sắm đồ công nghệ trên cả tuyệt vời. Ngoài ra, khi đến với CellphoneS, bạn sẽ còn nhận được sự chăm sóc và hỗ trợ chuyên nghiệp, giúp bạn yên tâm về chất lượng sản phẩm và dịch vụ sau bán hàng. Ghé thăm CellphoneS ngay hôm nay để không bỏ lỡ cơ hội sở hữu chiếc laptop gaming mạnh mẽ và ấn tượng này bạn nhé! </p></div>', 'ELEC-6823923', 900, 800, '2024-08-01', '2024-08-27', 'top_product', 1, 1, '2024-07-31 21:01:27', '2024-08-05 02:35:44');
INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(6, 'iPhone 15 | Chính hãng VN/A', 'iphone-15-chinh-hang-vna', 'uploads/media_66b0ae94b8f5f.webp', 1, 10, 10, 19, 6, 60, 'Thiết kế bằng nhôm\r\nMặt trước Ceramic Shield\r\nMặt sau bằng kính pha màu', '<div class=\"ksp-content p-2 mb-2\" style=\"box-sizing: inherit; margin: auto; background-color: rgb(242, 242, 242); border-radius: 0.5rem; width: 800px; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\"><h2 class=\"ksp-title has-text-centered\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 18px; color: rgb(215, 0, 24); text-align: center !important;\">ĐẶC ĐIỂM NỔI BẬT</h2><div style=\"box-sizing: inherit;\"><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow-y: auto; scrollbar-width: none;\"><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Thiết kế thời thượng và bền bỉ - Mặt lưng kính được pha màu xu hướng cùng khung viền nhôm bền bỉ</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Dynamic Island hiển thị linh động mọi thông báo ngay lập tức giúp bạn nắm bắt mọi thông tin</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Chụp ảnh đẹp nức lòng - Camera chính 48MP, Độ phân giải lên đến 4x và Tele 2x chụp chân dung hoàn hảo</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Pin dùng cả ngày không lắng lo - Thời gian xem video lên đến 20 giờ và sạc nhanh qua cổng USB-C tiện lợi</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Cải tiến hiệu năng vượt bậc - A16 Bionic mạnh mẽ giúp bạn cân mọi tác vụ dù có yêu cầu đồ hoạ cao</li></ul></div></div><div style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\"><blockquote style=\"box-sizing: inherit; margin-bottom: 0px; padding: 0px 0px 0px 20px; color: rgb(100, 100, 100);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; color: inherit;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 128GB</span> được trang bị <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">màn hình Dynamic Island kích thước 6.1 inch</span> với công nghệ hiển thị <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Super Retina XDR</span> màn lại trải nghiệm hình ảnh vượt trội. Điện thoại với mặt lưng kính nhám chống bám mồ hôi cùng <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">5 phiên bản màu sắc</span> lựa chọn: <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Hồng, Vàng, Xanh lá, Xanh dương và đen</span>. Camera trên <a href=\"https://cellphones.com.vn/mobile/apple/iphone-15.html\" title=\"iPhone 15 series\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\"><span style=\"box-sizing: inherit; color: currentcolor; font-weight: 700;\">iPhone 15 series</span></a> cũng được nâng cấp lên <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">cảm biến 48MP</span> cùng tính năng chụp<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"> zoom quang học tới 2x</span>. Cùng với thiết kế cổng sạc thay đổi từ lightning sang USB-C vô cùng ấn tượng.</p></blockquote><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/apple-iphone-15-12.JPG\" alt=\"iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\">(Ảnh: Apple.com)</p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Tại sao nên mua điện thoại iPhone 15 tại CellphoneS</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Là một trong những hệ thống bán lẻ lớn nhất tại Việt Nam do đó có nhiều lý do để khách hàng chọn mua <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">điện thoại iPhone 15</span> mới nhất tại hệ thống như:</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Sản phẩm chính hãng với chất lượng được đảm bảo</span>: CellphoneS là một trong số ít những chuỗi bán lẻ chính hãng Apple tại Việt Nam sở hữu chuỗi trung tâm bảo hành chính hãng uỷ quyền Apple - CARES.vn. Nhờ đó, khi khách hàng mua hàng tại CellphoneS có thể  hoàn toàn yên tâm với chính sách bảo hành đổi mới 30 ngày đầu khi có lỗi từ nhà sản xuất, bảo hành 12 tháng tiện lợi, nhanh chóng tại các trung tâm bảo hành CARES.vn.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Thu cũ lên đời – trợ giá cao</span>: CellphoneS có chương trình thiết bị cũ với định giá cao đồng thời trợ giá hấp dẫn khi khách hàng lên đời iPhone 15 mới. Nhờ đó khách hàng mua iP15 qua chương trình thu cũ – lên đời có thể sở hữu được siêu phẩm iPhone mới nhất với mức chi phí tiết kiệm nhất.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Trả góp 0% cùng trả trước thấp</span>: Khi mua điện thoại qua chương trình trả góp tại CellphoneS, khách hàng có thể mua iP15 với mức lãi suất 0% - không trả dước cùng với đó là không phát sinh phí phụ thu. Đặc biệt, ở một số phương thức thanh toán, khách hàng còn có thể mua trả góp trên giá bán vô cùng ấn tượng.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Giảm giá sâu cho phụ kiện mua kèm chính hãng</span>: Khi mua điện thoại iPhone kèm các phụ kiện chính hãng như bao da, ốp lưng, củ - cáp sạc thì khách hàng sẽ được mua phụ kiện chính hãng với mức giá ưu đãi.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Hệ thống cửa hàng toàn quốc</span>: Với hệ thống cửa hàng phân bố rộng khắp, quý khách hàng có thể dễ dàng đến và trải nghiệm trực tiếp sản phẩm tại cửa hàng hoặc mua hàng online - giao hàng nhanh chóng (Giao hàng 2 giờ với đơn hàng nội thành Hà Nội và Hồ Chí Minh).</p></li></ul><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 giá bao nhiêu tiền, bảng giá chi tiết</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 thường 128GB</span> là phiên bản chuẩn, có giá bán rẻ nhất trong series. Điện thoại có giá bán <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">khởi điểm 799 USD</span> cho phiên bản 128GB (Phiên bản cấu hình chuẩn). Giá bán iPhone 15 chính hãng tại các đại lý bán lẻ Việt Nam dao động <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">từ 22.99 triệu đồng – 31.99 triệu</span>, chi tiết <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">giá bán iPhone 15</span> như sau (Giá bán được tham khảo theo trang Apple.com):</p><table class=\"table table-bordered\" style=\"box-sizing: inherit; border-spacing: 0px; background-color: rgb(255, 255, 255); color: rgb(54, 54, 54); border-color: rgb(211, 211, 211); width: 800px; margin-bottom: 1.5rem; margin-left: auto; margin-right: auto;\"><tbody style=\"box-sizing: inherit; background-color: transparent;\"><tr class=\"success\" style=\"box-sizing: inherit; background-color: rgb(223, 240, 216); color: rgb(61, 102, 17); font-size: 12px;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Phiên bản cấu hình</span></p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Giá mở bán quốc tế</span></p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Giá bán chính hãng Việt Nam</span></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">iPhone 15 128GB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">799 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Từ 22.999.000 VND</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">iPhone 15 256GB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">899 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Từ 25.999.000 VND</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">iPhone 15 512GB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">1099 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Từ 31.999.000 VND</p></td></tr></tbody></table><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Đánh giá chi tiết điện thoại iPhone 15 về các thông số</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Là mẫu điện thoại cao cấp, điện thoại iPhone 15 sở hữu nhiều thông số cấu hình nổi trội giúp đem lại những trải nghiệm dùng mượt mà cho người dùng.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Màn hình Dynamic Island 6.1 inch</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 128GB</span> với màn hình <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Super Retina XDR</span> kích thước 6.1 inch cùng tấm nền OLED mang lại màu sắc trung thực. Cùng với đó là thiết kế Dynamic Island giúp hiển thị các thông báo một cách linh động. Độ trang trên màn hình cũng được nâng cấp, gấp đôi trên iPhone 14 khi ở dưới ánh nắng mặt trời nhờ đó giúp hiển thị rõ nét kể cả dưới trời nắng.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iphone-15-5.png\" alt=\"Màn hình điện thoại iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\">(Ảnh: Apple.com)</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Con chip Apple A16 Bionic hoạt động mượt mà</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">iPhone 15 được trang bị con <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">chip A16 Bionic</span>. Con chip với CPU 6 lõi nhờ đó hỗ trợ xử lý trơn tru các công việc phức tạp. Cùng với đó, điện thoại được trang bị GPU 5 lõi hỗ trợ xử lý những tác vụ đồ họa phức tạp.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Pin dùng lâu</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 128GB</span> được trang bị viên pin dung lượng lớn cùng với con chip A16 giúp tiết kiệm pin hiệu quả. Cụ thể, máy có thể mang lại 20giờ xem video trực tuyến hay 80 giờ nghe nhạc. Cùng với đó là công nghệ sạc nhanh có dây và không dây vô cùng tiện lợi. iPhone 15 sẽ được sạc bị sạc nhanh công suất 20W và sạc nhanh không dây MagSafe công suất 15W.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Hỗ trợ mạng 5G tốc độ cao</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">iPhone 15 tiêu chuẩnvới 2 sim, trong đó có <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">1 sim vật lý và 1 esim</span>. Điện thoại hỗ trợ mạng di động 5G NR, FDD-LTE hay TD-LTE với tốc độ truyền – tải ấn tượng. Cùng với đó là kết nối wifi 6 cùng Bluetooth 5.3 ổn định.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Thiết kế chắc chắn cùng kháng nước IP68</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại iPhone 15 128GB với quy trình trao đổi i-on kép nhờ đó máy có thể sử dụng bền bỉ, giảm thiểu tối đa tình trạng sứt mẻ và trầy xước. Điện thoại với khung nhôm chuẩn hàng không vũ trụ bền bỉ.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iphone-15-2_1.png\" alt=\"Thiết kế  điện thoại iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">(Ảnh: Apple.com)</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại cũng sẽ được trang bị chuẩn khác nước và bụi bẩn IP68 hỗ trợ sử dụng trong nhiều điều kiện môi trường. Tuy nhiên hãng sản xuất không khuyến khích người dùng test thử tính năng này.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Nhiều màu sắc trẻ trung – Đa dạng sự lựa chọn</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 thường</span> sở hữu bộ sưu tập màu sắc đa dạng. Cụ thể điện thoại có tới <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">5 phiên bản màu sắc</span> khác nhau cho người dùng lựa chọn bao gồm:</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Xanh dương</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Hồng</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Vàng</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Xanh lá</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Đen</p></li></ul><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iphone-15-1.png\" alt=\"Màu sắc điện thoại iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">(Ảnh: Apple.com)</span></p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Camera chính 48MP – Hỗ trợ quay phim chụp ảnh thông minh</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 thường</span> được trang bị cụm camera kép với độ phân giải 48MP. Trong đó camera chính sử dụng thấu kính bảy thành phần cùng khẩu độ ƒ/1.6 và camera góc rộng ƒ/2.4 hỗ trợ chụp góc 120 độ. Máy được trang bị nhiều chế độ chụp từ cơ bản đến chụp nâng cao như Photonic Engine, Deep Fusion hay chụp chân dung với 6 chế độ ánh sáng. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Đặc biệt, với khả năng xử lý hình ảnh được cải thiện, máy cho khả năng chụp hình ấn tượng, kể cả trong điều kiện ánh sáng yếu. Trong các bức hình đặc biệt, chế độ Photonic Engine hỗ trợ mang lại màu sắc tươi sáng cùng đường nét chân thực, chi tiết đẹp mắt.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iphone-15-4.png\" alt=\"Camera điện thoại iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">(Ảnh: Apple.com)</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Camera TrueDepth</span> với khẩu độ lớn cùng khả năng tự động lấy nét mang lại những bức ảnh selfie cận cảnh rõ nét và rực rỡ. Cùng với đó, điện thoại cũng hỗ trợ tự động lấy nét nhiều chủ thể đảm bảo mang lại một bức ảnh selfie sắc nét nhất.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại với chế độ hành động hỗ trợ tối ưu trong quá trình quay video, các thước phim vẫn giữ được sự ổn định cần thiết kể cả khi người dùng rung lắc mạnh.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Cùng với đó, <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 128GB</span> được cải thiện khả năng chụp zoom, hỗ trợ chụp ảnh cận cảnh hiệu quả. Theo đó, máy sẽ có ba chế độ zoom hỗ trợ người dùng là 0.5x - 1x và 2x. Trong đó chế độ zoom 2x hỗ trợ chụp ảnh phóng đại, 0.5x hỗ trợ chụp phong ảnh hoặc hình ảnh với góc rộng.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Chế độ bảo mật cao cùng tôn trọng sự riêng tư</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 128GB</span> sẽ được trang bị bảo mật qua gương mặt <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">FaceID</span> thông qua camera TrueDepth. Bên cạnh đó người dùng có nhưng không gian riêng tư như album bị ẩn. Thiết bị cũng minh bạch trong quyền theo dõi các ứng dụng nhờ đó người dùng có quyền tự quyết cho phép những ứng dụng cụ thể được theo dõi hoạt động của bản thân.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Cá nhân hóa giao diện với iOS 17</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Với hệ điều hành <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iOS 17</span> mới, người dùng có thể tùy chỉnh màn hình khóa theo phong cách cá nhân. Cùng với đó là nhiều tính năng thông minh được nâng cấp như vuốt để trả lời, tìm kiếm nhanh qua bộ lọc hay kiểm tra an toàn.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/iphone-15-3.png\" alt=\"Hệ điều hành điện thoại iPhone 15\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">(Ảnh: Apple.com)</span></p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"font-size: 15px;\"><br>Bên cạnh thông số bản tiêu chuẩn, mời bạn xem ngay thông số và giá</span><span style=\"font-size: 15px;\"> </span><a href=\"https://cellphones.com.vn/iphone-15-plus.html\" title=\"iPhone 15 Plus\" style=\"font-size: 15px; background-color: rgb(255, 255, 255); box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\"><span style=\"box-sizing: inherit; color: currentcolor; font-weight: 700;\">iPhone 15 Plus</span></a><span style=\"font-size: 15px;\"> </span><span style=\"font-size: 15px;\">xem có chênh lệch gì nhé.</span><br></h2><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Điện thoại iPhone 15 có gì nâng cấp?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Nếu iPhone 14 được nhận định không quá khác biệt so với iPhone 13 thì sang iPhone 15, mẫu điện thoại thông minh này được được Apple nâng cấp nhiều điểm so với iPhone 14 từ thiết kế đến camera.</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Màn hình Dynamic Island</span>: Thiết thế màn hình mới thay cho thiết kế tai thỏ mai lại các hiển thị thông báo độc đáo, không chiếm nhiều không gian hiển thị của màn hình. Cùng với đó viền màn hình trên iPhone 15 cũng được hoàn hiện mỏng hơn. Độ sáng tối đa trên màn hình cũng được nâng cấp tới 2000 nits nhờ đó hỗ trợ hiển thị rõ nét trong điều kiện nắng gắt như ngoài trời.</p></li></ul><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/apple-iphone-15-7_1.JPG\" alt=\"Điện thoại iPhone 15 có gì nâng cấp\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\">(Ảnh: Apple.com)</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Màu sắc mới cùng mặt lưng kính pha màu</span>: iPhone 15 sở hữu thiết kế mặt lưng kính pha màu nhám nhờ đó hỗ trợ chống bám vân tay hiệu quả. Màu sắc trên điện thoại cũng có nhiều thay đổi khi không còn hai màu trắng và đỏ quen thuộc. Cụ thể iPhone 15 có 5 lựa chọn màu bao gồm: Hồng, vàng, xanh lá, xanh dương và đen.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Thay đổi cổng sạc sang USB-C</span>: Thế hệ điện thoại mới này đã được Apple nâng cấp lên cổng UBC-C phổ biến thay cho cổng lightning. Thay đổi này giúp điện thoại có thể kết nối với các phụ kiện gắn ngoài, truyền tải dữ liệu một cách nhanh chóng.</p></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Cấu hình nâng cấp</span>: Điện thoại được trang bị con chip A16 Bionic với 6 lõi CPU và 5 lõi GPU mang lại hiệu năng sử dụng vượt trội.</p></li></ul><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Apple/iphone_15/apple-iphone-15-10_1.JPG\" alt=\"Điện thoại iPhone 15 có gì nâng cấp\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\">(Ảnh: Apple.com)</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Camera cảm biến 48MP cùng zoom quang 2x</span>: Vẫn sở hữu camera kép nhưng ống kính chính đã được nâng cấp lên 48MP. Cùng với đó khả năng thu phóng quang học trên thiết bị cũng được cải thiện với 2x. Cùng với đó là nhiều tính năng chụp ảnh thông minh mới như chụp ảnh chân dung thế hệ mới với Focus và Depth Control.</p></li></ul><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Ngoài những điểm nâng cấp trên thì iPhone 15 sẽ tiếp tục kế thừa một số thiết kế khác của thế hệ tiền nhiệm với màn hình 6.1 inch, ba phiên bản cấu hình bộ nhớ trong cũng như các chuẩn kháng nước – bụi bẩn. Tuy nhiên những nâng cấp trên cũng rất đáng giá để người dùng nâng cấp và trải nghiệm.</p></div>', 'ELEC-6312824', 1100, 1000, '2024-08-05', '2024-08-31', 'top_product', 1, 1, '2024-08-05 03:49:35', '2024-08-23 23:51:37');
INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(7, 'Samsung Galaxy S24 Ultra', 'samsung-galaxy-s24-ultra', 'uploads/media_66b0b04782ad7.jpg', 1, 10, 10, 16, 8, 80, 'Samsung S24 Ultra là siêu phẩm smartphone đỉnh cao mở đầu năm 2024 đến từ nhà Samsung với chip Snapdragon 8 Gen 3 For Galaxy mạnh mẽ, công nghệ tương lai Galaxy AI cùng khung viền Titan đẳng cấp hứa hẹn sẽ mang tới nhiều sự thay đổi lớn về mặt thiết kế và cấu hình. SS Galaxy S24 bản Ultra sở hữu màn hình 6.8 inch Dynamic AMOLED 2X tần số quét 120Hz. Máy cũng sở hữu camera chính 200MP, camera zoom quang học 50MP, camera tele 10MP và camera góc siêu rộng 12MP.', '<div class=\"ksp-content p-2 mb-2\" style=\"box-sizing: inherit; margin: auto; background-color: rgb(242, 242, 242); border-radius: 0.5rem; width: 800px; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\"><h2 class=\"ksp-title has-text-centered\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 18px; color: rgb(215, 0, 24); text-align: center !important;\">ĐẶC ĐIỂM NỔI BẬT</h2><div style=\"box-sizing: inherit;\"><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow-y: auto; scrollbar-width: none;\"><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Trải nghiệm đỉnh cao với hiệu năng mạnh mẽ từ vi xử lý tân tiến, kết hợp cùng RAM 12GB cho khả năng đa nhiệm mượt mà.</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Lưu trữ thoải mái mọi ứng dụng, hình ảnh và video với bộ nhớ trong 256GB.</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Nâng tầm nhiếp ảnh di động với hệ thống camera tiên tiến, cho ra đời những bức ảnh và video chất lượng chuyên nghiệp.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Thiết kế sang trọng, đẳng cấp, khẳng định phong cách thời thượng.</li></ul></div></div><div style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\"><blockquote style=\"box-sizing: inherit; margin-bottom: 0px; padding: 0px 0px 0px 20px; color: rgb(100, 100, 100);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; color: inherit;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"><a href=\"https://cellphones.com.vn/samsung-galaxy-s24-ultra.html\" title=\"Samsung Galaxy S24 Ultra\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\">Samsung S24 Ultra</a></span> là siêu phẩm <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">smartphone</span> đỉnh cao mở đầu năm 2024 đến từ nhà Samsung với chip <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Snapdragon 8 Gen 3 For Galaxy</span> mạnh mẽ, công nghệ tương lai <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy AI</span> cùng <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">khung viền Titan</span> đẳng cấp hứa hẹn sẽ mang tới nhiều sự thay đổi lớn về mặt thiết kế và cấu hình. <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">SS Galaxy S24 bản Ultra</span> sở hữu màn hình <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">6.8 inch</span> <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Dynamic AMOLED 2X</span> tần số quét <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">120Hz</span>. Máy cũng sở hữu <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">camera chính 200MP</span>, camera zoom quang học 50MP, camera tele 10MP và camera góc siêu rộng 12MP.</p></blockquote><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Vì sao nên mua Samsung Galaxy S24 Ultra?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Đầu năm 2024, Samsung cho ra mắt <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung S24 Ultra</span> – Flagship dẫn đầu xu hướng với <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">công nghệ AI</span> tích hợp cùng nhiều tính năng và ưu điểm vượt trội khác. Các tính năng AI nổi bật trên điện thoại <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung mới nhất</span> bao gồm:</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy AI với các tính năng Khoanh tròn để tìm kiếm, Photo Assist, Live Translate, Note Assist</span>.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Khung viền bằng titan cứng cáp</span>, giúp thiết bị bền bỉ theo thời gian.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Các phiên bản màu lấy cảm hứng từ chất liệu đá tự nhiên</span>, mang đến vẻ đẹp sang trọng và hiện đại.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Camera tích hợp công nghệ AI tuyệt đỉnh</span>, nâng tầm chất lượng và khả năng xử lý hình ảnh.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Hiệu năng cực đỉnh với chip Snapdragon 8 Gen3 for Galaxy</span>, chiến game mượt mà.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">-<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"> Pin khoẻ 5000mAh,</span> kéo dài thời gian sử dụng cả ngày dài, để không bỏ lỡ khoảnh khắc quan trọng.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Màn hình Dynamic AMOLED 2X với độ sáng lên đến 2600 nit,</span> chìm đắm trong thế giới hình ảnh rực rỡ đầy màu sắc.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-11.jpg\" alt=\"Samsung Galaxy S24 Ultra là smartphone AI đáng sở hữu đầu năm 2024\" loading=\"lazy\" title=\"Samsung Galaxy S24 Ultra là smartphone AI đáng sở hữu đầu năm 2024\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung Galaxy S24 Ultra là smartphone AI đáng sở hữu đầu năm 2024</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Có thể thấy, sở hữu sớm Samsung S24 Ultra đồng nghĩa với việc bạn là một trong những người đầu tiên khám phá,<span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\"> trải nghiệm</span> công nghệ hoàn toàn mới được tích hợp ngay trên chiếc điện thoại thông minh. Ngoài thiết kế sang trọng, có nhiều điểm cải tiến mới, thì thiết bị này còn hỗ trợ nâng cao trải nghiệm trong giải trí, học tập, làm việc thông qua AI - tính năng mà trước nay có thể các sản phẩm khác chưa làm được.</p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Mua Samsung S24 Ultra ưu đãi đặc quyền tại CellphoneS</span></span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Là đại lý ủy quyền chính hãng của Samsung tại Việ Nam, do đó khi khách hàng mua Samsung S24 Ultra tại hệ thống sẽ được nhận nhiều ưu đãi hấp dẫn như:</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Mua hàng trả góp 3 KHÔNG: KHÔNG  lãi suất - KHÔNG phụ phí - KHÔNG trả trước để sở hữu sớm S24 Ultra với chi phí hàng tháng hợp lý</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Ưu đãi dành thêm khi là học sinh sinh viên: Xuất trình thẻ sinh viên khi mua hàng</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Trợ giá lên đời hấp dẫn cùng nhiều ưu đãi thanh toán ngân hàng vô cùng giá trị</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><br style=\"box-sizing: inherit;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-37.jpg\" alt=\"Mua Samsung S24 Ultra tại CellphoneS ưu đãi 10,5 triệu, trả góp 0%\" loading=\"lazy\" title=\"Mua Samsung S24 Ultra tại CellphoneS ưu đãi 10,5 triệu, trả góp 0%\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Mua Samsung S24 Ultra tại CellphoneS ưu đãi hấp dẫn, trả góp 0%</em></p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24 Ultra - AI Phone với nhiều công nghệ vượt bậc </span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24 Ultra</span> gây háo hức với người dùng nhờ những thay đổi lớn trong cả thiết kế lẫn hiệu năng. Những nâng cấp trên phiên bản cao cấp nhất của dòng Galaxy S24 Series là gì? Cùng CellphoneS tìm hiểu chi tiết hơn về mẫu flagship mới của Samsung trong bài đánh giá dưới đây:</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 1.5em; list-style: none; line-height: 2; font-size: 13.5px;\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Là smartphone AI đầu tiên của Samsung với nhiều tính năng mới lạ</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Camera thông số khủng 200MP và công nghệ vượt trội</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Pin lớn 5000mAh sử dụng liên tục hơn 30 giờ</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Bút S-Pen hữu ích, thao tác dễ dàng</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Màn hình 6.8 inch tần số quét 120Hz</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Thiết kế có sự thay đổi lớn với khung viền Titanium</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Chipset Snapdragon 8 Gen 3 for Galaxy mạnh mẽ hàng đầu</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; list-style: disc;\">Chia sẻ nhanh chóng với Quick Share</li></ul><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/nhung-ly-do-nen-mua-samsung-galaxy-s24-ultra.jpg\" alt=\"Những lý do nên mua Samsung Galaxy S24 Ultra ở thời điểm hiện tại\" loading=\"lazy\" title=\"Những lý do nên mua Samsung Galaxy S24 Ultra ở thời điểm hiện tại\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Những lý do nên mua Samsung Galaxy S24 Ultra ở thời điểm hiện tại</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Cụ thể như sau:</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">AI phone đầu tiên của Samsung, mang đến trải nghiệm mới lạ và tiện nghi</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Điện thoại Samsung S24. S24 Plus và Ultra sẽ là<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"> AI Phone đầu tiên</span> của hãng được tích hợp nhiều công nghệ trí tuệ nhân tạo tiên tiến. Điều này được mong chờ bởi mới đây, Samsung đã cho ra mắt mô hình trí tuệ nhân tạo với tên gọi <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Gauss AI</span>. Mô hình AI này trang bị nhiều tính năng, có thể kể đến như:</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Khoanh tròn vùng bất kỳ để tìm kiếm thông tin:</span> Sử dụng bút S-Pen hoặc dùng tay khoanh tròn khu vực cần tìm kiếm khi lướt mạng xã hội</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Phiên dịch cuộc gọi trực tiếp:</span> Nhận được thông tin dịch thuật theo thời gian thực trong quá trình nói chuyện điện thoại</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Trợ lý chỉnh ảnh chuyên nghiệp</span>: Sử dụng các tuỳ chọn chỉnh sửa AI mới để bức ảnh hoàn hảo hơn như lấp đầy chỗ trống, di chuyển đối tượng,...</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Trợ lý quyền năng Note Assist:</span> Giúp tóm tắt được ý chính  trong tích tắc với đoạn văn bản bạn note vào</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-4_1.jpg\" alt=\"Samsung Gauss AI nâng tầm trải nghiệm trên SS Galaxy S24 Ultra\" loading=\"lazy\" title=\"Samsung Gauss AI nâng tầm trải nghiệm trên SS Galaxy S24 Ultra\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung Gauss AI nâng tầm trải nghiệm trên SS Galaxy S24 Ultra</em></p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Camera cao cấp 200MP với nhiều tính năng vượt trội</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Một nâng cấp mới và chắc chắn là ấn tượng nhất của <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24 Ultra</span> chính là <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">hệ thống camera</span>. Samsung trang bị cho mẫu flagship cao cấp của mình hệ thống camera với độ phân giải lần lượt là <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">200MP + 50MP +12MP +10MP</span>.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-6_1.jpg\" alt=\"S24 bản Ultra có hệ thống camera độ phân giải 200MP + 50MP +12MP +10MP\" loading=\"lazy\" title=\"S24 bản Ultra có hệ thống camera độ phân giải 200MP + 50MP +12MP +10MP\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">S24 Ultra sẽ sử dụng cảm biến cao cấp với độ phân giải lên đến 200MP</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Camera chính của S24 Ultra sẽ sử dụng cảm biến cao cấp thế hệ mới, với độ phân giải lên đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">200MP</span>. Ngoài camera chính, camera tele của điện thoại cũng sẽ được trang bị cảm biến mới để có thể phóng quang học 3x và 5x nhưng không làm giảm chất lượng hình ảnh thu được. Đồng thời camera tele còn có khả năng thu phóng kỹ thuật số lên đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">100x</span>.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Không chỉ vậy, <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">công nghệ ProVisual</span> còn có thể phân tích đối tượng và cải thiện chất lượng hình ảnh một cách tự động, bao gồm việc điều chỉnh tông màu, giảm nhiễu và làm sắc nét.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Dung lượng pin lớn 5000mAh, sử dụng lên đến ngày dài</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Với viên pin dung lượng lớn <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">5.000 mAh</span> và khả năng tối ưu hiệu năng vượt trội, <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">SS Galaxy S24 Ultra</span> mang đến thời lượng sử dụng ấn tượng. Thời gian xem video lên đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">30 giờ</span> và nghe nhạc lên đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">90 giờ</span> (tuỳ theo tình hình thực tế mà thời gian sử dụng có thể thay đổi). Nhờ vậy, bạn có thể thoải mái giải trí cả ngày dài mà không lo hết pin.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-1_1.jpg\" alt=\"S24 Ultra pin 5000mAh xem video lên đến 30 giờ và nghe nhạc lên đến 90 giờ\" loading=\"lazy\" title=\"S24 Ultra pin 5000mAh xem video lên đến 30 giờ và nghe nhạc lên đến 90 giờ\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Tích hợp bút S-Pen, thực hiện nhiều tác vụ thoải mái</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bút S-Pen</span> là một công cụ đa năng có thể được sử dụng để viết, vẽ, chỉnh sửa, và nhiều tác vụ khác. Việc tích hợp bút S-Pen giúp <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">điện thoại S24 mới</span> có khả năng tương thích cao với các ứng dụng và tính năng của bút.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Cụ thể, bút S-Pen có thể được sử dụng với các ứng dụng <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">ghi chú, vẽ, và chỉnh sửa ảnh</span>. Bút cũng có thể được sử dụng để điều khiển điện thoại từ xa, chẳng hạn như chụp ảnh, tua video, và điều hướng. Ngoài ra, bút S-Pen còn có thể được sử dụng để thực hiện các thao tác phức tạp hơn, chẳng hạn như chỉnh sửa văn bản, vẽ bản đồ, và tạo các bản trình bày.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-7.jpg\" alt=\"Bút S-Pen trên S24 Ultra có thể được sử dụng với các ứng dụng ghi chú, vẽ, và chỉnh sửa ảnh\" loading=\"lazy\" title=\"Bút S-Pen trên S24 Ultra có thể được sử dụng với các ứng dụng ghi chú, vẽ, và chỉnh sửa ảnh\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung S24 Ultra </em><em style=\"box-sizing: inherit;\">tích hợp </em><em style=\"box-sizing: inherit;\">với bút S-Pen </em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700; font-size: 1.17em;\">Màn hình 6.8 inch lớn, tích hợp nhiều công nghệ tân tiến</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24 Ultra</span> là mẫu flagship có màn hình kích thước lớn <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">6.8 inch, </span>lớn hơn so với thế hệ tiền nhiệm S23 Ultra. Với kích thước này, thiết bị sẽ hoàn toàn có thể thay thế cho các mẫu tablet mini hiện có trên thị trường.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Tần số quét lên đến 120Hz giúp hạn chế tình trạng giật lag trong quá trình trải nghiệm. Với tấm nền <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">QHD+ Dynamic AMOLED 2X</span>, độ phân giải <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">3120x1440 pixel</span> và độ sáng đạt kỷ lục đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">2.600 nits</span> mà người dùng dễ dàng sử dụng ngoài trời, ngay khi có nắng gắt.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-5_1.jpg\" alt=\"Samsung S24 Ultra tấm nền QHD+ Dynamic AMOLED 2X, tần số quét 120Hz\" loading=\"lazy\" title=\"Samsung S24 Ultra tấm nền QHD+ Dynamic AMOLED 2X, tần số quét 120Hz\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Màn hình lớn 6.8 inch, công nghệ QHD+ xịn xò</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Ngoài ra,thiết bị còn tích hợp công nghệ Corning Gorilla Armor nhằm hỗ trợ tăng độ rõ nét hình ảnh và hạn chế ánh sáng phản xạ ngay cả dưới ánh nắng trực tiếp. Thêm vào đó, hình ảnh trở nên sống động bất ngờ nhờ vào công nghệ Vision Booster tăng cường độ màu sắc và sự tương phản.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Thiết kế có sự thay đổi lớn với khung viền Titanium</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Smartphone Galaxy S24 Ultra</span> có sự thay đổi lớn trong thiết kế. Chi tiết hơn:</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Khung viền dược chế tạo bởi <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">CHẤT LIỆU TITANIUM</span> bền bỉ, cứng cáp</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Màn hình <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">phẳng, vuông vức</span> kích thước lớn 6.8 inch</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Công nghệ <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Corning Gorilla Armor</span> bảo vệ màn hình vượt trội</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Kháng nước, kháng bụi đạt chuẩn <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">IP68</span>, an tâm thoả sức phiêu lưu</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- Các phiên bản màu sắc mới: <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Xám Titan, Tím Titan, Đen Titan, Vàng Titan</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-60.jpg\" alt=\"Smartphone Galaxy S24 Ultra khác biệt với chất liệu Titanium, màu sắc mới và màn hình phẳng\" loading=\"lazy\" title=\"Smartphone Galaxy S24 Ultra khác biệt với chất liệu Titanium, màu sắc mới và màn hình phẳng\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Smartphone Galaxy S24 Ultra khác biệt với chất liệu Titanium, màu sắc mới và màn hình phẳng</em></p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Hiệu năng mạnh mẽ với chipset Snapdragon 8 Gen 3 for Galaxy</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Snapdragon® 8 Gen 3 for Galaxy</span> là con chip mạnh nhất Qualcomm tính đến hiện tại. Với tốc độ xử lý <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">nhanh hơn 20%</span> so với thế hệ trước, bạn có thể chơi các trò chơi đòi hỏi nhiều đồ họa cao trên Galaxy S24 Ultra. Công nghệ dò tia tiên tiến mang đến trải nghiệm đồ họa chân thực và sống động, với bóng mờ và hình ảnh phản chiếu siêu thực.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-9.jpg\" alt=\"Snapdragon 8 Gen 3 For Galaxy trên SS S24 Ultra xử lý nhanh hơn 20% so với thế hệ trước\" loading=\"lazy\" title=\"Snapdragon 8 Gen 3 For Galaxy trên SS S24 Ultra xử lý nhanh hơn 20% so với thế hệ trước\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Sử dụng Snapdragon 8 Gen 3 For Galaxy mạnh mẽ bậc nhất hiện tại</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Ngoài ra, GPU cải thiện đến 30%, giúp đồ hoạ và hiệu suất mạnh mẽ hơn, NPU cải thiện đến <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">41%</span> giúp cải thiện hoạt động với AI. Và để các tác vụ đa nhiệm diễn ra mượt mà, ổn định, Samsung còn trang bị 12GB RAM với dụng lượng lưu trữ 256GB ở phiên bản chuẩn.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Ngoài ra, điện thoại vẫn sẽ bao gồm thêm 2 tuỳ biến là <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">512GB và 1TB</span> để người dùng lựa chọn sao cho phù hợp nhất với nhu cầu sử dụng của cá nhân. Đi kèm với điện thoại vẫn là một bút S-Pen được tích hợp đầy đủ các tính năng cảm ứng theo cử chỉ.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Chia sẻ nhanh chóng với Quick Share</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Quick Share</span> là một tính năng chia sẻ không dây mới được giới thiệu trên các thiết bị <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy</span>. Tính năng này cho phép bạn chia sẻ ảnh, video, tài liệu và hơn thế nữa với các thiết bị Galaxy khác một cách nhanh chóng và dễ dàng.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-41_1.jpg\" alt=\"Chia sẻ nhanh chóng với Quick Share\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Tuy nhiên, Quick Share không chỉ giới hạn ở các thiết bị Galaxy. Bạn cũng có thể sử dụng Quick Share để chia sẻ dữ liệu từ <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy S24</span> với người dùng iOS hoặc bạn bè và gia đình ở xa.</p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Điện thoại Samsung Galaxy S24 Ultra giá bao nhiêu?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung S24 Ultra</span> có mức giá khởi điểm cho bản 256GB là <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">từ 1.299,99 USD</span>, bản 512GB với 1.419,99 USD và bản 1TB cao cấp nhất với 1.659,99 USD tại thị trường Mỹ. Tại Việt Nam, sản phẩm bản 256GB có giá khởi điểm từ 33.990.000đ, bản 512GB với 37.490.000đ và 1TB là 44.490.000đ. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Dưới đây là Bảng giá Samsung S24 mới nhất:</span></p><table class=\"table table-bordered\" style=\"box-sizing: inherit; border-spacing: 0px; background-color: rgb(255, 255, 255); color: rgb(54, 54, 54); border-color: rgb(211, 211, 211); width: 800px; margin-bottom: 1.5rem;\"><tbody style=\"box-sizing: inherit; background-color: transparent;\"><tr class=\"success\" style=\"box-sizing: inherit; background-color: rgb(223, 240, 216); color: rgb(61, 102, 17); font-size: 12px;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Sản phẩm</span></p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Giá khởi điểm tại Mỹ</span></p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Giá khởi điểm tại Việt Nam</span></p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Ưu đãi đặt trước tại CellphoneS</span></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Samsung Galaxy S24 Ultra 256GB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 1.299,99 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 33.990.000đ</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">7.500.000đ - trả góp 0%</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Samsung Galaxy S24 Ultra 512GB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 1.419,99 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 37.490.000đ</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">7.500.000đ - trả góp 0%</span></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Samsung Galaxy S24 Ultra 1TB</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 1.659,99 USD</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">từ 44.490.000đ</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: center; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif;\">7.500.000đ - trả góp 0%</span></p></td></tr></tbody></table><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-8.jpg\" alt=\"Giá Samsung Galaxy S24 Ultra khởi điểm từ 33.990.000đ cho phiên bản 12GB 256GB\" loading=\"lazy\" title=\"Giá Samsung Galaxy S24 Ultra khởi điểm từ 33.990.000đ cho phiên bản 12GB 256GB\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung S24 Ultra sẽ có mức giá khởi điểm cho bản 256GB tại Việt Nam là từ 33.990.000VND</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Với kích thước, cấu hình, camera và thời lượng sử dụng vượt trội hơn hẳn so với mặt bằng chung, <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy Ultra thế hệ 24</span> có thể sẽ là đối thủ đáng gờm để vươn lên vị trí dẫn đầu phân khúc smartphone cao cấp.</p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24, S24 Ultra và S24 Plus ra mắt khi nào?</span></h2><blockquote style=\"box-sizing: inherit; margin-bottom: 0px; padding: 0px 0px 0px 20px; color: rgb(100, 100, 100);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; color: inherit;\">Chính thức: điện thoại Samsung Galaxy S24 Ultra và series S24 đã được ra mắt ngày <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">17/01/2024</span> tại sự kiện <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy Unpacked 2024 ở Mỹ </span>(tức 1:00 AM ngày 18/1/2024 theo giờ Việt Nam). </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; color: inherit;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/Samsung-Galaxy-S24-Ultra-2_1.jpg\" alt=\"Samsung Galaxy S24 Ultra và series S24 đã được ra mắt ngày 17/01/2024 tại sự kiện Galaxy Unpacked 2024 ở Mỹ\" loading=\"lazy\" title=\"Samsung Galaxy S24 Ultra và series S24 đã được ra mắt ngày 17/01/2024 tại sự kiện Galaxy Unpacked 2024 ở Mỹ\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p></blockquote><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung S24 series sẽ được ra mắt ngày 17/01/2024 (theo giờ Mỹ) tại sự kiện Galaxy Unpacked 2024 ở  (Mỹ)</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Đây là sự kiện được nhiều tín đồ công nghệ quan tâm và đánh giá cao bởi siêu phẩm mang những tính năng nổi bật, tích hợp những công nghệ dẫn đầu xu hướng. </p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung S24 bản Ultra có chống nước, chống bụi không?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Câu trả lời là có: <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung S24 Ultra có khả năng chống nước và chống bụi với xếp hạng IP68</span>. Điều này có nghĩa là điện thoại có thể ở trong nước ở độ sâu <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">1,5 mét trong tối đa 30 phút</span> (Lưu ý: tuỳ theo điều kiện khác nhau và thời gian sử dụng mà khả năng chống nước có thể thay đổi). Khả năng chống nước và chống bụi của Samsung S24 bản Ultra là một tính năng hữu ích cho những người muốn sử dụng điện thoại của họ trong nhiều điều kiện khác nhau.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-31.jpg\" alt=\"S24 Ultra có thể ở trong nước ở độ sâu 1,5 mét trong tối đa 30 phút với chuẩn IP68\" loading=\"lazy\" title=\"S24 Ultra có thể ở trong nước ở độ sâu 1,5 mét trong tối đa 30 phút với chuẩn IP68\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Điện thoại Samsung Galaxy S24 Ultra có mấy màu? Màu nào mới?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Samsung Galaxy S24</span> còn có nhiều phiên bản màu sắc để người dùng lựa chọn. Lấy cảm hứng từ vẻ đẹp rực rỡ của các loại đá quý, mỗi sắc màu đều được tô điểm thêm nét mềm mại của chất liệu satin, mang đến cảm giác như một viên đá quý được mài giũa tinh xảo đến từng đường nét.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Phiên bản màu sắc của Samsung Galaxy S24 Ultra bao gồm <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">4 màu</span>:</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">-<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"> Xám Titan:</span> Màu sắc này mang đến vẻ ngoài sang trọng và lịch lãm</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Tím Titan:</span> Màu sắc mới lạ và độc đáo, mang đến vẻ ngoài</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">-<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"> Đen Titan:</span> Mang đến vẻ ngoài thời thượng và tinh tế</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">- <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Vàng Titan:</span> Mang đến vẻ ngoài quý phái, đẳng cấp</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Bạn có thể lựa chọn phiên bản <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">màu sắc titan</span> phù hợp với sở thích và phong cách của mình.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-40_1.jpg\" alt=\"Samsung S24 Ultra có 4 màu sắc titan độc đáo là Xám, Tím, Đen và Vàng\" loading=\"lazy\" title=\"Samsung S24 Ultra có 4 màu sắc titan độc đáo là Xám, Tím, Đen và Vàng\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Samsung S24 Ultra có 4 màu sắc titan độc đáo là Xám, Tím, Đen và Vàng</em></p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy S24 Ultra có dung lượng RAM/ROM là bao nhiêu?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">SS Galaxy S24 Ultra</span> được trang bị <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">RAM 12GB đi cùng bộ nhớ trong 256GB, 512GB hoặc 1TB</span>. Dung lượng RAM lớn giúp điện thoại xử lý đa nhiệm mượt mà, không bị giật lag khi chạy nhiều ứng dụng cùng lúc. Dung lượng ROM lớn mang đến không gian lưu trữ rộng rãi, cho phép người dùng lưu trữ nhiều ảnh, video, nhạc, ứng dụng và trò chơi.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-39.jpg\" alt=\"SS Galaxy S24 Ultra được trang bị RAM 12GB đi cùng bộ nhớ trong 256GB, 512GB hoặc 1TB\" loading=\"lazy\" title=\"SS Galaxy S24 Ultra được trang bị RAM 12GB đi cùng bộ nhớ trong 256GB, 512GB hoặc 1TB\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">SS Galaxy S24 Ultra được trang bị RAM 12GB đi cùng bộ nhớ trong 256GB, 512GB hoặc 1TB</em></p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Galaxy S24 Ultra có đi kèm bút S-Pen không?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bút S-Pen</span> là một trong những tính năng nổi bật của dòng Galaxy Note của Samsung. Với sự ra mắt của Galaxy S24 phiên bản Ultra, bút S Pen đã được tích hợp vào điện thoại, mang đến cho người dùng trải nghiệm viết vẽ và điều khiển máy một cách tiện lợi và thoải mái hơn.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/Phone/Samsung/samsung_s/Samsung-S24/samsung-galaxy-s24-ultra-42_1.jpg\" alt=\"Bút S Pen tích hợp trên Galaxy S24 Ultra có thiết kế nhỏ gọn và sang trọng\" loading=\"lazy\" title=\"Bút S Pen tích hợp trên Galaxy S24 Ultra có thiết kế nhỏ gọn và sang trọng\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\"><em style=\"box-sizing: inherit;\">Bút S Pen tích hợp trên Galaxy S24 Ultra có thiết kế nhỏ gọn và sang trọng</em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><br></p></div>', 'ELEC-63128878', 1500, 1450, '2024-08-05', '2024-08-25', 'featured_product', 1, 1, '2024-08-05 03:58:15', '2024-08-24 22:35:35');
INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(8, 'iPad Pro M4 11 inch Wifi 2024', 'ipad-pro-m4-11-inch-wifi-2024', 'uploads/media_66c983d7c8241.webp', 1, 10, 11, 18, 6, 56, 'iPad Pro M4 11 inch 256GB Wifi 2024 Chính hãng Apple Việt Nam - Hiệu suất đỉnh cao với chip M4, màn hình Liquid Retina sắc nét, lưu trữ rộng rãi 256GB, kết nối Wifi nhanh chóng, đảm bảo trải nghiệm mượt mà cho mọi nhu cầu công việc và giải trí.', '<p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Thiết kế mỏng nhẹ, cao cấp hơn</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Khung viền của iPad Pro M4 được thiết kế phẳng và vuông vức, không chỉ mang lại cảm giác chắc chắn và bền bỉ cho người dùng khi cầm trên tay mà còn tạo điểm nhấn thiết kế, phản ánh sự chuyên nghiệp và sang trọng.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\"><img loading=\"lazy\" decoding=\"async\" class=\"aligncenter wp-image-7664 size-full\" src=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-1-4.webp\" alt=\"\" width=\"910\" height=\"509\" srcset=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-1-4.webp 910w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-1-4-330x185.webp 330w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-1-4-768x430.webp 768w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-1-4-300x168.webp 300w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-1-4-600x336.webp 600w\" sizes=\"(max-width: 910px) 100vw, 910px\" style=\"box-sizing: inherit; display: block; margin: 5px auto; max-width: 100%; height: auto;\"></p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Các góc trên iPad được làm bo tròn nhẹ nhàng, giúp việc cầm nắm thoải mái hơn, đặc biệt khi bạn dùng máy trong thời gian dài. Thân máy bằng nhôm nguyên khối không chỉ tạo ra một bề ngoài mượt mà mà còn góp phần vào độ bền và cảm giác cao cấp của iPad.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Về độ mỏng và khối lượng, iPad Pro M4 256GB tỏa sáng với 5.3 mm độ dày và nặng chỉ 444 g, được cho là một trong những chiếc máy tính bảng mỏng nhẹ nhất hiện nay. Điều này chứng tỏ Apple luôn chú trọng vào việc tối ưu hóa kích thước để mang lại sự thoải mái nhất cho người dùng đi kèm với phần hiệu năng mạnh mẽ của máy.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\"><img loading=\"lazy\" decoding=\"async\" class=\"aligncenter wp-image-7665 size-full\" src=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-2-4.webp\" alt=\"\" width=\"910\" height=\"509\" srcset=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-2-4.webp 910w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-2-4-330x185.webp 330w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-2-4-768x430.webp 768w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-2-4-300x168.webp 300w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-2-4-600x336.webp 600w\" sizes=\"(max-width: 910px) 100vw, 910px\" style=\"box-sizing: inherit; display: block; margin: 5px auto; max-width: 100%; height: auto;\"></p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Apple Pencil Pro khi kết hợp với iPad Pro M4 256GB tạo nên một công cụ sáng tạo tiên tiến với nhiều tính năng ưu việt. Công nghệ phản hồi xúc giác cho phép người dùng tận hưởng trải nghiệm vẽ và ghi chú chân thực, với mỗi cử động được tái tạo một cách sinh động. Không chỉ vậy, tính năng tìm kiếm trong ứng dụng Tìm giúp người dùng dễ dàng định vị bút khi cần thiết, mang lại sự an tâm tối đa.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\"><i style=\"box-sizing: inherit;\">Lưu ý: Bút Apple Pencil Pro và Magic Keyboard là phụ kiện được mua riêng.</i></p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\"><img loading=\"lazy\" decoding=\"async\" class=\"aligncenter wp-image-7666 size-full\" src=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-3-3.webp\" alt=\"\" width=\"910\" height=\"509\" srcset=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-3-3.webp 910w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-3-3-330x185.webp 330w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-3-3-768x430.webp 768w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-3-3-300x168.webp 300w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-3-3-600x336.webp 600w\" sizes=\"(max-width: 910px) 100vw, 910px\" style=\"box-sizing: inherit; display: block; margin: 5px auto; max-width: 100%; height: auto;\"></p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Màn hình hiển thị chi tiết, sắc nét</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Sở hữu công nghệ Ultra Retina XDR, màn hình này đi tiên phong trong việc sử dụng công nghệ OLED 2 lớp tiên tiến. Sự kết hợp của hai lớp OLED có nghĩa là màn hình có khả năng tạo ra mức độ tương phản cực cao, với màu đen sâu hơn và màu trắng sáng hơn so với một lớp OLED thông thường.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\"><img loading=\"lazy\" decoding=\"async\" class=\"aligncenter wp-image-7667 size-full\" src=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-4-1.webp\" alt=\"\" width=\"910\" height=\"509\" srcset=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-4-1.webp 910w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-4-1-330x185.webp 330w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-4-1-768x430.webp 768w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-4-1-300x168.webp 300w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-4-1-600x336.webp 600w\" sizes=\"(max-width: 910px) 100vw, 910px\" style=\"box-sizing: inherit; display: block; margin: 5px auto; max-width: 100%; height: auto;\"></p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Với kích thước màn hình rộng 11 inch, chiếc iPad Pro M4 này cung cấp không gian hiển thị rộng lớn, đủ để thể hiện hết các chi tiết nhỏ nhất. Độ phân giải 1668 x 2420 Pixels, cao hơn nhiều so với các tiêu chuẩn thông thường. Mỗi hình ảnh, từ các văn bản đến đồ họa phức tạp, đều rõ ràng và đem lại sự sắc nét đến từng chi tiết.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Tần số quét thích ứng từ 10-120 Hz giúp màn hình điều chỉnh mức độ làm mới hình ảnh phù hợp với nội dung, tăng trải nghiệm xem phim, chơi game mượt mà và tiết kiệm năng lượng. Độ sáng 1600 nits khi hiển thị nội dung HDR làm cho màn hình nổi bật, giúp hiển thị HDR chân thực dưới mọi điều kiện ánh sáng.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Hiệu năng cải tiến với chipset Apple M4</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">iPad này được trang bị chipset Apple M4, là một bước nhảy vọt với kiến trúc được xây dựng trên công nghệ 3 nm thế hệ thứ hai. Công nghệ này giúp cải thiện đáng kể hiệu suất hoạt động trong khi vẫn duy trì sự hiệu quả về năng lượng. Điều này đồng nghĩa rằng không chỉ các tác vụ hằng ngày mượt mà mà cả những ứng dụng đòi hỏi sức mạnh xử lý cao như đồ họa và xử lý video cũng không là vấn đề.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\"><img loading=\"lazy\" decoding=\"async\" class=\"aligncenter wp-image-7668 size-full\" src=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-5.webp\" alt=\"\" width=\"910\" height=\"509\" srcset=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-5.webp 910w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-5-330x185.webp 330w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-5-768x430.webp 768w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-5-300x168.webp 300w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-5-600x336.webp 600w\" sizes=\"(max-width: 910px) 100vw, 910px\" style=\"box-sizing: inherit; display: block; margin: 5px auto; max-width: 100%; height: auto;\"></p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Với CPU 9 lõi và GPU 10 lõi, cho thấy sự tập trung vào việc cung cấp hiệu suất đồ họa mạnh mẽ. Điều này cho phép iPad Pro M4 giải quyết vô số thách thức về đồ họa, từ việc hiển thị các trò chơi có đồ họa cao cấp đến việc xuất các dự án phức tạp trong các ứng dụng chỉnh sửa video như Final Cut Pro một cách nhanh chóng.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\"><img loading=\"lazy\" decoding=\"async\" class=\"aligncenter wp-image-7669 size-full\" src=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-6.webp\" alt=\"\" width=\"910\" height=\"509\" srcset=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-6.webp 910w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-6-330x185.webp 330w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-6-768x430.webp 768w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-6-300x168.webp 300w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-6-600x336.webp 600w\" sizes=\"(max-width: 910px) 100vw, 910px\" style=\"box-sizing: inherit; display: block; margin: 5px auto; max-width: 100%; height: auto;\"></p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Neural Engine của M4 có khả năng xử lý lên đến 38 nghìn tỷ phép tính mỗi giây, Neural Engine không chỉ cải thiện hiệu suất các ứng dụng sử dụng AI mà còn làm cho chúng trở nên thông minh hơn, phản ứng nhanh hơn và hiệu quả hơn. Với nó, người dùng có thể thực hiện các tác vụ như tách đối tượng trong video chỉ bằng một cú chạm trong Final Cut Pro cùng nhiều tiện ích khác.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">RAM 8 GB của iPad cung cấp đủ dung lượng để đa nhiệm hiệu quả, thao tác nhiều tác vụ hay mở những ứng dụng nặng mà không lo giật lag máy. Với 256 GB bộ nhớ trong đảm bảo cho bạn sự thoải mái trong việc lưu trữ, không lo lắng về việc hết chỗ cho dữ liệu hoặc ứng dụng.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">iPadOS 17 trên iPad được tận dụng khả năng học máy tăng tốc của M4. Các tính năng mới và cải thiện về giao diện làm cho việc sử dụng iPad Pro M4 256GB trở nên mượt mà và trực quan hơn, đặc biệt là trong các quy trình làm việc chuyên nghiệp cần đến sự chính xác và tốc độ.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Camera nâng cấp, nâng cao chất lượng</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Camera sau 12 MP của iPad cung cấp chất lượng hình ảnh Smart HDR 4 cao cấp. Nó sẽ tự động điều chỉnh ảnh để lấy ra chi tiết tốt nhất từ cảnh quan, từ đó, hình ảnh chụp được sẽ trở nên sống động và giàu màu sắc, kể cả trong các điều kiện ánh sáng yếu.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\"><img loading=\"lazy\" decoding=\"async\" class=\"aligncenter wp-image-7670 size-full\" src=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-7.webp\" alt=\"\" width=\"910\" height=\"509\" srcset=\"https://uscom.vn/wp-content/uploads/2024/05/Untitled-7.webp 910w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-7-330x185.webp 330w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-7-768x430.webp 768w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-7-300x168.webp 300w, https://uscom.vn/wp-content/uploads/2024/05/Untitled-7-600x336.webp 600w\" sizes=\"(max-width: 910px) 100vw, 910px\" style=\"box-sizing: inherit; display: block; margin: 5px auto; max-width: 100%; height: auto;\"></p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Khả năng quay video 4K còn là một điểm mạnh đối với những người làm việc chuyên nghiệp trong lĩnh vực video, với chất lượng video sắc nét và mượt mà, giúp cho việc chỉnh sửa và sản xuất nội dung trở nên chuyên nghiệp hơn.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Camera trước Ultra Wide 12 MP được thiết kế mới, di chuyển từ cạnh trên xuống cạnh dài của máy, tạo vị trí lý tưởng khi dùng máy nằm ngang. Điều này rất phù hợp cho họp, học trực tuyến và gọi video. Tính năng Center Stage tự động điều chỉnh khung hình để giữ người dùng luôn ở trung tâm, ngay cả khi di chuyển, mang lại trải nghiệm trực tuyến tự nhiên và tương tác hơn.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Pin dùng cả ngày, thoải mái sử dụng</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">Cuối cùng, pin được hãng công bố với công suất 31.29 Wh, cho phép người dùng trải nghiệm đến 10 giờ lướt web hoặc xem video, giúp bạn tập trung vào công việc hoặc giải trí mà không lo lắng về việc cần phải sạc thường xuyên. Công suất pin này tạo điều kiện cho một ngày làm việc liên tục, từ việc chỉnh sửa tài liệu đến phát lại video đều không thành vấn đề.</p><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">So sánh iPad Pro M4 256GB và iPad Pro M4 Nano</p><table border=\"1\" style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(255, 204, 0);\"><b style=\"box-sizing: inherit;\"> Thông số</b></span></p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(255, 204, 0);\"><b style=\"box-sizing: inherit;\"> iPad Pro M4 256GB</b></span></p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> <b style=\"box-sizing: inherit;\">iPad Pro M4 Nano</b></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Kích thước màn hình</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 11 inch, Ultra Retina XDR</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 11 inch, Ultra Retina XDR</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Lớp kính màn hình</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Kính hiển thị tiêu chuẩn</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> <strong style=\"box-sizing: inherit;\">Kính hiển thị kết cấu nano</strong></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Hiệu năng</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Apple M2 9 nhân</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> <strong style=\"box-sizing: inherit;\">Apple M4 10 nhân</strong></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Camera trước</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Landscape 12 MP Ultra Wide</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Landscape 12 MP Ultra Wide</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Camera sau</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 12 MP Wide</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 12 MP Wide</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> RAM</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 8 GB</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> <strong style=\"box-sizing: inherit;\">16 GB</strong></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Pin, sạc</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 31.29 Wh, sạc 20 W</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 31.29 Wh, sạc 20 W</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Khả năng truy cập internet</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> WiFi</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> WiFi</p></td></tr></tbody></table><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">So sánh iPad Pro M4 256GB và iPad Air M2 256GB</p><table border=\"1\" style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(255, 204, 0);\"><b style=\"box-sizing: inherit;\"> Thông số</b></span></p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(255, 204, 0);\"><b style=\"box-sizing: inherit;\"> iPad Pro M4 256GB</b></span></p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> <b style=\"box-sizing: inherit;\">iPad Air M2 256GB</b></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Kích thước màn hình</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 11 inch, <strong style=\"box-sizing: inherit;\">Ultra Retina XDR</strong></p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 11 inch, Retina IPS LCD</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Hiệu năng</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> <strong style=\"box-sizing: inherit;\">Apple M4</strong></p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Apple M2</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Camera trước</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Landscape 12 MP Ultra Wide</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Landscape 12 MP Ultra Wide</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Camera sau</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 12 MP Wide</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 12 MP Wide</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> RAM</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 8 GB</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 8 GB</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Pin, sạc</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> <strong style=\"box-sizing: inherit;\">31.29 Wh</strong>, sạc 20 W</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 28.93 Wh, sạc 20 W</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Khả năng truy cập internet</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> WiFi</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> WiFi</p></td></tr></tbody></table><p style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\">So sánh iPad Pro M4 256GB và iPad Pro M2 128GB</p><table border=\"1\" style=\"box-sizing: inherit; font-family: Arial; font-size: 15px; text-align: justify;\"><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(255, 204, 0);\"><b style=\"box-sizing: inherit;\"> Thông số</b></span></p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(255, 204, 0);\"><b style=\"box-sizing: inherit;\"> iPad Pro M4 256GB</b></span></p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> <b style=\"box-sizing: inherit;\">iPad Pro M2 128GB</b></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Kích thước màn hình</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 11 inch, <strong style=\"box-sizing: inherit;\">Ultra Retina XDR</strong></p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 11 inch, Retina IPS LCD</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Hiệu năng</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> <strong style=\"box-sizing: inherit;\">Apple M4</strong></p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Apple M2</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Camera trước</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Landscape 12 MP Ultra Wide</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Landscape 12 MP Ultra Wide</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Camera sau</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 12 MP Wide</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 12 MP Wide</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> RAM</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 8 GB</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 8 GB</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Pin, sạc</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> <strong style=\"box-sizing: inherit;\">31.29 Wh</strong>, sạc 20 W</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> 28.93 Wh, sạc 20 W</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> Khả năng truy cập internet</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> WiFi</p></td><td style=\"box-sizing: inherit;\"><p style=\"box-sizing: inherit;\"> WiFi</p></td></tr></tbody></table>', 'IPAD11M4256', 2000, NULL, '2024-08-24', '2024-08-25', 'new_arrival', 1, 1, '2024-08-23 23:55:19', '2024-08-26 01:12:24');
INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(9, 'Camera GoPro Hero 12 VN/A', 'camera-gopro-hero-12-vna', 'uploads/media_66c9857ce0654.webp', 1, 10, 8, 8, 7, 100, 'Camera GoPro Hero 12 - Siêu bền, nhỏ gọn, khả năng chống nước ấn tượng. Quay video 4K siêu nét, chống rung HyperSmooth, lý tưởng cho các chuyến phiêu lưu ngoài trời và ghi lại những khoảnh khắc đáng nhớ.', '<div class=\"ksp-content p-2 mb-2\" style=\"box-sizing: inherit; margin: auto; background-color: rgb(242, 242, 242); border-radius: 0.5rem; width: 800px; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\"><h2 class=\"ksp-title has-text-centered\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 18px; color: rgb(215, 0, 24); text-transform: capitalize; text-align: center !important;\">Đặc điểm nổi bật</h2><div style=\"box-sizing: inherit;\"><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow-y: auto; scrollbar-width: none;\"><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Quay video với độ phân giải lên đến 5.3K mang đến những thước phim có chất lượng vượt trội</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Chống rung HyperSmooth 6.0 giúp đảm bảo chất lượng hình ảnh và video rõ nét, mượt mà nhất</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Khả năng hoạt động bền bỉ ở độ sâu 10m cho bạn thoả sức khám phá khi đi bơi hay trượt tuyết</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Công nghệ HDR cho cả hình ảnh, video giúp ghi lại nhiều khoảnh khắc với màu sắc chân thực</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Quay, chụp khung cảnh khác nhau với chế độ màn hình rộng, định dạng dọc và toàn màn hình</li></ul></div></div><div style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">GoPro Hero 12 Black là mẫu camera hành trình chất lượng đến từ thương hiệu GoPro. Camera với màn hình kích thước 2.27 inch cùng với đó là cụm camera chất lượng với độ phân giải 27.6 MP cùng một cảm biến kích thước lớn 1/1.9. Mặt sau camera là một màn hình phụ kích thước 1.4 inch hỗ trợ người dùng trong quá trình quay vlog.</p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">So sánh camera hành trình Gopro Hero 12 với Gopro Hero 11</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Gopro Hero 12 là sản phẩm thế hệ tiếp theo được Gopro giới thiệu vậy thế hệ camera mới này có gì khác biệt với phiên bản tiền nhiệm. Vậy cụ thể Gopro Hero 12  có gì được nâng cấp so với thế hệ tiền nhiệm?</p><table class=\"table table-bordered\" style=\"box-sizing: inherit; border-spacing: 0px; background-color: rgb(255, 255, 255); color: rgb(54, 54, 54); border-color: rgb(211, 211, 211); width: 800px; margin-bottom: 1.5rem;\"><tbody style=\"box-sizing: inherit; background-color: transparent;\"><tr class=\"success\" style=\"box-sizing: inherit; background-color: rgb(223, 240, 216); color: rgb(61, 102, 17); font-size: 12px;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Gopro Hero 12</span></p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Gopro Hero 11</span></p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Độ phân giải</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">27MP</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">27MP</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Công nghệ chống rung</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">HyperSmooth 6.0</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">HyperSmooth 5.0</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Màn hình</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Màn hình trước LCD màu 1.4 inch</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Màn hình sau LCD màu 2.27 inch</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Màn hình trước LCD màu 1.4 inch</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Màn hình sau LCD màu 2.27 inch</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Tỉ lệ khung hình chụp</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">16:9 - 4:3 - 8:7 - 9:16</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">16:9 - 4:3 - 8:7</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Tốc độ quay video góc rộng 4K</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">60, 50, 30, 25, 24 fps</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">60, 50 fps</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Micro</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">3 micro</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211);\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">3 micro</p></td></tr><tr style=\"box-sizing: inherit;\"><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Chuẩn kháng nước</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">33 feet</p></td><td style=\"box-sizing: inherit; padding: 0.5em 0.75em 0.5em 5px; vertical-align: top; text-align: inherit; border-top: 0px solid rgb(219, 219, 219); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(219, 219, 219); border-left-color: rgb(211, 211, 211); border-bottom-width: 0px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">33 feet</p></td></tr></tbody></table><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Camera hành trình Gopro Hero 12 - Độ phân giải 8K, thiết kế nhỏ gọn</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Camera hành trình Gopro Hero 12 </span>có sự nâng cấp vượt trội về tính năng, cũng như thay đổi nhỏ kiểu thiết kế bên ngoài. Đặc biệt, sản phẩm <a href=\"https://cellphones.com.vn/phu-kien/camera/gopro.html\" title=\"Camera GoPro chính hãng\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\"><span style=\"box-sizing: inherit; color: currentcolor; font-weight: 700;\">camera Gopro</span></a> này với thiết kế tối ưu phần viền phía trước, mở rộng khung hình để người dùng dễ dàng thao tác hơn. </p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Tương thích hoàn hảo với hơn 50+ dòng phụ kiện và chân máy khác nhau</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Camera hành trình GoPro Hero 12 đem đến một loạt các ưu điểm ấn tượng, trong đó nổi bật nhất là khả năng xây dựng thiết lập hoàn hảo với hơn 50 dòng phụ kiện và mod khác nhau. Trong đó, mỗi phụ kiện lại sở hữu những ưu điểm riêng về khả năng hỗ trợ và nâng cao chất lượng hình ảnh như Max Lens Mod 2.0 cho phép người dùng có thể linh hoạt thiết lập ống kính hành trình theo ý muốn của mình.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/gopro-hero-12-2.jpg\" alt=\"Phụ kiện camera hành trình Gopro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Với sự hỗ trợ của hàng loạt các phụ kiện thông minh, bạn có thể dễ dàng lắp đặt camera GoPro Hero 12 trên xe hơi, kính mũ bảo hiểm hoặc bất kỳ vị trí góc quay nào mà bạn muốn ghi lại hình ảnh. Qua đó, nó giúp bạn tận dụng toàn bộ tiềm năng của Hero 12, bắt lấy những khoảnh khắc tuyệt vời và sáng tạo nhất mà bạn mong muốn. </p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Thoải mái ghi hình dưới nước với khả năng chống thấm nước đỉnh cao</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Nhược điểm của hầu hết các thế hệ camera hành trình hiện nay là không hỗ trợ hoặc hỗ trợ ghi hình kém trong môi trường nước. Nhưng đến với thế hệ ống kính hành trình của nhà GoPro này, nhược điểm trên gần như đã được khắc phục hoàn toàn.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Cụ thể, camera GoPro Hero 12 sở hữu khả năng chống thấm nước lên đến độ sâu 33 feet (khoảng 10 mét). Nó cho phép người dùng có thể thoải mái quay chụp lại những khung cảnh lung linh dưới nước một cách ổn định, bền bỉ mà không lo camera bị hỏng hóc hoặc ngấm nước nhé!</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/gopro-hero-12-1.jpg\" alt=\"Tính năng chống nước trên camera hành trình Gopro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Đặc biệt hơn, ngay cả khi ở trong môi trường nước, chất lượng video, hình ảnh được thu lại từ camera GoPro Hero 12 cũng vẫn gần như giữ lại được chất lượng sắc nét vốn có. Tất cả là nhờ nắp ống kính được thiết kế chống nước xuất sắc, giữ cho hình ảnh của bạn vẫn luôn rõ ràng ngay cả khi đang ở sâu dưới nước.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Chất lượng ghi hình xuất sắc, có thể lên tới độ phân giải 5.3K</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">So với các phân khúc camera hành trình khác thì GoPro Hero 12 đứng đầu với chất lượng ghi hình xuất sắc, cho phép bạn ghi lại các khoảnh khắc ấn tượng với độ phân giải cao cực cao. Với khả năng quay video 5.3K, bạn sẽ được trải nghiệm hình ảnh sắc nét và vô cùng rõ ràng trong từng chi tiết. Ưu điểm này mang lại khả năng tái tạo màu sắc tốt, độ tương phản cân bằng cùng chất lượng ánh sáng tốt hơn.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/gopro-hero-12-5.jpg\" alt=\"Chất lượng ghi hình trên camera hành trình Gopro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Bên cạnh đó, camera hành trình GoPro Hero 12 còn sở hữu cảm biến hình ảnh tân tiến 27.13MP, đem lại sự chân thực và sống động trong mỗi khung hình. Kết hợp cùng với khả năng chống rung HyperSmooth xuất sắc, Hero 12 đã và đang được ca tụng là công cụ mạnh mẽ hàng đầu cho việc quay phim chuyên nghiệp và tạo nên các bản ghi đáng nhớ. </p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Kết nối Bluetooth linh hoạt, nâng cao trải nghiệm ghi hình</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Về khả năng kết nối Bluetooth, Camera GoPro Hero 12 cũng khá vượt trội khi có thể linh hoạt ghép nối với nhiều thiết bị ngoại vi. Từ đó mở ra nhiều cơ hội tùy chỉnh và điều khiển cực kỳ thuận tiện. Cụ thể, người dùng có thể dễ dàng kết nối với các thiết bị tai nghe hoặc micro không dây để cải thiện chất lượng âm thanh trong quá trình ghi hình. Điều này đặc biệt hữu ích nếu bạn muốn ghi âm chất lượng cao hoặc tạo ra các video chuyên nghiệp.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/gopro-hero-12-11.jpg\" alt=\"Khả năng kết nối trên camera hành trình Gopro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Hơn thế, khả năng ra lệnh bằng giọng nói từ xa cũng là một điểm mạnh đáng kể trên dòng camera hành trình này. Bạn có thể dễ dàng điều khiển ống kính mà không cần bất kỳ thao tác trực tiếp nào, giúp bạn tập trung vào bản ghi của mình hơn. </p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Chống rung hiệu quả với HyperSmooth 6.0</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Camera hành trình Gopro Hero 12 hỗ trợ kết nối Bluetooth 4.1 LE và GPS, chia sẻ hình ảnh tới điện thoại nhanh chóng. Đặc biệt, thiết bị sở hữu công nghệ HyperSmooth 6.0, quay video cực kỳ ổn định, kể cả những cảnh quay nhiều hành động, môi trường không bằng phẳng. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/gopro-hero-12-3.jpg\" alt=\"Tính năng camera hành trình Gopro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Sản phẩm sở hữu cảm biến 32MP, có khả năng quay video 8K cực kỳ sắc nét. Bên cạnh đó, thiết bị có khả năng chụp ảnh RAW, chụp ban đêm, tua nhanh,... </p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Thiết kế nhỏ gọn</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Chiếc camera sở hữu kính lọc ND, nhằm cân bằng độ sáng và độ tương phản, để không bị lóa hình ảnh trong những điều kiện ánh sáng quá gắt. Và sản phẩm có AI nhận diện khuôn mặt, tự động ghi lại mọi khoảnh khắc đẹp nhất. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/gopro-hero-12-8.jpg\" alt=\"Thiết kế camera hành trình Gopro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Camera hành trình Gopro Hero 12 tích hợp ngàm kẹp Folding Fingers, để người dùng gắn vào các phụ kiện khác nhau, đảm bảo giữ chắc chắn, di chuyển dễ dàng. Thiết bị thiết kế bo tròn, cầm nắm chắc chắn, chịu lực tác động rất tốt. </p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Thoả sức ghi hình trong nhiều giờ nhờ sở hữu viên pin Enduro 1720mAh</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Camera GoPro Hero 12 được tích hợp viên Pin Enduro với dung lượng lên đến 1720mAh, đánh dấu sự tiến bộ đáng kể về thời lượng sử dụng trong thế giới camera hành trình. Với thông số ấn tượng này, bạn có thể thoải mái ghi hình chất lượng 5.3K60 trong khoảng thời gian 70 phút mà không bỏ lỡ bất kỳ khoảnh khắc quý giá nào. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Hay ở chất lượng ghi hình 5.3K30, GoPro Hero 12 vẫn cho phép người dùng quay phim trong hơn 1.5 giờ liên tục và hơn 2.5 giờ ở độ phân giải 1080p30.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/gopro-hero-12-9.jpg\" alt=\"Pin camera hành trình Gopro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Đặc biệt hơn là Pin trên thế hệ camera hành trình GoPro này sử dụng công nghệ lưu trữ Enduro tiên tiến. Nó không chỉ mang lại thời lượng sử dụng dài lâu hơn mà còn duy trì hiệu suất ấn tượng ngay cả khi đang ở trong điều kiện thời tiết lạnh giá. </p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Màn hình LCD kép với cảm ứng siêu nhạy</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Bên cạnh những điểm nhấn trên thì màn hình LCD kép cũng là ưu điểm nhận về nhiều phản hồi tốt trên GoPro Hero 12. Nổi bật với màn hình trước rộng 1.4 inch và màn hình sau lớn hơn - 2.27 inch, bạn sẽ có trải nghiệm xem hình ảnh tốt hơn và dễ dàng cài đặt các tùy chọn khác trên phân khúc camera hành trình này.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/gopro-hero-12-12.jpg\" alt=\"Màn hình camera hành trình Gopro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Chưa dừng lại ở đó, màn hình phía sau của camera này còn hỗ trợ cảm ứng cực kỳ nhạy bén, đem tới nhiều trải nghiệm nhanh chóng và thuận tiện cho người dùng trong quá trình sử dụng. Đồng thời, nó cũng cho phép bạn chuyển đổi giữa các chế độ hoặc cài đặt, xem lại video dễ dàng và mượt mà hơn, nâng cao tính linh hoạt và tiện lợi trong mọi hành trình.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Khóa chân trời hiện đại, giữ cảnh nền luôn ở trong trạng thái ổn định nhất</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Sự xuất sắc của Camera hành trình GoPro Hero 12 còn được thể hiện ở tính năng Horizon Lock. Đây là một phần tích hợp của công nghệ chống rung đỉnh cao HyperSmooth 6.0, giúp người dùng duy trì mức đường chân trời ổn định ngay cả khi camera xoay 360 độ.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/gopro-hero-12-2.jpg\" alt=\"Phụ kiện camera hành trình Gopro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Với tính năng đặc biệt hữu ích này, bạn có thể dễ dàng ghi lại được những thước phim ấn tượng, chuyên nghiệp khi tham gia vào các môn thể thao mạo hiểm. Horizon Lock sẽ giúp đảm bảo video của bạn luôn mượt mà và không bị méo mó khi camera thay đổi góc độ, tạo nên các bản ghi chất lượng và vô cùng thú vị. </p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Sáng tạo hiệu ứng ánh sáng độc đáo cho bản ghi chỉ với 1 nút nhấn</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Một điểm nhấn ấn tượng khác cũng nhận được đánh giá rất cao từ người sử dụng trên thế hệ camera GoPro Hero 12 này là khả năng sáng tạo hiệu ứng ánh sáng, màu sắc cực đỉnh thông qua tính năng Video TimeLapse. Với khả năng ghi lại các khoảnh khắc theo thời gian ở chất lượng 5.3K, Hero 12 sẽ hỗ trợ bạn tạo ra những video TimeLapse tuyệt đẹp và có màu sắc sống động và vô cùng chi tiết. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/gopro-hero-12-3.jpg\" alt=\"Đánh giá camera hành trình Gopro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Không chỉ vậy, tính năng này trên Camera GoPro Hero 12 còn cho phép bạn điều chỉnh tốc độ ghi hình timelapse, từ chậm đến nhanh, tạo ra hiệu ứng chuyển động ấn tượng. Ngoài ra, bạn cũng hoàn toàn có thể cài đặt thời gian chụp giữa các bức ảnh để tạo ra được nhiều hiệu ứng ánh sáng độc đáo, thú vị khác nữa nhé!</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Nâng cao chất lượng hình ảnh với dải màu 10 bit</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Để chất lượng hình ảnh được sắc nét nhất có thể, nhà sản xuất đã tích hợp cho thế hệ camera hành trình GoPro Hero 12 này khả năng hiển thị cao cấp trên dải màu 10 bit. Ưu điểm này cho phép bạn có thể tận hưởng được những trải nghiệm sắc màu chân thực và có độ sâu màu xuất sắc, giúp các bản ghi trở nên sống động và thú vị hơn.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/gopro-hero-12-8.jpg\" alt=\"Màu sắc camera hành trình Gopro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Ngoài ra, với khả năng mã hoá GP-Log và sử dụng các bảng điều chỉnh màu (LUT), bạn hoàn toàn có thể tối ưu hoá dải động của hình ảnh trước khi thực hiện các điều chính khác về màu sắc. Qua đó, giúp tạo ra những tác phẩm độc đáo với màu sắc rực rỡ và chất lượng tốt nhất. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Nếu bạn là một nhiếp ảnh gai hay một nhà làm phim chuyên nghiệp thì sự kết hợp giữa khả năng hiển thị màu 10 bit và công cụ mã hoá GP-Log này sẽ mang đến sự linh hoạt và sáng tạo không giới hạn tuyệt vời không nên bỏ qua nhé!</p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Hướng dẫn cách sử dụng camera GoPro Hero 12</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Nhìn chung thì các thao tác vận hành camera GoPro Hero 12 không quá phức tạp. Bạn chỉ cần mở máy ảnh lên, cài đặt chất lượng hình ảnh và nhấn nút quay là camera sẽ bắt đầu ghi hình cho bạn. Chỉ có 2 vấn đề trong quy trình sử dụng của camera GoPro Hero thế hệ thứ 12 nhận được nhiều thắc mắc của người dùng là tháo lắp thẻ nhớ như thế nào và kết nối với smartphone ra sao. Dưới này là một số giải đáp cho thắc mắc này mà bạn có thể tham khảo thêm nhé!</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Hướng dẫn tháo lắp thẻ nhớ trên camera GoPro Hero 12</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Camera hành trình GoPro Hero 12 quay phim chất lượng cao và lưu toàn bộ dữ liệu thu được vào thẻ nhớ lắp từ ngoài vào. Chi tiết các thao tác tháo lắp thẻ nhớ vào camera GoPro Hero 12 như sau.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bước 1</span>: Khi cầm GoPro Hero 12 trên tay, bạn sẽ thấy một <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">nắp đậy ở phía bên cạnh phải</span>. Sau khi <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">mở nắp đậy</span> này lên, bạn sẽ thấy một ngăn nhỏ dành cho thẻ nhớ. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/camera-gopro-hero-12-1.png\" alt=\"Hướng dẫn tháo lắp thẻ nhớ trên camera GoPro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\">(Nguồn Internet)</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bước 2</span>: <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Cắm đúng chiều thẻ nhớ</span> vào trong camera, sau đó <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">đậy nắp lại</span> là bạn đã hoàn tất quy trình tháo lắp thẻ nhớ vào GoPro Hero 12 và đã có thể ghi hình được rồi nhé!</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><img src=\"https://cdn2.cellphones.com.vn/insecure/rs:fill:0:0/q:90/plain/https://cellphones.com.vn/media/wysiwyg/camera/camera-hanh-trinh/gopro/camera-gopro-hero-12-2.png\" alt=\"Hướng dẫn tháo lắp thẻ nhớ trên camera GoPro Hero 12\" loading=\"lazy\" style=\"box-sizing: inherit; height: auto; max-width: 100%;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; text-align: center;\">(Nguồn Internet)</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Tuy nhiên thì có một lưu ý nhỏ mà bạn cần đặc biệt chú ý là camera hành trình GoPro Hero 12 là phân khúc hiện đại trên thị trường máy ảnh di động với tốc độ ghi hình chất lượng cao. Do đó, thẻ nhớ mà bạn đặt vào máy cũng cần phải đạt được <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">tốc độ ghi tối thiểu là 90MB/s</span> để đảm bảo quá trình ghi hình được mượt mà và không bị nghẽn dữ liệu.</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Cách kết nối camera GoPro Hero 12 với GoPro Quik App</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Tương tự như cách tháo lắp thẻ nhớ trên thì các thao tác kết nối camera hành trình GoPro Hero thế hệ thứ 12 với smartphone qua ứng dụng GoPro Quik cũng khá đơn giản. Các bước kết nối chi tiết giữa máy ảnh GoPro Hero 12 với smartphone như sau.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bước 1</span>: Trước hết, bạn cần cài đặt ứng dụng <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">GoPro Quik</span> vào điện thoại của mình.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bước 2</span>: Trên smartphone, bạn <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">mở Bluetooth</span> lên và<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\"> truy cập vào </span>ứng dụng <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">GoPro Quik</span> vừa mới tải về máy. Ở giao diện chính, bạn chọn vào <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Yes, I have a GoPro</span>. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bước 3</span>: Khởi động máy ảnh hành trình của bạn lên và chọn vào tùy chọn <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Connections</span>. Tiếp đó, bạn chọn vào mục <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Connect Device</span> và tiếp tục chọn vào <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Quik App</span>. </p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Bước 4</span>: Sau khi ở trên điện thoại đã tìm thấy camera GoPro Hero 12, bạn chọn <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Continues</span> và <span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Cho phép kết nối</span> giữa 2 thiết bị này. Hoàn thành bước này là bạn đã kết nối thành công máy ảnh hành trình với smartphone của mình rồi nhé!</p><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px; font-weight: 400;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Mua ngay camera hành trình Gopro Hero 12 chính hãng, giá rẻ tại CellphoneS</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Như vậy, nếu bạn muốn sở hữu chiếc camera hành trình để lưu giữ mọi khung hình trên những chuyến đi, thì nên mua ngay Gopro Hero 12 tại cửa hàng CellphoneS để nhận được thiết bị chất lượng cao, giá phải chăng nhé. </p></div>', 'CHT GP.01', 370, 350, '2024-08-24', '2024-08-30', 'top_product', 1, 1, '2024-08-24 00:02:20', '2024-08-24 00:16:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image_galleries`
--

CREATE TABLE `product_image_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_image_galleries`
--

INSERT INTO `product_image_galleries` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'uploads/media_66a99d21793aa.jfif', 1, '2024-07-30 19:10:41', '2024-07-30 19:10:41'),
(2, 'uploads/media_66a99d21799b7.jfif', 1, '2024-07-30 19:10:41', '2024-07-30 19:10:41'),
(3, 'uploads/media_66a99d2179c2c.jfif', 1, '2024-07-30 19:10:41', '2024-07-30 19:10:41'),
(4, 'uploads/media_66a99d2179fa9.jfif', 1, '2024-07-30 19:10:41', '2024-07-30 19:10:41'),
(15, 'uploads/media_66ab37b980f47.jfif', 4, '2024-08-01 00:22:33', '2024-08-01 00:22:33'),
(16, 'uploads/media_66ab37b98149b.jfif', 4, '2024-08-01 00:22:33', '2024-08-01 00:22:33'),
(17, 'uploads/media_66ab37b9816de.jfif', 4, '2024-08-01 00:22:33', '2024-08-01 00:22:33'),
(20, 'uploads/media_66ab3ac7a2584.jfif', 4, '2024-08-01 00:35:35', '2024-08-01 00:35:35'),
(21, 'uploads/media_66ab3ac7a28df.jfif', 4, '2024-08-01 00:35:35', '2024-08-01 00:35:35'),
(29, 'uploads/media_66b0af00a632f.webp', 6, '2024-08-05 03:52:48', '2024-08-05 03:52:48'),
(30, 'uploads/media_66b0af00a6709.jpg', 6, '2024-08-05 03:52:48', '2024-08-05 03:52:48'),
(31, 'uploads/media_66b0af00a6b69.webp', 6, '2024-08-05 03:52:48', '2024-08-05 03:52:48'),
(32, 'uploads/media_66b0af00a6ea8.webp', 6, '2024-08-05 03:52:48', '2024-08-05 03:52:48'),
(33, 'uploads/media_66b0af00a7255.webp', 6, '2024-08-05 03:52:48', '2024-08-05 03:52:48'),
(34, 'uploads/media_66b0f2cc41596.webp', 7, '2024-08-05 08:42:04', '2024-08-05 08:42:04'),
(35, 'uploads/media_66b0f2cc41c63.png', 7, '2024-08-05 08:42:04', '2024-08-05 08:42:04'),
(36, 'uploads/media_66b0f2cc41f8a.png', 7, '2024-08-05 08:42:04', '2024-08-05 08:42:04'),
(37, 'uploads/media_66b0f2cc42287.png', 7, '2024-08-05 08:42:04', '2024-08-05 08:42:04'),
(38, 'uploads/media_66c9890ee8b02.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(39, 'uploads/media_66c9890ee8f70.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(40, 'uploads/media_66c9890ee92f5.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(41, 'uploads/media_66c9890ee96e5.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(42, 'uploads/media_66c9890ee9963.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(43, 'uploads/media_66c9890ee9bb6.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(44, 'uploads/media_66c9890ee9e0f.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(45, 'uploads/media_66c9890eea0f5.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(46, 'uploads/media_66c9890eea34f.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(47, 'uploads/media_66c9890eea5bf.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(48, 'uploads/media_66c9890eeaaae.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(49, 'uploads/media_66c9890eeb00a.webp', 9, '2024-08-24 00:17:34', '2024-08-24 00:17:34'),
(50, 'uploads/media_66c98922231db.webp', 8, '2024-08-24 00:17:54', '2024-08-24 00:17:54'),
(51, 'uploads/media_66c9892223552.webp', 8, '2024-08-24 00:17:54', '2024-08-24 00:17:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `vendor_id` bigint UNSIGNED NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `vendor_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 4, 1, 'hehe', '5', 1, '2024-08-31 02:36:44', '2024-08-31 07:51:23'),
(6, 4, 5, 3, 'ngon bổ rẻ', '5', 1, '2024-09-04 23:56:52', '2024-09-04 23:56:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_review_galleries`
--

CREATE TABLE `product_review_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `product_review_id` bigint UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_review_galleries`
--

INSERT INTO `product_review_galleries` (`id`, `product_review_id`, `image`, `created_at`, `updated_at`) VALUES
(9, 5, 'uploads/media_66d2e42c55272.jpg', '2024-08-31 02:36:44', '2024-08-31 02:36:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Capacity', 1, '2024-07-30 20:37:03', '2024-07-31 07:29:22'),
(3, 1, 'Ram', 1, '2024-07-30 20:54:27', '2024-07-30 20:54:27'),
(18, 1, 'hehe', 1, '2024-08-24 09:54:21', '2024-08-24 09:54:21'),
(19, 4, 'Ram', 1, '2024-09-12 01:56:09', '2024-09-12 01:56:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variant_items`
--

CREATE TABLE `product_variant_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variant_items`
--

INSERT INTO `product_variant_items` (`id`, `product_variant_id`, `name`, `price`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '16GB', 70, 0, 1, '2024-07-31 00:57:22', '2024-08-02 01:24:41'),
(2, 3, '8GB', 0, 1, 1, '2024-07-31 00:59:10', '2024-08-02 01:37:52'),
(3, 3, '32GB', 140, 0, 1, '2024-07-31 01:11:01', '2024-08-02 01:24:49'),
(27, 1, '512 GB', 0, 1, 1, '2024-08-02 01:16:33', '2024-08-02 01:37:41'),
(28, 1, '1 T', 150, 0, 1, '2024-08-02 01:17:14', '2024-08-02 01:26:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Vendor', NULL, NULL),
(3, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping_rules`
--

CREATE TABLE `shipping_rules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_cost` double DEFAULT NULL,
  `cost` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping_rules`
--

INSERT INTO `shipping_rules` (`id`, `name`, `type`, `min_cost`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Freeship', 'min_cost', 1500, 0, 1, '2024-08-02 07:55:40', '2024-08-06 00:14:25'),
(2, 'Ahamove', 'flat_cost', NULL, 50, 1, '2024-08-02 08:04:46', '2024-08-02 08:38:08'),
(6, 'J&T Express', 'flat_cost', NULL, 20, 1, '2024-08-06 00:03:47', '2024-08-06 00:03:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_price` int UNSIGNED DEFAULT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `banner`, `type`, `title`, `starting_price`, `btn_url`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(8, 'uploads/media_669dfa3407741.jpg', 'new arrivals', 'men\'s fashion', 99, 'http://ecommerce.test/admin/slider/create', 1, 1, '2024-07-21 23:20:36', '2024-07-21 23:26:27'),
(9, 'uploads/media_669dfa59331f8.jpg', 'new arrivals', 'kid\'s fashion', 69, 'http://ecommerce.test/admin/slider/create', 2, 1, '2024-07-21 23:21:13', '2024-07-21 23:21:13'),
(10, 'uploads/media_669dfa72c2b6f.jpg', 'Hot Deals', 'winter collection', 40, 'http://ecommerce.test/admin/slider/create', 3, 1, '2024-07-21 23:21:38', '2024-07-21 23:21:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(8, 10, 'Camera', 'camera', 1, '2024-07-27 06:02:28', '2024-07-28 00:47:38'),
(9, 10, 'Laptop', 'laptop', 1, '2024-07-27 06:02:35', '2024-07-27 06:02:35'),
(10, 10, 'Smart Phones', 'smart-phones', 1, '2024-07-27 06:02:47', '2024-07-27 06:02:47'),
(11, 10, 'Tablet', 'tablet', 1, '2024-07-27 06:02:57', '2024-07-27 06:02:57'),
(12, 10, 'Logic', 'logic', 1, '2024-07-27 08:43:12', '2024-07-28 00:47:12'),
(13, 11, 'Men Fashion', 'men-fashion', 1, '2024-08-24 22:29:23', '2024-08-24 22:29:23'),
(14, 11, 'Women Fashion', 'women-fashion', 1, '2024-08-24 22:29:36', '2024-08-24 22:29:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<p><span style=\"font-weight: bolder;\">Terms and Conditions for Sazao Users</span></p><p>Welcome to Sazao, your trusted e-commerce platform! By accessing and using our services, you agree to the following terms and conditions. Please take the time to read them carefully to understand your rights and obligations as a user of Sazao.</p><ol><li><p><span style=\"font-weight: bolder;\">User Eligibility</span></p><ul><li>You must be at least 18 years of age or use the platform under the supervision of a parent or legal guardian.</li><li>All information provided during registration, such as your name, email, and payment details, must be accurate and up-to-date.</li></ul></li><li><p><span style=\"font-weight: bolder;\">Account Responsibilities</span></p><ul><li>You are responsible for maintaining the confidentiality of your account details, including your password, and for any activities conducted through your account.</li><li>If you suspect unauthorized use of your account, please notify us immediately to avoid further issues.</li></ul></li><li><p><span style=\"font-weight: bolder;\">Purchasing Process</span></p><ul><li>By placing an order on Sazao, you agree to pay the full price of the items, including applicable taxes and shipping fees.</li><li>Prices may change, and any discounts or promotions are subject to availability.</li><li>Once your order is placed, you will receive an order confirmation, and delivery will follow based on the shipping method selected.</li></ul></li><li><p><span style=\"font-weight: bolder;\">Refunds and Returns</span></p><ul><li>Sazao offers refunds and returns based on the return policies outlined by individual vendors. Please check product-specific return guidelines before purchasing.</li><li>If a product arrives damaged or does not meet your expectations, you must initiate a return request within the specified timeframe.</li></ul></li><li><p><span style=\"font-weight: bolder;\">User Conduct</span></p><ul><li>You agree to use the platform for lawful purposes and to refrain from any activity that could harm Sazao or its users.</li><li>Fraudulent or harmful actions, including using false information or engaging in hacking activities, will lead to account termination.</li></ul></li><li><p><span style=\"font-weight: bolder;\">Data Privacy</span></p><ul><li>Your personal data will be handled in accordance with our Privacy Policy. We take data protection seriously and implement measures to safeguard your information.</li><li>We may use your data for improving services, marketing purposes, or complying with legal obligations.</li></ul></li><li><p><span style=\"font-weight: bolder;\">Intellectual Property</span></p><ul><li>All content on Sazao, including logos, text, and images, is the intellectual property of Sazao and may not be copied, distributed, or reproduced without permission.</li></ul></li><li><p><span style=\"font-weight: bolder;\">Modifications to Terms</span></p><ul><li>Sazao reserves the right to update or modify these terms at any time. Users will be notified of any significant changes, and continued use of the platform will imply acceptance of the revised terms.</li></ul></li></ol><p>Thank you for choosing Sazao! By following these terms, you help maintain a secure and enjoyable shopping experience for everyone.</p>', '2024-09-06 07:34:01', '2024-09-06 07:34:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `amount_real_currency` double NOT NULL,
  `amount_real_currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `transaction_id`, `payment_method`, `amount`, `amount_real_currency`, `amount_real_currency_name`, `created_at`, `updated_at`) VALUES
(2, 5, '42W06245UL027470P', 'paypal', 903.2, 903.2, 'USD', '2024-08-19 02:52:44', '2024-08-19 02:52:44'),
(3, 6, '4EX7797957967244W', 'paypal', 1850, 1850, 'USD', '2024-08-22 00:05:20', '2024-08-22 00:05:20'),
(4, 7, '21Y192931J969782T', 'paypal', 2486.6, 2486.6, 'USD', '2024-08-22 03:22:39', '2024-08-22 03:22:39'),
(5, 8, 'v3CfluuQSv', 'COD', 761, 761, 'USD', '2024-09-15 08:51:48', '2024-09-15 08:51:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `image`, `phone`, `email`, `role_id`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'LouisDang', NULL, '/uploads/689336868_457690916_475206168662923_7763492334443931909_n.jpg', NULL, 'admin@gmail.com', 1, 'active', NULL, '$2y$10$JC2VdTEazwV21URKv9pEP.Y4w7aSgrDDYPx1nfKcE1fURrlhGvVci', NULL, '2024-07-20 05:28:39', '2024-09-16 00:53:04'),
(5, 'Thanh Phong', NULL, '/uploads/1645996341_Phong2.PNG', '0375566576', 'user@gmail.com', 3, 'active', NULL, '$2y$10$pFt4XdexaQSctj3UEMtXKeTfcOdEkKX1/b0CS5///keTuaW1v0zPq', NULL, '2024-07-20 05:29:33', '2024-09-06 01:14:37'),
(6, 'Vendor', NULL, '/uploads/805371357_team_1.jpg', NULL, 'vendor@gmail.com', 2, 'active', NULL, '$2y$10$gw692oYLJQzDvdrORZOvIOYPjpQp90td7D4VNR1ZPT4TRVRNZ97IW', NULL, '2024-07-22 00:26:56', '2024-09-12 02:08:57'),
(12, '123', NULL, NULL, NULL, '123@gmail.com', 3, 'active', NULL, '$2y$10$xUS40y0jBCWqW5IlDPCypu9jwsLWCCeWzcyfU2ud8UJ8X2YV7GJj2', NULL, '2024-09-07 07:37:27', '2024-09-07 07:37:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `name`, `email`, `phone`, `zip`, `country`, `city`, `address`, `created_at`, `updated_at`) VALUES
(1, 5, 'Đặng Thanh Phong', 'phongzau2004@gmail.com', '0375566576', '11700', 'Vietnam', 'Hà Nội', 'Số 81 ngõ 42 Thịnh Liệt hoàng mai hà nội', '2024-08-02 10:02:05', '2024-08-02 10:02:05'),
(2, 5, 'Nguyễn Thị Anh', 'anhnt@gmail.com', '0836808980', '11700', 'Vietnam', 'Hà Nội', 'Số 81 ngõ 42 Vĩnh Phúc Hà Nội', '2024-08-02 10:03:24', '2024-08-02 10:03:24'),
(4, 5, 'Nguyễn Thị Bông', 'phongdtph38207@fpt.edu.vn', '0836808980', '11700', '0', 'Hà Nội', 'Số 81 ngõ 42 Thịnh Liệt hoàng mai hà nội', '2024-08-05 23:42:17', '2024-08-05 23:42:17'),
(5, 4, 'Đặng Thanh Phong', 'phongzau2004@gmail.com', '0375566576', '11700', 'Vietnam', 'Hà Nội', 'Số 81 ngõ 42 Thịnh Liệt hoàng mai hà nội', '2024-08-13 05:13:10', '2024-08-13 05:13:10'),
(6, 6, 'Đặng Thanh Phong', 'phongzau2004@gmail.com', '0375566576', '12345', 'Vietnam', 'Quận Hoàng Mai', 'Số 81 ngõ 42 phố thịnh liệt quận hoàng mai hà nội', '2024-08-16 06:04:21', '2024-08-16 06:04:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` text COLLATE utf8mb4_unicode_ci,
  `tw_link` text COLLATE utf8mb4_unicode_ci,
  `insta_link` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vendors`
--

INSERT INTO `vendors` (`id`, `banner`, `phone`, `email`, `address`, `description`, `fb_link`, `tw_link`, `insta_link`, `user_id`, `created_at`, `updated_at`, `shop_name`, `status`) VALUES
(1, 'uploads/media_66ac9ff56a610.jfif', '0836808980', 'admin@gmail.com', 'No. 81, Alley 42 Thinh Liet, Hoang Mai District, Hanoi', '<h2><strong>Tech&nbsp; Store</strong></h2><h3><strong>Giới thiệu:</strong></h3><p>Tech Store là một cửa hàng công nghệ hiện đại, chuyên cung cấp các sản phẩm điện tử cao cấp như laptop, điện thoại di động, máy tính bảng, và các phụ kiện công nghệ. Chúng tôi tự hào mang đến cho khách hàng những sản phẩm mới nhất từ các thương hiệu hàng đầu thế giới với chất lượng đảm bảo và giá cả cạnh tranh.</p><h3><strong>Sản phẩm của chúng tôi:</strong></h3><ol><li><p><strong>Laptop:</strong></p><ul><li>Các dòng laptop từ các hãng nổi tiếng như Apple, Dell, HP, Lenovo, Asus, Acer, MSI, và nhiều thương hiệu khác.</li><li>Đa dạng mẫu mã từ laptop phổ thông, laptop chơi game, đến laptop đồ họa và laptop doanh nhân.</li><li>Cung cấp các tùy chọn cấu hình từ cơ bản đến cao cấp, đáp ứng nhu cầu sử dụng khác nhau.</li></ul></li><li><p><strong>Điện thoại di động:</strong></p><ul><li>Điện thoại thông minh từ các thương hiệu hàng đầu như Apple, Samsung, Xiaomi, Huawei, Oppo, và Vivo.</li><li>Đầy đủ các dòng sản phẩm từ flagship cao cấp đến điện thoại tầm trung và giá rẻ.</li><li>Hỗ trợ cập nhật phần mềm và dịch vụ sửa chữa chuyên nghiệp.</li></ul></li><li><p><strong>Máy tính bảng:</strong></p><ul><li>Sản phẩm từ các hãng như Apple, Samsung, Huawei, và Lenovo.</li><li>Đáp ứng nhu cầu giải trí, học tập, và làm việc di động với các dòng sản phẩm đa dạng.</li></ul></li><li><p><strong>Phụ kiện công nghệ:</strong></p><ul><li>Phụ kiện đi kèm như tai nghe, bàn phím, chuột, sạc dự phòng, và ốp lưng.</li><li>Cung cấp thiết bị lưu trữ như ổ cứng di động, thẻ nhớ, và USB.</li></ul></li></ol><h3><strong>Dịch vụ khách hàng:</strong></h3><ul><li><strong>Tư vấn chuyên nghiệp:</strong> Đội ngũ nhân viên am hiểu công nghệ, nhiệt tình tư vấn giúp khách hàng lựa chọn sản phẩm phù hợp.</li><li><strong>Hỗ trợ kỹ thuật:</strong> Dịch vụ hỗ trợ kỹ thuật và bảo hành chuyên nghiệp, nhanh chóng.</li><li><strong>Giao hàng tận nơi:</strong> Dịch vụ giao hàng tận nơi nhanh chóng và an toàn.</li></ul><h3><strong>Tầm nhìn và sứ mệnh:</strong></h3><p>TechGears Store hướng đến trở thành điểm đến tin cậy cho tất cả những ai yêu thích và đam mê công nghệ. Chúng tôi cam kết mang đến những sản phẩm chất lượng nhất cùng với dịch vụ khách hàng xuất sắc, góp phần nâng cao trải nghiệm công nghệ cho khách hàng.</p><hr><p>Cửa hàng TechGears Store sẽ là nơi bạn tìm thấy những sản phẩm công nghệ chất lượng cao, đáp ứng mọi nhu cầu từ làm việc, học tập đến giải trí.</p>\"', NULL, NULL, NULL, 4, '2024-07-28 07:27:11', '2024-08-02 02:07:36', 'Tech Store', 1),
(3, 'uploads/media_66aae7b1dfff1.jfif', '0375566576', 'vendor@gmail.com', 'Ha noi', 'Shop bán máy tính', NULL, NULL, NULL, 6, '2024-07-31 18:09:14', '2024-08-01 21:22:59', 'Future Tech', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendor_conditions`
--

CREATE TABLE `vendor_conditions` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vendor_conditions`
--

INSERT INTO `vendor_conditions` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Điều kiện để trở thành người bán (Vendor):</strong></p><p>Để trở thành một người bán trên nền tảng, người dùng cần đáp ứng một số điều kiện sau:</p><ol><li><p><strong>Tài khoản hợp lệ</strong>: Người dùng phải có một tài khoản hợp lệ và đã xác minh trên hệ thống.</p></li><li><p><strong>Thông tin cá nhân đầy đủ</strong>: Người bán cần cung cấp thông tin cá nhân đầy đủ, chính xác như tên, địa chỉ liên hệ, số điện thoại, và thông tin thanh toán.</p></li><li><p><strong>Đăng ký tài khoản vendor</strong>: Người dùng phải gửi yêu cầu đăng ký trở thành vendor thông qua hệ thống. Sau khi nộp đơn, yêu cầu sẽ được quản trị viên duyệt và thông báo kết quả.</p></li><li><p><strong>Đáp ứng quy định về sản phẩm</strong>: Người bán cần cam kết chỉ cung cấp các sản phẩm hoặc dịch vụ hợp pháp và tuân thủ các quy định của nền tảng cũng như pháp luật.</p></li><li><p><strong>Tài khoản không bị vô hiệu</strong>: Người bán cần có tài khoản với trạng thái hoạt động. Những tài khoản bị khóa hoặc vi phạm các điều khoản dịch vụ sẽ không đủ điều kiện.</p></li></ol>', '2024-09-06 01:33:26', '2024-09-06 01:36:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(11, 4, 1, '2024-08-26 09:58:35', '2024-08-26 09:58:35'),
(12, 4, 4, '2024-08-26 09:58:58', '2024-08-26 09:58:58'),
(13, 4, 6, '2024-08-26 10:00:24', '2024-08-26 10:00:24'),
(16, 4, 8, '2024-08-26 10:17:42', '2024-08-26 10:17:42');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_user_id_foreign` (`user_id`),
  ADD KEY `blog_comments_blog_id_foreign` (`blog_id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_categories_category_id_foreign` (`category_id`),
  ADD KEY `child_categories_sub_category_id_foreign` (`sub_category_id`);

--
-- Chỉ mục cho bảng `cod_settings`
--
ALTER TABLE `cod_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_items_product_id_foreign` (`product_id`),
  ADD KEY `flash_sale_items_flash_sale_id_foreign` (`flash_sale_id`);

--
-- Chỉ mục cho bảng `footer_grid_threes`
--
ALTER TABLE `footer_grid_threes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer_grid_twos`
--
ALTER TABLE `footer_grid_twos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer_infos`
--
ALTER TABLE `footer_infos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer_socials`
--
ALTER TABLE `footer_socials`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer_titles`
--
ALTER TABLE `footer_titles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `home_page_settings`
--
ALTER TABLE `home_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logo_settings`
--
ALTER TABLE `logo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_vendor_id_foreign` (`vendor_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `paypal_settings`
--
ALTER TABLE `paypal_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_child_category_id_foreign` (`child_category_id`),
  ADD KEY `products_vendor_id_foreign` (`vendor_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_image_galleries_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_vendor_id_foreign` (`vendor_id`);

--
-- Chỉ mục cho bảng `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_review_galleries_product_review_id_foreign` (`product_review_id`);

--
-- Chỉ mục cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variant_item_product_variant_id_foreign` (`product_variant_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shipping_rules`
--
ALTER TABLE `shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendors_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `vendor_conditions`
--
ALTER TABLE `vendor_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `cod_settings`
--
ALTER TABLE `cod_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `footer_grid_threes`
--
ALTER TABLE `footer_grid_threes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `footer_grid_twos`
--
ALTER TABLE `footer_grid_twos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `footer_infos`
--
ALTER TABLE `footer_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `footer_socials`
--
ALTER TABLE `footer_socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `footer_titles`
--
ALTER TABLE `footer_titles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `home_page_settings`
--
ALTER TABLE `home_page_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `logo_settings`
--
ALTER TABLE `logo_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `paypal_settings`
--
ALTER TABLE `paypal_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `product_variant_items`
--
ALTER TABLE `product_variant_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `shipping_rules`
--
ALTER TABLE `shipping_rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `vendor_conditions`
--
ALTER TABLE `vendor_conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `child_categories`
--
ALTER TABLE `child_categories`
  ADD CONSTRAINT `child_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `child_categories_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  ADD CONSTRAINT `flash_sale_items_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_child_category_id_foreign` FOREIGN KEY (`child_category_id`) REFERENCES `child_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  ADD CONSTRAINT `product_image_galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  ADD CONSTRAINT `product_review_galleries_product_review_id_foreign` FOREIGN KEY (`product_review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD CONSTRAINT `product_variant_item_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
