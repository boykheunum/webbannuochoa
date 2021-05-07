-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 07:30 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csdlbannuochoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` varchar(50) NOT NULL,
  `masp` varchar(50) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `giaban` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `macv` varchar(50) NOT NULL,
  `tencv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` varchar(50) NOT NULL,
  `manv` varchar(50) NOT NULL,
  `makh` varchar(50) NOT NULL,
  `ngayban` date NOT NULL,
  `tongtien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `maloaisp` varchar(50) NOT NULL,
  `tenloaisp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`maloaisp`, `tenloaisp`) VALUES
('MLSP001', 'Nước hoa nam'),
('MLSP002', 'Nước hoa nữ'),
('MLSP003', 'Nước hoa unisex');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hovaten` varchar(50) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `makh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`tendangnhap`, `matkhau`, `hovaten`, `sdt`, `diachi`, `makh`) VALUES
('ND001', '123', 'Nguyễn Tiến Đạt', '0865228067', '95 Hàng Mã', 'us001');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` varchar(50) NOT NULL,
  `macv` varchar(50) NOT NULL,
  `tennv` varchar(50) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `maloaisp` varchar(50) NOT NULL,
  `masp` varchar(50) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gianhap` float NOT NULL,
  `giaban` float NOT NULL,
  `mota` text NOT NULL,
  `hinhanh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`maloaisp`, `masp`, `tensp`, `soluong`, `gianhap`, `giaban`, `mota`, `hinhanh`) VALUES
