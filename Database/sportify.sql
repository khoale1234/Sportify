-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 05:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportify`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorized`
--

CREATE TABLE `authorized` (
  `authorizedid` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `roleid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authorized`
--

INSERT INTO `authorized` (`authorizedid`, `username`, `roleid`) VALUES
(1, 'adminsportify', 'R01'),
(2, 'phamtu2603', 'R03'),
(3, 'thaiptps19625', 'R03'),
(4, 'minhpc', 'R03'),
(5, 'baodmh', 'R03'),
(6, 'duyddk', 'R03'),
(7, 'nhanvien', 'R02'),
(8, 'thanhduy', 'R03'),
(9, 'thanhhau', 'R03'),
(10, 'haophan', 'R03'),
(11, 'lehongchinh272', 'R03'),
(12, 'nhannguyen', 'R03'),
(13, 'truongle', 'R03'),
(14, 'bichpham', 'R03'),
(15, 'anhnguyen', 'R03'),
(16, 'thuhoai', 'R03'),
(17, 'klinh293', 'R03'),
(18, 'user01', 'R03'),
(19, 'user02', 'R03'),
(20, 'user03', 'R03'),
(21, 'user04', 'R03'),
(22, 'user05', 'R03'),
(23, 'user06', 'R03'),
(24, 'user07', 'R03'),
(25, 'user08', 'R03'),
(26, 'user09', 'R03'),
(27, 'user10', 'R03'),
(28, 'user11', 'R03'),
(29, 'user12', 'R03'),
(30, 'user13', 'R03'),
(31, 'user14', 'R03'),
(32, 'user15', 'R03'),
(33, 'user16', 'R03'),
(34, 'user17', 'R03'),
(35, 'user18', 'R03'),
(36, 'user19', 'R03'),
(37, 'user20', 'R03'),
(38, 'user21', 'R03'),
(39, 'user22', 'R03'),
(40, 'user23', 'R03'),
(41, 'user24', 'R03'),
(42, 'user25', 'R03'),
(43, 'user26', 'R03'),
(44, 'user27', 'R03'),
(45, 'user28', 'R03'),
(46, 'user29', 'R03'),
(47, 'user30', 'R03'),
(48, 'user31', 'R03'),
(49, 'user32', 'R03'),
(50, 'user33', 'R03'),
(51, 'user34', 'R03'),
(52, 'user35', 'R03'),
(53, 'user36', 'R03'),
(54, 'user37', 'R03'),
(55, 'user38', 'R03'),
(56, 'user39', 'R03'),
(57, 'user40', 'R03'),
(58, 'user41', 'R03'),
(59, 'user42', 'R03'),
(60, 'user43', 'R03'),
(61, 'user44', 'R03'),
(62, 'user45', 'R03'),
(63, 'user46', 'R03'),
(64, 'user47', 'R03'),
(65, 'user48', 'R03'),
(66, 'user49', 'R03'),
(67, 'user50', 'R03'),
(68, 'user51', 'R03'),
(69, 'user52', 'R03'),
(70, 'user53', 'R03'),
(71, 'user54', 'R03'),
(72, 'user55', 'R03'),
(73, 'user56', 'R03'),
(74, 'user57', 'R03'),
(75, 'user58', 'R03'),
(76, 'user59', 'R03'),
(77, 'user60', 'R03'),
(78, 'user61', 'R03'),
(79, 'user62', 'R03'),
(80, 'user63', 'R03'),
(81, 'user64', 'R03'),
(82, 'nnnnnn', 'R03'),
(83, 'democode', 'R03'),
(84, 'user02', 'R02'),
(85, 'mmmmmm', 'R03');

-- --------------------------------------------------------

--
-- Table structure for table `bookingdetails`
--

CREATE TABLE `bookingdetails` (
  `bookingdetailid` int(11) NOT NULL,
  `bookingid` int(11) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `playdate` date NOT NULL,
  `fieldid` int(11) NOT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookingdetails`
--

INSERT INTO `bookingdetails` (`bookingdetailid`, `bookingid`, `shiftid`, `playdate`, `fieldid`, `price`) VALUES
(1, 1, 2, '2023-08-24', 1, 300000),
(2, 2, 14, '2023-08-24', 1, 300000),
(3, 3, 2, '2023-08-24', 4, 150000),
(4, 4, 10, '2023-08-21', 2, 500000),
(5, 5, 15, '2023-08-17', 5, 300000),
(6, 6, 16, '2023-08-26', 9, 1200000),
(7, 7, 4, '2023-07-12', 7, 600000),
(8, 8, 8, '2023-06-05', 8, 850000),
(9, 9, 9, '2023-07-22', 9, 1200000),
(10, 10, 10, '2023-05-02', 10, 300000),
(11, 11, 11, '2023-03-28', 11, 200000),
(12, 12, 12, '2023-02-24', 12, 400000),
(13, 13, 13, '2023-01-16', 1, 300000),
(14, 14, 14, '2022-12-18', 2, 500000),
(15, 15, 15, '2022-11-23', 3, 950000),
(16, 16, 16, '2022-10-28', 4, 150000),
(17, 17, 1, '2022-09-12', 5, 300000),
(18, 18, 2, '2022-08-23', 6, 300000),
(19, 19, 3, '2022-07-24', 7, 600000),
(20, 20, 15, '2024-05-11', 1, 300000),
(21, 21, 1, '2024-05-12', 1, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `bookingid` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `bookingdate` datetime NOT NULL,
  `bookingprice` double NOT NULL,
  `phone` varchar(10) NOT NULL,
  `note` varchar(5000) DEFAULT NULL,
  `bookingstatus` enum('Hoàn Thành','Đã Cọc','Hủy Đặt') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`bookingid`, `username`, `bookingdate`, `bookingprice`, `phone`, `note`, `bookingstatus`) VALUES
(1, 'baodmh', '2023-08-22 10:21:00', 390000, '0123456789', 'Đặt sân chơi bóng đá', 'Đã Cọc'),
(2, 'phamtu2603', '2023-08-22 14:30:00', 350000, '0123456789', 'Chuẩn bị sân sạch sẽ giúp tôi', 'Đã Cọc'),
(3, 'phamtu2603', '2023-08-21 17:30:22', 165000, '0123456789', 'Không có ghi chú gì...', 'Đã Cọc'),
(4, 'duyddk', '2023-08-20 00:10:54', 500000, '0123456789', 'Cung cấp nước uống giúp tôi', 'Hoàn Thành'),
(5, 'minhpc', '2023-08-16 10:30:20', 320000, '0123456789', 'Đội tôi mặc áo màu xanh', 'Hủy Đặt'),
(6, 'thaiptps19625', '2023-08-22 00:10:54', 1310000, '0123456789', 'Hướng dẫn tôi đi vào sân nhé !', 'Đã Cọc'),
(7, 'phamtu2603', '2023-07-10 17:30:22', 580000, '0123456789', 'Không có ghi chú gì...', 'Hủy Đặt'),
(8, 'phamtu2603', '2023-06-01 15:30:22', 850000, '0123456789', 'Không có ghi chú gì...', 'Hoàn Thành'),
(9, 'phamtu2603', '2023-07-21 14:30:22', 1100000, '0123456789', 'Không có ghi chú gì...', 'Hoàn Thành'),
(10, 'phamtu2603', '2023-05-01 09:33:22', 300000, '0123456789', 'Không có ghi chú gì...', 'Hoàn Thành'),
(11, 'phamtu2603', '2023-03-26 09:00:22', 245000, '0123456789', 'Không có ghi chú gì...', 'Hoàn Thành'),
(12, 'baodmh', '2023-02-22 10:21:00', 500000, '0123456789', 'Đặt sân chơi bóng đá', 'Hoàn Thành'),
(13, 'baodmh', '2023-01-15 10:21:00', 390000, '0123456789', 'Đặt sân chơi bóng đá', 'Hoàn Thành'),
(14, 'baodmh', '2022-12-15 10:21:00', 530000, '0123456789', 'Đặt sân chơi bóng đá', 'Hoàn Thành'),
(15, 'baodmh', '2022-11-20 10:21:00', 1200000, '0123456789', 'Đặt sân chơi bóng đá', 'Đã Cọc'),
(16, 'baodmh', '2022-10-27 10:21:00', 190000, '0123456789', 'Đặt sân chơi bóng đá', 'Hoàn Thành'),
(17, 'minhpc', '2022-09-11 10:30:20', 370000, '0123456789', 'Đội tôi mặc áo màu xanh', 'Hủy Đặt'),
(18, 'minhpc', '2022-08-22 10:30:20', 390000, '0123456789', 'Đội tôi mặc áo màu xanh', 'Hoàn Thành'),
(19, 'minhpc', '2022-07-22 10:30:20', 570000, '0123456789', 'Đội tôi mặc áo màu xanh', 'Hoàn Thành'),
(20, 'nnnnnn', '2024-05-11 21:46:21', 390000, '0987654321', 'ffgxdfgfgd', 'Hoàn Thành'),
(21, 'democode', '2024-05-11 23:39:00', 273000, '0364877525', 'oke', 'Hoàn Thành');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `categoryname`) VALUES
(1, 'Quần'),
(2, 'Áo'),
(3, 'Giày'),
(4, 'Găng tay'),
(5, 'Dụng cụ thể thao'),
(6, 'Túi đựng'),
(7, 'Phụ kiện'),
(8, 'Khác'),
(9, 'san pham loai');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `datecontact` date NOT NULL,
  `category` varchar(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `meesagecontact` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactid`, `username`, `datecontact`, `category`, `title`, `meesagecontact`) VALUES
(1, 'duyddk', '2023-07-30', 'Giao diện', 'tôi muốn phản hồi', 'Giao diện chưa được hoàn chỉnh'),
(2, 'baodmh', '2023-08-01', 'Hiệu suất', 'tôi muốn phản hồi', 'Hiệu suất của ứng dụng còn thấp'),
(3, 'minhpc', '2023-08-15', 'Giao diện', 'tôi muốn phản hồi', 'Giao diện chưa được hoàn chỉnh'),
(4, 'anhnguyen', '2023-08-16', 'Chức năng', 'tôi muốn phản hồi', 'Chức năng chưa được hoàn chỉnh'),
(5, 'baodmh', '2023-08-17', 'Hiệu suất', 'tôi muốn phản hồi', 'Hiệu suất chưa được khắc phục'),
(6, 'duyddk', '2023-08-18', 'Liên hệ quảng cáo', 'tôi muốn Liên hệ quảng cáo ở trang web của các bạn', 'Tôi muốn đăng bài quảng cáo trên trang web cảu các bạn'),
(7, 'duyddk', '2023-08-19', 'Khác', 'tôi muốn gửi lời chúc', 'Chúc các bạn bảo vệ thành công'),
(8, 'duyddk', '2023-08-20', 'Khác', 'tôi muốn gửi lời chúc', 'Chúc các bạn ngày mới vui vẻ, tràn đầy năng lượng'),
(9, 'nnnnnn', '2024-05-11', 'Chức năng', 'dfdgfd', 'fdgdfgd');

-- --------------------------------------------------------

--
-- Table structure for table `eventweb`
--

CREATE TABLE `eventweb` (
  `eventid` int(11) NOT NULL,
  `nameevent` varchar(50) NOT NULL,
  `datestart` date NOT NULL,
  `dateend` date NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `descriptions` varchar(5000) DEFAULT NULL,
  `eventtype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventweb`
--

INSERT INTO `eventweb` (`eventid`, `nameevent`, `datestart`, `dateend`, `image`, `descriptions`, `eventtype`) VALUES
(2, 'Sự Kiện Cầu Lông Tháng 8', '2023-08-10', '2023-08-26', 'eventcaulong.png', 'Sự kiện cầu lông tháng 8 đã sẵn sàng để chào đón các tay vợt xuất sắc và đam mê cầu lông! Hãy sẵn sàng để tận hưởng những trận đấu đỉnh cao và những cú đánh điệu nghệ từ các tay vợt hàng đầu.\r\n\r\n Sự kiện cầu lông tháng 8 hứa hẹn là một sân chơi thú vị cho tất cả những ai yêu thích và đam mê môn thể thao này. Các tay vợt sẽ thi đấu hết mình và cống hiến từng cú đánh để giành lấy danh hiệu vô địch.\r\n\r\n Lịch trình đầy kịch tính và phong cách đã được chuẩn bị kỹ lưỡng, mang đến cho khán giả những khoảnh khắc đáng nhớ và hứng khởi. Bạn sẽ được chứng kiến những cú smash nhanh như chớp, những cú trả bóng tinh tế và những pha phòng ngự xuất sắc từ các tay vợt tài ba.\r\n\r\n Đặc biệt, sự kiện cầu lông tháng 6 sẽ có sự tham gia của những tên tuổi nổi tiếng trong làng cầu lông. Hãy sẵn sàng để thấy những pha bứt tốc nhanh như gió và những cú đánh cực kỳ chính xác từ những ngôi sao này.\r\n\r\n Hãy đến và tham gia cùng chúng tôi tại sự kiện cầu lông tháng 6, nơi bạn sẽ được tận hưởng không chỉ niềm vui của môn thể thao yêu thích mà còn là không khí hào hứng và phấn khích. Hãy cùng nhau cổ vũ cho các tay vợt và tạo nên những kỷ niệm đáng nhớ trong sự kiện này! \r\nTổ chức mỗi buổi sáng !', 'Cầu Lông'),
(3, 'Sự Kiện Bóng Đá Mùa Hè 2023', '2023-08-03', '2023-08-26', 'eventbongdat8.png', 'Mùa hè đã đến, và cùng với nó là sự kiện bóng đá mùa hè hứa hẹn mang đến những trận cầu kịch tính và hấp dẫn không thể bỏ qua! Đón nhận những pha làm bàn mãn nhãn và những cú sút điệu nghệ từ các cầu thủ xuất sắc.\r\n\r\n Sự kiện bóng đá mùa hè là một lễ hội thể thao tuyệt vời, tập trung những tài năng hàng đầu và những đội bóng đỉnh cao. Các trận đấu sẽ chứng kiến những cuộc đối đầu căng thẳng và đầy kịch tính, khiến trái tim của khán giả đập mạnh.\r\n\r\n Lịch trình đầy phấn khích đã được xác định, mang đến cho khán giả những khoảnh khắc không thể nào quên. Từ những pha phản lưới nhà không tưởng đến những cú sút xa nghẹt thở, mỗi trận đấu đều đem lại những điều đặc biệt riêng biệt.\r\n\r\n Hãy cùng nhau tạo nên không khí sôi động và hào hứng tại sự kiện bóng đá mùa hè. Không chỉ là lễ hội thể thao, sự kiện còn mang đến những hoạt động giải trí và phần thưởng hấp dẫn cho tất cả mọi người.\r\n\r\n Hãy đến và tham gia cùng chúng tôi trong sự kiện bóng đá mùa hè, nơi bạn sẽ được hòa mình vào không gian bóng đá sôi động và tận hưởng những giây phút vui vẻ và hào hứng. Hãy cùng chia sẻ niềm đam mê với bạn bè và gia đình và tạo nên những kỷ niệm đáng nhớ tại sự kiện này!\r\nTổ chức thứ 7 và chủ nhật !', 'Bóng Đá'),
(4, 'Sự Kiện Bóng Rổ Tháng 8', '2023-08-02', '2023-08-29', 'eventbongro.png', 'Hãy sẵn sàng bước vào mùa hè nóng bỏng với sự kiện bóng rổ tuyệt vời của chúng ta vào tháng 7 này! Những trận đấu hấp dẫn và những cú ném ba điểm điệu nghệ sẽ khiến bạn không thể rời mắt khỏi sân!\r\n\r\n Sự kiện bóng rổ tháng 8 sẽ là nơi quy tụ những tài năng hàng đầu trong giới thể thao này, hứa hẹn mang đến những cuộc đối đầu căng thẳng và đầy kịch tính. Từ những pha bứt tốc chói lòa đến những cú dunk đẳng cấp, tất cả sẽ được tái hiện trên sân để làm thỏa mãn trái tim của mọi người.\r\n\r\n Đừng quên đánh dấu ngày trong lịch để tham gia cùng chúng tôi tại địa điểm sự kiện đầy hứa hẹn. Sự kiện không chỉ dành riêng cho các fan hâm mộ bóng rổ đích thực mà còn là dịp tuyệt vời để gia đình và bạn bè cùng nhau tận hưởng niềm vui thể thao.\r\n\r\n Hãy cùng nhau tạo nên những kỷ niệm đáng nhớ trong mùa hè này. Không chỉ là sự kiện thể thao, chúng tôi còn mang đến những hoạt động vui nhộn và phần thưởng hấp dẫn cho tất cả mọi người.\r\n\r\n Tham gia vào sự kiện bóng rổ tháng 8, bạn sẽ được thấy những màn trình diễn ngoạn mục và sự cống hiến không ngừng nghỉ của các tuyển thủ xuất sắc nhất. Chắc chắn rằng bạn sẽ không thể hài lòng hơn với những gì chúng tôi mang đến.\r\n\r\nHãy cùng đồng hành và thể hiện tình yêu bóng rổ của bạn tại sự kiện đặc biệt này. Đến và tận hưởng một mùa hè tràn đầy năng lượng và niềm vui cùng sự kiện bóng rổ tháng 7!\r\nTổ chức thứ 7 và chủ nhật !', 'Bóng Rổ'),
(5, 'Sự Kiện Tennis Tháng 8', '2023-08-01', '2023-08-25', 'eventtennis.png', 'Mùa hè đang đến cùng với sự kiện tennis tháng 8, nơi mà những trái banh nhanh nhạy và những trận đấu căng thẳng sẽ làm say đắm lòng người! Hãy sẵn sàng đón nhận những pha bóng tinh tế và những cú trái tuyệt vời từ những tay vợt hàng đầu.\r\n\r\n Sự kiện tennis tháng 8 hứa hẹn mang đến những trận đấu đỉnh cao và những cuộc so tài không khoan nhượng. Các tay vợt xuất sắc sẽ đối đầu với nhau để giành chiến thắng, khiến cho các khán giả không ngừng hò reo và háo hức.\r\n\r\n Đừng bỏ lỡ cơ hội thưởng thức những trận đấu đỉnh cao trong sự kiện tennis tháng 8. Lịch trình sự kiện đã được chuẩn bị kỹ lưỡng để đảm bảo rằng mỗi ngày đều mang đến những pha bóng hấp dẫn và kịch tính.\r\n\r\n Đặc biệt, sự kiện sẽ có sự tham gia của những tay vợt nổi tiếng và danh tiếng trong làng tennis. Hãy chuẩn bị để thấy những đòn backhand chính xác, những cú serve mạnh mẽ và những pha volley đẳng cấp.\r\n\r\n Hãy đến và tham gia cùng chúng tôi tại sự kiện tennis tháng 8, nơi bạn sẽ được tận hưởng không chỉ niềm vui của môn thể thao yêu thích mà còn là không khí đầy năng lượng và sự cổ vũ từ đồng đội và khán giả. Bạn không thể bỏ lỡ cơ hội này để trải nghiệm những giây phút đáng nhớ của tennis đỉnh cao!\r\nTổ chức thứ 7 và chủ nhật !', 'Tennis'),
(6, 'Bảo Trì Sân Tennis', '2023-08-25', '2023-08-30', 'tenisdat.png', 'Sportify Trân trọng thông báo!!!\r\nTrong thời gian sắp tới, Sportify sẽ tiến hành sự kiện bảo trì lại sân Tennis với mục tiêu nâng cao chất lượng và đảm bảo an toàn cho mọi người. Những trận đấu thú vị sẽ tạm thời gián đoạn để đưa ra cơ hội cho đội ngũ bảo trì thực hiện các công việc cải tạo và cải thiện sân.\r\n\r\nCác kỹ sư và công nhân sẽ làm việc cần mẫn để cắt tỉa, làm mới bề mặt cỏ và bảo dưỡng hệ thống cống thoát nước. Đồng thời, các đường biên và các thiết bị sân cũng sẽ được kiểm tra và bảo trì đầy đủ.\r\n\r\nSportify hy vọng rằng sự kiện bảo trì này sẽ mang đến sân bóng tốt nhất cho cộng đồng yêu bóng đá. Mặc dù một thời gian ngắn không thể trải nghiệm trận đấu, nhưng cải tiến sân bóng sẽ đem lại lợi ích lâu dài và trọn vẹn hơn cho mọi người.\r\n\r\nRất mong cộng đồng sẽ thông cảm và ủng hộ quyết định này, vì sự an toàn và trải nghiệm chất lượng là ưu tiên hàng đầu của Sportify. Sự kiện bảo trì sân bóng sẽ là bước tiến quan trọng để tiếp tục xây dựng môi trường thể thao thân thiện và chuyên nghiệp. Các trận đấu đầy hứa hẹn sẽ trở lại sớm hơn, hứa hẹn đem đến những trải nghiệm bóng đá tuyệt vời cho mọi người.\r\nSự kiện bảo trì sẽ bắt đầu từ ngày 25-08-2023 và kết thúc vào ngày 30-08-2023.', 'Bảo Trì'),
(7, 'Bảo Trì Sân Bóng', '2023-07-25', '2023-07-30', 'eventbaotri.png', ' Sportify Trân trọng thông báo!!!\r\nTrong thời gian sắp tới, Sportify sẽ tiến hành sự kiện bảo trì lại sân bóng đá với mục tiêu nâng cao chất lượng và đảm bảo an toàn cho mọi người. Những trận đấu thú vị sẽ tạm thời gián đoạn để đưa ra cơ hội cho đội ngũ bảo trì thực hiện các công việc cải tạo và cải thiện sân.\r\n\r\nCác kỹ sư và công nhân sẽ làm việc cần mẫn để cắt tỉa, làm mới bề mặt cỏ và bảo dưỡng hệ thống cống thoát nước. Đồng thời, các đường biên và các thiết bị sân cũng sẽ được kiểm tra và bảo trì đầy đủ.\r\n\r\nSportify hy vọng rằng sự kiện bảo trì này sẽ mang đến sân bóng tốt nhất cho cộng đồng yêu bóng đá. Mặc dù một thời gian ngắn không thể trải nghiệm trận đấu, nhưng cải tiến sân bóng sẽ đem lại lợi ích lâu dài và trọn vẹn hơn cho mọi người.\r\n\r\nRất mong cộng đồng sẽ thông cảm và ủng hộ quyết định này, vì sự an toàn và trải nghiệm chất lượng là ưu tiên hàng đầu của Sportify. Sự kiện bảo trì sân bóng sẽ là bước tiến quan trọng để tiếp tục xây dựng môi trường thể thao thân thiện và chuyên nghiệp. Các trận đấu đầy hứa hẹn sẽ trở lại sớm hơn, hứa hẹn đem đến những trải nghiệm bóng đá tuyệt vời cho mọi người.\r\nSự kiện bảo trì sẽ bắt đầu từ ngày 25-07-2023 và kết thúc vào ngày 30-07-2023.\r\n ', 'Bảo trì'),
(8, 'Sự Kiện Siêu Sale 8 Tháng 8', '2023-08-08', '2023-08-15', 'discount8-8.png', ' CHÀO MỪNG NGÀY 8-8 CÙNG SPORTIFY - SIÊU SỰ KIỆN GIẢM GIÁ ĐẦY HỨNG KHỞI! \r\n\r\n Hãy sẵn sàng cho một ngày mua sắm chưa từng có với Sportify vào ngày 8-8 này! Chúng tôi mang đến cho bạn sự kiện GIẢM GIÁ LỚN NHẤT trong năm, không thể bỏ qua!\r\n\r\n Cơ hội sở hữu những sản phẩm thể thao chất lượng hàng đầu từ các thương hiệu danh tiếng như Nike, Adidas, Puma, và nhiều thương hiệu khác với GIÁ CỰC HẤP DẪN!\r\n\r\n Đến với Sportify vào ngày 8-8, bạn sẽ được trải nghiệm không chỉ với những món đồ thể thao mới nhất và phong cách nhất, mà còn nhận được những ưu đãi và quà tặng hấp dẫn không thể tin được!\r\n\r\n Hơn thế nữa, chúng tôi đã cập nhật danh mục sản phẩm phong phú, từ giày thể thao thoải mái, quần áo thời trang, đến phụ kiện thể thao phong cách. Bất kể bạn là tín đồ thể thao hay đơn giản là người yêu thích sự năng động, chắc chắn bạn sẽ tìm thấy điều gì đó phù hợp với mình!\r\n\r\n Đừng quên, chúng tôi còn có những phần quà hấp dẫn và ưu đãi độc quyền chờ đón bạn khi mua sắm trong ngày 8-8. Hãy đến sớm để không bỏ lỡ cơ hội quý giá này!\r\n\r\n Địa điểm: Sportify Store - 123 Đường Thể Thao, Quận Hoàn Hảo, Thành Phố Sôi Động.\r\n\r\n Thời gian: Chỉ diễn ra trong một ngày duy nhất - Ngày 8 tháng 8, từ 9:00 AM đến 9:00 PM.\r\n\r\n Liên hệ ngay tổng đài 1800-SPORTIFY hoặc truy cập website www.sportify.com để biết thêm chi tiết và cập nhật ưu đãi hấp dẫn.\r\n\r\n Hãy sẵn sàng cùng Sportify tận hưởng ngày 8-8 đáng nhớ, và tận dụng cơ hội mua sắm với giá hời! Đừng bỏ lỡ cơ hội duy nhất này - Hãy đến ngay Sportify và làm sạch wishlist của bạn!\r\n\r\n Mã giảm giá: \"SIEUSALE88\"\r\n#Sportify #88Sale #GiảmGiáLớn #ThểThaoChấtLượng #Ngày88', 'Khuyến Mãi'),
(9, 'Sự Kiện Siêu Sale Tháng 7', '2023-07-01', '2023-07-30', 'eventsale4.png', 'Trong tháng 7 này, Sportify đã mang đến một sự kiện giảm giá đầy hấp dẫn cho những người yêu thể thao và phong cách. Sự kiện giảm giá quần áo thể thao tháng 7 của Sportify đã tạo cơ hội tuyệt vời để bạn có thể mua sắm những bộ trang phục thể thao chất lượng với mức giá ưu đãi độc quyền.\r\n\r\nCùng với việc thúc đẩy lối sống lành mạnh và hoạt động thể thao, Sportify đã đồng hành cùng người dùng trong việc tạo nên phong cách thời trang đẳng cấp. Những mẫu quần áo thể thao từ Sportify không chỉ thể hiện sự chuyên nghiệp mà còn thể hiện phong cách riêng biệt của bạn. Từ những bộ đồ đơn giản và thoải mái cho buổi tập luyện đến những thiết kế sáng tạo và năng động cho các hoạt động hàng ngày, Sportify đã tạo ra một bộ sưu tập đa dạng để bạn lựa chọn.\r\n\r\nSự kiện giảm giá quần áo thể thao tháng 7 không chỉ giúp bạn tiết kiệm chi phí mà còn mang đến cơ hội để thể hiện phong cách cá nhân qua từng bộ trang phục. Từ những món đồ cơ bản đến những chi tiết tinh tế, Sportify đã đảm bảo rằng bạn sẽ tìm thấy những sản phẩm thể thao phù hợp và thú vị.\r\n\r\nHãy tận dụng cơ hội này để làm mới tủ đồ thể thao của mình với những sản phẩm từ Sportify, và tiếp tục lan tỏa cảm hứng về cuộc sống lành mạnh và phong cách thể thao đến mọi người xung quanh.\r\n\r\n Mã giảm giá: \"EVENT07\"\r\n#Sportify #GiảmGiáLớn #ThểThaoChấtLượng ', 'Khuyến Mãi'),
(10, 'Sự Kiện Sale Tháng 8', '2023-08-01', '2023-08-31', 'eventsale5.png', 'Trong tháng 8 này, cộng đồng yêu thể thao và phong cách đang được háo hức trước sự kiện giảm giá đặc biệt từ Sportify - một thương hiệu thời trang thể thao hàng đầu. Sự kiện giảm giá quần áo thể thao tháng 8 của Sportify đang tạo nên sự kỳ vọng lớn về việc có thể cập nhật tủ đồ với những món đồ chất lượng và phong cách, mà không cần phải tốn quá nhiều chi phí.\r\n\r\nTừ áo tập gym đến quần shorts chạy bộ, từ giày thể thao đến phụ kiện thể thao, Sportify đã chuẩn bị một loạt sản phẩm thể thao đa dạng và đẳng cấp để đáp ứng nhu cầu của những người yêu thích hoạt động thể thao và mong muốn thể hiện phong cách riêng.\r\n\r\nSự kiện giảm giá tháng 8 này không chỉ đơn thuần là cơ hội để mua sắm với giá ưu đãi, mà còn là dịp để cập nhật xu hướng thời trang thể thao mới nhất. Không chỉ có những mẫu thiết kế tối giản và thanh lịch, Sportify cũng mang đến những sản phẩm sáng tạo và năng động, giúp bạn tự tin diện những bộ trang phục thể thao không chỉ trong luyện tập mà còn trong cuộc sống hàng ngày.\r\n\r\nDù bạn là một vận động viên chuyên nghiệp, người đam mê thể dục thể thao, hay đơn giản chỉ là người thích thoải mái trong trang phục thể thao, sự kiện giảm giá quần áo thể thao tháng 8 của Sportify chắc chắn là cơ hội không thể bỏ lỡ để nâng cấp tủ đồ của bạn và thể hiện phong cách cá nhân một cách hoàn hảo.\r\n\r\n Mã giảm giá: \"EVENT08\"\r\n#Sportify #GiảmGiáLớn #ThểThaoChấtLượng ', 'Khuyến Mãi'),
(11, 'Sự Kiện Siêu Sale Tháng 6', '2023-06-12', '2023-06-30', 'eventsale6.png', 'Trong tháng 6 này, Sportify đã mang đến cho cộng đồng yêu thể thao và thời trang một sự kiện đặc biệt - sự kiện giảm giá quần áo thể thao. Sự kiện này đã tạo nên một cơ hội tuyệt vời để mọi người có thể mua sắm những bộ trang phục thể thao chất lượng với mức giá hấp dẫn.\r\n\r\nVới tầm quan trọng của việc duy trì lối sống lành mạnh và hoạt động thể thao đúng cách, Sportify đã không chỉ mang đến những sản phẩm thời trang thể thao chất lượng cao mà còn tạo nên một phong cách riêng biệt. Từ áo tập gym thoải mái đến quần shorts thể thao tiện dụng, từ áo khoác chống nắng cho buổi chạy bộ đến giày thể thao ưu nhìn, Sportify đã sáng tạo ra một bộ sưu tập đa dạng để đáp ứng nhu cầu của mọi người.\r\n\r\nSự kiện giảm giá tháng 6 không chỉ giúp bạn tiết kiệm chi phí mà còn mang đến cơ hội để thể hiện phong cách cá nhân qua những bộ trang phục thể thao. Mỗi sản phẩm từ Sportify được thiết kế với tinh thần đột phá và sự chú tâm đến cảm giác thoải mái khi sử dụng.\r\n\r\nHãy tận dụng cơ hội này để cập nhật tủ đồ thể thao của bạn với những sản phẩm thời trang từ Sportify, và hãy tiếp tục lan tỏa niềm đam mê về hoạt động thể thao và lối sống lành mạnh đến mọi người xung quanh.\r\n\r\n Mã giảm giá: \"IT17202DEV\"\r\n#Sportify #GiảmGiáLớn #ThểThaoChấtLượng ', 'Khuyến Mãi'),
(12, 'Sự Kiện Bóng Đá Giao Hữu', '2023-08-03', '2023-08-26', 'eventbongdagh.png', 'Mùa hè đã đến, và cùng với nó là sự kiện bóng đá giao hữu hứa hẹn mang đến những trận cầu kịch tính và hấp dẫn không thể bỏ qua! Đón nhận những pha làm bàn mãn nhãn và những cú sút điệu nghệ từ các cầu thủ xuất sắc.\r\n\r\n Sự kiện bóng gio hữu là một lễ hội thể thao tuyệt vời, tập trung những tài năng hàng đầu và những đội bóng đỉnh cao. Các trận đấu sẽ chứng kiến những cuộc đối đầu căng thẳng và đầy kịch tính, khiến trái tim của khán giả đập mạnh.\r\n\r\n Lịch trình đầy phấn khích đã được xác định, mang đến cho khán giả những khoảnh khắc không thể nào quên. Từ những pha phản lưới nhà không tưởng đến những cú sút xa nghẹt thở, mỗi trận đấu đều đem lại những điều đặc biệt riêng biệt.\r\n\r\n Hãy cùng nhau tạo nên không khí sôi động và hào hứng tại sự kiện bóng đá mùa hè. Không chỉ là lễ hội thể thao, sự kiện còn mang đến những hoạt động giải trí và phần thưởng hấp dẫn cho tất cả mọi người.\r\n\r\n Hãy đến và tham gia cùng chúng tôi trong sự kiện bóng đá mùa hè, nơi bạn sẽ được hòa mình vào không gian bóng đá sôi động và tận hưởng những giây phút vui vẻ và hào hứng. Hãy cùng chia sẻ niềm đam mê với bạn bè và gia đình và tạo nên những kỷ niệm đáng nhớ tại sự kiện này!\r\nTổ chức thứ 7 và chủ nhật !', 'Bóng Đá'),
(13, 'Giải bóng Đá Tứ Hùng SPORTIFY', '2023-08-08', '2023-08-09', 'eventbongda1.png', 'Hãy sẵn sàng cho một sự kiện thể thao đỉnh cao với giải bóng đá \"Tứ Hùng\" từ Sportify! Được biết đến như một trong những sự kiện thể thao hàng đầu của năm, giải bóng đá \"Tứ Hùng\" hứa hẹn mang đến những trận đấu kịch tính và không gì sánh bằng.\r\n\r\nVới sự tham gia của các đội bóng tài năng đến từ khắp nơi, giải đấu này hứa hẹn sẽ mang đến một màn trình diễn đỉnh cao của tinh thần thi đấu, sự cống hiến và đam mê với môn bóng đá. Các trận đấu sẽ diễn ra trên sân cỏ hoàn hảo, với những tuyệt phẩm sút bóng, pha phối hợp điệu nghệ và những phút giây hồi hộp không thể dự đoán.\r\n\r\nGiải bóng đá \"Tứ Hùng\" không chỉ là một nơi để thể hiện kỹ năng bóng đá xuất sắc, mà còn là cơ hội để xây dựng tình bạn, tạo liên kết và cùng nhau tạo nên những kỷ niệm đáng nhớ. Không chỉ có sự cạnh tranh đầy kịch tính trên sân, mà còn có không khí vui vẻ và hào hứng ngoài khán đài, khi các cổ động viên ủng hộ đội mình và hòa mình vào bầu không khí sôi động.\r\n\r\nVới giải bóng đá \"Tứ Hùng\" từ Sportify, chúng ta sẽ thấy bóng đá không chỉ là môn thể thao, mà còn là ngôn ngữ giao tiếp, là tinh thần đồng đội và là niềm đam mê vô tận. Hãy cùng chào đón sự kiện này và cùng nhau hòa mình vào bầu không khí sôi động của bóng đá \"Tứ Hùng\"!\r\n', 'Bóng Đá'),
(14, 'Giải Đấu U20 Tứ Hùng Sportify ', '2023-08-11', '2023-08-12', 'eventbongda2.png', '\r\nGiải đấu bóng đá U20 \"Tứ Hùng\" do Sportify tổ chức là một sự kiện thể thao đầy hứa hẹn, tập trung vào việc tôn vinh tài năng trẻ và thúc đẩy phát triển bóng đá cơ sở. Được xem như bước ngoặt quan trọng trong sự nghiệp bóng đá của những cầu thủ trẻ, giải đấu này không chỉ mang đến cơ hội để thể hiện kỹ năng mà còn xây dựng sự tự tin, tinh thần đồng đội và lòng đam mê mãnh liệt.\r\n\r\nVới sự tham gia của các đội bóng U20 đang nổi lên và tạo dấu ấn trong làng bóng đá, giải U20 \"Tứ Hùng\" là nơi để các tài năng trẻ có cơ hội thể hiện khả năng, thiết lập các kỷ lục và tạo nên những kỉ niệm đáng nhớ trong sự nghiệp thể thao của họ. Những trận đấu kịch tính và hấp dẫn sẽ diễn ra trên sân cỏ hoàn hảo, tạo nên một bầu không khí sôi động và hào hứng.\r\n\r\nNgoài việc thi đấu, giải đấu U20 \"Tứ Hùng\" cũng là dịp để các cầu thủ trẻ học hỏi, trải nghiệm và phát triển kỹ năng qua sự hướng dẫn của các huấn luyện viên chuyên nghiệp. Đây cũng là cơ hội để xây dựng mối quan hệ và kết nối trong cộng đồng bóng đá trẻ, tạo ra một môi trường thúc đẩy sự phát triển toàn diện của các cầu thủ.\r\n\r\nVới sự tổ chức tinh tế và tâm huyết từ Sportify, giải đấu bóng đá U20 \"Tứ Hùng\" hứa hẹn sẽ là một bữa tiệc bóng đá đầy màu sắc và ý nghĩa, mang đến cơ hội cho các tài năng trẻ thể hiện bản thân và tạo dấu ấn trong thế giới bóng đá.\r\n\r\n', 'Bóng Đá'),
(15, 'Giải Đấu Tennis Tháng 7 ', '2023-07-11', '2023-07-18', 'eventtennis1.png', '\r\nSportify tự hào giới thiệu Giải đấu Tennis Tháng 7, một sự kiện thể thao thú vị dành riêng cho các tín đồ yêu thích môn tennis. Sự kiện này không chỉ là cơ hội để thể hiện khả năng và kỹ thuật trong quần vợt mà còn là dịp để tận hưởng không gian cạnh tranh và gặp gỡ những người đam mê tương tự.\r\n\r\nTrải dài qua mùa hè nóng bức, Giải đấu Tennis Tháng 7 của Sportify hứa hẹn sẽ tạo ra những trận đấu đầy căng thẳng và kịch tính trên sân đất nện. Những người chơi tài năng và yêu thích tennis sẽ cùng nhau đối mặt trong các trận đấu sôi động, tranh tài từng điểm, từng set để giành lấy vinh quang.\r\n\r\nKhông chỉ dừng lại ở việc thi đấu, Giải đấu Tennis Tháng 7 còn mang đến cho các vận động viên cơ hội học hỏi và phát triển kỹ năng thông qua sự hướng dẫn của các chuyên gia tennis hàng đầu. Cùng với đó, các trận đấu vô cùng thú vị sẽ thu hút sự quan tâm của các người hâm mộ tennis và tạo nên bầu không khí sôi động tại sân.\r\n\r\nGiải đấu Tennis Tháng 7 của Sportify không chỉ là một cuộc thi thể thao, mà còn là cơ hội để kết nối cộng đồng yêu tennis, chia sẻ niềm đam mê và trải nghiệm những khoảnh khắc đáng nhớ trên sân tennis. Hãy sẵn sàng cho những trận đấu mãn nhãn và những khoảnh khắc thăng hoa tại Giải đấu Tennis Tháng 7 của Sportify!\r\n\r\nTổ chức thứ 7 và chủ nhật !', 'Tennis'),
(16, 'Giải đấu Cầu Lông 8 Tháng 8 ', '2023-08-08', '2023-08-10', 'eventcaulong1.png', '\r\nVào ngày 8 tháng 8 tới đây, Sportify sẽ tổ chức một sự kiện cầu lông tuyệt vời, mang đến cho những người yêu thích môn thể thao này một cơ hội tuyệt diệu để thể hiện kỹ năng và đam mê của mình. Sự kiện cầu lông ngày 8 tháng 8 sẽ là một ngày đầy năng lượng, vui vẻ và cạnh tranh.\r\n\r\nVới sự tham gia của các vận động viên cầu lông xuất sắc và đam mê, sự kiện này hứa hẹn sẽ mang đến những trận đấu sôi động và kịch tính trên sân cầu lông. Những người chơi tài năng sẽ cùng nhau thi đấu, tranh tài từng điểm để giành lấy vinh quang và danh hiệu.\r\n\r\nKhông chỉ là một cuộc thi thể thao, sự kiện cầu lông ngày 8 tháng 8 còn là cơ hội để xây dựng mối quan hệ, gặp gỡ những người cùng đam mê và hòa mình vào bầu không khí sôi động. Các trận đấu sẽ là nơi để các vận động viên thể hiện khả năng, cùng nhau tạo ra những khoảnh khắc thú vị và đánh bại những thách thức trên sân.\r\n\r\nVới sự chăm chỉ tổ chức và sự hỗ trợ chuyên nghiệp từ Sportify, sự kiện cầu lông ngày 8 tháng 8 hứa hẹn sẽ là một ngày tràn đầy niềm vui và cảm xúc. Hãy chuẩn bị rackets và giày thể thao của bạn, và hãy sẵn sàng tham gia vào một ngày thể thao tuyệt vời cùng với Sportify vào ngày 8 tháng 8 tới đây!\r\n\r\n !', 'Cầu Lông'),
(17, 'Giải Đấu Bóng Rổ Tứ Hùng Sportify ', '2023-08-25', '2023-08-30', 'eventbongro1.png', '\r\nSportify tự hào giới thiệu Giải đấu Bóng rổ \"Tứ Hùng\", một sự kiện thể thao đầy phấn khích và kịch tính dành cho những người yêu thích môn bóng rổ. Giải đấu này hứa hẹn mang đến những trận đấu đỉnh cao và sự cạnh tranh không ngừng để giành lấy vị trí vinh quang.\r\n\r\nVới sự tham gia của các đội bóng rổ xuất sắc và các cầu thủ tài năng, Giải đấu Bóng rổ \"Tứ Hùng\" sẽ tạo ra những trận đấu hấp dẫn và căng thẳng trên sân. Những pha xử lý tinh tế, những pha ném rổ đầy kỹ thuật sẽ làm cho mỗi trận đấu trở nên thú vị và không thể dự đoán.\r\n\r\nKhông chỉ dừng lại ở việc thi đấu, Giải đấu Bóng rổ \"Tứ Hùng\" còn mang đến cho các vận động viên cơ hội rèn luyện và phát triển kỹ thuật qua sự hướng dẫn của các huấn luyện viên có kinh nghiệm. Đồng thời, giải đấu cũng là dịp để tạo mối quan hệ và gặp gỡ những người đam mê bóng rổ.\r\n\r\nVới tinh thần thi đấu và cảm xúc đang nổ lửa, Giải đấu Bóng rổ \"Tứ Hùng\" sẽ tạo ra những khoảnh khắc đáng nhớ, nơi mà đam mê thể thao và sự cạnh tranh không ngừng sẽ làm nên điều kỳ diệu. Hãy chuẩn bị sẵn sàng cho một thế giới bóng rổ tuyệt vời cùng với Sportify và Giải đấu Bóng rổ \"Tứ Hùng\"!\r\n!', 'Bóng Rổ'),
(18, 'su kien new', '2024-05-11', '2024-05-24', '3604cad5.png', 'su kien new', 'Bảo Trì');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE `field` (
  `fieldid` int(11) NOT NULL,
  `sporttypeid` varchar(6) NOT NULL,
  `namefield` varchar(50) NOT NULL,
  `descriptionfield` varchar(5000) DEFAULT NULL,
  `price` double NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`fieldid`, `sporttypeid`, `namefield`, `descriptionfield`, `price`, `image`, `address`, `status`) VALUES
(1, 'B01', 'Sân bóng đá 5 người', 'SPORTIFY có sân bóng đá 5 người đẳng cấp với các tiện nghi và trang thiết bị hiện đại, tạo điều kiện tốt nhất cho người chơi tận hưởng trận đấu bóng đá thú vị.\r\n\r\nĐặc điểm của SPORTIFY:\r\n\r\n1. Kích thước sân: Sân được thiết kế theo tiêu chuẩn của bóng đá 5 người, với kích thước tương đối nhỏ nhưng đủ rộng để các cầu thủ có không gian di chuyển và phát triển kỹ thuật của mình.\r\n\r\n2. Cỏ nhân tạo: SPORTIFY sử dụng cỏ nhân tạo chất lượng cao, giúp trận đấu trở nên mượt mà và đảm bảo an toàn cho người chơi. Sân cỏ nhân tạo cũng giảm thiểu tác động môi trường và đảm bảo sự ổn định của sân trong mọi thời tiết.\r\n\r\n3. Hệ thống ánh sáng: Sân bóng đá SPORTIFY được trang bị hệ thống chiếu sáng hiện đại, cho phép các trận đấu diễn ra vào ban đêm hoặc trong những điều kiện ánh sáng yếu. Điều này tạo điều kiện linh hoạt cho các đội bóng và người chơi có thể chọn giờ đá phù hợp với lịch trình của họ.\r\n\r\n4. Khu vực nghỉ ngơi: SPORTIFY cung cấp khu vực nghỉ ngơi thoải mái cho cầu thủ và khán giả. Các khu vực này có bàn ghế, máy lạnh và tiện nghi vệ sinh, tạo điều kiện thuận lợi để thư giãn trước và sau khi thi đấu.\r\n\r\n5. Dịch vụ và tiện ích: SPORTIFY cung cấp các dịch vụ và tiện ích bổ sung như phòng thay đồ, douches, quầy bar và cửa hàng trang thiết bị thể thao. Điều này giúp đáp ứng mọi nhu cầu của cầu thủ và tạo trải nghiệm đáng nhớ.\r\n\r\n6. Giải đấu và sự kiện: SPORTIFY thường tổ chức các giải đấu bóng đá 5 người và các sự kiện thể thao liên quan khác. Đây là cơ hội tuyệt vời để tham gia và cạnh tranh với các đội bóng khác, đồng thời tạo dịp tận hưởng những trận đấu hấp dẫn và thú vị.\r\n', 300000, 'field5.png', 'Khu A - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'0'),
(2, 'B01', 'Sân bóng đá 7 người', 'SPORTIFY có sân bóng đá 7 người đẳng cấp với các tiện nghi và trang thiết bị hiện đại, tạo điều kiện tốt nhất cho người chơi tận hưởng trận đấu bóng đá thú vị.\r\n\r\nĐặc điểm của SPORTIFY:\r\n\r\n1. Kích thước sân: Sân được thiết kế theo tiêu chuẩn của bóng đá 7 người, với kích thước tương đối nhỏ nhưng đủ rộng để các cầu thủ có không gian di chuyển và phát triển kỹ thuật của mình.\r\n\r\n2. Cỏ nhân tạo: SPORTIFY sử dụng cỏ nhân tạo chất lượng cao, giúp trận đấu trở nên mượt mà và đảm bảo an toàn cho người chơi. Sân cỏ nhân tạo cũng giảm thiểu tác động môi trường và đảm bảo sự ổn định của sân trong mọi thời tiết.\r\n\r\n3. Hệ thống ánh sáng: Sân bóng đá SPORTIFY được trang bị hệ thống chiếu sáng hiện đại, cho phép các trận đấu diễn ra vào ban đêm hoặc trong những điều kiện ánh sáng yếu. Điều này tạo điều kiện linh hoạt cho các đội bóng và người chơi có thể chọn giờ đá phù hợp với lịch trình của họ.\r\n\r\n4. Khu vực nghỉ ngơi: SPORTIFY cung cấp khu vực nghỉ ngơi thoải mái cho cầu thủ và khán giả. Các khu vực này có bàn ghế, máy lạnh và tiện nghi vệ sinh, tạo điều kiện thuận lợi để thư giãn trước và sau khi thi đấu.\r\n\r\n5. Dịch vụ và tiện ích: SPORTIFY cung cấp các dịch vụ và tiện ích bổ sung như phòng thay đồ, douches, quầy bar và cửa hàng trang thiết bị thể thao. Điều này giúp đáp ứng mọi nhu cầu của cầu thủ và tạo trải nghiệm đáng nhớ.\r\n\r\n6. Giải đấu và sự kiện: SPORTIFY thường tổ chức các giải đấu bóng đá 7 người và các sự kiện thể thao liên quan khác.', 500000, 'field7.jpg', 'Khu A - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'1'),
(3, 'B01', 'Sân bóng đá 11 người', 'SPORTIFY có sân bóng đá 11 người hiện đại, được thiết kế để đáp ứng các yêu cầu của trận đấu bóng đá chuyên nghiệp và cung cấp một trải nghiệm tuyệt vời cho cầu thủ và khán giả.\r\n\r\nĐặc điểm của SPORTIFY:\r\n\r\n1. Kích thước sân: Sân bóng đá SPORTIFY được thiết kế theo tiêu chuẩn FIFA cho trận đấu 11 người. Kích thước sân rộng và dài, tạo không gian cho các đội bóng triển khai chiến thuật và phát triển kỹ thuật của mình.\r\n\r\n2. Cỏ tự nhiên: Sân bóng đá SPORTIFY sử dụng cỏ tự nhiên chất lượng cao, tạo cảm giác tự nhiên và mượt mà cho cầu thủ. Cỏ tự nhiên giúp bóng di chuyển một cách trơn tru và tạo điều kiện tốt nhất cho trận đấu.\r\n\r\n3. Hệ thống ánh sáng: SPORTIFY được trang bị hệ thống chiếu sáng chất lượng cao, đảm bảo ánh sáng đồng đều và đủ sáng để cho phép trận đấu diễn ra vào ban đêm hoặc trong những điều kiện ánh sáng yếu.\r\n\r\n4. Các tiện ích và dịch vụ: SPORTIFY cung cấp các tiện ích và dịch vụ bổ sung như phòng thay đồ cho cầu thủ, khu vực ăn uống và quầy bar phục vụ khán giả, cửa hàng trang thiết bị thể thao và các phòng họp tiện nghi.\r\n\r\n5. Sự kiện và giải đấu: SPORTIFY thường tổ chức các giải đấu và sự kiện bóng đá chuyên nghiệp. Đây là cơ hội để tham gia vào những trận đấu hấp dẫn và trải nghiệm không khí sôi động của bóng đá.', 950000, 'field11.jpg', 'Khu A - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'1'),
(4, 'C01', 'Sân cầu lông đơn chuẩn', 'Sân đơn chuẩn 13,4m x 6,1m. \r\nSPORTIFY có một sân cầu lông chuyên nghiệp, được thiết kế và trang bị đầy đủ để đáp ứng các yêu cầu của trận đấu cầu lông đơn.\r\n\r\nĐặc điểm sân cầu lông đơn ở SPORTIFY:\r\n\r\n1. Kích thước sân: Sân cầu lông SPORTIFY tuân thủ kích thước chuẩn của sân cầu lông đơn. Kích thước sân được xác định để tạo không gian phù hợp cho các vận động viên di chuyển và chơi cầu lông một cách thoải mái.\r\n\r\n2. Mặt sân: Sân cầu lông SoloBadminton Center sử dụng mặt sân đàn hồi tốt, giúp bóng đạt độ cao và tốc độ phù hợp. Mặt sân đảm bảo cầu lông di chuyển mượt mà và giúp cầu thủ tận hưởng trải nghiệm chơi cầu lông tốt nhất.\r\n\r\n3. Hệ thống ánh sáng: SPORTIFY được trang bị hệ thống chiếu sáng chất lượng cao, đảm bảo ánh sáng đồng đều và đủ sáng để cung cấp tầm nhìn tốt nhất cho các vận động viên.\r\n\r\n4. Khung giới hạn: Sân cầu lông SPORTIFY có hệ thống khung giới hạn rõ ràng, giúp cầu thủ và trọng tài dễ dàng xác định giới hạn trên sân. Điều này tạo điều kiện công bằng và đảm bảo tính chính xác trong trận đấu.\r\n\r\n5. Tiện nghi và dịch vụ: SPORTIFY cung cấp các tiện nghi và dịch vụ như phòng thay đồ, khu vực nghỉ ngơi và giữ đồ, quầy bar và cửa hàng trang thiết bị cầu lông. Các tiện ích này giúp đáp ứng mọi nhu cầu của các vận động viên và tạo trải nghiệm thoải mái và tiện lợi.\r\n\r\n6. Đào tạo và giải đấu: SPORTIFY thường tổ chức các khóa huấn luyện và giải đấu cầu lông đơn chuyên nghiệp.', 150000, 'caulongchuan.jpg', 'Khu C - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'1'),
(5, 'C01', 'Sân cầu lông đôi chuẩn', 'Sân đôi chuẩn 13,4m x 7,3m. \r\nSPORTIFY có một sân cầu lông chuyên nghiệp, được thiết kế và trang bị đầy đủ để đáp ứng các yêu cầu của trận đấu cầu lông đôi.\r\n\r\nĐặc điểm sân cầu lông đôi ở SPORTIFY:\r\n\r\n1. Kích thước sân: Sân cầu lông SPORTIFY tuân thủ kích thước chuẩn của sân cầu lông đôi. Kích thước sân rộng và dài đủ để các cầu thủ di chuyển và triển khai chiến thuật và kỹ thuật của mình.\r\n\r\n2. Mặt sân: Sân cầu lông SPORTIFY sử dụng mặt sân đàn hồi tốt, giúp bóng đạt độ cao và tốc độ phù hợp. Mặt sân đảm bảo cầu lông di chuyển mượt mà và giúp cầu thủ tận hưởng trải nghiệm chơi cầu lông tốt nhất.\r\n\r\n3. Hệ thống ánh sáng: SPORTIFY được trang bị hệ thống chiếu sáng chất lượng cao, đảm bảo ánh sáng đồng đều và đủ sáng để cung cấp tầm nhìn tốt nhất cho các vận động viên.\r\n\r\n4. Khung giới hạn: Sân cầu lông SPORTIFY có hệ thống khung giới hạn rõ ràng, giúp cầu thủ và trọng tài dễ dàng xác định giới hạn trên sân. Điều này tạo điều kiện công bằng và đảm bảo tính chính xác trong trận đấu.\r\n\r\n5. Tiện nghi và dịch vụ: SPORTIFY cung cấp các tiện nghi và dịch vụ như phòng thay đồ, khu vực nghỉ ngơi và giữ đồ, quầy bar và cửa hàng trang thiết bị cầu lông. Các tiện ích này giúp đáp ứng mọi nhu cầu của các vận động viên và tạo trải nghiệm thoải mái và tiện lợi.\r\n\r\n6. Đào tạo và giải đấu: SPORTIFY thường tổ chức các khóa huấn luyện và giải đấu cầu lông đôi chuyên nghiệp. Đây là cơ hội để cầu thủ cải thiện kỹ năng và tham gia vào các trận đấu cạnh tranh với những đối thủ hàng đầu.', 300000, 'caulongchuandoi.jpg', 'Khu C - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'1'),
(6, 'C01', 'Sân cầu lông đơn chuyên nghiệp', 'Sân đơn 14,366m x 5,18m. \r\nSPORTIFY có một sân cầu lông chuyên nghiệp, được thiết kế đặc biệt để phục vụ cho việc rèn luyện và thi đấu cầu lông đơn.\r\n\r\nĐặc điểm của SPORTIFY:\r\n\r\n1. Kích thước sân: Sân cầu lông SPORTIFY tuân thủ kích thước chuẩn của sân cầu lông đơn. Kích thước sân vừa phải, tạo điều kiện thuận lợi cho việc di chuyển và triển khai kỹ thuật của người chơi.\r\n\r\n2. Mặt sân: Sân cầu lông SPORTIFY được trang bị mặt sân đàn hồi tốt, giúp bóng đạt độ cao và tốc độ phù hợp. Mặt sân đảm bảo sự nhạy bén và linh hoạt trong các pha di chuyển và đánh cầu.\r\n\r\n3. Hệ thống ánh sáng: SPORTIFY được trang bị hệ thống chiếu sáng chất lượng cao, đảm bảo ánh sáng đồng đều và đủ sáng để cung cấp tầm nhìn tốt nhất cho người chơi.\r\n\r\n4. Khung giới hạn: Sân cầu lông SPORTIFY có hệ thống khung giới hạn rõ ràng, giúp người chơi dễ dàng xác định giới hạn trên sân. Điều này tạo điều kiện công bằng và đảm bảo tính chính xác trong trận đấu.\r\n\r\n5. Tiện nghi và dịch vụ: SPORTIFY cung cấp các tiện nghi và dịch vụ như phòng thay đồ, khu vực nghỉ ngơi và giữ đồ. Điều này giúp người chơi có môi trường thoải mái và tiện lợi trong quá trình chuẩn bị và sau khi thi đấu.\r\n\r\n6. Huấn luyện cá nhân: SPORTIFY cũng cung cấp dịch vụ huấn luyện cá nhân, giúp người chơi nâng cao kỹ năng và chiến thuật trong cầu lông đơn. Các huấn luyện viên chuyên nghiệp sẽ hướng dẫn và tư vấn để phát triển tối đa tiềm năng của bạn.', 300000, 'caulongchuyennghiepdon.jpg', 'Khu C - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'1'),
(7, 'C01', 'Sân cầu lông đôi chuyên nghiệp', 'Sân đôi 14,366m x 6,1m.\r\nSPORTIFY có một sân cầu lông chuyên nghiệp, được thiết kế đặc biệt để đáp ứng các yêu cầu của trận đấu cầu lông đôi cấp cao.\r\n\r\nĐặc điểm của sân cầu lông đôi chuyên nghiệp ở SPORTIFY:\r\n\r\n1. Kích thước sân: Sân cầu lông SPORTIFY tuân thủ kích thước chuẩn của sân cầu lông đôi. Kích thước sân rộng và dài đủ lớn để các cầu thủ di chuyển và triển khai chiến thuật và kỹ thuật của mình.\r\n\r\n2. Mặt sân: Sân cầu lông SPORTIFY được trang bị mặt sân đàn hồi tốt, giúp bóng đạt độ cao và tốc độ phù hợp. Mặt sân đảm bảo sự nhạy bén và linh hoạt trong các pha di chuyển và đánh cầu.\r\n\r\n3. Hệ thống ánh sáng: SPORTIFY được trang bị hệ thống chiếu sáng chất lượng cao, đảm bảo ánh sáng đồng đều và đủ sáng để cung cấp tầm nhìn tốt nhất cho các vận động viên.\r\n\r\n4. Khung giới hạn: Sân cầu lông SPORTIFY có hệ thống khung giới hạn rõ ràng, giúp cầu thủ và trọng tài dễ dàng xác định giới hạn trên sân. Điều này tạo điều kiện công bằng và đảm bảo tính chính xác trong trận đấu.\r\n\r\n5. Tiện nghi và dịch vụ: SPORTIFY cung cấp các tiện nghi và dịch vụ chuyên nghiệp như phòng thay đồ, khu vực nghỉ ngơi và giữ đồ, quầy bar và cửa hàng trang thiết bị cầu lông. Các tiện ích này giúp đáp ứng mọi nhu cầu của các vận động viên và tạo trải nghiệm thoải mái và tiện lợi.\r\n\r\n6. Đào tạo và giải đấu: SPORTIFY thường tổ chức các khóa huấn luyện chuyên nghiệp và giải đấu cầu lông đôi cấp cao. Đây là cơ hội để các cầu thủ nâng cao kỹ năng, rèn luyện sự phối hợp và cạnh tranh với những đối thủ hàng đầu.', 600000, 'caulongchuyennghiepdoi.jpg', 'Khu C - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'1'),
(8, 'R01', 'Sân bóng rổ nhỏ', 'Sân nhỏ kích thước: 18,29m x 10,97m. \r\nSPORTIFY có một sân bóng rổ nhỏ, được thiết kế đặc biệt để cung cấp không gian chơi bóng rổ thuận tiện và thú vị cho nhóm nhỏ người chơi.\r\n\r\nĐặc điểm của sân bóng rổ nhỏ tại SPORTIFY:\r\n\r\n1. Kích thước sân: Sân SPORTIFY có kích thước nhỏ hơn so với sân bóng rổ chuẩn. Kích thước nhỏ gọn này tạo điều kiện thuận lợi cho việc di chuyển và chơi bóng rổ trong không gian hạn chế.\r\n\r\n2. Bảng điện tử: SPORTIFY thường đi kèm với một bảng điện tử nhỏ, cho phép ghi điểm và theo dõi thời gian trận đấu. Điều này giúp các người chơi có trải nghiệm giống như trên sân bóng rổ chuyên nghiệp.\r\n\r\n3. Hệ thống đèn chiếu sáng: Sân SPORTIFY được trang bị hệ thống đèn chiếu sáng, đảm bảo ánh sáng đủ sáng để chơi bóng rổ vào ban đêm hoặc trong điều kiện ánh sáng yếu.\r\n\r\n4. Mặt sân: Mặt sân SPORTIFY thường được làm bằng bề mặt nhựa hoặc sàn cao su, giúp bóng nảy tốt và đảm bảo sự an toàn khi chơi.\r\n\r\n5. Khu vực khán đài: Sân SPORTIFY có thể có một khu vực khán đài nhỏ, cho phép khán giả hoặc người xem cổ vũ và theo dõi trận đấu.\r\n\r\n6. Tiện nghi khác: Tùy vào từng sân cụ thể, SPORTIFY cũng có thể cung cấp các tiện nghi như khu vực nghỉ ngơi, vòi nước và nhà vệ sinh để đáp ứng các nhu cầu cơ bản của người chơi và khán giả.', 850000, 'bongronho.jpg', 'Khu R - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'1'),
(9, 'R01', 'Sân bóng rổ lớn', 'Sân lớn có kích thước là 28,65m x 15,24m. \r\nSPORTIFY có một sân bóng rổ lớn, được thiết kế và trang bị đầy đủ để đáp ứng các yêu cầu của trận đấu và các hoạt động liên quan đến bóng rổ.\r\n\r\nĐặc điểm của sân bóng rổ lớn tại SPORTIFY:\r\n\r\n1. Kích thước sân: Sân bóng rổ lớn ở SPORTIFY tuân thủ kích thước chuẩn của sân bóng rổ. Kích thước rộng và dài đủ lớn để đáp ứng các tiêu chuẩn chuyên nghiệp và tạo điều kiện thuận lợi cho việc di chuyển và chơi bóng rổ.\r\n\r\n2. Bảng điện tử: SPORTIFY được trang bị bảng điện tử chuyên nghiệp, hiển thị điểm số, thời gian trận đấu và các thông tin khác. Điều này tạo điều kiện công bằng và theo dõi chính xác trận đấu.\r\n\r\n3. Hệ thống ánh sáng: SPORTIFY được trang bị hệ thống đèn chiếu sáng chất lượng cao, đảm bảo ánh sáng đều và đủ sáng để cung cấp tầm nhìn tốt nhất cho các cầu thủ và khán giả.\r\n\r\n4. Mặt sân: Mặt sân bóng rổ ở SPORTIFY thường được làm bằng bề mặt sàn nhựa hoặc sàn cao su chất lượng cao, giúp bóng nảy tốt và đảm bảo an toàn trong quá trình chơi.\r\n\r\n5. Khán đài: SPORTIFY có khán đài rộng rãi, tạo điều kiện cho nhiều khán giả có thể theo dõi trận đấu một cách thoải mái và hỗ trợ tinh thần cho các đội thi đấu.\r\n\r\n6. Tiện nghi và dịch vụ: SPORTIFY cung cấp các tiện nghi và dịch vụ như phòng thay đồ cho cầu thủ, khu vực nghỉ ngơi và giữ đồ, cửa hàng bán trang thiết bị và đồ thể thao liên quan đến bóng rổ.', 1200000, 'bongrolon.jpg', 'Khu R - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'1'),
(10, 'T01', 'Sân Tennis cỏ', 'Một số sân tennis với bề mặt cỏ tự nhiên có thể có giá thuê cao hơn so với các loại sân khác. SPORTIFY tennis là một sân tennis cỏ chuyên nghiệp, nổi tiếng với bề mặt sân cỏ tự nhiên hoàn hảo để thực hiện các cú đánh lưới và cung cầu tuyệt vời.\r\n\r\nĐặc điểm của sân tennis cỏ ở SPORTIFY:\r\n\r\n1. Bề mặt sân: Sân tennis cỏ tại SPORTIFY được chăm sóc và duy trì để đảm bảo một bề mặt cỏ tốt nhất. Cỏ tự nhiên tạo ra sự đàn hồi và tốc độ đáng kể khác biệt so với các bề mặt khác, tạo điều kiện cho các cú đánh đầy sức mạnh và nhanh chóng.\r\n\r\n2. Phong cách chơi tennis truyền thống: Sân tennis cỏ gợi nhớ đến phong cách chơi tennis truyền thống, nơi các cú đánh lưới, cung cầu và cú xoay cầu trở thành những yếu tố quan trọng. Bề mặt cỏ tạo điều kiện lý tưởng cho những cú đánh tinh tế và đòi hỏi kỹ thuật cao.\r\n\r\n3. Môi trường tự nhiên: SPORTIFY thường được bao quanh bởi cảnh quan thiên nhiên và cây cỏ xanh mướt. Môi trường tự nhiên này tạo ra một không gian thư giãn và yên tĩnh, giúp người chơi tập trung và thư giãn trong quá trình chơi tennis.\r\n\r\n4. Hệ thống đèn chiếu sáng: SPORTIFY có hệ thống đèn chiếu sáng tốt, cho phép các trận đấu ban đêm và tận hưởng tennis trong mọi điều kiện ánh sáng.\r\n\r\n5. Tiện nghi và dịch vụ: SPORTIFY cung cấp các tiện nghi và dịch vụ như sân tập, khu vực nghỉ ngơi, phòng thay đồ, và quầy bar. Điều này giúp người chơi tận hưởng trải nghiệm tennis toàn diện và thoải mái.', 300000, 'tenisco.jpg', 'Khu T - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'1'),
(11, 'T01', 'Sân Tennis đất nện', 'Sân tennis đất nện có giá rẻ hơn so với sân tennis cỏ tự nhiên. SPORTIFY có một sân tennis đất nện chuyên nghiệp, được biết đến với bề mặt sân đất nện tuyệt vời để thực hiện các cú đánh xoay và phản bóng linh hoạt.\r\n\r\nĐặc điểm của sân tennis đất nện tại SPORTIFY:\r\n\r\n1. Bề mặt sân: Sân tennis đất nện tại SPORTIFY được xây dựng với lớp đất nện đặc biệt. Bề mặt này tạo ra một sự đàn hồi nhất định và chấp nhận bóng đạt vào mặt sân, cho phép các cú đánh xoay, cung cầu và phản bóng linh hoạt.\r\n\r\n2. Tốc độ trò chơi: Sân tennis đất nện thường có tốc độ trò chơi chậm hơn so với các sân khác như sân cỏ hoặc sân cứng. Điều này cho phép các cầu thủ có thời gian phản ứng và điều chỉnh đúng cách trong khi chơi.\r\n\r\n3. An toàn và giảm chấn: Bề mặt đất nện giúp giảm lực va chạm và giảm nguy cơ chấn thương cho các cầu thủ. Đặc biệt là cho những cú ngã và di chuyển nhanh trên sân.\r\n\r\n4. Phù hợp với mọi loại đánh: Sân tennis đất nện phù hợp với mọi loại đánh, từ đánh lưới cho đến đánh cầu và phản bóng mạnh. Bề mặt này cho phép các cầu thủ thể hiện kỹ thuật và sự linh hoạt trong trò chơi.\r\n\r\n5. Môi trường tự nhiên: SPORTIFY thường được bao quanh bởi môi trường tự nhiên, với cây cỏ xanh mướt và không gian rộng rãi. Điều này tạo ra một không gian thư giãn và tạo cảm giác gần gũi với thiên nhiên trong quá trình chơi tennis.\r\n\r\n6. Tiện nghi và dịch vụ: SPORTIFY cung cấp các tiện nghi và dịch vụ như sân tập, khu vực nghỉ ngơi, phòng thay đồ và quầy bar. Điều này giúp người chơi tận hưởng trải nghiệm tennis toàn diện và thoải mái.', 200000, 'tenisdat.png', 'Khu T - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'1'),
(12, 'T01', 'Sân Tennis Cát', 'Sân tennis cát có giá rẻ hơn so với sân tennis cỏ tự nhiên. SPORTIFY có một sân tennis cát chuyên nghiệp, được biết đến với bề mặt sân đất nện tuyệt vời để thực hiện các cú đánh xoay và phản bóng linh hoạt.\r\n\r\nĐặc điểm của sân tennis cát tại SPORTIFY:\r\n\r\n1. Bề mặt sân: Sân tennis cát tại SPORTIFY được xây dựng với lớp đất nện đặc biệt. Bề mặt này tạo ra một sự đàn hồi nhất định và chấp nhận bóng đạt vào mặt sân, cho phép các cú đánh xoay, cung cầu và phản bóng linh hoạt.\r\n\r\n2. Tốc độ trò chơi: Sân tennis cát thường có tốc độ trò chơi chậm hơn so với các sân khác như sân cỏ hoặc sân cứng. Điều này cho phép các cầu thủ có thời gian phản ứng và điều chỉnh đúng cách trong khi chơi.\r\n\r\n3. An toàn và giảm chấn: Bề mặt giúp giảm lực va chạm và giảm nguy cơ chấn thương cho các cầu thủ. Đặc biệt là cho những cú ngã và di chuyển nhanh trên sân.\r\n\r\n4. Phù hợp với mọi loại đánh: Sân tennis cát phù hợp với mọi loại đánh, từ đánh lưới cho đến đánh cầu và phản bóng mạnh. Bề mặt này cho phép các cầu thủ thể hiện kỹ thuật và sự linh hoạt trong trò chơi.\r\n\r\n5. Môi trường tự nhiên: SPORTIFY thường được bao quanh bởi môi trường tự nhiên, với cây cỏ xanh mướt và không gian rộng rãi. Điều này tạo ra một không gian thư giãn và tạo cảm giác gần gũi với thiên nhiên trong quá trình chơi tennis.\r\n\r\n6. Tiện nghi và dịch vụ: SPORTIFY cung cấp các tiện nghi và dịch vụ như sân tập, khu vực nghỉ ngơi, phòng thay đồ và quầy bar. Điều này giúp người chơi tận hưởng trải nghiệm tennis toàn diện và thoải mái.', 400000, 'tenisdat.png', 'Khu T - Công Viên Phần Mềm Quang Trung,phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', b'0'),
(13, 'B01', 'demo san new', 'ok....', 999, '3578b927.jpg', 'hcm', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderdetailsid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderdetailsid`, `orderid`, `productid`, `price`, `quantity`) VALUES
(1, 1, 1, 105000, 1),
(2, 2, 2, 140000, 2),
(3, 3, 3, 325000, 1),
(4, 4, 4, 170000, 1),
(5, 5, 5, 150000, 1),
(6, 6, 6, 60000, 1),
(7, 7, 7, 80000, 1),
(8, 8, 8, 575000, 2),
(9, 9, 9, 90000, 3),
(10, 10, 10, 90000, 2),
(11, 11, 11, 120000, 1),
(12, 12, 12, 120000, 1),
(13, 13, 13, 50000, 1),
(14, 13, 14, 120000, 1),
(15, 14, 14, 120000, 1),
(16, 15, 15, 75000, 3),
(17, 16, 16, 120000, 1),
(18, 17, 17, 120000, 1),
(19, 18, 18, 75000, 1),
(20, 19, 1, 105000, 2),
(21, 20, 2, 140000, 2),
(22, 21, 6, 60000, 2),
(23, 22, 2, 140000, 1),
(24, 22, 3, 325000, 1),
(25, 22, 1, 105000, 1),
(26, 22, 4, 170000, 1),
(27, 22, 5, 150000, 1),
(28, 23, 2, 140000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `createdate` datetime NOT NULL,
  `address` varchar(100) NOT NULL,
  `note` varchar(5000) DEFAULT NULL,
  `orderstatus` enum('Chờ Xác Nhận','Đang Giao','Hoàn Thành','Hủy Đặt','Trả Hàng') NOT NULL,
  `paymentstatus` bit(1) NOT NULL,
  `totalprice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `username`, `createdate`, `address`, `note`, `orderstatus`, `paymentstatus`, `totalprice`) VALUES
(1, 'phamtu2603', '2023-05-31 08:59:00', 'Lê Văn Thọ,Quận Gò Vấp, TP HCM', NULL, 'Trả Hàng', b'0', 105000),
(2, 'duyddk', '2023-05-31 09:20:00', 'Bình Dương', NULL, 'Hoàn Thành', b'1', 280000),
(3, 'baodmh', '2023-05-31 17:33:00', 'TP Thủ Đức', NULL, 'Hoàn Thành', b'1', 325000),
(4, 'thaiptps19625', '2023-05-31 11:21:00', 'Quận Bình Tân, TP HCM', NULL, 'Hủy Đặt', b'0', 170000),
(5, 'thaiptps19625', '2023-05-31 12:21:00', 'Quận Bình Tân, TP HCM', NULL, 'Chờ Xác Nhận', b'0', 150000),
(6, 'phamtu2603', '2023-06-01 03:16:00', 'TP.HCM', NULL, 'Hoàn Thành', b'1', 60000),
(7, 'phamtu2603', '2023-06-03 04:38:00', 'TP.HCM', NULL, 'Hủy Đặt', b'0', 80000),
(8, 'phamtu2603', '2023-06-04 09:22:00', 'TP.HCM', NULL, 'Trả Hàng', b'0', 1150000),
(9, 'phamtu2603', '2023-06-05 10:47:00', 'TP.HCM', NULL, 'Chờ Xác Nhận', b'0', 270000),
(10, 'phamtu2603', '2023-07-06 10:46:00', 'TP.HCM', NULL, 'Chờ Xác Nhận', b'0', 180000),
(11, 'phamtu2603', '2023-08-23 13:45:00', 'TP.HCM', NULL, 'Chờ Xác Nhận', b'0', 120000),
(12, 'baodmh', '2023-06-02 14:27:00', 'TP.HCM', NULL, 'Hủy Đặt', b'0', 120000),
(13, 'baodmh', '2023-07-10 15:29:00', 'TP.HCM', NULL, 'Đang Giao', b'0', 170000),
(14, 'baodmh', '2023-07-11 17:51:00', 'TP.HCM', NULL, 'Chờ Xác Nhận', b'0', 120000),
(15, 'baodmh', '2023-07-16 18:33:00', 'TP.HCM', NULL, 'Chờ Xác Nhận', b'0', 225000),
(16, 'baodmh', '2023-08-23 19:44:00', 'TP.HCM', NULL, 'Chờ Xác Nhận', b'0', 120000),
(17, 'adminsportify', '2023-06-09 20:24:00', 'TP.HCM', NULL, 'Chờ Xác Nhận', b'0', 120000),
(18, 'adminsportify', '2023-07-14 21:46:00', 'TP.HCM', NULL, 'Chờ Xác Nhận', b'0', 75000),
(19, 'adminsportify', '2023-08-23 10:22:00', 'TP.HCM', NULL, 'Chờ Xác Nhận', b'0', 210000),
(20, 'adminsportify', '2023-08-23 12:54:00', 'TP.HCM', NULL, 'Chờ Xác Nhận', b'0', 280000),
(21, 'adminsportify', '2023-08-23 11:11:00', 'TP.HCM', NULL, 'Chờ Xác Nhận', b'0', 120000),
(22, 'nnnnnn', '2024-05-11 21:45:23', 'nnnnnn', '', 'Đang Giao', b'0', 890000),
(23, 'democode', '2024-05-11 23:41:26', 'khu pho 3 an phu quan 2', '', 'Chờ Xác Nhận', b'0', 170000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `productname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `discountprice` double DEFAULT NULL,
  `datecreate` date NOT NULL,
  `price` double NOT NULL,
  `productstatus` bit(1) NOT NULL,
  `descriptions` varchar(5000) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `categoryid`, `productname`, `image`, `discountprice`, `datecreate`, `price`, `productstatus`, `descriptions`, `quantity`) VALUES
(1, 1, 'Quần Thể Thao Nỉ 3 Sọc', 'product_1.png', 15000, '2023-05-28', 120000, b'1', '- Chất vải: vải poly 2 da co giãn 4 chiều, bề mặt mịn màng, không gây cảm giác khó chịu, mặc thấm hút mồ hôi, không nhăn, không bai nhão.\r\n- Quần dài 3 sọc ống suông, ống bo có thể nói đó là chiếc quần \"truyền thống\" dành cho cả nam và nữ,  phong cách trẻ trung, năng động cho người mặc.\r\n- Form quần chuẩn size, ống rộng vừa, mặc lên tôn dáng cực kỳ. Bởi vậy chiếc quần rất dễ phối đồ với các loại áo thời trang: áo thun, áo ba lỗ, áo tập gym,...\r\n- Quần dài 3 sọc ống suông, ống bo có 2 túi khóa bên hông, giúp bạn đựng đồ cá nhân: ví, điện thoại.\r\n- Sử dụng đi học, đi làm, đi chơi, tập thể thao, tập gym..', 20),
(2, 2, 'Áo thun thể thao nam Humen Sport', 'product_2.png', 20000, '2023-05-28', 160000, b'1', '- Tên sản phẩm: Áo thể thao nam chạy bộ, tập gym, Áo thun nam cổ tròn chất thun lạnh cao cấp chơi cầu lông, bóng chuyền\r\n- Chất liệu: 43% sợi Recycle, 57% Polyester, theo xu hướng thời trang bền vững. Vải thun lạnh dày và đẹp phù hợp cho chơi thể thao, vận động mạnh, đi chơi... \r\n- Màu sắc: Đen, Than, Xanh dương, Xanh nhạt, Ghi\r\n- Công nghệ xử lý hoàn thiện vải: Quickdry (nhanh khô) + Wicking (thấm hút nhanh) + Stretch (Co giãn)\r\n- Thiết kế tối giản thấm hút mồ hôi khi vận động thể thao', 20),
(3, 3, 'Giày sân cỏ nhân tạo', 'product_3.png', 25000, '2023-05-28', 350000, b'1', 'Thông số kĩ thuật:\r\n- Size: 39-40-41-42-43.\r\n- Chất liệu da PU, chống thấm nước.\r\n- Đế giầy cao TF giúp tăng khả năng bám trụ.\r\n- Họa tiết logo sắc nét.\r\n- Full khâu đế, chắc chắn, bền bỉ.\r\n- Chất liệu đế: đế nhựa wk.', 20),
(4, 4, 'Găng tay cao cấp', 'product_4.png', 0, '2023-05-28', 170000, b'1', '•	Các đầu ngón tay có xương bảo vệ ngón tay khi bắt những pha bóng sút mạnh\r\n•	Phần mút được làm bằng cao su cho độ đàn hồi tốt, dính bóng\r\n•	Phần mu làm bằng da tổng hợp có độ bền cao\r\n•	Cổ tay có băng quấn hai vòng, giúp tùy chỉnh cổ tay khi sử dụng, bảo vệ cổ tay khỏi chấn thương lật cổ tay\r\n•	Mặt trong phủ lớp vải thấm mồ hôi cho tay luôn khô ráo\r\n•	Bao gồm các size: 8-9-10\r\n•	Màu sắc: Đen-chuối | Cam-chuối | Xanh- đen | Đen-tím / Xanh- cam\r\n', 20),
(5, 6, 'Túi đựng thể thao', 'product_5.png', 30000, '2023-05-28', 180000, b'0', ' Đặc điểm chung của sản phẩm:\r\n- Chất liệu vải gai HQ dày dặn, bền bỉ.\r\n- Túi vừa có dây đeo chắc chắn, vừa có tay quai cầm bền.\r\n- Ngoài ra sản phẩm còn có Móc nhôm loại xịn chắc, kéo mở thoải mái.\r\n- Kích thước sản phẩm: Dài 41 cm * cao 20cm * rộng 20cm ( có size số +- 2 cm tùy theo từng đợt hàng về )\r\n- Sản phẩm có 2 ngăn riêng biệt. Trong đó phân chia cụ thể như sau:\r\n + 1 ngăn giữa to rộng rãi thoải mái đựng được từ 3-4  bộ đồ tùy ý\r\n + 1 ngăn bên hông có thể giúp bạn để đồ bẩn riêng biệt với các ngăn đồ sạch hoặc bạn có thể để chai nước hoặc giày riêng.', 20),
(6, 7, 'Bình nước thể thao', 'product_6.png', 0, '2023-06-18', 60000, b'0', '✔️ Chất liệu: Nhựa PP cao cấp có độ bền cao, không độc hại và đặc biệt là an toàn cho sức khỏe hơn tất cả các loại nhựa khác, hoàn toàn thân thiện với môi trường.\r\n✔️ Thiết kế bình nhẹ và bền, chống rò rỉ cao, dễ lau chùi và không bị bám bẩn, màu sắc đa dạng.\r\n✔️ Hàng mới 100% và chất lượng cao. \r\n✔️ Thích hợp mang theo để đi tập gym, chạy xe đạp, leo núi, đi bộ đường dài và những hoạt động thể thao ngoài trời khác. Gọn nhẹ và tiện lợi, dễ dàng mang theo.\r\n✔️ Bình thiết kế ống hút gấp gọn, không lo bị đổ hay trào ra trong quá trình sử dụng.\r\n✔️ Thông số kỹ thuật bình:\r\n      - Thể tích bình :800 ML\r\n      - Nhiệt độ bình chịu được: từ -20oC đến 80oC (khuyến cáo không sử dụng với nước trên 80oC)\r\n      - Trọng lượng bình: 180gr\r\n      - Kích thước bình : 27*10', 20),
(7, 5, 'Bộ 2 chiếc vợt cầu lông Agnite', 'product_7.png', 0, '2023-06-18', 180000, b'1', '- Số lượng vợt: 2 chiếc \r\n- Có tặng 01 túi đựng kèm vợt + 01 hộp cầu. (trừ phân loại F2100, F2108, F2134 như tên phân loại)\r\n- Vợt đã được căng dây sẵn theo nhà sản xuất, sức căng như trên thông số của vợt.\r\n- Trọng lượng vợt: 110 ± 5g\r\n- Trọng lượng dây kéo: 16-18LB\r\n- Chiều dài vợt: 670 ± 3mm\r\n- Chất liệu tay cầm: PVC', 20),
(8, 5, 'Vợt Tennis', 'product_8.png', 50000, '2023-06-18', 625000, b'1', '- Chất liệu : ABS + Hợp kim nhôm\r\n- Màu sắc: Nhiều màu\r\n- Kích thước vợt : 28*69cm\r\n- Kích thước đế : 20*20cm\r\n- Trọng lượng : 240G\r\n- Xuất xứ: Trung Quốc\r\n', 20),
(9, 5, 'Banh da', 'product_9.png', 0, '2023-06-18', 90000, b'1', '- Size: 5 - Màu: trắng - đỏ và trắng - vàng, trắng - cam\r\n- Chu vi Bóng: 680mm-700mm\r\n- Đường kính: 216mm-223mm\r\n- Trọng lượng: 410g-450g\r\n- Áp lực bơm: 0.6 - 0.8 bar\r\n- Độ nảy: 125cm - 155cm\r\n- Độ thấm nước: 10%\r\n- Độ tròn tối thiểu: 98.2%\r\n- Độ xuống hơi tối đa sau 72h: 20%\r\n- Độ tuổi sử dụng: trên 12 tuổi\r\n- Sân bóng sử dụng: Sân cỏ nhân tạo\r\n- Chất liệu: Da TPU tổng hợp mềm, dẻo, chống mài mòn và thân thiện với môi trường', 20),
(10, 2, 'Đồ đá banh', 'product_10.png', 0, '2023-06-18', 90000, b'1', '•    Chất liệu Vải Thun Lạnh Cao Cấp\r\n•    Không Nhăn – Không Xù – Không Phai\r\n•    Thấm Hút Mồ Hôi Cực Tốt\r\n•    Thiết Kế Mạnh Mẽ, Hiện Đại. Độc Quyền Về Mẫu Mã Thiết Kế', 20),
(11, 5, 'Ống cầu lông 12 trái', 'product_11.png', 0, '2023-06-18', 120000, b'1', 'Màu sắc: Trắng.\r\nSố lượng: 12 quả.\r\nChất liệu:  lông vịt tự nhiên.\r\nKích thước: 66 * 66 * 395mm.\r\nHình dạng tấm: lông thẳng.', 20),
(12, 5, 'Ống banh Tennis 4 trái', 'product_12.png', 0, '2023-06-18', 120000, b'1', 'Sản phẩm: bóng Tennis.\r\nChất liệu: Cao su.\r\nMàu sắc: xanh lá cây.\r\nĐường kính bóng Tennis: khoảng 63mm.\r\nTrọng lượng: khoảng 0,25kg.\r\nSố lượng: 4 cái / set có hộp.\r\nĐóng gói trong ống nhựa cấp A cao cấp: 13-14cm.', 20),
(13, 2, 'Áo thể thao nam SPORT ngắn tay', 'product_13.png', 5000, '2023-08-22', 55000, b'1', '- Chất liệu và kiểu dáng: Sản phẩm áo thể thao nam được làm từ vải thun cotton, thun lạnh giúp thấm hút mồ hôi và co giãn cực tốt. \r\n- Chất vải còn mượt mà, mát mẻ và chống nhăn rất tiện dụng khi mặc.\r\n- Áo được may tỉ mỉ, thiết kế năng động, nhiều màu sắc và thời trang sẽ giúp bạn cảm thấy thoải mái và tự tin hơn khi tham gia các hoạt động thể dục thể thao.', 20),
(14, 1, 'Quần jogger thể thao unisex', 'product_14.png', 30000, '2023-08-22', 150000, b'1', '- Quần jogger thể thao unisex  được thiết kế theo đúng form chuẩn của nam giới Việt Nam\r\n- Sản phẩm Quần thể thao Nam chính là mẫu thiết kế mới nhất cho mùa hè này\r\n- Chất liệu cực mềm mịn, thoáng mát \r\n- Đem lại sự thoải mái tiện lợi nhất cho người mặc', 20),
(15, 1, 'Quần short thun nam thể thao', 'product_15.png', 0, '2023-08-22', 75000, b'1', '- Xuất xứ: Quần đùi nam,quần short nam được sản xuất tại Việt Nam\r\n- Chất liệu: chất vải dù gió co giãn nhẹ mát\r\n- Quần đùi vải thể thao tổng hợp chất liệu mềm mại co dãn, tiện dụng cho các hoạt động thể thao. \r\n- Phom dáng:Regular Fit ', 20),
(16, 3, 'Giày Thể Thao Chống Trượt-Chống Thấm Nước-Thoáng Khí', 'product_16.png', 25000, '2023-08-22', 145000, b'1', '[Về Quang sai màu] Có thể có hiện tượng quang sai màu nhẹ giữa hình ảnh và đối tượng thực tế do sự khác biệt trong hiển thị độ tương phản của màn hình cá nhân.\r\n[Về Mùi] Giày vừa rời xưởng sẽ có một số mùi keo, bất kể chất lượng như thế nào, mùi keo sẽ tan khi đặt ở nơi thông gió.\r\n[Về Chất lượng] Đáy vỡ, tẩy dầu mỡ, hư hỏng, lệch màu nghiêm trọng, và các vết bẩn nghiêm trọng sẽ do chúng tôi chịu đựng với mọi chi phí. Xử lý các đầu sợi nhỏ, vết bẩn nhỏ, sự khác biệt nhỏ về màu sắc, và mùi keo nhẹ không phải là vấn đề chất lượng.', 20),
(17, 4, 'Găng Tay Thể Thao Motocentric', 'product_17.png', 0, '2023-08-22', 120000, b'1', '- Với đặc tính bền bỉ, chịu va đập tốt và không bị gỉ, có thể nói găng tay này là một sự kết hợp hoàn hảo tạo nên một phong cách mới cho người sử dụng. \r\n- Lòng bàn tay với những hạt nhựa li ti với công dụng tăng ma sát, giúp cầm nắm vật dụng dễ dàng như là tay ga của xe máy khi lái xe. \r\n- Tấm pad vải khá lớn cho phần cổ tay khỏi nắng nóng, 1 vấn đề thường hay gặp với những găng tay nhỏ. \r\n- Miếng dính bằng gai tạo thuận tiện dễ dàng mang vào cởi ra khi sử dụng.\r\n- Chất liệu: Nhựa cao cấp, Vải Cotton, Da công nghiệp, Nhựa mềm \r\n- Đường may tỉ mỉ, chắc chắn\r\n- Thiết kế: Full ngón\r\n- Size: M, L, XL', 20),
(18, 6, 'Túi đựng giày dây chéo ', 'product_18.png', 5000, '2023-08-22', 80000, b'0', '- Nhỏ gọn và thuận tiện, túi thuận tiện cho những cuộc hành trình dài.\r\n- Được làm từ vải bền và chống thấm nước, ngăn chính rất thông thoáng, túi là sự lựa chọn hoàn hảo cho đôi giày của bạn.\r\n- Túi có kích thước: 36cm *21cm.\r\n- Có dây đeo rất thuận tiện khi di chuyển.', 20),
(19, 4, 'demo them sp', '4f3cd402.png', 9999, '2024-05-11', 9999999, b'0', 'ok....', 99);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleid` varchar(10) NOT NULL,
  `rolename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleid`, `rolename`) VALUES
('R01', 'Admin'),
('R02', 'Staff'),
('R03', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `shiftid` int(11) NOT NULL,
  `nameshift` varchar(100) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`shiftid`, `nameshift`, `starttime`, `endtime`) VALUES
(1, 'Buổi sáng: 04H00-05H00', '04:00:00', '05:00:00'),
(2, 'Buổi sáng: 05H00-06H00', '05:00:00', '06:00:00'),
(3, 'Buổi sáng: 06H00-07H00', '06:00:00', '07:00:00'),
(4, 'Buổi sáng: 07H00-08H00', '07:00:00', '08:00:00'),
(5, 'Buổi sáng: 08H00-09H00', '08:00:00', '09:00:00'),
(6, 'Buổi sáng: 09H00-10H00', '09:00:00', '10:00:00'),
(7, 'Buổi chiều: 14H00-15H00', '14:00:00', '15:00:00'),
(8, 'Buổi chiều: 15H00-16H00', '15:00:00', '16:00:00'),
(9, 'Buổi chiều: 16H00-17H00', '16:00:00', '17:00:00'),
(10, 'Buổi chiều: 17H00-18H00', '17:00:00', '18:00:00'),
(11, 'Buổi tối: 18H00-19H00', '18:00:00', '19:00:00'),
(12, 'Buổi tối: 19H00-20H00', '19:00:00', '20:00:00'),
(13, 'Buổi tối: 20H00-21H00', '20:00:00', '21:00:00'),
(14, 'Buổi tối: 21H00-22H00', '21:00:00', '22:00:00'),
(15, 'Buổi tối: 22H00-23H00', '22:00:00', '23:00:00'),
(16, 'Buổi tối: 23H00-00H00', '23:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sporttype`
--

CREATE TABLE `sporttype` (
  `sporttypeid` varchar(6) NOT NULL,
  `categoryname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sporttype`
--

INSERT INTO `sporttype` (`sporttypeid`, `categoryname`) VALUES
('A22', 'abcd'),
('B01', 'Bóng đá'),
('C01', 'Cầu lông'),
('R01', 'Bóng rổ'),
('T01', 'Tennis');

-- --------------------------------------------------------

--
-- Table structure for table `teamdetails`
--

CREATE TABLE `teamdetails` (
  `teamdetailid` int(11) NOT NULL,
  `teamid` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `joindate` date NOT NULL,
  `infouser` varchar(5000) DEFAULT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teamdetails`
--

INSERT INTO `teamdetails` (`teamdetailid`, `teamid`, `username`, `joindate`, `infouser`, `status`) VALUES
(1, 1, 'phamtu2603', '2023-08-12', '', b'1'),
(2, 1, 'duyddk', '2023-08-11', '“Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.” - Pope', b'1'),
(3, 1, 'minhpc', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(5, 1, 'baodmh', '2023-08-11', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(7, 2, 'duyddk', '2023-08-11', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(8, 2, 'minhpc', '2023-08-12', '', b'0'),
(9, 2, 'thaiptps19625', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(11, 2, 'haophan', '2023-08-12', '', b'0'),
(12, 2, 'lehongchinh272', '2023-08-11', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(13, 2, 'nhannguyen', '2023-08-12', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(14, 2, 'bichpham', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(15, 2, 'thuhoai', '2023-08-11', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(16, 2, 'anhnguyen', '2023-08-11', '', b'0'),
(17, 3, 'minhpc', '2023-08-11', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(18, 3, 'nhannguyen', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(19, 3, 'bichpham', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(20, 3, 'lehongchinh272', '2023-08-11', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(21, 3, 'anhnguyen', '2023-08-11', '', b'0'),
(22, 4, 'minhpc', '2023-08-11', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(23, 4, 'nhannguyen', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(24, 4, 'bichpham', '2023-08-12', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(25, 4, 'lehongchinh272', '2023-08-11', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công', b'1'),
(26, 4, 'anhnguyen', '2023-08-11', '', b'0'),
(27, 4, 'user01', '2023-08-12', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(28, 4, 'user02', '2023-08-12', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(29, 4, 'user03', '2023-08-11', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(30, 4, 'user04', '2023-08-11', '', b'0'),
(31, 5, 'thanhhau', '2023-08-09', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(32, 6, 'haophan', '2023-08-09', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(33, 6, 'minhpc', '2023-08-11', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(34, 6, 'nhannguyen', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(35, 6, 'bichpham', '2023-08-12', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(36, 6, 'lehongchinh272', '2023-08-11', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(37, 6, 'anhnguyen', '2023-08-11', '', b'0'),
(38, 6, 'user01', '2023-08-12', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(39, 6, 'user02', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(40, 6, 'user03', '2023-08-11', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(41, 6, 'user04', '2023-08-11', '', b'0'),
(42, 6, 'phamtu2603', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(43, 6, 'duyddk', '2023-08-11', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(44, 6, 'minhpc', '2023-08-12', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(45, 6, 'thaiptps19625', '2023-08-12', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(46, 6, 'baodmh', '2023-08-11', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(47, 7, 'haophan', '2023-08-09', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(48, 7, 'nhannguyen', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(49, 7, 'bichpham', '2023-08-12', '', b'0'),
(50, 7, 'lehongchinh272', '2023-08-11', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(51, 7, 'anhnguyen', '2023-08-11', '', b'0'),
(52, 7, 'phamtu2603', '2023-08-12', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(53, 7, 'duyddk', '2023-08-11', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(54, 7, 'minhpc', '2023-08-12', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(55, 7, 'thaiptps19625', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(56, 7, 'baodmh', '2023-08-11', '', b'0'),
(57, 8, 'haophan', '2023-08-09', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(58, 8, 'nhannguyen', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(59, 8, 'bichpham', '2023-08-12', '', b'0'),
(60, 8, 'lehongchinh272', '2023-08-11', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(61, 8, 'anhnguyen', '2023-08-11', '', b'0'),
(62, 8, 'phamtu2603', '2023-08-12', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(63, 8, 'duyddk', '2023-08-11', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(64, 8, 'minhpc', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(65, 8, 'thaiptps19625', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(66, 8, 'baodmh', '2023-08-11', '', b'0'),
(67, 9, 'truongle', '2023-08-12', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(68, 9, 'baodmh', '2023-08-11', '', b'0'),
(69, 9, 'phamtu2603', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(70, 10, 'haophan', '2023-08-09', '', b'0'),
(71, 10, 'minhpc', '2023-08-11', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(72, 10, 'nhannguyen', '2023-08-12', '', b'0'),
(73, 10, 'bichpham', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(74, 10, 'lehongchinh272', '2023-08-11', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(75, 10, 'anhnguyen', '2023-08-11', '', b'0'),
(76, 10, 'user01', '2023-08-12', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(77, 10, 'user02', '2023-08-12', '', b'0'),
(78, 10, 'user03', '2023-08-11', '', b'0'),
(79, 10, 'user04', '2023-08-11', '', b'0'),
(80, 10, 'phamtu2603', '2023-08-12', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(81, 10, 'duyddk', '2023-08-11', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(82, 10, 'minhpc', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(83, 10, 'thaiptps19625', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(84, 10, 'baodmh', '2023-08-11', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(85, 11, 'thaiptps19625', '2023-08-12', '', b'0'),
(86, 11, 'baodmh', '2023-08-11', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(87, 11, 'haophan', '2023-08-12', '', b'0'),
(88, 11, 'lehongchinh272', '2023-08-11', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(89, 11, 'nhannguyen', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(90, 11, 'bichpham', '2023-08-12', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(91, 11, 'thuhoai', '2023-08-11', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(92, 11, 'anhnguyen', '2023-08-11', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(93, 12, 'nhannguyen', '2023-08-12', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(94, 12, 'bichpham', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(95, 12, 'thuhoai', '2023-08-11', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(96, 12, 'anhnguyen', '2023-08-11', '', b'0'),
(97, 13, 'minhpc', '2023-08-11', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(98, 13, 'nhannguyen', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(99, 13, 'bichpham', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(100, 13, 'lehongchinh272', '2023-08-11', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(101, 13, 'anhnguyen', '2023-08-11', '', b'0'),
(102, 13, 'klinh293', '2023-08-12', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(103, 13, 'user02', '2023-08-12', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(104, 13, 'user03', '2023-08-11', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(105, 13, 'user04', '2023-08-11', '', b'0'),
(106, 14, 'haophan', '2023-08-09', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(107, 14, 'minhpc', '2023-08-11', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(108, 14, 'nhannguyen', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(109, 14, 'bichpham', '2023-08-12', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(110, 14, 'lehongchinh272', '2023-08-11', '', b'1'),
(111, 14, 'anhnguyen', '2023-08-11', '', b'0'),
(112, 14, 'user01', '2023-08-12', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(113, 14, 'user02', '2023-08-12', '', b'1'),
(114, 14, 'user03', '2023-08-11', '', b'1'),
(115, 15, 'user02', '2023-08-12', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(116, 16, 'minhpc', '2023-08-11', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(117, 16, 'nhannguyen', '2023-08-12', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(118, 16, 'bichpham', '2023-08-12', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(119, 16, 'lehongchinh272', '2023-08-11', 'Sức mạnh thực sự của bộ não nằm ở sự vận động, chứ không phải nằm ở sự tĩnh lặng.', b'1'),
(120, 16, 'anhnguyen', '2023-08-11', '', b'0'),
(121, 16, 'user01', '2023-08-12', 'Đừng ngại thất bại, đó là con đường dẫn đến thành công.', b'1'),
(122, 16, 'user02', '2023-08-12', '', b'1'),
(123, 16, 'user03', '2023-08-11', '', b'1'),
(124, 16, 'user04', '2023-08-11', '', b'0'),
(125, 17, 'thaiptps19625', '2023-08-09', 'Mọi môn thể thao có sự tham gia từ nhiều người đều cần tinh thần đồng đội.', b'1'),
(126, 17, 'baodmh', '2023-08-09', 'Thể thao giúp chúng ta học cách chịu đựng, làm việc nhóm và cống hiến cho một mục tiêu chung', b'1'),
(127, 17, 'duyddk', '2023-08-10', 'Vận động chính là cội nguồn của sự sống.', b'1'),
(129, 2, 'nnnnnn', '2024-05-11', NULL, b'0'),
(130, 3, 'nnnnnn', '2024-05-11', NULL, b'0'),
(131, 2, 'democode', '2024-05-11', NULL, b'0'),
(132, 4, 'democode', '2024-05-11', NULL, b'0'),
(133, 3, 'adminsportify', '2024-05-12', NULL, b'0'),
(134, 2, 'adminsportify', '2024-05-12', NULL, b'0'),
(135, 1, 'thaiptps19625', '2024-05-12', NULL, b'0'),
(136, 1, 'nnnnnn', '2024-05-13', NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `teamid` int(11) NOT NULL,
  `sporttypeid` varchar(6) NOT NULL,
  `nameteam` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `contact` varchar(10) NOT NULL,
  `descriptions` varchar(5000) DEFAULT NULL,
  `username` varchar(16) NOT NULL,
  `createdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`teamid`, `sporttypeid`, `nameteam`, `quantity`, `avatar`, `contact`, `descriptions`, `username`, `createdate`) VALUES
(1, 'T01', 'Đoàn kết never chết', 5, 'vot.png', '0123456789', 'Vô là có người gánh', 'phamtu2603', '2023-08-10'),
(2, 'R01', 'Team bóng rổ Quận 11', 11, 'team9.png', '0123456789', 'Vô là có người gánh', 'thaiptps19625', '2023-08-08'),
(3, 'B01', 'Team bóng đá Quận Gò Vấp', 10, 'team7.png', '0123456789', 'Vô là có người gánh', 'minhpc', '2023-08-05'),
(4, 'C01', 'Cầu Lông Quận Gò Vấp', 10, 'team6.png', '0123456789', 'Vô là có người gánh', 'duyddk', '2023-08-07'),
(5, 'T01', 'Team Bình Minh', 5, 'team5.png', '0123456789', 'Vô là có người gánh', 'thanhhau', '2023-08-10'),
(6, 'R01', 'Team Hoàng Hôn', 15, 'team8.png', '0123456789', 'Vô là có người gánh', 'haophan', '2023-08-08'),
(7, 'B01', 'Team Nắng ấm', 10, 'team1.png', '0123456789', 'Vô là có người gánh', 'lehongchinh272', '2023-08-05'),
(8, 'C01', 'Team Bão táp', 10, 'team4.png', '0123456789', 'Vô là có người gánh', 'nhannguyen', '2023-08-07'),
(9, 'T01', 'Team Mưa đá', 5, 'team2.png', '0123456789', 'Vô là có người gánh', 'truongle', '2023-08-10'),
(10, 'R01', 'Team Lũ lụt', 15, 'team7.png', '0123456789', 'Vô là có người gánh', 'bichpham', '2023-08-08'),
(11, 'B01', 'Team Hạn hán', 10, 'giay.png', '0123456789', 'Vô là có người gánh', 'anhnguyen', '2023-08-05'),
(12, 'T01', 'Team Bão mặt trời', 5, 'team3.png', '0123456789', 'Vô là có người gánh', 'thuhoai', '2023-08-10'),
(13, 'R01', 'Team Biển', 11, 'team5.png', '0123456789', 'Vô là có người gánh', 'klinh293', '2023-08-08'),
(14, 'B01', 'Team Núi', 10, 'team6.png', '0123456789', 'Vô là có người gánh', 'user01', '2023-08-05'),
(15, 'T01', 'Đoàn Nước', 5, 'team7.png', '0123456789', 'Vô là có người gánh', 'user02', '2023-08-10'),
(16, 'R01', 'Team Sông', 11, 'team1.png', '0123456789', 'Vô là có người gánh', 'user03', '2023-08-08'),
(17, 'B01', 'Team Suối', 10, 'team5.png', '0123456789', 'Vô là có người gánh', 'baodmh', '2023-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(16) NOT NULL,
  `passwords` varchar(16) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `gender` bit(1) NOT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `passwords`, `firstname`, `lastname`, `phone`, `email`, `address`, `image`, `gender`, `status`) VALUES
('adminsportify', 'adminsportify', 'Quản Trị', 'Viên', '0999999999', 'teamdev.sportify@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('anhnguyen', 'anhnguyen', 'Nguyễn Ngọc', 'Ánh', '0123456789', 'anhngoc@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('baodmh', 'baodmh', 'Đỗ Mai Hoài', 'Bão', '0987654321', 'baodmhdev@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('bichpham', 'bichpham', 'Phạm Ngọc', 'Bích', '0123456789', 'bichpham@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('democode', 'democode', 'democode', 'democode', '0364877525', 'hoahuongduong05124@gmail.com', 'democode', 'about.jpg', b'1', b'1'),
('duyddk', 'duyddk', 'Đặng Đoàn Khánh', 'Duy', '0987123456', 'dangdoankhanhduy99@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('haophan', 'haopn', 'Phan Nhật', 'Hào', '0123456789', 'phannhathao@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('klinh293', 'klinh', 'Nguyễn Khánh', 'Linh', '0123456789', 'linhk@gmail.com', 'Quận 12,TP HCM', NULL, b'0', b'1'),
('lehongchinh272', 'lehongchinh272', 'Lê Hồng', 'Chinh', '0123456789', 'chinhhl@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('minhpc', 'minhpc', 'Phạm Công', 'Minh', '0999999999', 'congminh.190702@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('mmmmmm', 'mmmmmm', 'mmmmmm', 'mmmmmm', '0987777777', 'mmmmmm@gmail.com', 'mmmmmm', '31eb1e80.png', b'1', b'1'),
('nhannguyen', 'nhannguyen', 'Nguyễn Thành', 'Nhân', '0123456789', 'nhannguyen@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('nhanvien', 'nhanvien', 'Nhân', 'Viên', '0999999999', 'nhanviensportify@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('nnnnnn', 'nnnnnn', 'nnnnnn', 'nnnnnn', '0987654321', 'nnnnnn@gmail.com', 'nnnnnn', NULL, b'1', b'1'),
('phamtu2603', 'phamtu2603', 'Phạm Ngọc', 'Tú', '0966109565', 'phamtu2603dev@gmail.com', 'Quận Gò Vấp,TP HCM', NULL, b'1', b'1'),
('thaiptps19625', 'thaiptps19625', 'Phạm Thanh', 'Thái', '0123456789', 'conga2402@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('thanhduy', 'thanhduy', 'Phạm Thanh', 'Duy', '0123456789', 'thanhduy102@gmail.com', 'Quận Gò Vấp,TP HCM', NULL, b'1', b'1'),
('thanhhau', 'thanhhau', 'Tô Thanh', 'Hậu', '0123456789', 'thanhhau@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('thuhoai', 'thuhoai', 'Đặng Thu ', 'Hoài', '0123456789', 'hoaithu@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('truongle', 'truongle', 'Lê Văn', 'Trường', '0123456789', 'truongle@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('user01', 'password1', 'Nguyễn', 'Văn A', '0905123456', 'nguyenvana@example.com', '123 Đường Hoàng Văn Thụ, Thành phố A', 'profile1.jpg', b'1', b'1'),
('user02', 'password2', 'Trần', 'Thị B', '0916234567', 'tranthib@example.com', '456 Đường Lê Lợi, Thị trấn B', 'profile2.jpg', b'0', b'1'),
('user03', 'password3', 'Lê', 'Văn C', '0927345678', 'levanc@example.com', '789 Đường Nguyễn Văn Linh, Thị trấn C', 'profile3.jpg', b'1', b'0'),
('user04', 'password4', 'Phạm', 'Thị D', '0938456789', 'phamthid@example.com', '567 Đường Trần Hưng Đạo, Thành phố D', 'profile4.jpg', b'0', b'1'),
('user05', 'password5', 'Vũ', 'Văn E', '0949567890', 'vuvane@example.com', '234 Đường Nguyễn Cư Trinh, Thành phố E', 'profile5.jpg', b'1', b'0'),
('user06', 'password6', 'Hoàng', 'Thị F', '0950678901', 'hoangthif@example.com', '123 Đường Nguyễn Huệ, Thành phố F', 'profile6.jpg', b'0', b'1'),
('user07', 'password7', 'Đặng', 'Văn G', '0961789012', 'dangvang@example.com', '456 Đường Lê Lợi, Thị trấn G', 'profile7.jpg', b'1', b'1'),
('user08', 'password8', 'Ngô', 'Thị H', '0972890123', 'ngothih@example.com', '789 Đường Nguyễn Văn Linh, Thị trấn H', 'profile8.jpg', b'0', b'0'),
('user09', 'password9', 'Dương', 'Văn I', '0983901234', 'duongvani@example.com', '567 Đường Trần Hưng Đạo, Thành phố I', 'profile9.jpg', b'1', b'1'),
('user10', 'password10', 'Bùi', 'Thị K', '0994012345', 'buithik@example.com', '234 Đường Nguyễn Cư Trinh, Thành phố K', 'profile10.jpg', b'0', b'1'),
('user11', 'password11', 'Hồ', 'Văn L', '0845123456', 'hovanl@example.com', '123 Đường Hoàng Văn Thụ, Thành phố L', 'profile11.jpg', b'1', b'1'),
('user12', 'password12', 'Võ', 'Thị M', '0856234567', 'vothim@example.com', '456 Đường Lê Lợi, Thị trấn M', 'profile12.jpg', b'0', b'1'),
('user13', 'password13', 'Lưu', 'Văn N', '0867345678', 'luuvann@example.com', '789 Đường Nguyễn Văn Linh, Thị trấn N', 'profile13.jpg', b'1', b'0'),
('user14', 'password14', 'Tạ', 'Thị P', '0878456789', 'tathip@example.com', '567 Đường Trần Hưng Đạo, Thành phố P', 'profile14.jpg', b'0', b'1'),
('user15', 'password15', 'Trịnh', 'Văn Q', '0889567890', 'trinhvanq@example.com', '234 Đường Nguyễn Cư Trinh, Thành phố Q', 'profile15.jpg', b'1', b'0'),
('user16', 'password16', 'Lý', 'Thị R', '0890678901', 'lythir@example.com', '123 Đường Nguyễn Huệ, Thành phố R', 'profile16.jpg', b'0', b'1'),
('user17', 'password17', 'Phan', 'Văn S', '0841789012', 'phanvans@example.com', '456 Đường Lê Lợi, Thị trấn S', 'profile17.jpg', b'1', b'1'),
('user18', 'password18', 'Đỗ', 'Thị T', '0852890123', 'dothit@example.com', '789 Đường Nguyễn Văn Linh, Thị trấn T', 'profile18.jpg', b'0', b'0'),
('user19', 'password19', 'Hà', 'Văn U', '0863901234', 'havanu@example.com', '567 Đường Trần Hưng Đạo, Thành phố U', 'profile19.jpg', b'1', b'1'),
('user20', 'password20', 'Trương', 'Thị V', '0874012345', 'truongthiv@example.com', '234 Đường Nguyễn Cư Trinh, Thành phố V', 'profile20.jpg', b'0', b'1'),
('user21', 'password21', 'Nghiêm', 'Văn X', '0885123456', 'nghiemvanx@example.com', '123 Đường Hoàng Văn Thụ, Thành phố X', 'profile21.jpg', b'1', b'1'),
('user22', 'password22', 'Tăng', 'Thị Y', '0896234567', 'tangthiy@example.com', '456 Đường Lê Lợi, Thị trấn Y', 'profile22.jpg', b'0', b'1'),
('user23', 'password23', 'Đinh', 'Văn Z', '0847345678', 'dinhvanz@example.com', '789 Đường Nguyễn Văn Linh, Thị trấn Z', 'profile23.jpg', b'1', b'0'),
('user24', 'password24', 'Đào', 'Thị AA', '0858456789', 'daothiaa@example.com', '567 Đường Trần Hưng Đạo, Thành phố AA', 'profile24.jpg', b'0', b'1'),
('user25', 'password25', 'Lại', 'Văn BB', '0869567890', 'laivanbb@example.com', '234 Đường Nguyễn Cư Trinh, Thành phố BB', 'profile25.jpg', b'1', b'0'),
('user26', 'password26', 'Quách', 'Thị CC', '0870678901', 'quachthiccc@example.com', '123 Đường Nguyễn Huệ, Thành phố CC', 'profile26.jpg', b'0', b'1'),
('user27', 'password27', 'Trương', 'Văn DD', '0881789012', 'truongvandd@example.com', '456 Đường Lê Lợi, Thị trấn DD', 'profile27.jpg', b'1', b'1'),
('user28', 'password28', 'Phùng', 'Thị EE', '0892890123', 'phungthiee@example.com', '789 Đường Nguyễn Văn Linh, Thị trấn EE', 'profile28.jpg', b'0', b'0'),
('user29', 'password29', 'Hoàng', 'Văn FF', '0843901234', 'hoangvanff@example.com', '567 Đường Trần Hưng Đạo, Thành phố FF', 'profile29.jpg', b'1', b'1'),
('user30', 'password30', 'Lưu', 'Thị GG', '0854012345', 'luuthigg@example.com', '234 Đường Nguyễn Cư Trinh, Thành phố GG', 'profile30.jpg', b'0', b'1'),
('user31', 'password31', 'Nguyễn', 'Văn HH', '0865123456', 'nguyenvanhh@example.com', '123 Đường Hoàng Văn Thụ, Thành phố HH', 'profile31.jpg', b'1', b'1'),
('user32', 'password32', 'Trần', 'Thị II', '0876234567', 'tranthii@example.com', '456 Đường Lê Lợi, Thị trấn II', 'profile32.jpg', b'0', b'1'),
('user33', 'password33', 'Lê', 'Văn KK', '0887345678', 'levankk@example.com', '789 Đường Nguyễn Văn Linh, Thị trấn KK', 'profile33.jpg', b'1', b'0'),
('user34', 'password34', 'Phạm', 'Thị LL', '0898456789', 'phamthill@example.com', '567 Đường Trần Hưng Đạo, Thành phố LL', 'profile34.jpg', b'0', b'1'),
('user35', 'password35', 'Vũ', 'Văn MM', '0849567890', 'vuvanmm@example.com', '234 Đường Nguyễn Cư Trinh, Thành phố MM', 'profile35.jpg', b'1', b'0'),
('user36', 'password36', 'Hoàng', 'Thị NN', '0850678901', 'hoangthinn@example.com', '123 Đường Nguyễn Huệ, Thành phố NN', 'profile36.jpg', b'0', b'1'),
('user37', 'password37', 'Đỗ', 'Văn OO', '0861789012', 'dovanoo@example.com', '456 Đường Lê Lợi, Thị trấn OO', 'profile37.jpg', b'1', b'1'),
('user38', 'password38', 'Nguyễn', 'Thị PP', '0872890123', 'nguyenthipp@example.com', '789 Đường Nguyễn Văn Linh, Thị trấn PP', 'profile38.jpg', b'0', b'0'),
('user39', 'password39', 'Lê', 'Văn QQ', '0883901234', 'levanqq@example.com', '567 Đường Trần Hưng Đạo, Thành phố QQ', 'profile39.jpg', b'1', b'1'),
('user40', 'password40', 'Nguyễn', 'Thị RR', '0894012345', 'nguyenthirr@example.com', '234 Đường Nguyễn Cư Trinh, Thành phố RR', 'profile40.jpg', b'0', b'1'),
('user41', 'password41', 'Trần', 'Văn SS', '0845123456', 'tranvanss@example.com', '123 Đường Hoàng Văn Thụ, Thành phố SS', 'profile41.jpg', b'1', b'1'),
('user42', 'password42', 'Phan', 'Thị TT', '0856234567', 'phanthitt@example.com', '456 Đường Lê Lợi, Thị trấn TT', 'profile42.jpg', b'0', b'1'),
('user43', 'password43', 'Hồ', 'Văn UU', '0867345678', 'hovanuu@example.com', '789 Đường Nguyễn Văn Linh, Thị trấn UU', 'profile43.jpg', b'1', b'0'),
('user44', 'password44', 'Nguyễn', 'Thị VV', '0878456789', 'nguyenthivv@example.com', '567 Đường Trần Hưng Đạo, Thành phố VV', 'profile44.jpg', b'0', b'1'),
('user45', 'password45', 'Vũ', 'Văn XX', '0889567890', 'vuvanxx@example.com', '234 Đường Nguyễn Cư Trinh, Thành phố XX', 'profile45.jpg', b'1', b'0'),
('user46', 'password46', 'Lê', 'Thị YY', '0890678901', 'lethiyy@example.com', '123 Đường Nguyễn Huệ, Thành phố YY', 'profile46.jpg', b'0', b'1'),
('user47', 'password47', 'Nguyễn', 'Văn ZZ', '0841789012', 'nguyenvanzz@example.com', '456 Đường Lê Lợi, Thị trấn ZZ', 'profile47.jpg', b'1', b'1'),
('user48', 'password48', 'Trần', 'Thị AAA', '0852890123', 'tranthiaaa@example.com', '789 Đường Nguyễn Văn Linh, Thị trấn AAA', 'profile48.jpg', b'0', b'0'),
('user49', 'password49', 'Lê', 'Văn BBB', '0863901234', 'levanbbb@example.com', '567 Đường Trần Hưng Đạo, Thành phố BBB', 'profile49.jpg', b'1', b'1'),
('user50', 'password50', 'Lê', 'Thị CCC', '0874012345', 'lethiccc@example.com', '234 Đường Nguyễn Cư Trinh, Thành phố CCC', 'profile50.jpg', b'0', b'1'),
('user51', '123456', 'Phạm Công', 'Minh', '0999999999', 'congminh.190702@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('user52', '123456', 'Đỗ Mai Hoài', 'Bão', '0987654321', 'baodmhdev@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('user53', '123456', 'Đặng Đoàn Khánh', 'Duy', '0987123456', 'dangdoankhanhduy99@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('user54', '123456', 'Nhân', 'Viên', '0999999999', 'nhanviensportify@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('user55', '123456', 'Phạm Thanh', 'Duy', '0123456789', 'thanhduy102@gmail.com', 'Quận Gò Vấp,TP HCM', NULL, b'1', b'1'),
('user56', '123456', 'Tô Thanh', 'Hậu', '0123456789', 'thanhhau@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('user57', '123456', 'Phan Nhật', 'Hào', '0123456789', 'phannhathao@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('user58', '123456', 'Lê Hồng', 'Chinh', '0123456789', 'chinhhl@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('user59', '123456', 'Nguyễn Thành', 'Nhân', '0123456789', 'nhannguyen@gmail.com', 'TP HCM', NULL, b'1', b'1'),
('user60', '123456', 'Lê Văn', 'Trường', '0123456789', 'truongle@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('user61', '123456', 'Phạm Ngọc', 'Bích', '0123456789', 'bichpham@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('user62', '123456', 'Nguyễn Ngọc', 'Ánh', '0123456789', 'anhngoc@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('user63', '123456', 'Đặng Thu ', 'Hoài', '0123456789', 'hoaithu@gmail.com', 'TP HCM', NULL, b'0', b'1'),
('user64', '123456', 'Nguyễn Khánh', 'Linh', '0123456789', 'linhk@gmail.com', 'Quận 12,TP HCM', NULL, b'0', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `voucherid` varchar(20) NOT NULL,
  `discountpercent` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`voucherid`, `discountpercent`, `startdate`, `enddate`) VALUES
('ABCDNAS21', 10, '2023-05-30', '2023-06-30'),
('DEMO', 30, '2024-05-10', '2024-05-18'),
('EVENT07', 10, '2023-07-01', '2023-07-30'),
('IT17202DEV', 15, '2023-06-12', '2023-06-30'),
('manew', 23, '2024-05-11', '2024-05-23'),
('NEWYEAR2023', 5, '2023-01-01', '2023-12-30'),
('SIEUSALE88', 20, '2023-08-08', '2023-08-15'),
('SPORTIFY2023', 30, '2023-05-30', '2023-06-10'),
('TEAMDEV23', 20, '2023-05-30', '2023-06-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorized`
--
ALTER TABLE `authorized`
  ADD PRIMARY KEY (`authorizedid`),
  ADD KEY `FK_authorized_roles` (`roleid`),
  ADD KEY `FK_authorized_users` (`username`);

--
-- Indexes for table `bookingdetails`
--
ALTER TABLE `bookingdetails`
  ADD PRIMARY KEY (`bookingdetailid`),
  ADD KEY `FK_bookingdetails_bookings` (`bookingid`),
  ADD KEY `FK_bookingdetails_shifts` (`shiftid`),
  ADD KEY `FK_bookingdetails_field` (`fieldid`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`bookingid`),
  ADD KEY `FK_bookings_users` (`username`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`),
  ADD KEY `FK_contact_users` (`username`);

--
-- Indexes for table `eventweb`
--
ALTER TABLE `eventweb`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `FK_field_sporttype` (`sporttypeid`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderdetailsid`),
  ADD KEY `FK_orderdetails_orders` (`orderid`),
  ADD KEY `FK_orderdetails_products` (`productid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `FK_orders_users` (`username`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `FK_products_categories` (`categoryid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`shiftid`);

--
-- Indexes for table `sporttype`
--
ALTER TABLE `sporttype`
  ADD PRIMARY KEY (`sporttypeid`);

--
-- Indexes for table `teamdetails`
--
ALTER TABLE `teamdetails`
  ADD PRIMARY KEY (`teamdetailid`),
  ADD KEY `FK_teamdetails_teams` (`teamid`),
  ADD KEY `FK_teamdetails_users` (`username`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`teamid`),
  ADD KEY `FK_teams_sporttype` (`sporttypeid`),
  ADD KEY `FK_teams_users` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`voucherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorized`
--
ALTER TABLE `authorized`
  MODIFY `authorizedid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `bookingdetails`
--
ALTER TABLE `bookingdetails`
  MODIFY `bookingdetailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `eventweb`
--
ALTER TABLE `eventweb`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `field`
--
ALTER TABLE `field`
  MODIFY `fieldid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderdetailsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `shiftid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teamdetails`
--
ALTER TABLE `teamdetails`
  MODIFY `teamdetailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `teamid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorized`
--
ALTER TABLE `authorized`
  ADD CONSTRAINT `FK_authorized_roles` FOREIGN KEY (`roleid`) REFERENCES `roles` (`roleid`),
  ADD CONSTRAINT `FK_authorized_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `bookingdetails`
--
ALTER TABLE `bookingdetails`
  ADD CONSTRAINT `FK_bookingdetails_bookings` FOREIGN KEY (`bookingid`) REFERENCES `bookings` (`bookingid`),
  ADD CONSTRAINT `FK_bookingdetails_field` FOREIGN KEY (`fieldid`) REFERENCES `field` (`fieldid`),
  ADD CONSTRAINT `FK_bookingdetails_shifts` FOREIGN KEY (`shiftid`) REFERENCES `shifts` (`shiftid`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `FK_bookings_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK_contact_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `field`
--
ALTER TABLE `field`
  ADD CONSTRAINT `FK_field_sporttype` FOREIGN KEY (`sporttypeid`) REFERENCES `sporttype` (`sporttypeid`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK_orderdetails_orders` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`),
  ADD CONSTRAINT `FK_orderdetails_products` FOREIGN KEY (`productid`) REFERENCES `products` (`productid`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products_categories` FOREIGN KEY (`categoryid`) REFERENCES `categories` (`categoryid`);

--
-- Constraints for table `teamdetails`
--
ALTER TABLE `teamdetails`
  ADD CONSTRAINT `FK_teamdetails_teams` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`),
  ADD CONSTRAINT `FK_teamdetails_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `FK_teams_sporttype` FOREIGN KEY (`sporttypeid`) REFERENCES `sporttype` (`sporttypeid`),
  ADD CONSTRAINT `FK_teams_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
