-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2017 at 09:16 PM
-- Server version: 5.7.17-0ubuntu0.16.04.2
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javaweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `Name`) VALUES
('ID01', 'Citizen'),
('ID02', 'Seiko'),
('ID03', 'Fosil'),
('ID05', 'Omega');

-- --------------------------------------------------------

--
-- Table structure for table `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `Name` text,
  `IDProduct` varchar(10) NOT NULL,
  `IDType` varchar(5) DEFAULT NULL,
  `Detail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Brand` text NOT NULL,
  `ModelNumber` text NOT NULL,
  `PartNumber` text,
  `ItemShape` text,
  `DialWindowMaterialType` text,
  `DisplayType` text,
  `Clasp` text,
  `CaseMaterial` text,
  `CaseDiameter` text,
  `CaseThickness` text,
  `BandMaterial` text,
  `BandLength` text,
  `BandWidth` text,
  `BandColor` text,
  `DialColor` text,
  `Calen` text,
  `WaterDepth` text,
  `PriceDefault` double NOT NULL,
  `PriceCurrent` double NOT NULL,
  `images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`Name`, `IDProduct`, `IDType`, `Detail`, `Brand`, `ModelNumber`, `PartNumber`, `ItemShape`, `DialWindowMaterialType`, `DisplayType`, `Clasp`, `CaseMaterial`, `CaseDiameter`, `CaseThickness`, `BandMaterial`, `BandLength`, `BandWidth`, `BandColor`, `DialColor`, `Calen`, `WaterDepth`, `PriceDefault`, `PriceCurrent`, `images`) VALUES