('MLSP001', 'MSP001', 'Nước hoa Jillian New: Fall in Lust 15ml', 50, 800000, 850000, 'Mô tả sản phẩm\r\nLà sự hòa trộn tinh tế giữa cảm giác thân thuộc gần gũi và phong cách bí ẩn đầy lôi cuốn, Fall in Lust mang đến một trải nghiệm hoàn toàn thú vị cho người dùng. Nhà chế tác mùi hương David Chieze đã sử dụng các nguyên liệu mang sắc thái nồng nàn như rượu absinthe, gừng và cam bergamot để tạo nên cảm giác ấm áp ngay từ tầng hương đầu tiên. Thế nhưng ngay sau đó, vị cay nồng lập tức được cân bằng bởi hương biển mát lạnh sâu thẳm, nhẹ nhàng hơn và dần ổn định trên da. \r\n\r\nSự độc đáo trong cách kết hợp các nốt hương của Fall in Lust vừa khắc họa một người đàn ông tinh tế, lịch lãm, vừa khẳng định sự cuốn hút khó cưỡng của một chàng trai hào hoa, phóng túng. Đây là mùi hương thích hợp sử dụng vào buổi tối hoặc khi tiết trời mát mẻ.', 'nuochoa03.ipg'),
('MLSP001', 'MSP002', 'Nước hoa Jillian: Edelweiss 15ml (White)', 50, 800000, 850000, 'Mô tả sản phẩm\r\nEdelweiss bộc lộ cá tính riêng biệt ngay từ phút đầu tiên với mùi hương tươi mát và sắc sảo. Nét dịu dàng của hoa nhung tuyết ôm lấy các nốt hương trái cây để rồi tone patchouli âm thầm đẩy cảm xúc lên đến đỉnh điểm như một lời gọi mời hấp dẫn. \r\n\r\nEdelweiss được đánh giá là một mùi hương tinh khiết và trong trẻo, mềm mại nhưng mãnh liệt tột cùng - như sức sống của loài hoa trắng muốt trên các dãy núi cao giá lạnh.', 'nuochoa04.ipg'),
('MLSP001', 'MSP003', 'Nước hoa Jillian: Creation8 15ml', 50, 800000, 850000, 'Mô tả sản phẩm\r\nMở đầu chuỗi hương đậm chất trái cây nhiệt đới sảng khoái với bưởi và quýt hồng, Creation8 - sáng tạo hương thứ 8 của BST Jillian dường như đã mang đến làn gió mát rượi thổi từ vùng biển trong xanh nước Ý, sảng khoái và mạnh mẽ đánh thức mọi giác quan. Khéo léo đan xen cùng bạc hà the mát, cùng chút cay nồng của các loại gia vị là hương thơm hoa hồng dịu dàng kín kẽ. Đó là sự kết hợp kì diệu gợi nên cảm giác thỏa mãn xa hoa, như một giấc mơ về kỳ nghỉ trên chuyến du thuyền và ngắm nhìn hòn đảo Capri xinh đẹp. \r\n\r\nCreation8 là mùi hương phù hợp với xu hướng hiện đại, với lối sống phóng khoáng và không chút e dè thể hiện bản thân. Khi hai tầng hương đầu dần khép lại, hỗn hợp gỗ tuyết tùng và xạ hương nam tính lịch lãm xuất hiện, khắc họa rõ nét một Creation8 trưởng thành đằng sau vẻ ngoài ồn ào náo nhiệt. Chuỗi hương kết thúc bằng một chút ướt át của rêu sồi, mùi thơm đặc trưng của da thuộc và thuốc lá. Trái ngược với khởi đầu cuồng nhiệt cháy bỏng, điều cô đọng mà Creation8 để lại là một cái tôi đơn giản và khác biệt như chính tên gọi của mình: Sáng tạo thứ 8. ', 'nuochoa05.ipg'),
('MLSP001', 'MSP004', 'Nước hoa Jillian: Beloved J 15ml', 50, 800000, 850000, 'Mô tả sản phẩm\r\nCam đắng rạng ngời và hoa đậu thơm nhẹ nhàng xuất hiện ở tầng hương đầu tiên, phảng phất êm dịu rồi khẽ tan vào không khí - đây cũng là lúc các loài hoa đua nhau phô diễn trong làn gió mát lạnh tinh khôi. Beloved J là mùi hương thể hiện sự cộng hưởng tuyệt vời giữa vẻ đẹp của tự nhiên và người phụ nữ. Hoa lan Nam Phi và phong lữ duyên dáng kết hợp cùng quả mộc qua tạo nên những giai điệu mùi hương đầy mê hoặc, Beloved J như một khu vườn vừa bừng tỉnh giấc, vươn mình rũ bỏ từng hạt nước còn đọng lại đêm qua. \r\n\r\nKhông mang đến nhiều sự đột phá hay cú twist thú vị, Beloved J nồng nàn ôm ấp một người phụ nữ trong chiếc váy midi cổ điển, khéo léo khoe đường nét thanh tú sau vành mũ rộng. Mùi hương lúc này vẫn đằm thắm lãng mạn đến khi có sự xuất hiện của cặp đôi hoa hồng và hoắc hương - một điểm nhấn sắc sảo tô thật đậm sắc thái gợi cảm ngập tràn si mê.\r\n\r\nLựa chọn mở đầu bằng vẻ thuần khiết mỏng manh và kết thúc bằng hương thơm nữ tính quyến rũ đầy ấn tượng, Beloved J là mùi hương khiến trái tim rung động, là tất cả những gì một cô gái đang tìm kiếm. ', 'nuochoa06.ipg'),
('MLSP002', 'MSP005', 'Nước hoa Lys by Jillian: I\'m Yours 60ml', 50, 850000, 1050000, 'Mô tả sản phẩm\r\nTuy có mùi hương chủ đạo là vị gỗ phương Đông, I\'m Yours vẫn gây bất ngờ khi kết hợp nốt hương citrus, vị cay của gừng và vị đắng từ cocoa cho phần mở đầu. Các tầng hương của I\'m Yours không hoàn toàn tách biệt mà hòa trộn vào nhau một cách mượt mà nhất, mang đậm sắc thái nồng nàn và mãnh liệt. Nếu nhịp điệu ở giai đoạn đầu tương đối nhanh và gấp gáp thì khi đã ổn định trên da, các nốt hương dần mềm mại, ngọt ngào, dễ chịu hơn.\r\n\r\nI\'m Yours sở hữu các mùi vị quen thuộc nhưng khi kết hợp lại trở thành sự chuyển biến khó ngờ. Các tầng hương đã tạo nên một vị ngọt vô cùng phức tạp: ngọt nhưng có đắng, có cay, có sâu thẳm, có ấm áp và có cả sự kéo dài dai dẳng. Các note trầm bổng khéo léo bám chặt vào nhau, làm nổi bật ưu điểm của nhau và cùng nhau thể hiện vẻ đẹp tinh tế của chính mình. Sự phối hợp nhịp nhàng giữa gừng, cocoa, quả maninka cùng một vài hương gỗ đặc biệt khác đã tạo nên một I\'m Yours rất mới mẻ và ấn tượng. \r\n\r\nMùi hương mang vị gỗ phương Đông với độ lan tỏa mạnh mẽ trong không gian thích hợp dùng vào buổi tối hoặc khi tiết trời mát mẻ. ', 'nuochoa07.jpg'),
('MLSP002', 'MSP006', 'Nước hoa Lys by Jillian: Bewitching Kiss 60ml', 50, 850000, 1050000, 'Mô tả sản phẩm\r\nBewitching Kiss thể hiện hương thơm ngọt ngào theo một phong cách rất khác biệt. Không gợi nên cảm giác mỏng manh yếu đuối, mùi hương của Bewitching Kiss táo bạo, mãnh liệt và tràn đầy sự tự tin. \r\n\r\nTầng hương đầu tiên mở ra với lớp màng sương citrus mát lạnh từ cam đắng và điểm nhấn thú vị của lý chua đen. Bewitching Kiss sau đó nhanh chóng bước sang tầng hương tiếp theo bằng mùi hương hấp dẫn của hoa hồng. Hương thơm lúc này nhẹ nhàng hơn khi đã bắt đầu ổn định và lắng đọng trên da. \r\n\r\nVanilla là note hương đóng vai trò chủ đạo với mùi vị ngọt ngào có thể cảm nhận rõ ngay cả khi hương thơm đã dần tan biến. Thế nhưng Bewitching Kiss không chỉ êm ái và dễ thương một cách đơn thuần như thế. Chút hăng đắng của hoa vòi voi, chút nồng nàn của các loại gỗ, chút mềm mại của nhóm hương hoa và lớp nền đầy sức hút của xạ hương cùng hổ phách tạo nên một hương thơm khiến người ta phải say, phải nhớ. \r\n\r\nSở hữu vị ngọt đặc trưng của phương Đông và có độ lưu hương ổn định, Bewitching Kiss thích hợp sử dụng vào buổi tối hoặc mùa thu - đông. ', 'nuochoa08.jpg'),
('MLSP002', 'MSP007', 'Nước hoa Lys by Jillian: Passion in Love 60ml', 50, 850000, 1050000, 'Mô tả sản phẩm\r\nPassion in Love dịu dàng lấp đầy không gian xung quanh bằng sự kết hợp giữa vị quả rừng chín mọng và các nốt hoa tinh khôi. Không sắc sảo hay gợi cảm đến tột cùng, đây là mùi hương của rung động, của ngại ngùng xen lẫn háo hức, là cảm xúc khi nhận ra mình đang yêu. Sắc thái nhẹ nhàng, trong trẻo nhưng lôi cuốn chứa đựng lời mời gọi khẽ khàng khiến hương thơm này để lại một dấu ấn ngọt ngào khác biệt. \r\n\r\nDù tầng hương cuối có sự góp mặt của gỗ đàn hương và xạ hương, Passion in Love vẫn thể hiện rõ cốt cách dịu dàng mơ mộng toát lên phong thái của một nàng thơ cổ điển. Mùi vị ngọt ngào của vanilla đan xen các note hương trái cây một cách tinh tế kéo dài xuyên suốt tạo thành chuỗi hương thanh thoát liền mạch. \r\n\r\nCác tầng hương của Passion in Love có thể cảm nhận được rõ ràng theo thời gian, độ lưu hương cũng như tỏa hương vừa phải, thích hợp để sử dụng cho mọi thời điểm.', 'nuochoa09.jpg'),
('MLSP002', 'MSP008', 'Nước hoa Lys by Jillian: Honey and Bee 60ml', 50, 850000, 1050000, 'Honey and Bee không vội ngọt lịm ngay từ những nốt đầu tiên. Trái lại, nổi bật xuất hiện trên lớp nền citrus là hương mộc lan nồng nàn ngây ngất, Honey and Bee như một khúc nhạc lấy cảm hứng từ khu vườn nhỏ với những bông hoa đang nở rộ. Nốt hương sống động mang theo vị chua nhẹ của chanh dây thoảng qua như một cốc Caipirinha tươi mát của vùng Mĩ Latin. \r\n\r\nHoney and Bee tròn đầy và nữ tính hơn khi bước sang tầng hương giữa, lúc này mùi hương của hoa cam cùng lan hồ điệp tỏa ra nhẹ nhàng, thanh thoát. Những loài hoa trắng thường có điểm chung là hương thơm nồng nàn, sâu sắc và rất \"thơ\". \r\n\r\nChuỗi hương của Honey and Bee không chứa đựng những note độc đáo hay khó đoán mà chỉ đơn thuần là một điệu valse yên ả. Với base notes gồm hổ phách, xạ hương và đậu Tonka, mùi hương lúc này như hóa thành những giọt mật thơm lừng hấp dẫn, xứng đáng trở thành sự lựa chọn của mọi cô gái. ', 'nuochoa10.jpg'),
('MLSP003', 'MSP009', 'Nước hoa GenZ x Jillian: Bliss Me out 35ml', 50, 200000, 300000, 'Mô tả sản phẩm\r\nThe 4.0 fantasy!\r\n\r\nBạn có nhận ra thời đại 4.0 đã tạo nên những kết nối diệu kỳ trong cuộc sống? \r\n\r\nChúng ta dễ dàng tìm thấy những người bạn thú vị, gặp gỡ nhiều nền văn hoá và tiếp cận những quan điểm mới mẻ một cách nhanh chóng, đơn giản. Với tinh thần tôn trọng sự khác biệt, đề cao tự do ngôn luận và cởi mở sẻ chia, đối với các bạn trẻ, tự do kết nối là một phần không thể thiếu để phát triển bản thân. \r\n\r\nBliss Me out với hương vị quả mọng ngọt ngào đáng yêu kết hợp cùng lớp mùi hương trầm ấm lắng đọng của hoắc hương và hổ phách đã thể hiện đúng tên gọi và thông điệp hướng tới - mùi hương của niềm vui rực rỡ, của sự thoải mái, gần gũi và thân thiện.', 'nuochoa14.png'),
('MLSP003', 'MSP010', 'Nước hoa GenZ x Jillian: Dating Game 35ml', 50, 200000, 350000, 'Mô tả sản phẩm\r\nDON’T TIE IT UP!\r\n\r\nBạn có nhận ra nghệ thuật và mùi hương cũng có sự tương đồng? Tôi không thể định nghĩa về chúng dù là dáng hình, không gian, hay một cái tên. Không bó buộc, luôn sẵn sàng cho những bất ngờ và thay đổi, đó là cách tôi yêu và hẹn hò với những “sáng tạo mới”!\r\n\r\nNếu tầng hương đầu gây ấn tượng bởi vị chua thanh mát của quýt và cỏ đỏ Himalaya, thì dư âm của Dating Game lại có nét dịu dàng từ hương nhài và quả mận mang đến cho bạn sự lãng mạn bay bổng.', 'nuochoa12.jpg'),
('MLSP003', 'MSP011', 'Nước hoa GenZ x Jillian: Prom Night 35ml', 50, 200000, 35000, 'Mô tả sản phẩm\r\nThe life and soul of the party\r\n\r\nĐược sống với đam mê và tự do thể hiện bản thân là lý tưởng đẹp đẽ nhất của thế hệ trẻ. Với họ, kiến tạo hơn là thay đổi. Không ngần ngại theo đuổi ước mơ và lan tỏa nguồn năng lượng tích cực đến những người xung quanh, gen Z đang trở thành biểu tượng truyền cảm hứng, mang đến những trào lưu nổi bật và tạo nên nhiều định nghĩa chưa từng tồn tại trong quá khứ. \r\n\r\nVới các nguyên liệu mùi hương ấn tượng, Prom Night là ánh sáng rạng ngời, là tâm điểm của sự chú ý. Kỷ tử, mơ, saffron và amberwood chuyển biến nhanh chóng từ sắc thái mát mẻ thanh khiết sang nồng ấm ngọt ngào, tạo nên một Prom Night đầy lôi cuốn. Bạn đã sẵn sàng phá vỡ vùng an toàn để khám phá và thể hiện bản thân?', 'nuochoa13.jpg'),
('MLSP003', 'MSP012', 'Nước hoa GenZ x Jillian: Prom Night 35ml', 50, 200000, 350000, 'Mô tả sản phẩm\r\nThe life and soul of the party\r\n\r\nĐược sống với đam mê và tự do thể hiện bản thân là lý tưởng đẹp đẽ nhất của thế hệ trẻ. Với họ, kiến tạo hơn là thay đổi. Không ngần ngại theo đuổi ước mơ và lan tỏa nguồn năng lượng tích cực đến những người xung quanh, gen Z đang trở thành biểu tượng truyền cảm hứng, mang đến những trào lưu nổi bật và tạo nên nhiều định nghĩa chưa từng tồn tại trong quá khứ. \r\n\r\nVới các nguyên liệu mùi hương ấn tượng, Prom Night là ánh sáng rạng ngời, là tâm điểm của sự chú ý. Kỷ tử, mơ, saffron và amberwood chuyển biến nhanh chóng từ sắc thái mát mẻ thanh khiết sang nồng ấm ngọt ngào, tạo nên một Prom Night đầy lôi cuốn. Bạn đã sẵn sàng phá vỡ vùng an toàn để khám phá và thể hiện bản thân?', 'nuochoa13.jpg'),
('MLSP003', 'MSP013', 'Nước hoa GenZ x Jillian: S.W.A.K 35ml', 50, 200000, 350000, 'Mô tả sản phẩm\r\nSealed with a kiss\r\n\r\nLời mời gọi dành cho một thế hệ dấn thân và tự lập, \"Sealed with a Kiss\" là một cách đóng dấu tinh nghịch nhưng đầy trách nhiệm cho lời hứa hẹn sắc bén của thế hệ trẻ, với tinh thần chủ động, độc lập và sự quyết tâm theo đuổi những lý tưởng, đam mê của bản thân. \r\n\r\nLấy cảm hứng từ tinh thần học hỏi và sự nỗ lực không ngừng ấy, S.W.A.K mang đến nguồn năng lượng tươi mới với hương trái cây mát lạnh rạng rỡ và sự thông minh duyên dáng của các loài hoa đắt giá. ', 'nuochoa15.png'),
('MLSP001', 'MSP014', 'Nước hoa 147 by Jillian: The Art of Seduction 50ml', 50, 1900000, 2100000, 'Mô tả sản phẩm\r\nThe Art of Seduction mang đậm tinh thần Oriental khi chọn hương gỗ phương Đông giữ vai trò chủ đạo. Đây chính xác là một loại nước hoa dành cho người đàn ông hoài niệm, ấm áp, dí dỏm và tất nhiên là mang lại sức hút vô cùng mãnh liệt.\r\n\r\nLớp hương ban đầu khá mạnh mẽ với mùi thơm đặc trưng của ngọc lan tây và bạch đậu khấu, hương hoa nồng nàn pha lẫn vị cay nhẹ của thảo quả, có thể nói đây là một mùi hương có bảng thành phần dày đặc và phức tạp, không dễ dàng bị trộn lẫn giữa đám đông. The Art of Seduction biến hóa mượt mà và tinh tế giữa các tầng hương như một bản tình ca lãng mạn tình tứ. Sắc thái cuồng nhiệt ban đầu được thay thế khéo léo bởi mùi hương của hổ phách – tổ hợp hương quyến rũ mang vị ngọt của vanilla và nồng đượm của gỗ.  ', 'nuochoa16.png'),
('MLSP001', 'MSP015', 'Nước hoa 147 by Jillian: Love Hangover 50ml', 50, 1900000, 2100000, 'Mô tả sản phẩm\r\nLove Hangover thể hiện sự sắc sảo ngay khi vừa chạm ngõ những nốt hương đầu. Cam bergamot tươi tắn xen lẫn vị đắng của vỏ cam sẽ là mùi hương bạn ngửi thấy trước tiên và sau đó là một cơn gió nhẹ thoảng qua với hoa oải hương, hoa phong lữ và vị hăng hăng nồng ấm từ tiêu đen nguyên hạt.\r\n\r\nLove Hangover vốn dĩ không phải một lọ nước hoa toát lên vẻ đẹp phong trần bụi bặm mà ngược lại, nó thể hiện tròn vẹn sự chỉn chu và lịch lãm của những quý ông thực thụ. Với sự khởi đầu là lớp hương citrus phảng phất, rồi biến chuyển nhẹ nhàng sang các loài hoa trắng nhẹ bẫng, cuối cùng là hoắc hương và hổ phách khắc hoạ nên hình ảnh một người đàn ông chín chắn, lịch thiệp mà vẫn giữ nguyên được sự gợi cảm đầy thu hút của phút ban đầu.\r\n\r\nHương gỗ xuất hiện trong Love Hangover thể hiện vẻ từng trải và sâu sắc theo phong cách cổ điển quen thuộc, xứng đáng trở thành lựa chọn hàng đầu của các chàng trai.', 'nuochoa17.png'),
('MLSP001', 'MSP016', 'Nước hoa 147 by Jillian: I\'m not a Bad Man 50ml', 50, 1900000, 2100000, 'Mô tả sản phẩm\r\nMang nhóm hương chủ đạo là Fougère Spicy (Fougère trong tiếng Pháp có nghĩa là dương xỉ, nhóm hương này gồm các note oải hương, hoa phong lữ, rêu sồi, gỗ, v.v...), I’m not a Bad Man gây ấn tượng mạnh mẽ ngay từ giây phút đầu tiên khi mùi hương của cam bergamot lan tỏa trên da thịt. Lớp citrus quen thuộc mang theo vị đắng ngay đầu lưỡi đặc trưng của bergamot như một lời mời gọi nửa tươi vui trong trẻo, nửa kín đáo lạnh lùng. Và ngay sau đó, hỗn hợp các loại thảo mộc gồm bạc hà, lá xô thơm và thì là Ai Cập xuất hiện như rẽ ra một lối mòn dẫn đến khu vườn ẩm thấp bí mật.\r\n\r\nI’m not a Bad Man nhẹ nhàng biến chuyển từ tầng hương đầu tươi mát sang sắc thái trầm và dịu hơn nhưng vị nồng nàn khó cưỡng vẫn hiện diện rõ nét. Lúc này sự xuất hiện của hoắc hương như một điểm nhấn sâu thẳm khẳng định cá tính ấn tượng của người dùng.\r\n\r\nDư âm mà I’m not a Bad Man gửi lại trên da hầu như không còn vị đắng của bergamot hay cay nồng của các loại thảo mộc. Lúc này mùi thơm của đàn hương, xạ hương kết hợp cùng hổ phách và đậu Tonka thoảng vị hạnh nhân ngọt bùi như hóa thành chiếc khăn len mềm mại cực kỳ dễ chịu.', 'nuochoa18.png'),
('MLSP002', 'MSP017', 'Nước hoa GenZ x Jillian: Summer Twist 35ml', 50, 200000, 350000, 'Mô tả sản phẩm\r\nIt’s time to twist!\r\n\r\nThiên nhiên trong mắt ta là một người bạn lớn, cũng biết buồn vui, biết hờn giận và cần được yêu thương. Sự rung động khi bất ngờ chạm mắt anh chàng khóa trên hay tương tư khoảng trời xanh biếc đều là một tình yêu trong veo chẳng cần nhiều lý do. Bạn có đủ dũng cảm để tỏ tình? Chọn sống xanh để được hòa vào tình yêu trọn vẹn!\r\n\r\nXanh dịu dàng, tinh khôi từ hoa và quả mọng, lại tràn đầy năng lượng nhờ hương gỗ cuối, Summer Twist mở ra không gian của một khu vườn buổi sớm mai với vạt nắng mềm mại và các loài cây đang tưng bừng sức sống, cho bạn nguồn cảm hứng để khởi đầu một ngày mới năng động.', 'nuochoa19.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`mahd`,`masp`),
  ADD KEY `masp` (`masp`);

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`macv`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `makh` (`makh`),
  ADD KEY `manv` (`manv`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`maloaisp`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`),
  ADD KEY `macv` (`macv`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `maloaisp` (`maloaisp`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahd`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `nguoidung` (`makh`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`macv`) REFERENCES `chucvu` (`macv`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`maloaisp`) REFERENCES `loaisp` (`maloaisp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