('Citizen Eco-Drive Men\'s BN0151-09L Promaster Diver Watch With Blue PU Band', 'SP01', 'ID01', 'Công ty được thành lập vào năm 1924. Các cha đẻ đã chọn cái tên Citizen để nó gần Trái tim của mọi người ở khắp mọi nơi và ngay sau khi chấp nhận tên chính thức của công ty là Citizen Watch Company. Trong vòng 70 năm qua Citizen đã mở rộng kinh doanh trên toàn thế giới và đã đạt được sự công nhận là thương hiệu toàn cầu. Khoảng thời gian 25 năm vừa qua đã trùng hợp với sự gia tăng mạnh mẽ của công ty đối với vị trí hiện tại của nó như là nhà sản xuất đồng hồ lớn nhất thế giới, một sự phân biệt mà Citizen đã tổ chức hàng năm kể từ năm 1986. Ngoài kích thước hoàn hảo, Citizen cũng được công nhận là một nhà lãnh đạo toàn cầu về công nghệ tiên tiến. Từ chiếc đồng hồ LCD mỏng nhất thế giới đến đồng hồ nhận diện giọng nói đầu tiên và đồng hồ lặn chuyên nghiệp đầu tiên trên thế giới với cảm biến độ sâu điện tử, hồ sơ về Citizen chưa từng có của đầu tiên trên thế giới. Gần đây hơn, Citizen đã đặt ra một vị trí mới trong vai trò dẫn đầu trong việc chấm công bằng đồng hồ sinh thái được hỗ trợ nhẹ. Với mô hình từ mô hình trang phục sang mô hình thể thao đến đồng hồ lặn chuyên nghiệp, Citizen Eco-Drive chạy liên tục trong bất kỳ loại ánh sáng tự nhiên hoặc nhân tạo nào cho cả cuộc đời sử dụng. Nạp nhiên liệu bằng ánh sáng, nó không bao giờ cần đến pin cả.', 'Citizen', 'BN0151-09L', 'BN0151-09L', 'Round', 'Mineral', 'Analog', 'Buckle', 'none', 'Stainless steel', '43 millimeters', '12 millimeters', 'Polyurethane', 'Men\'s Standard', '19 millimeters', 'Blue', '	Blue', '660 Feet', 23900000, 18900000, 'sp01.jpg'),
('Citizen Men\'s BL5250-02L Titanium Eco-Drive Watch with Leather Band', 'SP02', 'ID01', 'Tính năng, đặc điểm. Titanium Case. Black Dial. Khu dự trữ năng lượng 270 ngày. 120 giây Chronograph đo được đến 60 phút. 1224 Giờ Giờ. Dual Thời gian. Báo thức. Lịch Perpetual tự động điều chỉnh cho Odd. Và thậm chí tháng và năm nhuận đến năm 2100. Phí trong ánh nắng mặt trời hoặc trong nhà. Tinh thể phản quang. Chức Năng Tiết Kiệm Điện. Chỉ báo sạc thấp. Mối xoay thời gian quay một chiều quay một chiều. Tư vấn Đặt lại Thời gian. 200 m. Chống nước. Giới tính - nam giới', 'Citizen', 'BL5250-02L', 'BL5250-02L', 'Round', 'Mineral', 'Analog', 'Buckle', 'Titanium', '43 millimeters', '13 millimeters', 'Pig skin leather', 'mens', '20 millimeters', 'Brown', 'Black', 'Date', '660 Feet', 23900000, 18900000, 'sp02.jpg'),
('Citizen Men\'s BL5470-06A Stainless Steel Eco-Drive Watch with Leather Band', 'SP03', 'ID01', 'Kể từ khi thành lập vào năm 1930, CITIZEN đã thúc đẩy một tư duy đa văn hoá nhằm thúc đẩy sự xuất sắc và sáng tạo. Chính cái tên của thương hiệu truyền đạt sự tôn trọng sâu sắc đối với nghề thủ công và được các công dân quen thuộc trên thế giới biết đến. Vì vậy, với tư cách là một "công dân" của thế giới, chúng tôi phải chịu trách nhiệm giúp nuôi trồng một nền văn hoá thay đổi tích cực và tiến triển đang tiến triển thông qua nghề của chúng tôi. Chúng tôi thực hiện sứ mệnh đó một cách nghiêm túc và kiên định chào đón những gì tương lai có thể mang lại.\r\n\r\nLà một nhà sản xuất thực sự, Horsterie CITIZEN tích hợp một quy trình sản xuất toàn diện từ việc tạo ra các bộ phận riêng cho một bộ đồng hồ cuối cùng của đồng hồ. Đó là phương pháp tiếp cận của thợ thủ công để theo dõi việc sản xuất dựa trên việc thúc đẩy ranh giới của công nghệ và tận dụng kinh nghiệm của chúng tôi để khám phá các khả năng mới.\r\n\r\nMột bước đột phá công nghệ quan trọng là sự phát triển của chiếc đồng hồ có ánh sáng. CITIZEN đã đi tiên phong trong việc đổi mới kỹ thuật này trước các nhà sản xuất đồng hồ khác vào đầu năm 1976, dẫn đến việc tung ra Eco-Drive năm 1995. Sử dụng nguồn điện được chuyển đổi từ hầu hết nguồn sáng, sự đổi mới đột ngột này đã thay đổi mãi mãi theo cách mà đồng hồ có thể Được cung cấp năng lượng. Eco-Drive loại bỏ sự cần thiết phải thay thế pin, làm cho nó đặc biệt có lợi cho các khu vực mà pin chuyên nghiệp như vậy không thể có được. Điều này làm cho lĩnh vực công dân của hầu như mọi quốc gia có thể trải nghiệm niềm vui không giới hạn khi mặc và sử dụng đồng hồ công dân.\r\n\r\nChính sách phát triển sản phẩm "Fusion of Technology and Beauty" vẫn là động lực không ngừng của chúng tôi để hợp nhất các công nghệ tiên tiến với sự hoàn hảo của vẻ đẹp thiết kế, kết quả là truyền cảm hứng cho mọi người cố gắng hết sức mình vào bất cứ lúc nào.\r\n\r\nCITIZEN khởi động một chiến dịch mới hợp tác với Wieden + Kennedy, Better Starts Now. Đây là niềm tin đơn giản rằng dù bạn là ai hay bạn làm gì, bạn vẫn luôn luôn có thể làm được gì đó tốt hơn - và bây giờ là lúc bắt đầu làm việc đó. Chúng tôi tin rằng tốt hơn và bây giờ cả hai đều vô hạn, và luôn có một \'tốt hơn\' và một \'bây giờ\' mới trong đó bạn có thể bắt đầu theo đuổi nó. Rõ ràng từ khi bắt đầu dự án này, chúng tôi đã dành riêng cho lý tưởng này ... không phải là quá khứ mà đến hiện tại, và tất cả những gì chúng ta có thể cải thiện. Để giúp truyền đạt niềm tin này đến thế giới, chúng tôi đã tạo ra một bộ phim thương hiệu CITIZEN toàn cầu mới, nhãn hiệu và trang web thương hiệu thể hiện ra triết lý của Better Starts Now.', 'Citizen', 'BL5470-06A', 'BL5470-06A', 'Round', 'Mineral', 'Analog', 'Buckle', 'Stainless steel', '44 millimeters', '12 millimeters', 'Leather', 'Men\'s Standard', '22 millimeters', 'Brown', 'Silver', 'Perpetual calendar\r\n', '330 Feet\r\n', 23900000, 18900000, 'sp03.jpg'),
('Citizen Eco-Drive Men\'s BM7190-05A Eco-Drive Stainless Steel Watch', 'SP04', 'ID01', 'Đồng hồ thời trang bằng thép không gỉ BM7190-05A dành cho nam giới của Citizen Men là một tuyên bố tinh tế về sự tinh tế và đẳng cấp. Có một chiếc đồng hồ bằng bạc với màn hình hiển thị ngày và một dải da thuộc tổng hợp màu đen, đồng hồ này là bộ sưu tập đồng hồ tuyệt vời mà bạn yêu cầu.', 'Citizen', 'BM7190-05A\r\n', 'BM7190-05A\r\n', 'Round', 'Mineral', 'Analog', 'Buckle', 'Stainless steel\r\n', '40 millimeters\r\n', '11.5 millimeters\r\n', 'Synthetic leather\r\n', 'Men\'s Standard', '22 millimeters', 'Black', 'Silver', 'Date', '99 Feet\r\n', 23900000, 18900000, 'sp04.jpg'),
('Citizen Men\'s AT0810-12E Eco-Drive Stainless Steel and Leather Watch\r\n', 'SP05', 'ID01', 'Kể từ khi thành lập vào năm 1930, CITIZEN đã thúc đẩy một tư duy đa văn hoá nhằm thúc đẩy sự xuất sắc và sáng tạo. Chính cái tên của thương hiệu truyền đạt sự tôn trọng sâu sắc đối với nghề thủ công và được các công dân quen thuộc trên thế giới biết đến. Vì vậy, với tư cách là một "công dân" của thế giới, chúng tôi phải chịu trách nhiệm giúp nuôi trồng một nền văn hoá thay đổi tích cực và tiến triển đang tiến triển thông qua nghề của chúng tôi. Chúng tôi thực hiện sứ mệnh đó một cách nghiêm túc và kiên định chào đón những gì tương lai có thể mang lại.\r\n\r\nLà một nhà sản xuất thực sự, Horsterie CITIZEN tích hợp một quy trình sản xuất toàn diện từ việc tạo ra các bộ phận riêng cho một bộ đồng hồ cuối cùng của đồng hồ. Đó là phương pháp tiếp cận của thợ thủ công để theo dõi việc sản xuất dựa trên việc thúc đẩy ranh giới của công nghệ và tận dụng kinh nghiệm của chúng tôi để khám phá các khả năng mới.\r\n\r\nMột bước đột phá công nghệ quan trọng là sự phát triển của chiếc đồng hồ có ánh sáng. CITIZEN đã đi tiên phong trong việc đổi mới kỹ thuật này trước các nhà sản xuất đồng hồ khác vào đầu năm 1976, dẫn đến việc tung ra Eco-Drive năm 1995. Sử dụng nguồn điện được chuyển đổi từ hầu hết nguồn sáng, sự đổi mới đột ngột này đã thay đổi mãi mãi theo cách mà đồng hồ có thể Được cung cấp năng lượng. Eco-Drive loại bỏ sự cần thiết phải thay thế pin, làm cho nó đặc biệt có lợi cho các khu vực mà pin chuyên nghiệp như vậy không thể có được. Điều này làm cho lĩnh vực công dân của hầu như mọi quốc gia có thể trải nghiệm niềm vui không giới hạn khi mặc và sử dụng đồng hồ công dân.\r\n\r\nChính sách phát triển sản phẩm "Fusion of Technology and Beauty" vẫn là động lực không ngừng của chúng tôi để hợp nhất các công nghệ tiên tiến với sự hoàn hảo của vẻ đẹp thiết kế, kết quả là truyền cảm hứng cho mọi người cố gắng hết sức mình vào bất cứ lúc nào.\r\n\r\nCITIZEN khởi động một chiến dịch mới hợp tác với Wieden + Kennedy, Better Starts Now. Đây là niềm tin đơn giản rằng dù bạn là ai hay bạn làm gì, bạn vẫn luôn luôn có thể làm được gì đó tốt hơn - và bây giờ là lúc bắt đầu làm việc đó. Chúng tôi tin rằng tốt hơn và bây giờ cả hai đều vô hạn, và luôn có một \'tốt hơn\' và một \'bây giờ\' mới trong đó bạn có thể bắt đầu theo đuổi nó. Rõ ràng từ khi bắt đầu dự án này, chúng tôi đã dành riêng cho lý tưởng này ... không phải là quá khứ mà đến hiện tại, và tất cả những gì chúng ta có thể cải thiện. Để giúp truyền đạt niềm tin này đến thế giới, chúng tôi đã tạo ra một bộ phim thương hiệu CITIZEN toàn cầu mới, nhãn hiệu và trang web thương hiệu thể hiện ra triết lý của Better Starts Now.', 'Citizen', 'AT0810-12E\r\n', 'AT0810-12E\r\n', 'Round', 'Mineral', 'Analog', 'Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '13 millimeters\r\n', 'Pig skin leather\r\n', 'Mens\r\n', '22 millimeters\r\n', 'Black', 'Black\r\n', 'Date', '330 Feet\r\n', 23900000, 18900000, 'sp05.jpg'),
('Citizen Men\'s CA0467-03E "Primo" Stainless Steel Eco-Drive Watch with Leather Band', 'SP06', 'ID01', 'Kể từ khi thành lập vào năm 1930, CITIZEN đã thúc đẩy một tư duy đa văn hoá nhằm thúc đẩy sự xuất sắc và sáng tạo. Chính cái tên của thương hiệu truyền đạt sự tôn trọng sâu sắc đối với nghề thủ công và được các công dân quen thuộc trên thế giới biết đến. Vì vậy, với tư cách là một "công dân" của thế giới, chúng tôi phải chịu trách nhiệm giúp nuôi trồng một nền văn hoá thay đổi tích cực và tiến triển đang tiến triển thông qua nghề của chúng tôi. Chúng tôi thực hiện sứ mệnh đó một cách nghiêm túc và kiên định chào đón những gì tương lai có thể mang lại.\r\n\r\nLà một nhà sản xuất thực sự, Horsterie CITIZEN tích hợp một quy trình sản xuất toàn diện từ việc tạo ra các bộ phận riêng cho một bộ đồng hồ cuối cùng của đồng hồ. Đó là phương pháp tiếp cận của thợ thủ công để theo dõi việc sản xuất dựa trên việc thúc đẩy ranh giới của công nghệ và tận dụng kinh nghiệm của chúng tôi để khám phá các khả năng mới.\r\n\r\nMột bước đột phá công nghệ quan trọng là sự phát triển của chiếc đồng hồ có ánh sáng. CITIZEN đã đi tiên phong trong việc đổi mới kỹ thuật này trước các nhà sản xuất đồng hồ khác vào đầu năm 1976, dẫn đến việc tung ra Eco-Drive năm 1995. Sử dụng nguồn điện được chuyển đổi từ hầu hết nguồn sáng, sự đổi mới đột ngột này đã thay đổi mãi mãi theo cách mà đồng hồ có thể Được cung cấp năng lượng. Eco-Drive loại bỏ sự cần thiết phải thay thế pin, làm cho nó đặc biệt có lợi cho các khu vực mà pin chuyên nghiệp như vậy không thể có được. Điều này làm cho lĩnh vực công dân của hầu như mọi quốc gia có thể trải nghiệm niềm vui không giới hạn khi mặc và sử dụng đồng hồ công dân.\r\n\r\nChính sách phát triển sản phẩm "Fusion of Technology and Beauty" vẫn là động lực không ngừng của chúng tôi để hợp nhất các công nghệ tiên tiến với sự hoàn hảo của vẻ đẹp thiết kế, kết quả là truyền cảm hứng cho mọi người cố gắng hết sức mình vào bất cứ lúc nào.\r\n\r\nCITIZEN khởi động một chiến dịch mới hợp tác với Wieden + Kennedy, Better Starts Now. Đây là niềm tin đơn giản rằng dù bạn là ai hay bạn làm gì, bạn vẫn luôn luôn có thể làm được gì đó tốt hơn - và bây giờ là lúc bắt đầu làm việc đó. Chúng tôi tin rằng tốt hơn và bây giờ cả hai đều vô hạn, và luôn có một \'tốt hơn\' và một \'bây giờ\' mới trong đó bạn có thể bắt đầu theo đuổi nó. Rõ ràng từ khi bắt đầu dự án này, chúng tôi đã dành riêng cho lý tưởng này ... không phải là quá khứ mà đến hiện tại, và tất cả những gì chúng ta có thể cải thiện. Để giúp truyền đạt niềm tin này đến thế giới, chúng tôi đã tạo ra một bộ phim thương hiệu CITIZEN toàn cầu mới, nhãn hiệu và trang web thương hiệu thể hiện ra triết lý của Better Starts Now.', 'Citizen', 'CA0467-03E\r\n', 'CA0467-03E\r\n', 'Round', 'Mineral', 'Analog', 'Buckle', 'Stainless steel\r\n', '44 millimeters\r\n', '13 millimeters\r\n', 'Synthetic leather\r\n', 'Men\'s Standard\r\n\r\n', '23 millimeters\r\n', 'Black', 'Black\r\n', 'Date', '330 Feet\r\n', 23900000, 18900000, 'sp06.jpg'),
('Citizen Eco-Drive Men\'s CA4085-08E Primo Stingray 620 Watch', 'SP07', 'ID01', 'Mang đến sự tinh tế về thể thao cho bộ sưu tập của bạn với Citizen Black với Đồng hồ Adrenaline Eco-Drive của Orange Men. Bạn sẽ dẫn dắt lĩnh vực thời trang cũng như công nghệ với phong cách lấy cảm hứng đua xe của chiếc đồng hồ này và đồng hồ 1/5 giây. Được trang bị công nghệ Eco-Drive của Citizen, đồng hồ được cung cấp bởi bất kỳ nguồn ánh sáng xung quanh và không bao giờ cần pin.', 'Citizen', 'CA4085-08E\r\n', 'CA4085-08E\r\n', 'Round', 'Mineral', 'Analog', 'Buckle', 'Stainless steel\r\n', '44 millimeters\r\n', '14 millimeters\r\n', 'Synthetic leather\r\n', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Black', 'Black\r\n', 'Date', '330 Feet\r\n', 23900000, 18900000, 'sp07.jpg'),
('Citizen Eco-Drive Men\'s Stainless Steel Watch with Brown Leather Strap', 'SP08', 'ID01', 'Bạn mạnh dạn hướng đến cuộc phiêu lưu tiếp theo của bạn trong Citizen Eco-Drive Watch. Nhắc lại phong cách aviator giữa thế kỷ, chiếc đồng hồ của nam giới có một vibe vintage mát mẻ. Với vỏ bằng thép không rỉ, các chữ số sáng lớn và dây đeo bằng da tương phản, thì đó là chiếc đồng hồ cổ điển với quần jean và khaki của bạn.', 'Citizen', 'DE4085-08E\r\n', 'DE4085-08E\r\n', 'Round', 'Mineral', 'Analog', 'Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '14 millimeters\r\n', 'Synthetic leather\r\n', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Black', 'Black\r\n', 'Date', '330 Feet\r\n', 23900000, 18900000, 'sp08.jpg'),
('Citizen Men\'s Eco-Drive Stainless Steel Watch with Black Leather Strap', 'SP09', 'ID01', 'Các tính năng quay số trắng bao gồm ngày và ngày subdials encased với thủy tinh thủy tinh khoáng tinh thể. Một dây đeo da đen hoàn thành phụ kiện thời gian này', 'Citizen', 'DE4085-01A', 'DE4085-01A\r\n', 'Round', 'Mineral', 'Analog', 'Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '12 millimeters\r\n', 'Synthetic leather\r\n', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Black', 'Black\r\n', 'Date', '330 Feet\r\n', 23900000, 18900000, 'sp09.jpg'),
('Citizen Eco-Drive Men\'s Silvertone and Black World Time A-T Watch', 'SP10', 'ID01', 'Đậm và rực rỡ, Citizen Eco-Drive Thế giới Thời gian Watch làm cho một bổ sung ấn tượng cho bất kỳ trang phục. Với đồng bộ nguyên tử đồng bộ hóa cho độ chính xác cao, tính lịch sử vĩnh cửu chronograph này có một bộ đếm thời gian thế giới tương tự mà giữ thời gian ở 26 thành phố. Một xây dựng bằng thép không rỉ gây ấn tượng hấp dẫn cho chiếc đồng hồ hiện đại của nam giới.', 'Citizen', 'DE4085-04E', 'DE4085-04E\r\n', 'Round', 'Mineral', 'Analog', 'Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '11 millimeters\r\n', 'Synthetic leather\r\n', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Silver', 'Silver', 'Date', '330 Feet\r\n', 23900000, 18900000, 'sp10.jpg'),
('Omega Men\'s 32632405001001 Speed Master Analog Display Automatic Self Wind Silver Watch', 'SP11', 'ID05', 'Hộp đựng bằng thép không rỉ, dây cao su, quay số màu đen, tự động chuyển động, chống xước sapphire, chịu nước đến 10 ATM - 100 mét - 330 feet', 'Omega\r\n', '32632405001001\r\n', '32632405001001\r\n', 'Round', 'Synthetic sapphire\r\n', 'Analog', 'Fold over clasp', 'Stainless steel\r\n', '40 millimeters\r\n', '16 millimeters\r\n', 'Rubber\r\n', 'Men\'s Standard\r\n\r\n', '19 millimeters\r\n', 'Silver', 'Black', 'Date display at the 6 o\'clock position\r\n', '330 Feet\r\n', 23900000, 18900000, 'sp11.jpg'),
('Omega Speedmaster Professional Moonwatch 311.33.42.30.01.001\r\n', 'SP12', 'ID05', 'Hộp đựng bằng thép không rỉ, dây cao su, quay số màu đen, tự động chuyển động, chống xước sapphire, chịu nước đến 10 ATM - 100 mét - 330 feet', 'Omega\r\n', '311.33.42.30.01.001/1\r\n', '311.33.42.30.01.001\r\n', 'Round', 'sapphire-crystal', 'Analog', 'Deployment Buckle', 'Stainless steel\r\n', '40 millimeters\r\n', '14 millimeters\r\n', 'Crocodile leather\r\n', 'Men\'s Standard\r\n\r\n', '20 millimeters\r\n', 'Black', 'Black', 'Date \r\n', '330 Feet\r\n', 23900000, 11900000, 'sp12.jpg'),
('Omega Men\'s 31130423001006 Speedmaster Analog Display Mechanical Hand Wind Silver Watch', 'SP13', 'ID05', 'Vỏ thép không gỉ với vòng thép không gỉ. Vòng cố định bằng thép không rỉ cố định với một vành đai trên cùng màu đen hiển thị các ký hiệu tachymeter. Quay số màu đen với bàn tay bạc và chỉ số giờ đánh dấu. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Chronograph - ba mặt số phụ hiển thị: 60 giây, 30 phút và 12 giờ. Động cơ gió Omega cỡ 1863 với công suất dự trữ 48 giờ. Tinh thể sapphire chống xước. Kéo / đẩy vương miện. Trường hợp xương lại. Kích thước trường hợp: 42 mm. Chiều dày vỏ: 14,3 mm. Vỏ hình dạng. Chiều rộng băng: 24,1 mm. Chiều dài ban nhạc: 9,5 inch. Ẩn gấp trên clasp. Khả năng chịu nước ở 30 mét / 100 feet. Chức năng: chronograph, tachymeter, giờ, phút, giây, tachymeter. Phong cách ăn mặc xem. Xem nhãn hiệu: Swiss Made. Các biến thể của sản phẩm: 311 30 42 30 01 006, 311-30-42-30-01-006, 311/30/42/30/01/006, 31130423001006. Omega Speedmaster Professional Moon Chronograph Mens Watch 311.30.42.30.01.006.\r\n\r\nOmega Speedmaster là một trong những chiếc đồng hồ mang tính biểu tượng nhất của Omega. Là một phần của tất cả sáu nhiệm vụ âm lịch, Speedmaster huyền thoại là một đại diện ấn tượng của tinh thần đi tiên phong mạo hiểm của thương hiệu. Bộ đếm mặt trăng "xem mặt trăng" chuyên nghiệp của omega Speedmaster có mặt số màu đen được bao phủ bởi một viên pha lê sapphire chống xước và được trang bị một giây quay số nhỏ, máy ghi âm 30 phút và máy ghi âm 12 giờ cùng với tay chronograph trung tâm. Miếng viền màu đen, với thang đo tachometric, được gắn trên vỏ thép không rỉ 42 mm và được trình bày trên một chiếc vòng tay phù hợp. Trái tim của chiếc đồng hồ chronograph này là chiếc Caliber 1863 của cơ thể Omega, phong trào bằng tay quanh co nổi tiếng được treo trên mặt trăng, có thể nhìn thấy qua chiếc Case trong suốt. Đồng hồ này được cung cấp với một chiếc hộp đặc biệt xem mặt trăng đặc biệt có dây đeo "NATO", dây buộc Velcro, một công cụ để thay đổi vòng tay và một cuốn sách làm nổi bật các cuộc phiêu lưu của Master Speed.', 'Omega\r\n', '31130423001006\r\n', '31130423001006\r\n', 'Round', 'Anti reflective sapphire\r\n', 'Analog', 'Fold over clasp', 'Stainless steel\r\n', '42 millimeters\r\n', '14.3 millimeters\r\n', 'Stainless steel\r\n', 'Men\'s Standard\r\n\r\n', '24 millimeters\r\n', 'Silver\r\n', 'Black', 'Date \r\n', '99 Feet\r\n', 23900000, 18900000, 'sp13.jpg'),
('Omega Men\'s 3573.50.00 Speedmaster Professional Mechanical Chronograph Watch', 'SP14', 'ID05', 'Vỏ thép không gỉ với vòng thép không gỉ. Cố định mạ ion đen cố định với tachymeter. Đen quay số với bàn tay phát sáng và đánh dấu giờ đánh. Dấu hiệu phút quanh rìa ngoài. Những dấu hiệu phát sáng quanh rìa ngoài. Chronograph - ba mặt số phụ hiển thị: 60 giây, 30 phút và 12 giờ. Hướng dẫn sử dụng quanh co chronograph chuyển động. Tinh thể sapphire chống xước. Trường hợp xương lại. Đường kính hộp: 42 mm. Chiều dày vỏ: 14,3 mm. Khóa mở khóa kép. Chịu nước ở độ cao 50 mét / 165 feet. Chức năng: giờ, phút, giây, chronograph, tachymeter. Omega Speedmaster Professional Chronograph Moon Xem 3573.50.\r\n\r\nCâu chuyện Omega\r\nCâu chuyện Omega bắt đầu vào năm 1848, khi người sáng lập Louis Brandt bắt đầu lắp ráp đồng hồ bỏ túi chính xác từ các bộ phận của các thợ thủ công địa phương trong vùng La Chaux-de-Fonds thuộc vùng tây bắc của Thụy Sĩ. Tuy nhiên, tên của Omega đã không xuất hiện cho đến năm 1894, sau khi Louis Brandt qua đời và truyền thống đồng hồ của ông bị các con trai, Louis-Paul và Cesar Brandt chiếm giữ. Đồng hồ Omega từ lâu đã được kết hợp với màn hình quyến rũ và các ngôi sao thể thao - Omega Seamaster nổi tiếng là chiếc đồng hồ của James Bond - với các đại sứ hiện tại bao gồm Pierce Brosnan, Nicole Kidman, Anna Kournikova, bơi lội Michael Phelps và Ian Thorpe.\r\n\r\nNhưng Omega không chỉ là một chiếc đồng hồ thời trang. Năm 1965, chiếc Chronograph Omega Speedmaster đã được NASA "bay theo tiêu chuẩn cho tất cả các nhiệm vụ không gian có người lái" như là chiếc đồng hồ duy nhất đã chịu đựng tất cả các bài kiểm tra nghiêm trọng của cơ quan vũ trụ Hoa Kỳ, bao gồm việc vượt qua các cấp cho các cú sốc, rung động và nhiệt độ cực đoan, Từ 18 đến 93 độ Celsius. Khoảnh khắc vĩ đại nhất trong lịch sử của Speedmaster chắc chắn là 20 tháng 7 năm 1969 vào lúc 02:56 GMT, khi nó ghi lại những bước chân đầu tiên của con người trên bề mặt Mặt trăng như là một phần của sứ mệnh Apollo 11. Ngày nay, Omega được biết đến với sự kiểm tra nghiêm ngặt các phong trào, trường hợp và ban nhạc mới. Mỗi phong trào Omega mới được kiểm tra trên cổ tay trong các mô hình Omega hiện tại, trong khi các cuộc thử nghiệm khác nhau được tiến hành để xác định độ bền nhiệt độ, chống sốc và chống rung.', 'Omega\r\n', '3573.50.00\r\n', '3573.50.00\r\n', 'Round', 'Anti reflective scratch resistant sapphire\r\n', 'Analog', 'Fold-Over Clasp with Double Push-Button Safety', 'Stainless steel\r\n', '42 millimeters\r\n', '14 millimeters\r\n', 'Stainless steel\r\n', 'mens\r\n\r\n', '24 millimeters\r\n', 'Black\r\n', 'Black', 'Date \r\n', '99 Feet\r\n', 23900000, 18900000, 'sp14.jpg'),
('Omega Men\'s 31130423001005 Speedmaster Analog Display Mechanical Hand Wind Silver Watch', 'SP15', 'ID05', 'Omega Speedmaster là một trong những chiếc đồng hồ mang tính biểu tượng nhất của Omega. Là một phần của tất cả sáu nhiệm vụ âm lịch, Speedmaster huyền thoại là một đại diện ấn tượng của tinh thần đi tiên phong mạo hiểm của thương hiệu. Bộ đếm mặt trăng chuyên nghiệp "omega Speedmaster" này có mặt nạ đen bao phủ bởi một tinh thể hesalite và được trang bị một giây quay phụ nhỏ, máy ghi âm 30 phút và máy ghi âm 12 giờ cùng với bàn tay chronograph trung tâm. Miếng viền màu đen, với thang đo tachometric, được gắn trên một vỏ thép không rỉ 42 mm và được trình bày trên một chiếc vòng tay phù hợp. Trong trái tim của chiếc đồng hồ chronograph này là chiếc Calibre 1861 của cơ thể Omega, phong trào bằng tay quanh co nổi tiếng đã được mang trên mặt trăng. Đồng hồ này được cung cấp với một chiếc hộp đặc biệt xem mặt trăng đặc biệt có dây đeo "NATO", dây buộc Velcro, một công cụ để thay đổi vòng tay và một cuốn sách làm nổi bật các cuộc phiêu lưu của Master Speed.', 'Omega\r\n', '31130423001005\r\n', '31130423001005\r\n', 'Round', 'Anti reflective sapphire\r\n', 'Analog', 'deployant-clasp-with-push-button\r\n', 'Stainless steel\r\n', '42 millimeters\r\n', '14.3 millimeters\r\n', 'Stainless steel\r\n', 'mens\r\n\r\n', '24 millimeters\r\n', 'Silver\r\n', 'Black', 'Date \r\n', '165 Feet\r\n', 23900000, 18900000, 'sp15.jpg'),
('Stuhrling Original Watches Mens “Specialty Grand Regatta” Stainless Steel Professional Swiss Quartz Dive Watch', 'SP16', 'ID05', 'Kiểu dáng cổ điển và hiệu năng cao cộng với đồng hồ cá nhân của thợ lặn đồng hồ tuyệt vời dành cho nam và nữ. Đồng hồ đeo tay nam tính bằng thép không gỉ của nam, thuộc dòng sản phẩm Grand Regatta đặc biệt của Stuhrling Original, đặt một vỏ bọc bằng thép không rỉ lớn trên một vòng đeo tay bằng thép không rỉ bằng thép không gỉ với các đường liên kết đánh bóng. Mặt số đường kính biển sâu được thiết kế để đọc nhanh và dễ dàng ngay cả trong điều kiện ánh sáng yếu. Nó cung cấp chức năng ba tay và hiển thị ngày ở vị trí bốn giờ. Các bàn tay chi tiết thêm một lưu ý của sự khác biệt. Mặt số được phủ bằng Crystal Krysterna Crystal và được đóng khung bởi một vỏ không xoay màu xanh đơn hướng với chi tiết cạnh tiền xu. Đồng hồ này được điều khiển bởi một phong trào thạch anh "Stuhrling Original Specialty" Ronda 515 và được đánh giá là có khả năng chống nước cao tới 200 mét / 660 feet.', 'Stuhrling Original\r\n', 'Dive Watches HN593.33 Speciealty\r\n', 'Dive Watches HN593.33 Speciealty\r\n', 'Round', 'Protective & Scratch Resistant Krysterna Crystal', 'Analog', 'deploy clasp with safety cover\r\n', 'Stainless steel\r\n', '45 millimeters\r\n', '14.3 millimeters\r\n', 'Stainless steel\r\n', 'mens\r\n\r\n', '24 millimeters\r\n', 'Silver\r\n', 'Black', 'Date \r\n', '660 Feet\r\n', 23900000, 18900000, 'sp16.jpg'),
('Omega 231.10.42.21.03.003 Seamaster Aqua Terra Automatic Mens Watch - Blue Dial', 'SP17', 'ID05', 'Kiểu dáng cổ điển và hiệu năng cao cộng với đồng hồ cá nhân của thợ lặn đồng hồ tuyệt vời dành cho nam và nữ. Đồng hồ đeo tay nam tính bằng thép không gỉ của nam, thuộc dòng sản phẩm Grand Regatta đặc biệt của Stuhrling Original, đặt một vỏ bọc bằng thép không rỉ lớn trên một vòng đeo tay bằng thép không rỉ bằng thép không gỉ với các đường liên kết đánh bóng. Mặt số đường kính biển sâu được thiết kế để đọc nhanh và dễ dàng ngay cả trong điều kiện ánh sáng yếu. Nó cung cấp chức năng ba tay và hiển thị ngày ở vị trí bốn giờ. Các bàn tay chi tiết thêm một lưu ý của sự khác biệt. Mặt số được phủ bằng Crystal Krysterna Crystal và được đóng khung bởi một vỏ không xoay màu xanh đơn hướng với chi tiết cạnh tiền xu. Đồng hồ này được điều khiển bởi một phong trào thạch anh "Stuhrling Original Specialty" Ronda 515 và được đánh giá là có khả năng chống nước cao tới 200 mét / 660 feet.', 'Omega\r\n', '231.10.42.21.03.003\r\n', '231.10.42.21.03.003\r\n', 'Round', 'Protective & Scratch Resistant Krysterna Crystal', 'Analog', 'deploy clasp with safety cover\r\n', 'Stainless steel\r\n', '45 millimeters\r\n', '14.3 millimeters\r\n', 'Stainless steel\r\n', 'mens\r\n\r\n', '24 millimeters\r\n', 'Silver\r\n', 'Black', 'Date \r\n', '660 Feet\r\n', 23900000, 18900000, 'sp17.jpg'),
('Omega Men\'s 231.10.39.60.06.001 Aqua Terra Quartz 38.5mm Analog Display Silver Watch', 'SP18', 'ID05', 'Đen Dial, Thép không gỉ bracelet và trường hợp', 'Omega\r\n', '231.10.39.60.06.001\r\n\r\n', '231.10.39.60.06.001\r\n', 'Round', 'Anti reflective sapphire\r\n', 'Analog', 'deployant-clasp-with-push-button\r\n', 'Stainless steel\r\n', '45 millimeters\r\n', '14.3 millimeters\r\n', 'Stainless steel\r\n', 'mens\r\n\r\n', '24 millimeters\r\n', 'Silver\r\n', 'Grey', 'Date \r\n', '660 Feet\r\n', 23900000, 18900000, 'sp18.jpg'),
('Omega Speedmaster Moonwatch Black Dial Brown Leather Mens Watch 31132403001001', 'SP19', 'ID05', 'Đen Dial, Thép không gỉ bracelet và trường hợp', 'Omega\r\n', '311.32.40.30.01.001\r\n\r\n', '311.32.40.30.01.001\r\n', 'Round', 'sapphire-crystal\r\n', 'Analog', 'tang-buckle\r\n', 'Stainless steel\r\n', '45 millimeters\r\n', '14.3 millimeters\r\n', 'Stainless steel\r\n', 'mens\r\n\r\n', '24 millimeters\r\n', 'Brown\r\n', 'black-enamel\r\n', 'Date \r\n', '50 Meters\r\n', 23900000, 18900000, 'sp19.jpg'),
('Omega Speedmaster 311.92.44.51.01.005', 'SP20', 'ID05', 'Đen Dial, Thép không gỉ bracelet và trường hợp', 'Omega\r\n', '311.92.44.51.01.005\r\n\r\n\r\n', '311.92.44.51.01.005\r\n', 'Round', 'sapphire-crystal\r\n', 'Analog', 'Deployment Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '14.3 millimeters\r\n', 'Stainless steel\r\n', 'mens\r\n\r\n', '24 millimeters\r\n', 'Black\r\n\r\n', 'Black\r\n', 'Date \r\n', '50 Meters\r\n', 23900000, 18900000, 'sp20.jpg'),
('Chronograph Beige Dial Brown Leather Men\'s Watch\r\n', 'SP21', 'ID02', 'Hộp bằng thép không gỉ với dây đeo bằng da màu nâu. Cố định vỏ thép không rỉ. Mặt số beige với bàn tay sáng và điểm đánh số tiếng Ả Rập. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Hiển thị ngày hiển thị ở vị trí 3 giờ. Chronograph - ba mặt số phụ hiển thị: hai 60 giây / 12 giờ, 60 phút và 1/20 giây. Phong trào thạch anh. Tinh thể Hardlex chống xước. Kéo / đẩy vương miện. Vặn lại trường hợp. Đường kính hộp: 40 mm. Chiều dày trường hợp: 9 mm. Vỏ hình dạng. Chiều rộng băng: 19 mm. Chiều dài dây: 8 inch. Tang clasp. Khả năng chịu nước ở 100 mét / 330 feet. Chức năng: giờ, phút, giây, ngày, chronograph. Phong cách ăn mặc xem. Xem nhãn: Japan Movt. Seiko Chronograph Beige Dial Đồng hồ da màu nâu SNDC31.', 'Seiko', 'SNN241\r\n\r\n\r\n', 'SNN241', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '43 millimeters\r\n', '11 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Brown', 'Date \r\n', '50 Meters\r\n', 13000000, 11000000, 'sp21.jpg'),
('5 Automatic Dark Blue Dial Stainless Steel Men\'s Watch\r\n', 'SP22', 'ID02', 'Vỏ thép không gỉ với vòng thép không gỉ. Nắp bằng thép không gỉ xoay bằng tay không đổi với vòng đầu trang mạ ion. Quay số màu xanh đậm với bàn tay màu bạc ánh sáng và chỉ số giờ đánh dấu. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Ngày trong tuần và ngày hiển thị ở vị trí 3 giờ. Seiko tầm cỡ 7S36 tự động di chuyển với một dự trữ năng lượng 40 giờ. Tinh thể Hardlex chống xước. Trường hợp xương lại. Kích thước vỏ: 41 mm. Chiều dày vỏ: 14 mm. Vỏ hình dạng. Chiều rộng băng: 22 mm. Gập lại trên tay cầm với một bản phát hành an toàn. Khả năng chịu nước ở 100 mét / 330 feet. Chức năng: ngày tháng, giờ, phút, giây. Casual phong cách xem. Xem nhãn: Japan Movt. Đồng hồ Seiko 5 tự động Đen Xám Gương Mặt Đồng hồ Stainless Steel SNZH53.', 'Seiko', 'SNZH53\r\n\r\n', 'SNZH53', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '43 millimeters\r\n', '11 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Brown', 'Date \r\n', '50 Meters\r\n', 20000000, 19000000, 'sp22.jpg'),
('SEIKO Divers Automatic Men\'s Watch', 'SP23', 'ID02', 'Vỏ thép không gỉ với vòng thép không gỉ. Vỏ bằng thép không rỉ bằng thép không gỉ một chiều với một vòng đệm ion đen. Đen quay số với bàn tay phát sáng và đánh dấu giờ điểm. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Ngày và ngày trong tuần xuất hiện ở vị trí 3 giờ. Tự động chuyển động. Tinh thể Hardlex chống xước. Trường hợp rắn trở lại. Đường kính hộp: 42 mm. Trường hợp dày 13 mm. Chiều rộng băng: 22 mm. Gấp trên clasp. Khả năng chịu nước ở 200 mét / 660 feet. Chức năng: giờ, phút, seocnds, lịch. Phong cách xem thể thao. Seiko Divers Tự động Mens Watch SKX007K2.', 'Seiko', 'SKX007K2\r\n\r\n', 'SKX007K2', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '43 millimeters\r\n', '11 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 21000000, 19000000, 'sp23.jpg'),
('SEIKO Divers Automatic Men\'s Watch', 'SP24', 'ID02', 'Hộp bằng thép không rỉ với dây đeo cao su đen. Vỏ bằng thép không rỉ bằng thép không gỉ một chiều với vòng đầu bằng mạ niken màu đen. Đen quay số với bàn tay phát sáng và đánh dấu giờ điểm. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Ngày và ngày trong tuần hiển thị sẽ xuất hiện ở vị trí 3 giờ. Tự động chuyển động. Tinh thể Hardlex chống xước. Trường hợp rắn trở lại. Đường kính hộp: 42 mm. Trường hợp dày 13 mm. Chiều rộng băng: 26 mm. Tang clasp. Khả năng chịu nước ở 200 mét / 660 feet. Chức năng: giờ, phút, giây, lịch. Phong cách xem thể thao. Seiko Divers Tự động Mens Watch SKX007K1.', 'Seiko', 'SKX007K1\r\n\r\n', 'SKX007K1', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '12 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 27000000, 26500000, 'sp24.jpg'),
('SEIKO Divers Automatic Navy Blue Dial Men\'s Watch', 'SP25', 'ID02', 'Vỏ thép không gỉ với vòng thép không gỉ. Vỏ bằng thép không rỉ bằng thép không gỉ một chiều với vòng đầu trang mạ ion và xanh dương. Mặt số màu xanh hải quân với bàn tay sáng và dấu chấm giờ. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Ngày và ngày trong tuần hiển thị sẽ xuất hiện ở vị trí 3 giờ. Phong trào tự động của Nhật Bản. Tinh thể Hardlex chống xước. Trường hợp rắn trở lại. Đường kính hộp: 43 mm. Trường hợp dày 13 mm. Vỏ hình dạng. Chiều rộng băng: 22 mm. Gập lại trên tay nắm với độ an toàn. Khả năng chịu nước ở 200 mét / 660 feet. Chức năng: giờ, phút, giây, lịch. Casual phong cách xem. Xem nhãn: Japan Movt. Đồng hồ Invicta kiểu Chronograph dành cho nam giới', 'Seiko', 'SKX009K2\r\n\r\n', 'SKX009K2', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '12 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Navy Blue', 'Date \r\n', '50 Meters\r\n', 27000000, 26500000, 'sp25.jpg'),
('SEIKO Chronograph Black Dial Men\'s Watch', 'SP26', 'ID02', 'Hộp bằng thép không rỉ bằng bạc với dây đeo bằng da màu đen. Cố định vỏ bằng thép không gỉ bằng bạc. Quay số màu đen với tay sáng và thanh / dấu chấm tiếng tiếng Ả Rập giờ. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Ngày hiển thị ở vị trí 6 giờ. Chronograph - mặt số phụ hiển thị: hai - 60 giây và 60 phút. Seiko Caliber 7T94 thạch anh phong trào. Tinh thể cứng chống xước. Trường hợp rắn trở lại. Kích thước vỏ: 43 mm. Trường hợp dày 10 mm. Vỏ hình dạng. Chiều rộng băng: 20 mm. Tang clasp. Khả năng chịu nước ở 100 mét / 330 feet. Chức năng: báo thức, thứ hai, chronograph, ngày, thể thao, giờ, phút. Thông tin bổ sung: chỉ báo thời lượng pin, đồng hồ bấm giờ và báo thức. Casual phong cách xem. Xem nhãn: Japan Movt. Đồng hồ Chronograph dành cho người da đen Seiko Chronograph Black SNN231P2.', 'Seiko', 'SNN231P2\r\n\r\n', 'SNN231P2', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '12 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 23500000, 21500000, 'sp26.jpg'),
('SEIKO 5 Sport Automatic Navy Blue Canvas Men\'s Watch', 'SP27', 'ID02', 'Hộp bằng thép không rỉ với vòng tay vải màu xanh hải quân. Cố định vỏ thép không rỉ. Mặt số màu xanh hải quân với bàn tay bạc và điểm số tiếng Ả Rập. Đánh dấu 24 giờ. Phút đánh dấu xung quanh rim bên ngoài. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Ngày trong tuần và ngày hiển thị ở vị trí 3 giờ. Seiko Caliber 7S36 tự động chuyển động với dự trữ năng lượng 40 giờ. Tinh thể cứng chống xước. Kéo / đẩy vương miện. Trường hợp xương lại. Kích thước trường hợp: 42 mm. Vỏ hình dạng. Chiều rộng băng: 22 mm. Tang clasp. Khả năng chịu nước ở 100 mét / 330 feet. Chức năng: ngày, ngày, 24 giờ, giờ, phút, giây. Casual phong cách xem. Xem nhãn: Japan Movt. Seiko 5 Sport Automatic Navy Blue Canvas Mens Xem SNZG11.', 'Seiko', 'SNZG11\r\n', 'SNZG11', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '19 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 17000000, 15500000, 'sp27.jpg'),
('SEIKO Day and Date Dress Gold-tone Stainless Steel Men\'s Watch', 'SP28', 'ID02', 'Vỏ bằng thép không rỉ bằng thép không gỉ và vòng đeo tay. Cố định vỏ màu vàng cố định. Quay số bằng vàng với bàn tay sáng và điểm đánh dấu giờ. Dấu hiệu phút quanh rìa ngoài. Tay phát quang và điểm đánh số quay số. Ngày trong tuần và ngày hiển thị ở vị trí 3 giờ. Phong trào thạch anh. Tinh thể Hardlex chống xước. Thép không rỉ lại. Đường kính hộp: 36 mm. Chiều dày vỏ: 8 mm. Triển khai clasp. Khả năng chịu nước ở 30 mét / 100 feet. Chức năng: giờ, phút, giây, ngày-ngày. Thông tin bổ sung: hiển thị ngày và ngày có thể được thiết lập để hiển thị bằng tiếng Anh hoặc tiếng Tây Ban Nha. Ngày của Seiko / Ngày Dress Gold-Tone Thép Không gỉ nam Watch SGF206.', 'Seiko', 'SGF206\r\n', 'SGF206', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '19 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 30000000, 28500000, 'sp28.jpg'),
('SEIKO 5 Black Dial Automatic Men\'s Watch', 'SP29', 'ID02', 'Chứng minh cho tôi xem. Vành mạ niken vô địch. số màu đen với tay sáng và đánh dấu giờ chỉ mục. Dấu hiệu phút quanh rìa ngoài. Tay phát sáng và đánh dấu. Ngày trong tuần và ngày hiển thị xuất hiện ở vị trí 3 giờ. Tự động chuyển động. Tinh thể Hardlex chống xước. Vân vân kết cấu. Trường hợp xương lại. Đường kính hộp: 43 mm. Trường hợp dày 12 mm. Triển khai clasp. Khả năng chịu nước ở 100 mét / 330 feet. Chức năng: giờ, phút, giây, lịch. Seiko 5 Black Dial Automatic Mens Xem SNZH55.', 'Seiko', 'SNZH55', 'SNZH55', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '19 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 24000000, 22500000, 'sp29.jpg'),
('SEIKO Chronograph Silver Dial Stainless Steel Men\'s Watch', 'SP30', 'ID02', 'Hộp bằng thép không rỉ với dây đeo bằng da màu đen. Cố định vỏ thép không rỉ. Quay số bằng bạc với bàn tay phát sáng và điểm số giờ Ả Rập. Điểm đánh dấu phút xung quanh vòng tròn bên trong. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Ngày hiển thị ở vị trí 3 giờ. Ba: 12 giờ, 1/20 giây và 60 giây. Seiko Caliber 7T92 thạch anh phong trào. Tinh thể cứng chống xước. Trường hợp rắn trở lại. Kích thước trường hợp: 42 mm. Trường hợp dày 10 mm. Vỏ hình dạng. Chiều rộng băng: 18 mm. Tang clasp. Khả năng chịu nước ở 100 mét / 330 feet. Chức năng: giờ, phút, giây, lịch, chronograph. Thông tin thêm: thích hợp cho lặn, cũng như bơi lội, nhưng không lặn. Casual phong cách xem. Xem nhãn: Japan Movt. Đồng hồ kim cương Chronograph dành cho người theo dõi bạc của Seiko SNDC87P2.', 'Seiko', 'SNZH55', 'SNZH55', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '45 millimeters\r\n', '19 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 24000000, 21500000, 'sp30.jpg'),
('FOSSIL Grant Chronograph Egg Shell Dial Men\'s Watch', 'SP31', 'ID03', 'Hộp bằng thép không gỉ với dây đeo bằng da màu nâu. Cố định vỏ thép không rỉ. Quay số vỏ trứng với bàn tay phát sáng và dấu hiệu giờ số La Mã. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Chronograph - mặt số phụ hiển thị: ba - 60 giây, 30 phút và 24 giờ. Phong trào thạch anh. Tinh thể khoáng chống trầy xước. Kéo / đẩy vương miện. Trường hợp rắn trở lại. Kích thước hộp: 44 mm. Trường hợp dày 12 mm. Vỏ hình dạng. Chiều rộng băng: 22 mm. Chiều dài dây: 8 inch. Tang clasp. Chịu nước ở độ cao 50 mét / 165 feet. Chức năng: chronograf, giờ, phút, giây. Phong cách ăn mặc xem. Fossil Grant Chronograph Egg Shell Dial Mens Xem FS4735.', 'Fossil', 'FS4735', 'FS4735', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '42 millimeters\r\n', '13 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 24000000, 23500000, 'sp31.jpg'),
('FOSSIL Grant Automatic Silver Skeleton Dial Men\'s Watch', 'SP32', 'ID03', 'Hộp bằng thép không rỉ với dây đeo bằng da màu xanh hải quân. Cố định vỏ thép không rỉ. Bạc bộ xương quay số với bàn tay màu xanh sáng và dấu chấm số La Mã. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tự động chuyển động. Tinh thể khoáng chống trầy xước. Kéo / đẩy vương miện. Trường hợp minh bạch trở lại. Kích thước hộp: 44 mm. Trường hợp dày 12 mm. Vỏ hình dạng. Chiều rộng băng: 22 mm. Tang clasp. Chịu nước ở độ cao 50 mét / 165 feet. Chức năng: giờ, phút, giây. Casual phong cách xem. Fossil Grant Tự động Sạc Skeleton Dial Men\'s Watch ME3111.', 'Fossil', 'ME3111', 'ME3111', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '42 millimeters\r\n', '13 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 21000000, 20000000, 'sp32.jpg'),
('FOSSIL Grant Multi-Function Navy Dial Navy Leather Men\'s Watch', 'SP33', 'ID03', 'Vỏ bằng thép không gỉ bằng thép không gỉ bằng vàng da với dây đeo bằng da thuộc (da bò). Cố định không gian màu vàng hồng. Hải quân quay số với tay áo vàng hồng và dấu hiệu số La Mã. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Chronograph - mặt số phụ hiển thị: ba - 60 giây, 30 phút và 24 giờ. Phong trào thạch anh. Tinh thể khoáng chống trầy xước. Kéo / đẩy vương miện. Trường hợp rắn trở lại. Kích thước hộp: 44 mm. Trường hợp dày 12 mm. Vỏ hình dạng. Chiều rộng băng: 22 mm. Chiều dài ban nhạc: 9 inch. Tang clasp. Chịu nước ở độ cao 50 mét / 165 feet. Chức năng: chronograf, giờ, phút, giây. Casual phong cách xem. Fossil Grant Đa năng Navy Dial Hải quân Mens Watch FS4835.', 'Fossil', 'FS4835', 'FS4835', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '42 millimeters\r\n', '13 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 17000000, 15000000, 'sp33.jpg'),
('FOSSIL Dexter Black Dial Chronograph Men\'s Watch', 'SP34', 'ID03', 'Hộp bằng thép không rỉ với dây đeo silic đen. Cố định ion đen mạ kẽm với tachymeter. Đen quay số với bàn tay phát sáng và đánh dấu giờ đánh. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Ngày hiển thị ở vị trí 4 giờ. Chronograph - mặt số phụ hiển thị: ba - 60 giây, 60 phút và 1/10 giây. Phong trào thạch anh. Tinh thể khoáng chống trầy xước. Kéo / đẩy vương miện. Trường hợp rắn trở lại. Kích thước hộp: 44 mm. Trường hợp dày 15 mm. Vỏ hình dạng. Chiều rộng băng: 22 mm. Chiều dài dây: 8 inch. Tang clasp. Khả năng chịu nước ở 100 mét / 330 feet. Chức năng: giờ, phút, giây, ngày, chronograph, tachymeter. Casual phong cách xem. Fossil Dexter Black Dial Chronograph Mens Thêm CH2573.', 'Fossil', 'FS4835', 'FS4835', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '42 millimeters\r\n', '13 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 19000000, 15000000, 'sp34.jpg'),
('FOSSIL Machine Flight Chronograph Brown Dial Men\'s Watch', 'SP35', 'ID03', 'Hộp bằng thép không gỉ với dây đeo bằng da màu nâu. Cố định mạ ion đen. Quay số màu nâu với bàn tay sáng và chỉ số giờ đánh dấu. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tay phát sáng và đánh dấu. Hiển thị ngày giữa vị trí 4 và 5 giờ. Chronograph - ba mặt số phụ hiển thị: 60 giây, 30 phút và 24 giờ. Phong trào thạch anh. Tinh thể khoáng chống trầy xước. Trường hợp rắn trở lại. Đường kính hộp: 42 mm. Trường hợp dày 12 mm. Vỏ hình dạng. Chiều rộng băng: 21 mm. Tang clasp. Chịu nước ở độ cao 50 mét / 165 feet. Chức năng: chronograph, ngày, giờ, phút, giây. Casual phong cách xem. Máy bay Fossil Máy bay Chronograph Brown Dial Mens Watch FS4656.', 'Fossil', 'FS4656', 'FS4656', 'Round', 'Hardlex', 'Analog', 'Buckle', 'Stainless steel\r\n', '41 millimeters\r\n', '15 millimeters\r\n', 'Leather', 'Men\'s Standard\r\n\r\n', '22 millimeters\r\n', 'Brown\r\n', 'Black', 'Date \r\n', '50 Meters\r\n', 29000000, 25000000, 'sp35.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `idWatch` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idUser` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `idWatch`, `idUser`, `date`) VALUES
('12345cva', 'Curabitur aliquet quam id dui posuere blandit.\r\nCurabitur aliquet quam id dui posuere blandit.', '', '2222221', '1'),
('123abc', 'Curabitur aliquet quam id dui posuere blandit.', '', '111111', '1'),
('1496746099536', 'a comment', 'SP01', 'yuajsd2qh2q2qjh8', '1496746099536'),
('1496746205733', 'it is verty good', 'SP01', 'yuajsd2qh2q2qjh8', '1496746205733'),
('1496746397064', 'them mot comment', 'SP01', 'yuajsd2qh2q2qjh8', '1496746397064'),
('1496748297060', 'mot comment nua thoi', 'SP01', 'yuajsd2qh2q2qjh8', '1496748297060'),
('1496748365248', 'aaaaaaaaaaaaaaaaaaaaaaaaaa', 'SP01', 'yuajsd2qh2q2qjh8', '1496748365248'),
('1496748407746', 'khas la` dep', 'SP01', 'yuajsd2qh2q2qjh8', '1496748407746'),
('1496748445309', 'dep ne`', 'SP03', 'yuajsd2qh2q2qjh8', '1496748445309'),
('1496748451372', 'chwa dep dau', 'SP03', 'yuajsd2qh2q2qjh8', '1496748451372'),
('1496748554719', 'huhu', 'SP11', 'yuajsd2qh2q2qjh8', '1496748554719'),
('1496748562606', 'ahah', 'SP11', 'yuajsd2qh2q2qjh8', '1496748562606'),
('1496748956373', 'toi cung thay vay', 'SP01', 'yoyoyyeasdaw13asd', '1496748956373');

-- --------------------------------------------------------

--
-- Table structure for table `cookies`
--

CREATE TABLE `cookies` (
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idUser` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cookies`
--

INSERT INTO `cookies` (`id`, `idUser`) VALUES
('cj2vxy2xi0009345k1n5dn21k', 'yuajsd2qh2q2qjh8'),
('cj2w0uo4w000c345kws11svew', 'yuajsd2qh2q2qjh8'),
('cj2w170a1000c345kpx65lpbr', 'yuajsd2qh2q2qjh8'),
('cj2w18vck000c345km5nk6ku5', 'yuajsd2qh2q2qjh8'),
('cj2w1ab2h000a345k0ouur7vy', 'yuajsd2qh2q2qjh8'),
('cj2w1b0qq000c345kpb3b27lo', 'yuajsd2qh2q2qjh8'),
('cj2w1dhs3000c345kz5bvdntd', 'yuajsd2qh2q2qjh8'),
('cj2w1h559000b345kur45iux1', 'yuajsd2qh2q2qjh8'),
('cj2w1jfz3000c345kmubkqxev', 'yuajsd2qh2q2qjh8'),
('cj30d6z5q000c345knyzv9mmz', 'yuajsd2qh2q2qjh8'),
('cj313riz2000c345k6zfghh4q', 'yuajsd2qh2q2qjh8'),
('cj314356r0009345kx54mku2a', 'yuajsd2qh2q2qjh8'),
('cj31594p7000c345kdyd2knzm', 'yuajsd2qh2q2qjh8'),
('cj315a75o000c345kwk0sf153', 'yuajsd2qh2q2qjh8'),
('cj38a65yz000e345k65n58ka4', 'yuajsd2qh2q2qjh8'),
('cj38ajbo5000e345kw5mw6knd', 'yuajsd2qh2q2qjh8'),
('cj3letuyf0009345kxg4ct5vf', 'yuajsd2qh2q2qjh8'),
('cj3lhnz8z0009345k4ewhqq25', 'yoyoyyeasdaw13asd'),
('value-1', 'alue-2');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idUser` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idWatch` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `idUser`, `idWatch`, `count`) VALUES
('cj3142mqq0009345krqp8yd26', 'yuajsd2qh2q2qjh8', 'SP12', 1),
('cj3154p4j000c345kc59idztc', 'yuajsd2qh2q2qjh8', 'SP01', 1),
('cj315562k0009345kki19l56t', 'yuajsd2qh2q2qjh8', 'SP01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
('yoyoyyeasdaw13asd', 'Yangsou', '123', 'namnguyentrung@hotmail.com'),
('yuajsd2qh2q2qjh8', 'user', '123', 'yangsoudev@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`IDProduct`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookies`
--
ALTER TABLE `cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
