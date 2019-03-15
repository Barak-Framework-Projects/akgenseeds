-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 15 Mar 2019, 22:26:51
-- Sunucu sürümü: 5.6.43
-- PHP Sürümü: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `AKGENSEEDS`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `activation`
--

CREATE TABLE `activation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` text,
  `agenda_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `agenda`
--

INSERT INTO `agenda` (`id`, `subject`, `content`, `agenda_date`, `created_at`, `updated_at`) VALUES
(14, 'Web Sitemiz Yayına Girmiştir!', '<a href=\"http://www.akgenseeds.com\" target=\"_blank\">http://www.akgenseeds.com</a>', '2017-05-15 00:00:00', '2017-05-15 16:16:45', '2017-05-16 14:21:52'),
(15, 'Distribütörlerimiz İle Hızla Büyüme Devam Ediyoruz', '<h4 style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-family: Monda, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Final Tarım Ticaret A.Ş.</span></h4><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\"><span class=\"fa fa-map-mark\"></span>&nbsp;Fevzi Çakmak Mahallesi 10479. Sokak No:24 Karatay Konya TÜRKİYE</p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\"><span class=\"fa fa-phone\"></span>&nbsp;0530 140 52 94</p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\"><span class=\"fa fa-fax\"></span>&nbsp;0545 719 99 50</p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\"><span class=\"fa fa-home\"></span>&nbsp;<a href=\"http://www.finaltarim.com.tr/\" target=\"_blank\">http://www.finaltarim.com.tr</a></p>', '2017-05-15 00:00:00', '2017-05-15 16:21:36', '2017-05-15 16:22:24'),
(16, 'Yeni Bayilerimiz Açılmıştır', 'Akgen Tohumculuk bayilerinin sayısı gün geçtikçe artmaktadır', '2018-01-02 00:00:00', '2018-01-02 08:48:47', '2018-01-02 08:50:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `agendaimage`
--

CREATE TABLE `agendaimage` (
  `id` int(11) NOT NULL,
  `agenda_id` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `agendaimage`
--

INSERT INTO `agendaimage` (`id`, `agenda_id`, `image`, `created_at`, `updated_at`) VALUES
(145, 15, '/upload/agendas/15/145.png', NULL, NULL),
(148, 14, '/upload/agendas/14/148.jpg', NULL, NULL),
(149, 14, '/upload/agendas/14/149.jpg', NULL, NULL),
(150, 14, '/upload/agendas/14/150.jpg', NULL, NULL),
(151, 16, '/upload/agendas/16/151.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `album_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `album`
--

INSERT INTO `album` (`id`, `name`, `album_date`, `created_at`, `updated_at`) VALUES
(5, 'Albüm 1', '2017-07-18 00:00:00', '2017-07-18 14:48:13', '2017-11-29 15:46:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `albumimage`
--

CREATE TABLE `albumimage` (
  `id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `albumimage`
--

INSERT INTO `albumimage` (`id`, `album_id`, `image`, `created_at`, `updated_at`) VALUES
(19, 5, '/upload/albums/5/19.png', NULL, NULL),
(15, 5, '/upload/albums/5/15.png', NULL, NULL),
(16, 5, '/upload/albums/5/16.png', NULL, NULL),
(17, 5, '/upload/albums/5/17.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` text,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `captcha`
--

CREATE TABLE `captcha` (
  `id` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `content_en` varchar(5000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `name`, `name_en`, `content`, `content_en`, `image`, `created_at`, `updated_at`) VALUES
(10, 'Bahçe Bitkileri', 'Garden Plants', '', '', '/upload/categories/10.jpg', '2017-04-25 11:58:05', '2017-05-12 10:32:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `distributor`
--

CREATE TABLE `distributor` (
  `id` int(11) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(5000) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `distributor`
--

INSERT INTO `distributor` (`id`, `region_id`, `name`, `address`, `url`, `phone`, `fax`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 3, 'Final Tarım Ticaret A.Ş.', 'Fevzi Çakmak Mahallesi 10479. Sokak No:24 Karatay Konya TÜRKİYE', 'http://www.finaltarim.com.tr', '0530 140 52 94', '0545 719 99 50', 'info@finaltarim.com.tr', '/upload/distributors/1.png', '2017-05-15 12:26:46', '2017-05-15 14:29:07'),
(5, 5, 'AGRO  DİNAMİK TARIMSAL PAZARLAMA', 'Gülbahar Hatun Mah. Mustafa Satan Cad. 6 Sok No:4/C TOKAT T:0533 419 93 74 Fax:0356 214 66 60\r\nAhmet GÜNDÜZ  :  0530 069  12 53 \r\nFırat YILMAZ        :  0530 069 12 54 \r\nM.Emre ÇELİK      :  0530 069 12 55\r\nGökhan ŞİMŞEK   : 0533 419 93 74', 'http://www.agrodinamik.com', '0533 419 93 74', '0356 214 66 60', 'agrodinamik@gmail.com', '/upload/distributors/5.jpeg', '2017-05-24 08:17:08', '2017-05-24 08:24:28'),
(6, 6, 'Anto Tarım', 'Alper UNLU    : 0546 6715657\r\nErhan SEVÜK : 0544 7729496', NULL, '0546 6715657 / 0544 7729496', NULL, NULL, '/upload/distributors/6.jpeg', '2017-05-24 08:28:32', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` text,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `title_en` varchar(100) DEFAULT NULL,
  `content` text,
  `content_en` text,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `page`
--

INSERT INTO `page` (`id`, `page_id`, `title`, `title_en`, `content`, `content_en`, `image`, `created_at`, `updated_at`) VALUES
(6, NULL, 'Hizmetlerimiz', 'Services', '', '', '/upload/pages/6.jpg', '2017-01-11 20:51:29', '2017-11-17 11:34:09'),
(35, 6, 'Tohum', 'Seed', '<span style=\"font-family: Monda, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\">Tohumluk üretiminin ve ticaretinin temelini bitki ıslah çalışmaları oluşturur.Bir bitki ıslah çalışmasının nihai hedefi ise çeşit geliştirmektir.Islahın erken safhalarında çok az tohum elde edilir. Bu az miktarda ki tohum sonraki yıllarda çoğaltılır ve çiftçiye dağıtılacak büyük miktarları oluşturur.Bu bir tek bitkiden birkaç gramlık tohumla başlayan ıslah çalışması önce sıraya ekim,ilk verim denemeleri,mukavemet ıslahı araştırmalarına,mikro verim safhasına ve makro verim denemelerine kadar ilerler.Bütün bu safhaların sonunda tohum miktarı birkaç gramdan yüz kiloya kadar çıkar.Çeşidin morfolojik,biyolojik ve tarımsal nitelikleri belirlenir,piyasadaki diğer çeşitlerden farkları belirlenip kütüğe kayıt edilir.Islah edilen çeşidin çeşit özelliğini elde edebilmesi için,mevcut çeşitlerden en az bir karakterce üstün olması ve diğer önemli karakterlerce de yeterli bulunmasıdır. Yeni çeşidin hızla üretim,dağıtımını kolaylaştırma ve kontrolünü sağlamak için sertifikalı tohumluk üretim programına dahil edilir.Sertifikalı tohumluk menşe ve döl kademesine göre 4 sınıfa ayrılır: Elit Tohum: Yeni ıslah edilmiş veya daha önceden ıslah edilmiş olmakla beraber usulüne göre çeşit safiyeti muhafaza ve devam ettirilen ,doğrudan doğruya ıslahcısı tarafından kontrol edilen, miktarı düşük (100-200 kg.), orijinal tohumluğun başlangıcı ve diğer sertifikalı tohumlukların kaynağını teşkil eden tohumluktur. Orijinal Tohum: Elit tohumluktan veya kendisinden elde edilen çeşit safiyetini devam ettiren ve araştırma,ıslah ve deneme istasyonlarında kontrollü olarak yetiştirilen tohumluktur. Orijinal tohumluk doğrudan doğruya veya anaç tohumluk vasıtasıyla sertifikalı tohumluğun kaynağını oluşturur. Anaç Tohumluk: Orijinal tohumluktan elde edilen ve çeşit safiyetini devam ettiren,tohumluk kontrol ve sertifikasyon merkezi müdürlüğü tarafından kontrol edilen tohumluktur. Anaç tohumluk sertifikalı tohumluk yetiştiriciliği niteliğinde olanlar tarafından yetiştirilir. Sertifikalı Tohumluk: Orijinal,anaç veya kendisinden elde edilen çeşit safiyetini devam ettiren,tohumluk kontrol ve sertifikasyon teşkilatı tarafından kontrol edilen tohumluktur. Sertifikalı tohumluk,tohumluk yetiştirici belgesi olan özel ve devlet kuruluşları tarafından üretilip çoğaltılır ve çiftçiye satışı yapılır. Burada belirtilen standartlar değişmez değildir.Gerekli görüldüğünde değişebilir.Bu standartlara tohumluk kontrol ve sertifikasyon kuruluşlarınca tohumluğun sertifikalı olduğunu gösterir sertifika ve çuvallarında sertifika kademesini gösterir etiket verilir.Eğer tohumluk çeşidin özelliklerini göstermez ve safiyetini yitirmişse hiçbir tohumluk sınıfına girmediğini belirten rapor verilir.Tohumlukların sertifikasyonu ile ilgili bütün işlemler 308 sayılı Kanun ve buna bağlı yönetmeliklerle yapılır.</span>', 'The main objective of a plant breeding study is to develop some kinds of seed. In the early stages of the plant very little seed is obtained. This small amount of seed is replicated in the following years and will be distributed to the farmer. It starts with a few grams of seed from a single plant. At the end of the amount of seed from a few grams to hundreds of pounds of the morphological, biological and agricultural qualities are determined, the differences in the other varieties in the market are determined and the record is recorded. is sufficient. Certified seed is divided into 4 classes according to origin and progeny stage: Elite Seed: Although it has been newly rehabilitated or previously rehabilitated, it is duly retained and maintained according to its type. It is the seed that is directly controlled by the breeder, the amount of which is low (100-200 kg), the origin of the original seed and other certified seeds. Original Seed: It is the seed that is cultivated in research, breeding and test stations that maintains the purity obtained from the elite seed or from it. The original seed is the source of certified seed directly or through rootstock seed. Rootstock Seed: Seed obtained from the original seed and the kind of purity, seed control and certification center is controlled by the directorate of the seed. Rootseed seed is grown by certified seed breeders. Certified Seed: It is the seed which is controlled by the seed control and certification body, which maintains the purity of the original, rootstock or varieties obtained from it. Certified seed is produced and reproduced by private and governmental organizations with seed growers certificate and sold to farmers. The standards stated here are subject to change. all transactions are carried out by Law No. 308 and related regulations.', '/upload/pages/35.jpg', '2017-04-28 09:36:54', '2018-12-18 16:20:17'),
(36, 6, 'Fide Yetiştiriciliği', 'Seedling Cultivation', '<p><span style=\"font-family: Monda, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\">Kaliteli fide ile üretime başlamak hem verimi artıracak hem de kaliteli ürün elde etmemizi sağlayacaktır.Yetiştirdiğimiz diğer ürünlerle sebze üretimini karşılaştırdığımız zaman;</span></p><p><span style=\"font-family: Monda, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\"> - Sebzecilik çoğu üründen daha karlıdır.</span></p><p><span style=\"font-family: Monda, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\">- Daha az işçilik ve daha az yatırım masrafı gerektirmektedir.</span></p><p><span style=\"font-family: Monda, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\">- Hasat dönemi uzun olduğu için ürün yetiştikten sonra çoğu sebze türlerinde 3-5 günde bir ürün satılabilmekte yani 3-5 günde bir para alınabilmektedir.</span></p><p><span style=\"font-family: Monda, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\">- Küçük alanlardan önemli gelirler elde edilebilmektedir.</span></p><p><span style=\"font-family: Monda, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\">- Bazı özel fide yetiştirme teknikleri kullanıldığı taktirde erken turfandacılık iklim şartlarının uygunluğu ve sonbahar soğuklarından korunma teknikleri uygulandığında çoğunlukla geç turfandacılık yapılabilmektedir.</span></p><p><span style=\"font-family: Monda, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\">Sebze türleri yetiştirme şekillerine göre farklılık gösterirler. Soğuk ve sıcağa karşı hassas olmayan sebzelerin tohumları direk olarak tarlaya ekilir. Bu sebze türleri; havuç, maydanoz, ıspanak ve bezelyedir. Fide ile üretimi yapılan sebzeler ise; domates, biber, patlıcan, lahana ve karnıbahardır.</span></p>', '<div>Starting with the production of quality seedlings will both increase the yield and provide quality products. When we compare the production of vegetables with other products;</div><div><br></div><div>- Vegetables are more profitable than most products.</div><div><br></div><div>- It requires less labor and less investment costs.</div><div><br></div><div>- Harvest period is long after the product grows in most vegetable species in 3-5 days for a product can be sold, ie 3-5 days can be taken money.</div><div><br></div><div>- Significant revenues can be obtained from small areas.</div><div><br></div><div>- In case some special seedling cultivation techniques are used, the suitability of climatic conditions and early autumn cold protection techniques can be done.</div><div><br></div><div>Vegetable species vary according to their cultivation. Seeds of vegetables that are not sensitive to cold and heat are directly planted in the field. These types of vegetables; carrots, parsley, spinach and peas. Vegetables produced by seedlings are; tomato, pepper, eggplant, cabbage and cauliflower.</div>', '/upload/pages/36.jpg', '2017-04-28 09:38:05', '2018-12-18 16:24:00'),
(32, 6, 'Çim Çeşitleri', 'Grass Types', 'Bahçesi olan herkes yemyeşil, bakımlı bir çime sahip olmak ister. Bir ev en değerli eşyalarla döşense de halısı, perdesi, döşemesi olmadan dekorasyonu eksiktir ve göze hoş görünmez. Aynı şekilde çimensiz, toprağın rengi görünen bir bahçe en nadide bitkilerle dolu olsa da tamamlanmış sayılmaz. Ayrıca çimin bahçeye dekoratif öneminden çok daha fazla faydaları vardır. İyi bakılan bir çim bahçe toprağını kökleriyle bir ağ gibi sardığı için özellikle meyilli bahçelerde toprak kaybını önler. Yağışlı dönemlerde çamurlanmaya , kuru havalarda ise toza mani olur. Bakımı sırasında yabani otlarla mücadeleyi sağladığı için bahçedeki diğer bitkiler daha sağlıklı büyür. Gün boyu nefes alan çimler havayı temizler. Sıcak yaz günlerinde bünyesindeki suyu buharlaştırırken bahçenin ısısını birkaç derece düşürerek ferahlık verir. Çim ekimi ve bakımı her safhasında son derece dikkat ve efor gerektirir.\r\n', 'Anyone who has a playground wants to have a green, well-groomed lawn. While a house is furnished with the most valuable items, its decoration without carpet, curtain, flooring is incomplete and does not look pleasing to the eye. Similarly, a garden with no grass and a soil that is visible to the soil is full of rare plants. In addition, the lawn has more benefits than the decorative importance of the garden. A well maintained lawn prevents soil loss, especially in sloping gardens, because the garden wraps its soil as a net with its roots. During the rainy periods, sludge is prevented and in dry weather dust is prevented. The other plants in the garden grow healthier as they provide protection against weeds during their care. All day long lawns clean the air. It warms the temperature of the garden by a few degrees while it evaporates the water in the hot summer days. Grass cultivation and maintenance requires utmost attention and effort at every stage.', '/upload/pages/32.jpeg', '2017-04-25 15:33:36', '2018-12-18 16:16:05'),
(33, 6, 'Yem Bitkileri', 'Forage Crops', 'Büyükbaş hayvan yetiştiriciliği projeleri yapıp büyükbaş hayvan yetiştiriciliği devlet teşvikleri kullanmak isteyen hayvan yetiştiricisi, büyükbaş hayvan yetiştiriciliği karlı mıdır diye araştırma yapmaktadır. İtalian ryegrass yem bitkisi ile evet karlıdır. Büyükbaş ve küçükbaş hayvan besleme rasyonlarında eksik olmayan bu bitkiyi şirketimiz büyük bir öz veriyle tanıtmaktadır.', 'Animal breeder who wants to make cattle breeding projects and use state incentives for cattle breeding is doing research about whether or not cattle breeding is profitable.&nbsp;It is profitable with italian ryegrass fodder plant. Our company introduces this plant which is not missing in big and small ruminant feeding rations with great self data.<br>', '/upload/pages/33.jpg', '2017-04-25 15:34:07', '2018-12-18 16:19:05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `partner`
--

INSERT INTO `partner` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(22, 'c', '/upload/partners/22.jpg', '2017-05-15 09:21:45', '2017-05-15 09:49:09');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `producttype_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `content_en` varchar(5000) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `producttype_id`, `name`, `name_en`, `content`, `content_en`, `price`, `image`, `file`, `created_at`, `updated_at`) VALUES
(360, 46, 'ZİNYA', NULL, NULL, NULL, NULL, '/upload/products/image/360.jpg', '/upload/products/image/360.png', '2017-05-23 08:18:41', NULL),
(362, 40, 'BİBER CALİFORNİA WONDER', 'PEPPER CALIFORNİA WONDER', '<p style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; background-color: rgb(255, 255, 255);\">California Wonder Dolma Biber Tohumu</p><p style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; background-color: rgb(255, 255, 255);\">-Acık tarla yetistiriciligine uygundur.</p><p style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; background-color: rgb(255, 255, 255);\">-Meyve 8-9 cm uzunlugunda, 6-7 cm capındadır.</p><p style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; background-color: rgb(255, 255, 255);\">-Meyve eti kalın ve 3-4 lopludur.</p><p style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; background-color: rgb(255, 255, 255);\">-Meyve rengi olgunlasmadan once yesil olup, olgunlastıkca kırmızıya doner.</p><p></p><p style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; background-color: rgb(255, 255, 255);\">-Sanayide ve taze tuketimde kullanılmaktadır</p>', '<p><span lang=\"EN\" style=\"font-size: 12px; line-height: 115%; font-family: Calibri, sans-serif; color: rgb(33, 33, 33);\">-It is suitable for outdoor\r\nfield cultivation</span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal;tab-stops:45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;\r\nbackground:white\"><span lang=\"EN\" style=\"font-size:12.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Courier New&quot;;color:#212121;mso-ansi-language:\r\nEN;mso-fareast-language:TR\"><span style=\"font-size: 12px;\">- Fruit is 8-9 cm long, 6-7 cm long.</span><o:p></o:p></span></p><p><span lang=\"EN\" style=\"font-size: 12px; line-height: 115%; font-family: Calibri, sans-serif; color: rgb(33, 33, 33);\">\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal;tab-stops:45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;\r\nbackground:white\"><span lang=\"EN\" style=\"font-size:12.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Courier New&quot;;color:#212121;mso-ansi-language:\r\nEN;mso-fareast-language:TR\"><span style=\"font-size: 12px;\">-The flesh is thick and 3-4 loops.</span></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal;tab-stops:45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;\r\nbackground:white\"><span lang=\"EN\" style=\"font-size:12.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Courier New&quot;;color:#212121;mso-ansi-language:\r\nEN;mso-fareast-language:TR\"><span style=\"font-size: 12px;\">-</span><span style=\"font-size: 12px;\"> The fruit color is green before it matures and it\r\nturns red when it matures.</span><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal;tab-stops:45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;\r\nbackground:white\"><span lang=\"EN\" style=\"font-size:12.0pt;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Courier New&quot;;color:#212121;mso-ansi-language:\r\nEN;mso-fareast-language:TR\"><span style=\"font-size: 12px;\">\r\n\r\n</span><span lang=\"EN\" style=\"font-size: 12px; line-height: 115%; font-family: Calibri, sans-serif;\">- It is\r\nused in industry and fresh&nbsp;</span><span style=\"font-size: 12px;\"><br></span><o:p></o:p></span></p>', NULL, '/upload/products/image/362.jpg', '/upload/products/image/362.png', '2017-05-30 12:29:37', NULL),
(337, 46, 'ACEM LALESİ', 'TULIP ACEM', '', '', 0, '/upload/products/image/337.jpg', '/upload/products/image/337.png', '2017-05-23 08:04:13', '2017-05-23 08:19:41'),
(338, 46, 'BAHAR YILDIZI', 'SPRING STAR', NULL, NULL, NULL, '/upload/products/image/338.jpg', '/upload/products/image/338.png', '2017-05-23 08:05:43', NULL),
(339, 46, 'ÇÖREK OTU', NULL, NULL, NULL, NULL, '/upload/products/image/339.jpg', '/upload/products/image/339.png', '2017-05-23 08:07:19', NULL),
(340, 46, 'FESLEĞEN ÇİÇEĞİ', 'BASIL FLOWER', NULL, NULL, NULL, '/upload/products/image/340.jpg', '/upload/products/image/340.png', '2017-05-23 08:08:29', NULL),
(341, 46, 'GECE SEFASI', NULL, NULL, NULL, NULL, '/upload/products/image/341.jpg', '/upload/products/image/341.png', '2017-05-23 08:09:18', NULL),
(342, 46, 'GÜNDÜZ GÜZELİ', NULL, NULL, NULL, NULL, '/upload/products/image/342.jpg', '/upload/products/image/342.png', '2017-05-23 08:09:43', NULL),
(343, 46, 'HAZERAN', NULL, NULL, NULL, NULL, '/upload/products/image/343.jpeg', '/upload/products/image/343.png', '2017-05-23 08:10:13', NULL),
(344, 46, 'IPOMEA-PALMATA', NULL, NULL, NULL, NULL, '/upload/products/image/344.jpg', '/upload/products/image/344.png', '2017-05-23 08:11:10', NULL),
(345, 46, 'İSVİÇRE DEV MENEKŞE', NULL, NULL, NULL, NULL, '/upload/products/image/345.jpg', '/upload/products/image/345.png', '2017-05-23 08:11:45', NULL),
(346, 46, 'KADİFE ÇİÇEĞİ', NULL, NULL, NULL, NULL, '/upload/products/image/346.jpg', '/upload/products/image/346.png', '2017-05-23 08:12:31', NULL),
(347, 46, 'KARISIK-BODUR-KOKULU-KARANFIL', NULL, NULL, NULL, NULL, '/upload/products/image/347.jpg', '/upload/products/image/347.png', '2017-05-23 08:12:57', NULL),
(348, 46, 'KARIŞIK RENKLİ ASLAN AĞZI', NULL, NULL, NULL, NULL, '/upload/products/image/348.jpg', '/upload/products/image/348.png', '2017-05-23 08:13:37', NULL),
(349, 46, 'KATMERLİ İPEK ÇİÇEĞİ', NULL, NULL, NULL, NULL, '/upload/products/image/349.jpg', '/upload/products/image/349.png', '2017-05-23 08:14:13', NULL),
(350, 46, 'KRALİÇE PAPATYA', NULL, NULL, NULL, NULL, '/upload/products/image/350.jpg', '/upload/products/image/350.png', '2017-05-23 08:14:39', NULL),
(351, 46, 'KRALİYET HALISI', NULL, NULL, NULL, NULL, '/upload/products/image/351.jpg', '/upload/products/image/351.png', '2017-05-23 08:15:03', NULL),
(352, 46, 'LATİN ÇİÇEĞİ', NULL, NULL, NULL, NULL, '/upload/products/image/352.jpg', '/upload/products/image/352.png', '2017-05-23 08:15:29', NULL),
(353, 46, 'PAPATYA', NULL, NULL, NULL, NULL, '/upload/products/image/353.jpg', '/upload/products/image/353.png', '2017-05-23 08:16:03', NULL),
(354, 46, 'PETUNYA', NULL, NULL, NULL, NULL, '/upload/products/image/354.jpg', '/upload/products/image/354.png', '2017-05-23 08:16:31', NULL),
(355, 46, 'ŞEBBOY', NULL, NULL, NULL, NULL, '/upload/products/image/355.jpg', '/upload/products/image/355.png', '2017-05-23 08:16:51', NULL),
(356, 46, 'ŞEKER TABAĞI', NULL, NULL, NULL, NULL, '/upload/products/image/356.jpg', '/upload/products/image/356.png', '2017-05-23 08:17:12', NULL),
(357, 46, 'TOP REYHAN', NULL, NULL, NULL, NULL, '/upload/products/image/357.jpg', '/upload/products/image/357.png', '2017-05-23 08:17:31', NULL),
(358, 46, 'VAPUR DUMANI', NULL, NULL, NULL, NULL, '/upload/products/image/358.jpg', '/upload/products/image/358.png', '2017-05-23 08:17:51', NULL),
(359, 46, 'YÜSÜK OTU', NULL, NULL, NULL, NULL, '/upload/products/image/359.jpg', '/upload/products/image/359.png', '2017-05-23 08:18:12', NULL),
(336, 46, 'KARIŞIK RENKLİ KARANFİL', '', '', '', 0, '/upload/products/image/336.jpg', '/upload/products/image/336.png', '2017-05-23 08:03:10', '2017-05-29 08:44:23'),
(225, 35, 'Domates Esma (ANCON)', 'Tomato Esma (ANCON)', '<p class=\"MsoNormal\">-Açık Tarla Yetiştiriciliğine uygun bir çeşittir.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">- Yaz Ekimine uygundur.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">- Sert ve Kalın Kabukludur.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Olgunlaşma Süresi 70-80 gün arasıdır.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Nakliyeye dayanıklı bir çeşit olup raf ömrü uzundur.<b><o:p></o:p></b></p>', '<p class=\"MsoNormal\">-Suitable for open field farming.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Suitable for summer sowing.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-It has got thick and rough peel. <o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Ripenning period is around 70-80 days.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Durable for shipping and shelf-life is long.<b><o:p></o:p></b></p>', 0, '/upload/products/image/225.jpg', '/upload/products/image/225.png', '2017-05-08 14:49:48', '2017-05-08 14:51:19'),
(226, 35, 'Domates Antep', 'Tomato Antep', '<p class=\"MsoNormal\">-Oturak Domates Çeşididir.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Açık Tarla Yetiştiriciliğine uygundur<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Meyve Ağırlığı 350-400 gr arasındadır.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Meyve Raf Ömrü 2-3 gün arasıdır.<b><o:p></o:p></b></p>', '<p class=\"MsoNormal\">-A type of oturak tomato.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Suitable for open field farming.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-The weight of the fruit is about 350-400gr.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Shelf-life of the fruit is 2-3 days.<b><o:p></o:p></b></p>', 0, '/upload/products/image/226.jpg', '/upload/products/image/226.png', '2017-05-09 13:43:09', NULL),
(227, 35, 'Domates Cherry', 'Tomato Cherry', '<p class=\"MsoNormal\">-Olgunlaşma süresi 90-100 gün arasıdır.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Meyve Lezzetli ve salkım şeklindedir.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Adaptasyon Kabiliyeti yüksektir.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Tek Salkımda 12-15 adet meyve verir.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Raf ömrü uzundur.<b><o:p></o:p></b></p>', '<p class=\"MsoNormal\">-Ripenning period is 90-100 days.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Fruit is tasty and bunchlike.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Adaptation level is high.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-One bunch has 12-15 fruits.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Shelf-life is long.<b><o:p></o:p></b></p>', 0, '/upload/products/image/227.jpg', '/upload/products/image/227.png', '2017-05-09 13:44:34', NULL),
(228, 35, 'Domates Rio (Sanayi Domatesi)', 'Tomato Rio (Industrial Tomato)', '<p class=\"MsoNormal\">-Orta Geç çi salçalık Domates Çeşididir.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Koyu Kırmızı renkli ve sert kabukludur.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Meyve Ağırlığı ortalama 90-110 gr arasındadır.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-Salça verimine uygun olup etli bir çeşittir.<b><o:p></o:p></b></p>', '<p class=\"MsoNormal\">-A type of mid-late tomato and for sauce.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-It is crimson and has rough peel.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-The average weight of the fruit is 90-110gr.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">-It is succulent and suitable for sauce.<b><o:p></o:p></b></p>', 0, '/upload/products/image/228.jpg', '/upload/products/image/228.png', '2017-05-09 13:46:28', '2017-05-09 13:46:42'),
(229, 35, 'Domates İnci (Ege Pembesi)', 'Tomato Pearl (Aegean Pink)', '<p class=\"MsoNormal\">-Açık Tarla yetiştiriciliğine uygun oturak bir çeşittir.<o:p></o:p></p><p class=\"MsoNormal\">-Raf Ömrü uzun Nakliyeye Dayanıklıdır.<o:p></o:p></p><p class=\"MsoNormal\">-Kabuk rengi ve et rengi pembemsi bir çeşittir.<o:p></o:p></p><p class=\"MsoNormal\">-Ortalama ağırlığı 300-400 gr arasıdır.</p>', '<p class=\"MsoNormal\">-A type of oturak tomato and suitable for open field farming.<o:p></o:p></p><p class=\"MsoNormal\">-Shelf-life is long and durable for shipping.<o:p></o:p></p><p class=\"MsoNormal\">-Its peel and flesh is pinky.<o:p></o:p></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\">-Its average weight is 300-400gr.<b><o:p></o:p></b></p>', 0, '/upload/products/image/229.jpg', '/upload/products/image/229.png', '2017-05-09 13:48:22', NULL),
(230, 36, 'Hıyar Beith Alpha', 'Cucumber Beith Alpha', '-Açık Tarla Yetiştiriciliğine uygun bir çeşittir<br>-Meyve uzunluğu 16-18 cm uzunluğunda olup çapı 4 cm dir<br>Verim oranı yüksek raf ömrü uzundur<br>-adaptasyon kabiliyeti yüksektir-<br>-55-60 günde verime gelir', '-Suitable for open field farming.<br>-The length of the fruit is 16-18cm and its calibre is 4cm.<br>-Efficiency variance is high and shelf-life is long.<br>-Adaptation level is high.<br>-You get efficiency in 55-60 days', 0, '/upload/products/image/230.jpg', '/upload/products/image/230.png', '2017-05-11 08:26:03', '2017-05-11 08:36:59'),
(231, 36, 'Hıyar Akgen F1', 'Cucumber Akgen F1', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-45-55 günde ürün verir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-silindirik ve düzgün meyve\r\nyapısına sahiptir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-külleme ve virüse karşı\r\ndayanıklı bir çeşittir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-meyve verimi ve kalitesi\r\nyüksektir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>Raf ömrü uzun ve nakliyeye\r\ndayanıklıdır</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i><b>-</b></i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It gives a yield in 45-55\r\ndays.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The fruit has a cylindrical\r\nand smooth shape.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Durable for ashing and virüs.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Highly productive and\r\nhigh-quality.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Shelf-life is long and\r\ndurable for shipping.</i></p>', 0, '/upload/products/image/231.jpg', '/upload/products/image/231.png', '2017-05-11 21:39:22', '2017-05-12 08:45:18'),
(232, 36, 'HIYAR (KORNİŞON) KRAL', 'CUCUMBER (PICKLE) KING', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla\r\nyetiştiriciliğine uygun</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-orta erkenci dikenli turşuluk\r\nhıyar çeşididir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>Silindirik ve düz meyve\r\nyapısına sahiptir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-verim olarak yüksek, meyve\r\nkalitesi iyidir</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for open field\r\nfarming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for pickling and a\r\ntype of mid-early thorny cucumber.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Its fruit is cylindrical and\r\nsmooth.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Highly productive and\r\nhigh-quality.</i></p>', 0, '/upload/products/image/232.jpg', '/upload/products/image/232.png', '2017-05-11 21:44:30', '2017-05-12 08:45:33'),
(308, 41, 'HAVUÇ NANTES (İTHAL)', 'CARROT NANTES (IMPORTED)', '-16-18 CM BOYUNDA SİLİNDİRİK VE DÜZGÜN ŞEKİLLİ MEYVE YAPISINA SAHİPTİR.<br>-Eti ve özü koyu turuncu ucu küttür.<br>-Adaptasyonu yüksek kışlık bir çeşittir.', '-Its fruit is 16-18cm and smooth and cylindrical.<br>-Its meat and its self is dark orange.<br>-Adaptation level is high and it is for winter.', NULL, '/upload/products/image/308.jpg', '/upload/products/image/308.png', '2017-05-17 08:22:32', NULL),
(233, 36, 'HIYAR BEİTH ALPHA F1', ' CUCUMBER BEITH ALPHA F1', '<p style=\"margin-bottom: 0.35cm\"><i>-45-55 günde verime gelir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-meyve kalitesi çok yüksek\r\nbir çeşittir-</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Külleme ve virüse karşı\r\ndayanıklıdır-</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-meyve uzunluğu 15-17 cm dir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-You get efficiency in 45-55\r\ndays.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Its fruit has a high quality.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Durable for ashing and virüs.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The length of the fruit is\r\n15-17cm.</i></p>', 0, '/upload/products/image/233.jpg', '/upload/products/image/233.png', '2017-05-11 21:48:03', '2017-05-12 08:45:50'),
(235, 37, 'PATLICAN ANTEP DOLMALIK', 'EGGPLANT ANTEP DOLMALIK (FIT FOR STUFFING)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla patlıcanı olup\r\nerkenci bir çeşittir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Yuvarlak parlak ve lezzetli\r\nmeyve yapısına sahiptir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Verim oranı yüksektir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Hasat periyodu uzundur</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-An early type and for open\r\nfield eggplant.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It has a round, shiny and\r\ntasty fruit.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Highly productive.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Harvest period is long.</i></p>', 0, '/upload/products/image/235.jpg', '/upload/products/image/235.png', '2017-05-11 22:08:06', '2017-05-12 08:42:04'),
(310, 41, 'HAVUÇ  MIZAR', 'CARROT MIZAR', '-Antep yerli havuç çeşididir.<br>-Meyve kökünden ucuna doğru kısalan bir yapıya sahiptir.<br>-Meyve rengi sarı, pembe ve siyahtır.', '-A local type of carrots in Antep.<br>-It gets short from the root to the end.<br>-It is yellow, pink and black.', NULL, '/upload/products/image/310.jpg', '/upload/products/image/310.png', '2017-05-17 08:25:10', NULL),
(367, 37, 'PATLICAN ADANA DOLMALIK', 'EGGPLANT ADANA DOLMALIK', '<p>-Açık tarla yetiştiriciliğine uygun dip kısımdan dallanan bir çeşittir.</p><p>-Meyveler tatlı ve açık yeşil renktedir.</p><p>-Meyve uzunluğu 17 cm dir.</p><p>-Sofralık olarak ve turşuluk olarak tüketime uygundur.</p>', '<p>-Suitable for open field farming.</p><p>-It has a velvet and shiny color and shelf</p><p>-life is long.-Durable for shipping.</p><p>-Tolerant for hot weather.</p>', 0, '/upload/products/image/367.jpg', '/upload/products/image/367.png', '2017-05-31 08:35:03', '2017-06-01 10:48:58'),
(311, 41, 'ACUR ÖMERCİ', 'GHERKIN OMERCI', '-Meyveler açık yeşil renkte çizgiler belirgin ve olukludur.<br>-Meyve uzunluğu 25-30 cm arasıdır.<br>-Sıcağa karşı toleranslı ve yüksek verimlidir.<br>-Turşuluk ve sofralık bir çeşittir.<br><br>', '-Fruits are light green, stripes are clear and grooved.<br>-The length of the fruit is 25-30 cm.<br>-Tolerant against hot weather and it is highly productive.<br>- Suitable for pickling and edible.<br><br>', NULL, '/upload/products/image/311.jpg', '/upload/products/image/311.png', '2017-05-17 08:27:34', NULL),
(237, 37, 'PATLICAN AYDIN SİYAHI', 'EGGPLANT AYDIN SIYAHI', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla\r\nyetiştiriciliğine uygun erkenci bir çeşittir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyveler 20-25 cm olup parlak\r\nsiyah renktedir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve uçları sivri ve\r\nsilindirik şekildedir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Nakliyeye dayanıklı ve raf\r\nömrü uzundur.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-An early type and suitable\r\nfor open field farming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruits are about 20-25cm and\r\nshiny black.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruits are sharp-pointed and\r\ncylindrical.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Durable for shipping and\r\nshelf-life is long.</i></p>', 0, '/upload/products/image/237.jpg', '/upload/products/image/237.png', '2017-05-11 22:12:05', '2017-05-12 08:42:27'),
(329, 41, 'AYÇEKİRDEĞİ GÖKMEN', 'SUNFLOWER SEED GOKMEN', '-Kuruyemişlik ayçiçeği çeşididir.<br>-Taze tüketime ve depolamaya uygundur.<br><br><br>', '-It is used as dried nuts.<br>-Suitable for fresh consuming and storage.', NULL, '/upload/products/image/329.jpg', '/upload/products/image/329.png', '2017-05-17 08:58:59', NULL),
(239, 38, 'KAVUN ANANAS (CAN)', 'MELON (PINEAPPLE TYPE) CAN', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla\r\nyetiştiriciliğine uygun orta erkenci bir çeşittir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve oval şekilli hoş\r\nkokulu ve lezzetlidir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve ağırlığı 2,5 3 Kg\r\narasındadır</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Raf ömrü uzun olup,\r\nnakliyeye dayanıklıdır</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Hastalıklara karşı\r\ntoleransı  yüksektir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-A mid-early type and suitable\r\nfor open field farming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruit is oval, sweet-smelling\r\nand tasty.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It weighs about 2,5-3kg.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Shelf-life is long and\r\ndurable for shipping.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-High-tolerant against\r\nillnesses.</i></p>', 0, '/upload/products/image/239.jpg', '/upload/products/image/239.png', '2017-05-11 22:20:28', '2017-05-12 08:46:47'),
(307, 41, 'BAKLA', 'BROAD BEAN', '-Erkenci bir çeşittir.<br>-Çok güçlü bitki yapısına sahiptir.<br>-Meyve uzunluğu 25-30 cm arasıdır.<br>-İç tane adedi 7-8 adettir.<br>-Adaptasyon kabiliyeti yüksek bir çeşittir.', '-An early type.<br>-It has a very strong nature.<br>-The length of the fruit is 25-30 cm.<br>-There are 7-8 grains in every fruit.<br>-Its adaptation level is high.', NULL, '/upload/products/image/307.jpg', '/upload/products/image/307.png', '2017-05-17 08:18:53', NULL),
(240, 38, 'KAVUN KIRKAĞAÇ 589', 'MELON KIRKAGAC 589', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla\r\nyetiştiriciliğine uygun</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Adaptasyon Kabiliyeti yüksek</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve ağırlığı 3-5 kg\r\narası</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-raf ömrü uzun ve nakliyeye\r\ndayanıklı bir çeşittir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for open field\r\nfarming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Adaptation level is high.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Its fruit weighs 3-5kg.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Shelf-life is long and\r\ndurable for shipping.</i></p>', 0, '/upload/products/image/240.jpg', '/upload/products/image/240.png', '2017-05-11 22:22:22', '2017-05-12 08:46:58'),
(306, 45, 'SEMİZ OTU SARI KANAT', 'PURSLANE', '-Yeşil renkli iri yapraklı bir bitkidir.<br>-Yapraklı düzgün pürüzsüz ve oval yapıdadır.<br>-Yemeklik ve taze tüketime uygun bir çeşittir.', '-It is green and large leafed.<br>-Its leaves are smooth and oval.<br>-Suitable for fresh consuming and edible.', 0, '/upload/products/image/306.jpg', '/upload/products/image/306.png', '2017-05-17 08:17:01', '2017-05-30 13:07:19'),
(241, 39, 'KARPUZ CRIMSON SWEET', 'WATERMELON CRIMSON SWEET', '<p style=\"margin-bottom: 0.35cm\"><i>-Yuvarlak uzun tipte iri\r\nmeyvelidir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Dış kabuğu açık yeşil\r\nrenk üzerine koyu yeşil çizgilidir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Nakliyeye dayanıklı\r\nadaptasyon kabiliyeti yüksektir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve ağırlığı 9-11 kg\r\nolup nakliyeye dayanıklı bir çeşittir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is round,long and large</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Its peel is light green and\r\nhas dark green stripes.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Durable for shipping and\r\nadaptation level is high.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It weighs 9-11kg.</i></p>', 0, '/upload/products/image/241.jpg', '/upload/products/image/241.png', '2017-05-11 22:28:51', '2017-05-12 08:40:44'),
(312, 41, 'ACUR ANTEP', 'GHERKIN ANTEP', '-Kıraç araziye uyumlu, erkenci ve yüksek verimlidir.<br>-Meyvelerin rengi açık yeşil beyazımsıdır.<br>-Çizgili oluklu sert yapılı ve gevrektir.<br>-Meyveler 18-27 cm arası uzunluğa sahiptir.<br><br>', '-Suitable for barren fields, it is an early type and highly productive.<br>-Fruits are light green and whitish.<br>-Striped, grooved, hard and crispy.<br>-Fruits are 18-27 cm.<br><br>', NULL, '/upload/products/image/312.jpg', '/upload/products/image/312.png', '2017-05-17 08:28:39', NULL),
(378, 39, 'KARPUZ CRIMSON SWEET (İTHAL)', 'WATERMELON CRIMSON SWEET (IMPORTED)', '<p style=\"margin: 0cm 0cm 0.0001pt;\"><i><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Üstün kaliteli ala karpuz</span></i><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Güçlü\r\ntevek yapısı</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Şekil\r\nyuvarlak</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Tatlı\r\nve kan kırmızı renk</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-11-15\r\nkg arası ağırlık</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Nakliyeye\r\ndayanıklı raf ömrü uzun bir çeşit</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>', '<p style=\"margin: 0cm 0cm 0.0001pt;\"><i>-High-quality fine watermelon.</i><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 10.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-It\r\nhas a strong stock nature.</span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 10.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Its\r\nshape is round.</span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 10.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Sweet\r\nand crimson.</span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 10.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-It\r\nweighs 11-15kg.</span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 10.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Durable\r\nfor shipping and shelf-life is long.</span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>', NULL, '/upload/products/image/378.jpg', '/upload/products/image/378.png', '2017-06-14 09:10:03', NULL),
(243, 39, 'KARPUZ SİYAH (BEY)', 'WATERMELON BLACK (BEY)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla yetiştiriciliğine\r\nuygun</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Koyu yeşil renkli</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Koyu kırmızı et rengi,</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-6-8 kg arası meyve ağırlığı</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for open field\r\nfarming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It has a dark green peel and\r\nit is crimson inside.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It weighs 6-8kg.</i></p>', 0, '/upload/products/image/243.jpg', '/upload/products/image/243.png', '2017-05-11 22:33:56', '2017-05-12 08:41:08'),
(244, 40, 'BİBER ANTEP DOLMALIK (CANAN)', 'PEPPER ANTEP DOLMALIK (CANAN)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Acı dolmalık biber çeşidi</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Gevrek ve yeşil renk meyveli</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Çok güçlü bitki yapısı</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Sıcağa karşı adaptasyonu\r\nkuvvetli</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Yeşil taze veya kırmızı\r\nsalçalık olarak tüketilir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is fit for stuffing and\r\nhot.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is crispy and green.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It has a very strong natüre.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It has a strong adaptation\r\nagainst hot weather</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is consumed fresh or for\r\nsauce when it is red.</i></p>', 0, '/upload/products/image/244.jpg', '/upload/products/image/244.png', '2017-05-11 22:37:40', '2017-05-12 08:32:09'),
(320, 41, 'BEZELYE (AK)', 'PEA (AK)', '-Ana sezon yetiştiriciliğine uygun bir çeşittir.<br>-Adaptasyonu çok yüksek bir çeşittir.<br>-Meyve uzunluğu 12-14 cm boyundadır.<br>-Sofralık ve sanayilik olarak kullanılır.<br>-İç çekirdek sayısı 7-8 tanelidir.', '-Suitable for main season farming.<br>-Very highly productive.<br>-Fruit length is 12-14 cm.<br>-Used for industry and edible.<br>-Avrarege number of seeds is 7-8.', NULL, '/upload/products/image/320.jpg', '/upload/products/image/320.png', '2017-05-17 08:43:38', NULL),
(246, 40, 'BİBER YUKARIBAKAN (ACIMIK)', 'PEPPER YUKARIBAKAN (ACIMIK)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyveleri göz arasından\r\ntoplu çıkan bir çeşittir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve uzunluğu 5 cm,\r\ngenişliği 1 cm dir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Taze ve turşuluk olarak\r\ntüketilir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Acı ve yeşil renklidir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Its fruits arise from one\r\nhole. </i>\r\n</p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The length of the fruit is\r\n5cm and its width is 1cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is consumed fresh or for\r\npickling.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is hot and green<b>.</b></i></p>', 0, '/upload/products/image/246.jpg', '/upload/products/image/246.png', '2017-05-11 22:44:24', '2017-05-12 08:36:31'),
(319, 45, 'MOR REYHAN', 'PURPLE BASIL', '-Bitki kökü dallı bir yapıya sahiptir.<br>-Bitki gövdesi bodur olur.<br>-30-40 cm boyunda ve bol yapraklıdır.<br><br>', '-The root of the plant is branched.<br>-The plant itself is chunky.<br>-It is 30-40cm and has a lot of leaves.<br><br>', NULL, '/upload/products/image/319.jpg', '/upload/products/image/319.png', '2017-05-17 08:40:20', NULL),
(247, 40, ' BİBER DEMRE', 'PEPPER DEMRE', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla yetiştiriciliğine\r\nuygun koyu yeşil renkli biber çeşididir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Yüksek verim, yüksek\r\nkaliteli ve düzgün meyve yapısına sahiptir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve uzunluğu 17-20 cm dir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Nakliyeye dayanıklı ve raf\r\nömrü uzundur</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for open field\r\nfarming and it is dark green.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is highly productive,\r\nhigh-quality and smooth.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The length of the fruit is\r\n17-20cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Durable for shipping and\r\nshelf-life is long.</i></p>\r\n', 0, '/upload/products/image/247.jpg', '/upload/products/image/247.png', '2017-05-11 22:47:07', '2017-05-12 08:33:33'),
(324, 41, 'KÖK KEREVİZ (ÇINAR)', 'CELERY ROOT (CINAR)', '-Kök ve meyve olarak kullanılır.<br>-Albenisi yüksek bir çeşittir.<br>-Taze ve konservelik olarak tüketilebilir.<br><br>', '-Used as fruit and root.<br>-It is very appealing.<br>-It can be consumed fresh and conserved.', NULL, '/upload/products/image/324.jpg', '/upload/products/image/324.png', '2017-05-17 08:49:15', NULL),
(248, 40, 'BİBER HATUN', 'PEPPER HATUN', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Orta erkenci bir çeşittir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve uzunluğu 7-8 cm dir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-3 veya 4 lopludur</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Gevrek bir yapıya sahip olup\r\ndolmalık olarak tüketilir</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve rengi sarıdır.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-A mid-early type.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The length of the fruit is\r\n7-8cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It has 3 or 4 lobes.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is crispy and consumed for\r\nstuffing.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Its fruit is yellow.</i></p>', 0, '/upload/products/image/248.jpg', '/upload/products/image/248.png', '2017-05-11 22:49:29', '2017-05-12 08:34:27'),
(249, 40, 'BİBER ZARİFE', 'PEPPER ZARIFE', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Orta erkenci bir çeşittir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Güçlü bitki yapısına\r\nsahiptir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Bitki boyu 90-100 cm ye kadar\r\nçıkar.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve 4-5 cm uzunluğunda\r\nsivri ve sarı renkli olup acı bir çeşittir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Sofralık ve turşuluk olarak\r\ntüketilir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-A mid-early type.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It has a strong nature.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Its plant length is 90-100cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The fruit is 4-5-cm and it is\r\nacuate, hot and yellow.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is consumed edible or for\r\npickling.</i></p>', 0, '/upload/products/image/249.jpg', '/upload/products/image/249.png', '2017-05-11 22:51:56', '2017-05-12 08:36:51'),
(370, 40, 'BİBER (ÇETİN) TATLI SİVRİ', 'PEPPER (ÇETİN) SWEET LONG', '<p>-Açık tarla yetiştiriciliğine uygun dip kısımdan dallanan bir çeşittir</p><p>-Meyveler tatlı ve açık yeşil renktedir</p><p>-Meyve uzunluğu 17 cm dir</p><p>-Sofralık olarak ve turşuluk olarak tüketime uygundur.</p>', '<p>-Suitable for open field farming and a type branched from bottom.</p><p>-Fruits are sweet and light green.</p><p>-The length of the fruits is 17 cm.</p><p>-It is consumed edible or for pickling.</p>', 0, '/upload/products/image/370.jpg', '/upload/products/image/370.png', '2017-05-31 09:43:56', '2017-06-01 10:50:31'),
(369, 40, 'BİBER ILICALI (ACI SİVRİ)', 'PEPPER ILICALI (HOT LONG)', '<p> -Açık tarla yetiştiriciliğine uygun orta erkenci bir çeşittir</p><p>-Meyveler 17 18 cm uzunluğunda ve koyu yeşil renkli olup acı tattadır</p><p>-Sofralık ve turşuluk tüketime uygundur.</p>', '<p>-Suitable for open field farming and it is mid-early.</p><p>-Fruitsare 17-18 cm and dark green and hot.</p><p>-Itis edible and for pickling.</p>', 0, '/upload/products/image/369.jpg', '/upload/products/image/369.png', '2017-05-31 09:37:42', '2017-06-01 10:49:42'),
(322, 41, 'KIRMIZI PANCAR', 'RED BEET', '-Açık tarla yetiştiriciliğine uygun standart bir çeşittir.<br>-İçi ve dışı kırmızı renklidir.<br>-Genellikle turşuluk olarak kullanılır.<br>-Bazı bölgelerde çükündür.<br>-Bazı bölgelerde kocabaş adını alır.', '-Suitable for open field farming.<br>-Insıde and outside is red.<br>-It is generally used for pickling.<br>-In sme areas its name is ‘çükün’.<br>-And in some ares it is ‘kocabaş’.', NULL, '/upload/products/image/322.jpg', '/upload/products/image/322.png', '2017-05-17 08:45:59', NULL),
(252, 40, 'BİBER YALOVA (YALOVA 41)', 'PEPPER YALOVA (YALOVA 41)', '<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla bitkisidir.</i></p><p style=\"margin-bottom: 0.35cm\"><i>-Meyveler sarımsı yeşilrenktedir.</i></p><p style=\"margin-bottom: 0.35cm\"><i>-Meyve uzunluğu 18-20 cm dir.</i></p>', '<p style=\"margin-bottom: 0.35cm\"><i>-Sutibale for open field.</i></p><p style=\"margin-bottom: 0.35cm\"><i>-Fruits are yellowish green.</i></p><p style=\"margin-bottom: 0.35cm\"><i>-The length of the fruits is18-20 cm.</i></p>', 0, '/upload/products/image/252.jpg', '/upload/products/image/252.png', '2017-05-11 23:01:34', '2017-05-12 08:14:52'),
(331, 41, 'BRÜKSEL LAHANASI', 'BRUSSELS SPROUT', '-Açık tarla ve örtü altına uygun.<br>-Adaptasyonu yüksek. <br>-Verimli bir çeşittir.', '-Suitable for open field and greenhouse farming.<br>-Adaptation level is high.<br>-Highly productive.', NULL, '/upload/products/image/331.jpg', '/upload/products/image/331.png', '2017-05-17 09:00:59', NULL),
(328, 44, 'BARBUNYA SIRIK (AFET)', 'REDDISH SHELL BEAN STICK (AFET)', '-Açık tarla ve örtü altı yetiştiriciliğe uygun sırık barbunya çeşididir.<br>-Meyveler 20-22 cm uzunluğundadır.<br>-Albenisi yüksek bir çeşittir.<br>-Mozaik virüsüne dayanıklıdır.', '-Suitable for open field and greenhouse farming.<br>-Fruits are 20-22 cm.<br>-It is very appealing.<br>-Resistant against mosaic virüs.', NULL, '/upload/products/image/328.jpg', '/upload/products/image/328.png', '2017-05-17 08:57:12', NULL),
(327, 44, 'BARBUNYA OTURAK (SEVAL)', 'REDDISH SHELL BEAN OTURAK (SEVAL)', '-Erkenci oturak barbunya çeşididir.<br>-Bitki yapısı güçlü ve bol yapraklıdır.<br>-Meyveler 18-20 cm boyundadır.<br>-Meyve içindeki daneler rengini uzun süre korur.<br>-Konserve ve taze tüketime uygun bir çeşittir.<br><br>', '-A type of oturak shell bean.<br>-Plant nature is strong and has a lot of leaves.<br>-Fruits are 18-20 cm.<br>-The seeds in the fruit keeps their color for a long time.<br>-Suitable for fresh consuming and conservation.<br><br>', 0, '/upload/products/image/327.jpg', '/upload/products/image/327.png', '2017-05-17 08:54:38', '2017-06-01 08:59:02'),
(363, 40, 'BİBER KANDİL TATLI', 'PEPPER KANDİL SWEET', '<p style=\"margin-bottom: 0.35cm; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-Açık tarla bitkisidir.</p><p style=\"margin-bottom: 0.35cm; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-Meyveler açık yeşil renklidir.</p><p style=\"margin-bottom: 0.35cm; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-İnce kabuklu tatlı dolmalık bir çeşittir.</p><p style=\"margin-bottom: 0.35cm; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-3-4 lobludur, 55-60 günde hasada gelir.</p>', '<p style=\"margin: 0cm 0cm 0.0001pt;\"><i><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Suitable for open field.</span></i><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Fruits\r\nare light green.</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-It\r\nhas thin peel and fit for stuffing.</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-It\r\nhas 3-4 lobes and gives a yield in 55-60 days.</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>', NULL, '/upload/products/image/363.jpg', '/upload/products/image/363.png', '2017-05-30 12:43:25', NULL),
(255, 41, 'KARNABAHAR (MİMOZA)', 'CAULIFLOWER (MIMOZA)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla yetiştiriciliğine\r\nuygun orta erkenci bir çeşittir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Bitki yapısı güçlü baş\r\nkısmı geniş, meyve ağırlığı 1-1,5 kg arasıdır.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Sıcağa toleranslı taze\r\ntüketime uygun raf ömrü uzun bir çeşittir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is a mid-early type and\r\nsuitable for open field farming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It has a strong nature.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Its head is large and weighs\r\n1-1,5 kg.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Tolerant against hot weather.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for consuming fresh\r\nand shelf-life is long.</i></p>', 0, '/upload/products/image/255.jpg', '/upload/products/image/255.png', '2017-05-11 23:13:42', '2017-05-12 08:39:53'),
(313, 41, 'ACUR BADEM', 'GHERKIN BADEM', '-Açık tarla yetiştiriciliğine uygun bir çeşittir.<br>-Meyve boyu 8-15 cm arasıdır.<br>-Adaptasyon kabiliyeti yüksek kıraç arazi ürünüdür.<br>-Bazı bölgelerde kıllı acur olarak bilinir.<br>-Dolmalık tüketime uygundur.', '-Suitable for open field farming.<br>-Fruits are 8-15 cm.<br>-Adaptation level is high and suitable for barren fields.<br>-It is known as hairy gharkin in some areas.<br>-Suitable for stuffing.', NULL, '/upload/products/image/313.jpg', '/upload/products/image/313.png', '2017-05-17 08:30:03', NULL),
(256, 42, 'KABAK SAKIZ', 'MARROW', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla yetiştiriciliğine\r\nuygun standart bir çeşittir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyveler silindirik krem\r\nrenklidir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Bitki kol yapmaz.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve uzunluğu 17-18 cm\r\nuzunluğundadır.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Sofralık ve dolmalık olarak\r\ntüketilir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-A standard type which is\r\nsuitable for open field farming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruits are cylindrical and\r\ncream.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The plant doesn’t make\r\nsleeves.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The length of the fruits is\r\n17-18 cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is edible and for\r\nstuffing.</i></p>', 0, '/upload/products/image/256.jpeg', '/upload/products/image/256.png', '2017-05-11 23:22:27', '2017-05-12 08:48:38'),
(305, 41, 'BROKOLİ', 'BROCCOLI', '-Açık tarla yetiştiriciliğine uygun bir çeşittir.<br>-Önceden fide yapılarak, şaşırtma yolu ile tarlaya ekilir.<br>-Koyu mavimtrak renkte olup kaliteli ve verimli bir çeşittir.', '-Suitable for open field farming.<br>-First plant seedling method is used and then it is sowed.<br>-Its color is dark bluish and it has a high-quality and productive.', NULL, '/upload/products/image/305.jpg', '/upload/products/image/305.png', '2017-05-17 08:14:02', NULL),
(366, 42, 'KABAK SİYAH', 'COURGETTE BLACK', '<p style=\"margin: 0cm 0cm 0.0001pt;\"><i><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Açık tarla yetiştiriciliğine uygun siyah kabak çeşididir.</span></i><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Meyveleri 17-18 cm uzunluğundadır.</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Meyve yapısı silindiriktir.</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Albenisi yüksek raf ömrü uzundur.</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>', '<p style=\"margin: 0cm 0cm 0.0001pt;\"><i><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-A type of black courgette and suitable for open field farming.</span></i><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-The length of the fruits is 17-18 cm.</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-Fruits are cylindrical.</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; font-variant-ligatures: normal; font-variant-caps: normal;\"><span style=\"font-size: 11.5pt; font-family: inherit, serif; border-width: 1pt; border-style: none; border-color: windowtext; padding: 0cm;\">-It is appealing and shelf-life is long..</span><span style=\"font-size: 11.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>', NULL, '/upload/products/image/366.jpg', '/upload/products/image/366.png', '2017-05-30 13:23:46', NULL),
(304, 41, 'PIRASA', 'LEEK', '-Uzun bacak pırasa çeşididir.<br>-Orta erkenci yüksek verimli bir çeşittir.<br>-Gevrek ve lezzetli meyve yapısına sahiptir.<br><br>', '-A type of long legged leek.<br>-It is highly productive and mid-early.<br>-Crispy and tasty.', NULL, '/upload/products/image/304.jpg', '/upload/products/image/304.png', '2017-05-17 08:12:36', NULL);
INSERT INTO `product` (`id`, `producttype_id`, `name`, `name_en`, `content`, `content_en`, `price`, `image`, `file`, `created_at`, `updated_at`) VALUES
(301, 45, 'MARUL (ARAPSAÇI)', ' LETTUCE (ARAPSACI)', '-Açık tarla yetiştirirciliğine uygun kıvırcık dalgalı yapıya sahip marul çeşididir.<br>-Gevrek yapılı olup güz ve bahar ekimine uygun bir çeşittir.<br>-Meyve ağırlığı 400-600 gr arası değişir.', '-Suitable for open field farming and it has a curled nature.<br>-It is crispy and suitable for autumn and spring cropping.<br>-Fruits weigh 400-600 gr.<br><br>', NULL, '/upload/products/image/301.jpg', '/upload/products/image/301.png', '2017-05-16 08:38:34', NULL),
(302, 45, 'MARUL GÖBEK (ICEBERG)', 'HEAD LETTUCE (ICEBERG)', '-Açık tarla yetiştirirciliğine uygun iri baş geniş yaprak marul çeşididir.<br>-Yapraklar sulu ve gevrektir.<br>-Ortalama meyve ağırlığı 800 gr dır.<br>-Aşırı sıcak ve soğuğa karşı toleranslıdır.<br><br>', '-Suitabel for open field farming. <br>-It is large leafed.<br>-Leaves are juicy and crispy.<br>-Average weight of fruits is 800 gr.<br>-High-tolerant against very hot and cold weather.<br><br>', NULL, '/upload/products/image/302.jpg', '/upload/products/image/302.png', '2017-05-17 08:08:19', NULL),
(303, 45, 'MARUL YEDİKULE', 'LETTUCE YEDIKULE', '-Açık yeşil renkli geniş ve oval yapraklı lital marul çeşididir.<br>-Sıkı ve dik göbek oluşumu olan bir çeşittir.<br>-Sonbahar ve ilkbahar ekimine uygundur.<br>-Meyve ağırlığı 800 gr ile 1000 gr arası değişir.<br><br>', '-It is light green and has large oval leaves.<br>-It has a firm and vertical core.<br>-Suitable for autumn and spring cropping.<br>-The weight of the fruit is 800-1000 gr.', NULL, '/upload/products/image/303.jpg', '/upload/products/image/303.png', '2017-05-17 08:10:59', NULL),
(261, 40, 'BİBER HATAY ACI', 'PEPPER HATAY (HOT)', '<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla\r\nyetiştirirciliğine uygun acı biber çeşididir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve boyu 18-20 cm arasıdır.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Adaptasyon kabiliyeti\r\nyüksektir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Salçalık olarak tüketilir.</i></p>\r\n', '<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for pen field\r\nfarming and it is hot.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The length of the fruit is\r\n18-20 cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Adaptation level is high.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is used for sauce.</i></p>', 0, '/upload/products/image/261.jpg', '/upload/products/image/261.png', '2017-05-11 23:42:00', '2017-05-31 09:33:47'),
(323, 41, 'SOĞAN YEKTA', 'ONION YEKTA', '-Uzun gün soğan çeşididir.<br>-Halk arasında çorum moru olarak adlandırılır.<br>-Yuvarlak şekilli kabuk rengi mor soğan çeşididir.<br>-Depolamaya uygun . dayanıklı bir çeşittir.<br><br>', '-A type of long day onion.<br>-It is named as corum moru colloquially.<br>-Round-shaped and peel color is purple.<br>-Suitable for storage and durable.<br><br>', 0, '/upload/products/image/323.jpg', '/upload/products/image/323.png', '2017-05-17 08:47:36', '2017-06-01 08:56:05'),
(300, 44, 'BÖRÜLCE (KARNIKARA)', 'BLACK-EYED PEA (KARNIKARA)', '-Oturak tipli börülce çeşididir. <br>-Orta boylu ve yüksek verimlidir.<br>-Meyveler düz ince olup 17-18 cm boyundadır.<br>-Hasat süresi uzundur.', '-A type of oturak cow pea.<br>-It is middle-sized and highly productive.<br>-Fruits are straight and thin, they are 17-18 cm.<br>-Harvest period is long.', NULL, '/upload/products/image/300.jpg', '/upload/products/image/300.png', '2017-05-16 08:36:29', NULL),
(263, 43, 'TURP ÇİN (İÇİ KIRMIZI)', 'RADISH CHINA (RED INSIDE)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Orta irilikte olup soğuk\r\nmukavemeti yüksek turp çeşididir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Dış rengi yeşil beyaz et\r\nrengi kırmızıdır.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Yüksek kaliteli, ve verimli\r\nbir bitkidir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Middle sized and resistant\r\nagainst cold weather.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It has green white peel but\r\nits meat is red.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-High-quality and highly\r\nproductive.</i></p>', 0, '/upload/products/image/263.jpg', '/upload/products/image/263.png', '2017-05-11 23:46:40', '2017-05-12 08:49:43'),
(264, 43, 'TURP JAPON', 'RADISH JAPAN', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla yetiştiriciliğine\r\nuygun erkenci bir çeşittir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Bitki kökü beyaz uzun ve\r\ndüzgün yapılıdır.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Toprak altında 30-40 cm ye\r\nkadar büyüyebilir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Sıcağa dayanıklı olup\r\nyazlık ve kışlık ekim yapılabilir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for open field\r\nfarmingand it is an early type.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The roots are long and white\r\nand has a smooth nature.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It can grow about 30-40cm\r\nunder the earth.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Durable for hot weather and\r\nsuitable for cropping both  in summer and winter.</i></p>', 0, '/upload/products/image/264.jpg', '/upload/products/image/264.png', '2017-05-11 23:48:35', '2017-05-12 08:49:55'),
(299, 41, 'KARA LAHANA', 'BLACK CABBAGE ', '-Oval şekilli kırmızı lahana çeşididir.<br>-Meyve 1-1,5 kg arası ağırlığa sahiptir.<br>-Soğuk havaya dayanıklı depo ömrü uzun ve homojendir.', '-It is oval and a type of red cabbage.<br>-The fruit is about 1-1,5 kg.<br>-Durable for cold weather, storage life is long and homogenous.', NULL, '/upload/products/image/299.jpg', '/upload/products/image/299.png', '2017-05-16 08:31:34', NULL),
(265, 43, 'TURP (UFAK)', 'RADISH (SMALL)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Erkenci fındık turp\r\nçeşididir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyveleri kırmızı renkli\r\nolup, yuvarlak bir yapıya sahiptir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-İnce köklü bir bitkidir.\r\nYaz ayları hariç her zaman yetiştirilir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-A type of early nut radish.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Its fruits are red and round.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is a thin-rooted plant. It\r\nis always sowed except summer.</i></p>', 0, '/upload/products/image/265.jpg', '/upload/products/image/265.png', '2017-05-11 23:50:02', '2017-05-12 08:50:06'),
(298, 41, 'BEYAZ LAHANA (YALOVA)', 'WHITE CABBAGE (YALOVA)', '-Açık tarla yetiştirirciliğine uygun orta erkenci kavun çeşididir.<br>-Bitki açık yeşil beyaz renkli olup hafif basık yapıya sahiptir.<br>-Yuvarlak ve sık başlıdır.<br>-Tüm bölgelere adaptasyonu uygundur.<br><br>', '-Suitable for open field farming and it is a mid-early type.<br>-The plant is light green and White and also flattened.<br>-It is round and close headed.<br>-Suitable for every region.<br><br>', NULL, '/upload/products/image/298.jpg', '/upload/products/image/298.png', '2017-05-16 08:30:19', NULL),
(266, 44, 'FASULYE BEYMEN', 'BEAN BEYMEN', '<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla yetiştiriciliğine\r\nuygun oturak fasulye çeşididir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Orta boylu dik yapılı bol\r\nçiçeklidir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyveler 16-18 cm boyundadır.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Hasat süresi uzundur.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve kalitesi yüksektir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Çekirdek rengi kahverengidir.</i></p>', '<p style=\"margin-bottom: 0.35cm\"><i>-It is an oturak type of bean\r\nand suitable for open field farming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is middle sized, upright\r\nand has flowers.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruits are 16-18 cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Harvest period is long.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruit quality is high.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The seeds are brown.</i></p>', 0, '/upload/products/image/266.jpg', '/upload/products/image/266.png', '2017-05-11 23:55:24', '2017-05-30 13:31:39'),
(317, 41, 'BAMYA (JAPON)', 'OKRA (JAPAN)', '-Orta erkenci bamya çeşididir.<br>-Meyveler gösterişli ve albenisi yüksektir.<br>-Bitki boyu kısa ve dallıdır.<br>-Bitki gövdesinde tüy bulunmaz.<br>-Susuz tarıma elverişlidir.<br>-Meyve boyu 3-5 cm arasıdır.', '-A mid-early type.<br>-Fruits are charming and appealing.<br>-Plant length is short and branched.<br>-Plant itself is not hairy.<br>-Suitable for waterless agriculture.<br>-Fruit length is 3-5 cm.', NULL, '/upload/products/image/317.jpg', '/upload/products/image/317.png', '2017-05-17 08:37:18', NULL),
(267, 44, 'FASULYE (SULTAN) GİNA', 'BEAN (SULTAN)GINA', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve boyu 14 15 cm oturak\r\nfasulye çeşididir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Kılçıksız ve erkenci bir\r\nçeşittir (40-50 gün).</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Taze tüketime ve konserveye\r\nuygun hafif enli bir çeşittir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Çekirdek rengi beyazdır.</i></p>', '\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is an oturak type and the\r\nlength is 14-15 cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is awnless and an early\r\ntype (40-50days).</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for fresh consuming\r\nand conservation.  It is also a wide type.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Seeds are white.</i></p>', 0, '/upload/products/image/267.jpg', '/upload/products/image/267.png', '2017-05-11 23:57:00', '2017-05-12 08:37:36'),
(318, 41, 'BAMYA SULTANİ', 'OKRA SULTANI', '-Orta erkenci bir çeşittir.<br>-Sıcağa karşı adaptasyonu yüksek bir çeşittir.<br>-Bitki boyu uzun ve kolludur.<br>-Meyve tüylü yapıdadır.<br>-Meyve boyu 5 -12 cm arasıdır.', '-A mid-early type.<br>-Its adaptation level is high against hot weather.<br>-Plant length is long and branched.<br>-Fruit is hairy.<br>-Fruit length is 5-12 cm.', 0, '/upload/products/image/318.jpg', '/upload/products/image/318.png', '2017-05-17 08:38:35', '2017-06-01 09:01:28'),
(269, 42, 'HEYELAN KABAĞI', 'ZUCCHINI (HEYELAN)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Antep yöresine özgü yerel\r\nbir kabak çeşididir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Dolmalık ve yemeklik olarak\r\ntüketilir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-A typical zucchini for Antep.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is consumed for stuffing\r\nand edible.</i></p>', 0, '/upload/products/image/269.jpg', '/upload/products/image/269.png', '2017-05-12 00:01:47', '2017-05-12 08:50:40'),
(270, 40, 'BİBER BİBERİYE', 'ROSEMARY PEPPER', '<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla üretimine uygun\r\nbir çeşittir.</i></p>\r\n\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Bitki boyu yüksek meyveler\r\n1-2 cm çapındadır.</i></p>\r\n\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve uzujnluğu 3 cm.dir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Acı ve yüksek verimli bir\r\nçeşittir.</i></p>', '<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for open field\r\nfarming.</i></p>\r\n\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Plant length is high and the\r\ncalibre of fruits is 1-2 cm.</i></p>\r\n\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruit length is 3 cm.</i></p>\r\n\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Sour-tasting and highly\r\nproductive.</i></p>\r\n', 0, '/upload/products/image/270.jpg', '/upload/products/image/270.png', '2017-05-12 00:04:49', '2017-05-12 08:50:55'),
(325, 41, ' SOĞAN ZÜMRÜT', 'ONION ZÜMRÜT', '-Standart taze soğan çeşididir.<br>-Beyaz kısmı uzun alt yaprakları parlak ve yeşil renktedir.<br>-Sofralık olup soğuk mukavemeti fazladır.<br><br>', '-A standard green onion type.<br>-Its white part is long, its leaves are shiny and green.<br>-It is edible and durable for cold weather.', NULL, '/upload/products/image/325.jpg', '/upload/products/image/325.png', '2017-05-17 08:50:31', NULL),
(271, 44, 'FASULYE MAGNA (MAGNUM)', 'BEAN MAGNA (MAGNUM)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Erkenci oturak fasulye\r\nçeşididir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve yeşil renkli kılçıksız\r\nve kalın etlidir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Taze tüketime ve konserveye\r\nuygundur.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Mozaik virüsüne karşı\r\ndayanıklıdır.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is an early oturak type.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruit is green, awnless and\r\nmeaty.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for fresh consuming\r\nand conserved.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Durable against mosaic virus.</i></p>', 0, '/upload/products/image/271.jpg', '/upload/products/image/271.png', '2017-05-12 00:06:42', '2017-05-12 08:38:46'),
(315, 41, 'SOĞAN CANPOLAT', 'ONION CANPOLAT', '-Uzun gün soğanıdır.<br>-Büyüklük orta boydur.<br>-Sert kabuklu ve üzerindeki kabuk sayısı fazladır.<br>-Depo saklama süresi uzundur.', '-It is long-day onion.<br>-Middle sized.<br>-Rough peeled and it has more peels.<br>-Storage life is long.', NULL, '/upload/products/image/315.jpg', '/upload/products/image/315.png', '2017-05-17 08:34:04', NULL),
(272, 37, 'PATLICAN TOPAN', 'EGGPLANT TOPAN', '<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla yetiştiriciliğineuygundur.</i></p><p style=\"margin-bottom: 0.35cm\"><i>-Her bölgeye adaptasyon sağlar.</i></p><p style=\"margin-bottom: 0.35cm\"><i>-Orta erkenci bir çeşittir.</i></p><p style=\"margin-bottom: 0.35cm\"><i>-Meyve rengi siyah olup söğürmeve konserveye uygun bir çeşittir.</i></p>', '<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for open fieldfarming.</i></p><p style=\"margin-bottom: 0.35cm\"><i>-It has a high adaptation toevery region.</i></p><p style=\"margin-bottom: 0.35cm\"><i>-A mid-early type.</i></p><p style=\"margin-bottom: 0.35cm\"><i>-Fruit color is black.</i></p><p style=\"margin-bottom: 0.35cm\"><i>-Suitable for roasted meal andconservation.</i></p>', 0, '/upload/products/image/272.jpg', '/upload/products/image/272.png', '2017-05-12 00:08:38', '2017-05-12 08:51:20'),
(296, 45, 'KUZUKULAĞI', 'SORREL', '-Ekşimsi tada sahip.<br>-Yemeklik ve salatalık bir çeşittir.<br>-Her yöreye adaptasyon sağlar ve aroması yüksektir.<br><br>', '-It is sourish.<br>-It is edible and for salad.<br>-Suitable for every region and its flavor is high.', NULL, '/upload/products/image/296.jpg', '/upload/products/image/296.png', '2017-05-16 08:25:44', NULL),
(297, 41, 'ŞALGAM', 'TURNIP', '-Meyve üst tarafı mor renkli alt tarafı ise beyaz renklidir.<br>-Yuvarlak şekilli ve 7-8 cm çapındadır.<br>-İç et kısmı beyaz meyve sulu ve gevrektir.<br><br>', '-The top of the fruit is purple and its bottom is white.<br>-It is round and its calibre is 7-8 c.m<br>-It is white, juicy and crispy inside.', NULL, '/upload/products/image/297.jpg', '/upload/products/image/297.png', '2017-05-16 08:28:42', NULL),
(273, 44, 'FASULYE ZEHRA (SARIKIZ)', 'BEAN ZEHRA (SARIKIZ)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla yetiştiriciliğine\r\nuygun oturak fasulye çeşididir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Uzun ömürlü olup, kuvvetli\r\nve gür bitki, yapısına sahiptir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyveler 14-19 cm arası\r\nuzunluktadır.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Konserve ve taze tüketime\r\nuygun bir çeşittir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is an oturak type bean\r\nwhich is suitable for open field farming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is a long-lasting, strong\r\nand rich nature.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruits are 14-19 cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for conservation and\r\nfresh consuming.</i></p>', 0, '/upload/products/image/273.jpg', '/upload/products/image/273.png', '2017-05-12 00:10:31', '2017-05-12 08:39:34'),
(314, 41, 'KELEK HIDIR', 'UNRIPE MELON HIDIR', '-Açık tarla yetiştiriciliğine uygun kavun çeşididir.<br>-Meyve eti sert ve dolgundur.<br>-Turşuluk olarak kullanılır.<br>-Büyümeye bırakılırsa kavun olarak hasat yapılır.', '-A type of melon which is suitable for open field farming.<br>-It is rough and meaty.<br>-It is used for pickling.<br>-If it is allowed to be riped it can be harvested as melon.', NULL, '/upload/products/image/314.jpg', '/upload/products/image/314.png', '2017-05-17 08:31:34', NULL),
(274, 43, 'TURP AKIN', 'RADISH AKIN', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla yetiştiriciliğine\r\nuygun orta erkenci turp çeşididir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Bitki kökü yuvarlak ve basık\r\nşelkillidir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Kabuk rengi siyah et rengi\r\nbeyazdır.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-A mid-early type which is\r\nsuitable for open field farming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The root of the plant is\r\nround and flattened.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Peel is black, it is red\r\ninside.</i></p>', 0, '/upload/products/image/274.jpg', '/upload/products/image/274.png', '2017-05-12 00:12:04', '2017-05-12 08:51:35'),
(275, 44, 'FASULYE NİRAN (ALMAN AYŞE)', 'BEAN NIRAN (ALMAN AYSE)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla ve örtü altı\r\nyetiştiriciliğe uygun bir çeşittir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Orta erkenci meyveler 18-20 cm\r\ndir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Yassı ve kılçıksız meyve\r\nyapısı vardır.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Verimli ve kaliteli bir\r\nçeşittir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for open field and\r\ngreenhouse farming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Mid-early fruits are 18-20\r\ncm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It has a flattened and\r\nawnless nature.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Highly productive and\r\nhigh-quality.</i></p>', 0, '/upload/products/image/275.jpg', '/upload/products/image/275.png', '2017-05-12 00:14:19', '2017-05-12 08:39:06'),
(276, 40, 'URFA İSOT (ACI)', 'URFA ISOT (HOT)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Orta erkenci dolmalık tipinde\r\nbir çeşittir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Ana sezon yetiştiriciliğine\r\nuygundur.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Bitki yapısı kuvvetli olup\r\n60-70 cm yüksekliğe sahiptir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyveler 3 lobludur.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Sanayilik ve taze tüketime\r\nuygun bir çeşittir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-A mid-early type.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for main season\r\nfarming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Plant nature is strong and\r\nits length is 60-70 cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruits have 3 lobes.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for industrial use\r\nand fresh consuming.</i></p>', 0, '/upload/products/image/276.jpg', '/upload/products/image/276.png', '2017-05-12 00:15:54', '2017-05-12 08:20:17'),
(330, 41, 'SOĞAN FERİDE (BEYAZ)', 'ONION FERIDE (WHITE)', '-Kısa gün soğan çeşididir.<br>-Kabuk ve et rengi beyazdır.<br>-Verimi ve kalitesi yüksek bir çeşittir.<br>-Depolama süresi kısa olup taze tüketime uygundur.', '-A type of short day onion.<br>-It is white both inside and outside.<br>-Its productivity and quality is high.<br>-Storage life is short and suitable for fresh consuming.', NULL, '/upload/products/image/330.jpg', '/upload/products/image/330.png', '2017-05-17 09:00:11', NULL),
(277, 43, 'TURP BEYAZ KIZ', 'RADISH  BEYAZ KIZ', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla yetiştiriciliğine\r\nuygun.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Bitki kökü yuvarlak ve basık\r\nşekillidir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Kabuk ve et rengi beyaz bir\r\nçeşittir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><br><br>\r\n</p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for open field\r\nfarming.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-The root of the plant is\r\nround and flattened.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Both inside and outside is\r\nwhite.</i></p>', 0, '/upload/products/image/277.jpg', '/upload/products/image/277.png', '2017-05-12 00:17:32', '2017-05-12 08:52:01'),
(278, 44, 'FASULYE HELGA (SIRIK)', 'BEAN HELGA (STICK)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Sırık fasulye çeşididir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Güçlü bitki yapısı ve\r\nyüksek verimli bir çeşittir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Açık tarla ve sera ekimine\r\nuygundur.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve uzunluğu 23-25 cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyve eni 2 cm dir.</i></p>', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-A type of stick bean.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It has a strong nature and\r\nhighly productive.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for open field and\r\ngreenhouse sowing.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruit length is 23-25 cm.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruit width is 2 cm.</i></p>', 0, '/upload/products/image/278.jpg', '/upload/products/image/278.png', '2017-05-12 00:19:19', '2017-05-12 08:38:29'),
(316, 41, 'SÜT MISIR', 'SWEET CORN', '-İthal bir ürün olup haşlamalık olarak tüketilir.<br>-Adaptasyon ve verimi yüksektir.<br><br>', '-It is imported and used for boiling.<br>-Adaptation level is high and highly productive.<br><br>', NULL, '/upload/products/image/316.jpg', '/upload/products/image/316.png', '2017-05-17 08:35:33', NULL),
(280, 36, 'HIYAR  HAKSAL  ', 'CUCUMBER HAKSAL 01F-AK1 (STICK)', '<p style=\"margin-bottom: 0.35cm\"><i>-Örtü altı hıyar\r\nyetiştiriciliğine uygun bitkisi orta güçlü ve orta kapalılıkta\r\nolanerkek çiçek vermeyen multi hıyar çeşidimizdir.yaz güz ve\r\nilkbahar yetiştiriciliğine uygundur her boğumda 2-3 adet meyve\r\nverebilir.</i></p>\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Meyveleri 17-18 cm uzunluğunda olup parlak yeşil meyve\r\nyapısına sahiptir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Hıyar mozaik virüsüne\r\n(CMV), küllemeye ve hıyar sarı damar virüsüne (CVYV)\r\ndayanıklıdır.</i></p>', '<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for greenhouse\r\ncultivation.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Plant is quite strong and\r\nclosed. Male flower and it doesn’t blossom.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Suitable for summer, spring\r\nand autumn sowing.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-In every internode there are\r\n2-3 fruits.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruits are 17-18cm and they\r\nare shiny green.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Durable against mosaic virus\r\n(CMV), ashing and yellow vein virus (CVYV).</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><br><br>\r\n</p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><br><br>\r\n</p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><br><br>\r\n</p>', 0, '/upload/products/image/280.jpg', '/upload/products/image/280.png', '2017-05-12 00:25:52', '2017-05-31 09:14:32'),
(294, 45, 'MAYDANOZ (İRİ) AKGEN', 'PARSLEY (LARGE) AKGEN', '-Gelişim hızı yüksek 4-6 parçalı parça uçları hafif sivridir.<br>-Yapraklar koyu yeşil renkli ve yapı olarak geniştir.<br>-Ekimden 65-70 gün sonra hasada gelir.<br>-Soğuk ve sıcağa karşı mukavemeti yüksektir.<br><br>', '-Its growth rate is high, it has 4-6 parts and the parts are sharp a bit.<br>-The leaves are dark green and large.<br>-It gives a yield in 65-70 days after farming.<br>-Durable for hot and cold weather.', NULL, '/upload/products/image/294.jpg', '/upload/products/image/294.png', '2017-05-16 08:20:36', NULL),
(361, 40, 'BİBER MAZAMORT (TATLI)', 'PEPPER MAZAMORT(SWEET)', '<div style=\"font-family: Arial, Helvatica; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; background-color: rgb(255, 255, 255);\">- Açık tarla yetiştiriciliğine uygundur</div><div style=\"font-family: Arial, Helvatica; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; background-color: rgb(255, 255, 255);\">- Meyve açık yeşil renktedir. Üç burunlu, düzgün şekilli, tatlı etli, gevrektir.&nbsp;</div><div style=\"font-family: Arial, Helvatica; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; background-color: rgb(255, 255, 255);\">- Meyveler 10-12 cm uzunluğunda ve 5-6 cm çapındadır.</div><div style=\"font-family: Arial, Helvatica; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; background-color: rgb(255, 255, 255);\">- Sofralık ve konserve sanayinde kullanılır.</div><div style=\"font-family: Arial, Helvatica; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; background-color: rgb(255, 255, 255);\">.</div>', '<p></p><p style=\"margin-bottom: 0.35cm; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif; background-color: rgb(255, 255, 255);\">-Suitable for open field.</p><p style=\"margin-bottom: 0.35cm; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif; background-color: rgb(255, 255, 255);\">-Fruits are light green.<span style=\"color: rgb(33, 33, 33); font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; white-space: pre-wrap;\">Three-nosed, smooth-shaped, sweet-fleshy, loose.</span></p><p style=\"margin-bottom: 0.35cm; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(33, 33, 33); font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; white-space: pre-wrap;\">-</span><span style=\"color: rgb(33, 33, 33); font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; white-space: pre-wrap;\">Fruits are 10-12 cm long and 5-6 cm in diameter.</span></p><p style=\"margin-bottom: 0.35cm; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(33, 33, 33); font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; white-space: pre-wrap;\">-</span><span style=\"color: rgb(33, 33, 33); white-space: pre-wrap;\">Used in tableware and canning industry.</span></p><p></p>', 0, '/upload/products/image/361.jpg', '/upload/products/image/361.png', '2017-05-30 11:56:45', '2017-05-30 12:00:39'),
(293, 45, 'MAYDANOZ KUTUR', 'PARSLEY KUTUR', '-Bitki otsu yapıda. <br>-Hasat süresi uzundur.<br>-Yapraklar koyu yeşil renklidir.<br>-Soğuk ve sıcağa karşı mukavemeti yüksektir.', '-The plant has a herbaceous nature.<br>-Harvest period is long.<br>-Its leaves are dark green.<br>-High-tolerant against hot and cold weather.', NULL, '/upload/products/image/293.jpg', '/upload/products/image/293.png', '2017-05-16 08:18:33', NULL),
(283, 42, 'KABAK  ARTUK 01F-AK1 (GRAPE TYPE)', 'ZUCCHINI ARTUK 01F-AK1 (GRAPE TYPE)', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Bitki yapısı güçlü boğum\r\narası kısa olup bitki dik gelişim gösterir. </i></p>\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Yaprak orta\r\ngenişlikte olup bitkiyi kısmen kapatma özelliğine sahiptir meyve\r\nuzun orta boy koyu yeşil ve kaliteli bir yapıya sahiptir raf ömrü\r\ndiğer ticari çeşitlere göre uzun olup meyve sapı uzun ve elle\r\nhasada uygun bir çeşittir.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>	-Külleme ve ZYMV (kabak sarı\r\nmozaik virüsüne ) orta düzey dayanımlıdır.</i></p>\r\n', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Plant has a strong nature.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Internodes are short and the\r\nplant grows upright.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Leaves are middle sized and\r\ngenerally closes the plant.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruit is medium height and\r\ndark green and it has a hidh quality.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Shelf life is stronger than\r\nthe other products.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruit stalk is long and\r\nsuitable for harvesting by hands.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Medium level enduring for\r\nashing and ZYMV.</i></p>', 0, '/upload/products/image/283.jpg', '/upload/products/image/283.png', '2017-05-12 00:33:26', '2017-05-12 08:53:45'),
(292, 45, 'KIL TERE', 'PEPPERWEED', '-İnce yapraklı salata çeşididir.<br>-Yazlık ve kışlık olarak ekilir.<br>-Aroması ve albenisi yüksektir.<br>-Soğuğa ve sıcağa karşı mukavemeti yüksek bir çeşittir.<br><br>', '-A type of thin cress.<br>-Suitable for cropping both for summer and winter.<br>-Its flavor is nice and appealing.<br>-High-tolerant against hot and cold weather.', NULL, '/upload/products/image/292.jpg', '/upload/products/image/292.png', '2017-05-16 08:16:50', NULL),
(284, 42, 'KABAK ESFENDER 01F-AK1', 'ZUCCHINI ESFENDER 01F-AK1', '\r\n<p style=\"margin-bottom: 0.35cm; text-align: left;\"><i>-Bitki yapısı güçlü boğum\r\narası orta uzunluktadır.bitki gelişiminin ilk kısmında dik\r\nyapısını korurken daha sonra yatar ve hafif sürünücü bir\r\nkarakter alır. </i></p>\r\n<p style=\"margin-bottom: 0.35cm; text-align: left;\"><i>-Meyve tutumu erkenci ve hızlıdır  Meyve uzun 17-18\r\ncm uzunluğunda yeşil renkli silindirik ve albenilidir. Raf ömrü\r\nrakip çeşitlere göre uzundur.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm; text-align: left;\"><i>-Külleme ve ZYMV (kabak sarı\r\nmozaik virüsüne) orta düzey dayanımlıdır.</i></p>\r\n', '\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Plant nature is strong and\r\ninternodes are mid-length.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-In the first part of growing\r\nit grows upright then it lies down and takes a creeping shape.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-It is early and fast.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Fruit is 17-18cm and green,\r\ncylindrical and appealing.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Strage life is longer than\r\nits rivals.</i></p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\"><i>-Medium level enduring against\r\nashing and ZYMVKABAK  ESFENDER 01F-AK1.</i></p>', 0, '/upload/products/image/284.jpg', '/upload/products/image/284.png', '2017-05-12 00:35:54', '2017-05-12 08:54:03'),
(291, 45, 'TERE', 'CRESS', '-Geniş yapraklı salata çeşididir.<br>-Yazlık ve kışlık olarak ekilir.<br>-Aroması ve albenisi yüksektir.<br>-Soğuğa ve sıcağa karşı mukavemeti yüksek bir çeşittir.<br><br>', '-It is large leafed and used as salad.<br>-Suitable for cropping both for summer and winter.<br>-It is appealing and its flavor is nice.<br>-High tolerant against hot and cold weather.', NULL, '/upload/products/image/291.jpg', '/upload/products/image/291.png', '2017-05-16 08:15:10', NULL),
(290, 45, 'ROKA', 'ROQUETTE', '-Geniş yapraklı yaprak rengi koyu yeşildir.<br>-Aroması kuvvetlidir.<br>-Salata olarak kullanılır.<br>-Yazlık ve kışlık ekime uygundur.<br>-Sıcak ve soğuğa mukavemet gösterir.', '-It is large leafed&nbsp; and dark green.<br>-Its flavor is strong.<br>-It is used as salad.<br>-Suitable for cropping both for summer and winter.<br>-Durable for hot and cold weather.', NULL, '/upload/products/image/290.jpg', '/upload/products/image/290.png', '2017-05-16 08:13:56', NULL),
(287, 36, 'HIYAR  ZEUS 01F-AK1', 'CUCUMBER ZEUS 01F-AK1', '<p>-Orta kuvvetli bitki yapısınasahiptir.</p>\r\n<p style=\"margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%\"><br>-15 - 17 cm uzunluğa kadar ulaşır.</p>\r\n<p style=\"margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%\"><br>-Mükemmelmeyve kalitesi olup açılaşmaolmaz.</p>\r\n<p style=\"margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%\"><br></p>\r\n<p style=\"margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%\">-Virüs, DM, PM hastalıklarınaorta derecede toleranslı.</p>\r\n<p style=\"margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%\"><br></p>\r\n<p style=\"margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%\">-Çok erkenci, Bahar ve Erken Güz,Açık Tarla ekimlerine uygun hıyar çeşididir.</p>', '<p style=\"margin-bottom: 0.35cm\">-It has a mid-strong nature.</p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\">-It becomes 15-17 cm.</p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\">-It has a perfect fruit\r\nquality.</p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\">-No rancidity.</p>\r\n\r\n<p style=\"margin-bottom: 0.35cm\">-Very early and suitable for\r\nspring and early autumn and open field farming.</p>', 0, '/upload/products/image/287.jpg', '/upload/products/image/287.png', '2017-05-12 00:44:32', '2017-05-31 09:09:25'),
(288, 45, 'PANCAR (PAZI)', 'CHARD ', '-Açık tarla yetiştiriciliğine uygun orta erkenci bir çeşittir.<br>-Bitki çok dallı dik ve geniş yapraklıdır.<br>-Yaprak sapları 15-20 cm boyunda&nbsp; yaklaşık 4 cm çapındadır.<br>-Düz açık ve yeşil renktedir.<br>-Soğuk ve sıcağa adaptasyonu yüksektir.', '-Suitable for open field farming and it is a mid-early type.<br>-The plant has a lot of branches and it is vertical large leafed.<br>-The leaf stalks are 15-20cm and its calibre is 4 cm.<br>-It is straight and&nbsp; light green.<br>-It has a strong adaptation against cold and hot weather.', NULL, '/upload/products/image/288.jpg', '/upload/products/image/288.png', '2017-05-16 08:10:39', NULL),
(289, 45, 'DERE OTU', 'DILL', '-Yaprakları iğne yapılı.<br>-Dolgun yapılı yaprak ve hoş aromaya sahiptir.<br>-Taze tüketim ve turşu sanayide aroma verici olarak kullanılır.<br><br>', '-It is needle-leaved.<br>-Its leaves are meaty and it has a nice flavor.<br>-It is used as flavorant in pickling industry and also used as fresh.', NULL, '/upload/products/image/289.jpg', '/upload/products/image/289.png', '2017-05-16 08:12:14', NULL),
(332, 45, 'KIRMIZI KIVIRCIK MARUL', 'RED CURLY LETTUCE', '-Parlak kırmızı renkli marul çeşididir.<br>-Sapa kalkma mukavemeti yüksektir.<br>-Sonbahar kış ve erken ilkbaharda ekime uygundur.<br>-Meyve hafif yağımsı ve lezzetlidir.', '-It is shiny red.<br>-Tendency to bolting is high.<br>-Suitable for sowing in autumn, winter and early spring.<br>-Fruit is lipoid and tasty.<br><br>', NULL, '/upload/products/image/332.jpg', '/upload/products/image/332.png', '2017-05-17 09:02:28', NULL),
(334, 39, 'KARPUZ ALASKA – AK1', 'WATERMELON ALASKA-AK1', '• Standart ala karpuz çeşidimizdir<br>• Güçlü tevek yapısına sahiptir<br>• Yuvarlağa yakın şekillidir<br>• 9 - 12 kg arası ağırlığa ulaşır<br>• Tatlı ve kırmızı et rengi olur<br>• Geçci açık tarla çeşididir.', '-A standard type.<br>-It has a strong stock nature.<br>-It is roundlike.<br>-It weighs 9-12 kg.<br>-Sweet and crimson red.<br>-A type of late field.', 0, '/upload/products/image/334.jpg', '/upload/products/image/334.png', '2017-05-18 08:15:30', '2017-05-31 08:28:04'),
(364, 40, 'BİBER ÇORBACI', 'PEPPER ÇORBACI', '<div style=\"font-weight: normal; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; text-size-adjust: 100%; color: rgb(120, 120, 120); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-align: justify; background-color: rgb(243, 243, 243); outline: none !important;\">Açık saha yetiştiriciliğine uygundur.</div><div style=\"font-weight: normal; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; text-size-adjust: 100%; color: rgb(120, 120, 120); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-align: justify; background-color: rgb(243, 243, 243); outline: none !important;\">Tatlı bir çeşittir.</div><div style=\"font-weight: normal; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; text-size-adjust: 100%; color: rgb(120, 120, 120); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-align: justify; background-color: rgb(243, 243, 243); outline: none !important;\">Meyveler yeşilimsi sarı renktedir.</div><div style=\"font-weight: normal; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; text-size-adjust: 100%; color: rgb(120, 120, 120); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-align: justify; background-color: rgb(243, 243, 243); outline: none !important;\">20-25 cm. uzunluğundadır.</div><div style=\"font-weight: normal; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; text-size-adjust: 100%; color: rgb(120, 120, 120); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-align: justify; background-color: rgb(243, 243, 243); outline: none !important;\">Meyve çapı 1,5 cm.\'dir.</div><div style=\"font-weight: normal; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; text-size-adjust: 100%; color: rgb(120, 120, 120); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-align: justify; background-color: rgb(243, 243, 243); outline: none !important;\">Sap kısmı hafif körüklüdür.</div><div style=\"font-weight: normal; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; text-size-adjust: 100%; color: rgb(120, 120, 120); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-align: justify; background-color: rgb(243, 243, 243); outline: none !important;\">Turşuluğa son derece uygun,</div><div style=\"font-weight: normal; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; text-size-adjust: 100%; color: rgb(120, 120, 120); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-align: justify; background-color: rgb(243, 243, 243); outline: none !important;\">yüksek verimli bir çeşittir.</div><div style=\"font-weight: normal; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; text-size-adjust: 100%; color: rgb(120, 120, 120); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; text-align: justify; background-color: rgb(243, 243, 243); outline: none !important;\">Dekara ortalama verimi 4 ton\'dur.</div>', '<pre class=\"tw-data-text tw-ta tw-text-small\" data-placeholder=\"Çeviri\" id=\"tw-target-text\" data-fulltext=\"\" dir=\"ltr\" style=\"unicode-bidi: isolate; background-color: rgb(255, 255, 255); border-width: initial; border-style: none; border-color: initial; padding: 0px 0.14em 0px 0px; position: relative; margin-bottom: 0px; resize: none; font-family: inherit; overflow: hidden; width: 276px; white-space: pre-wrap; font-weight: normal; color: rgb(33, 33, 33); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; height: 216px; font-size: 16px !important; line-height: 24px !important;\"><span lang=\"en\">It is suitable for outdoor field breeding.\r\nIt\'s a sweet variety.\r\nThe fruit is greenish yellow.\r\n20-25 cm. long.\r\nThe diameter of the fruit is 1.5 cm.\r\nThe handle is slightly bellows.\r\nIt is very suitable for turşuluK,\r\nIt is a highly efficient variety.\r\nDecreasing average yield is 4 tons.</span></pre>', 0, '/upload/products/image/364.jpg', '/upload/products/image/364.png', '2017-05-30 12:44:50', '2017-05-30 12:49:24'),
(404, 41, 'BAMYA (KINALI)', 'OKRA (KINALI)', '<p>Meyveleri yeşil renktedir</p><p>Meyveleri 3-5 cm.</p><p>ve meyve çapı 1 cm iken hasat edilir.</p><p>Mutfak kalitesi yüksektir.</p><p>Pişirme esnasında dağılmaz</p><p>ve su koyvermez.	</p><p>Sofralık, konservecilik ve</p><p>kurutmacılıkta kullanılır.</p>', '<p>Fruit light on green burgundy color.</p><p><br></p><p>Fruits 3-5 cm. and the fruit diameter is 1 cm.while it is harvested.</p><p><br></p><p>Kitchen quality is high. Unbreakable duringcooking and water will not.</p><p><br></p><p>Table, canning and Used in drying.</p><div><br></div>', 0, '/upload/products/image/404.jpg', '/upload/products/image/404.png', '2017-11-09 14:02:09', '2017-11-09 14:11:58'),
(368, 36, 'HIYAR VENTURA', 'CUCUMBER VENTURA', NULL, NULL, NULL, '/upload/products/image/368.jpg', '/upload/products/image/368.png', '2017-05-31 09:24:20', NULL),
(379, 35, 'Domates Nur(2274)', 'Tomato Nur(2274)', '<p class=\"MsoNormal\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\"><span style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-Orta erkenci oturak domates çeşididir.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br></p><p class=\"MsoNormal\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\"><o:p></o:p></p><p class=\"MsoNormal\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-Açık tarla ekimine uygundur.<o:p></o:p></p><p class=\"MsoNormal\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-Meyve ağırlığı 190-240 gr arası değişir.<o:p></o:p></p><p class=\"MsoNormal\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-Nakliyeye dayanıklıdır. Raf Ömrü Uzundur.</p>', '<p class=\"MsoNormal\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-A type of mid-early ‘oturak’ tomato.<o:p></o:p></p><p class=\"MsoNormal\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-Suitable for open field sowing.<o:p></o:p></p><p class=\"MsoNormal\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-The weight of the fruit changes from 190gr to 240gr.<o:p></o:p></p><p class=\"MsoNormal\" style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; font-size: 14px; font-family: Monda, sans-serif;\">-Durable for shipping. Shelf-life is long.</p>', NULL, '/upload/products/image/379.jpg', '/upload/products/image/379.png', '2017-11-08 14:14:36', NULL),
(372, 45, 'KEKİK', 'OREGANO', NULL, NULL, NULL, '/upload/products/image/372.jpg', '/upload/products/image/372.png', '2017-05-31 09:54:34', NULL),
(373, 42, 'KABAK (ARICAN-97)', 'PUMPKİN (ARICAN97)', '<p>- Açık tarla yetiştiriciliğine uygundur </p><p>-Meyveler büyük , yuvarlak , dilimli , daire şeklinde ve sert kabukludur. </p><p>- Meyve ağırlığı ortalama 10-12 kg´dır </p><p>- Kuraklığa ve aşırı sıcaklara dayanımı az olup , bahar donlarına dayanıklıdır.</p><p> - Sert kabuklu ve sert etli olması , muhafaza koşullarına dayanımı arttırmayı sağlar.</p>', '<p>- Suitable for open field cultivation </p><p>- Fruits are large, round, sliced, circular and hard-crusted. </p><p>- Fruit weight is 10-12 kg on average </p><p>- Resistant to drought and extreme heat, resistant to spring frosts. </p><p>- Hard shells and hard flesh to increase resistance to storage conditions.</p>', 0, '/upload/products/image/373.jpg', '/upload/products/image/373.png', '2017-05-31 10:01:42', '2017-11-08 15:02:24'),
(374, 46, 'TAZE NANE', 'MİNT', NULL, NULL, NULL, '/upload/products/image/374.jpg', '/upload/products/image/374.png', '2017-05-31 10:30:52', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `producttype`
--

CREATE TABLE `producttype` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `content_en` varchar(5000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `producttype`
--

INSERT INTO `producttype` (`id`, `category_id`, `name`, `name_en`, `content`, `content_en`, `image`, `created_at`, `updated_at`) VALUES
(46, 10, 'Çiçekler', 'Flowers', NULL, NULL, '/upload/producttypes/46.jpg', '2017-05-23 08:02:32', NULL),
(35, 10, 'Domates', 'Tomato', '<p class=\"MsoNormal\"><br></p>', '<p class=\"MsoNormal\"><br></p>', '/upload/producttypes/35.png', '2017-05-08 14:43:32', '2017-05-08 14:43:49'),
(40, 10, 'Biber', 'Pepper', '', '', '/upload/producttypes/40.jpg', '2017-05-11 22:35:55', '2017-05-11 23:16:04'),
(41, 10, 'Diğer Ürünler', 'Other Products', '', '', '/upload/producttypes/41.jpg', '2017-05-11 23:11:20', '2017-05-11 23:19:39'),
(36, 10, 'Salatalık', 'Cucumber', '', '', '/upload/producttypes/36.jpg', '2017-05-11 08:23:45', '2017-05-11 23:16:39'),
(37, 10, 'Patlıcan', 'Eggplant', '', '', '/upload/producttypes/37.jpg', '2017-05-11 22:01:06', '2017-05-11 23:17:27'),
(38, 10, 'Kavun', 'Melon', '', '', '/upload/producttypes/38.jpg', '2017-05-11 22:17:11', '2017-05-11 23:17:54'),
(39, 10, 'Karpuz', 'Watermelon', '\r\n\r\n	\r\n	\r\n	\r\n	<style type=\"text/css\">P { margin-bottom: 0.21cm; direction: ltr; color: rgb(0, 0, 0); widows: 2; orphans: 2; }A:link { color: rgb(0, 0, 255); }</style><br>', '\r\n\r\n	\r\n	\r\n	\r\n	<style type=\"text/css\">P { margin-bottom: 0.21cm; direction: ltr; color: rgb(0, 0, 0); widows: 2; orphans: 2; }A:link { color: rgb(0, 0, 255); }</style><br>', '/upload/producttypes/39.jpg', '2017-05-11 22:27:38', '2017-05-11 23:18:17'),
(42, 10, 'Kabak', 'Marrow', NULL, NULL, '/upload/producttypes/42.jpeg', '2017-05-11 23:21:04', NULL),
(43, 10, 'Turp', 'Radish', NULL, NULL, '/upload/producttypes/43.jpg', '2017-05-11 23:43:13', NULL),
(44, 10, 'Fasulye', 'Bean', NULL, NULL, '/upload/producttypes/44.jpg', '2017-05-11 23:54:00', NULL),
(45, 10, 'Yeşil Yapraklı Sebzeler', 'Green Leafy Vegetables', NULL, NULL, '/upload/producttypes/45.jpg', '2017-05-16 08:09:11', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reference`
--

CREATE TABLE `reference` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` text,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `region`
--

INSERT INTO `region` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'İç Anadolu Bölgesi', '2017-05-15 12:26:37', '2017-05-15 14:20:40'),
(4, 'Güneydoğu Anadolu Bölgesi', '2017-05-15 12:26:52', '2017-05-15 14:52:29'),
(5, 'Karadeniz Bölgesi', '2017-05-24 08:10:25', NULL),
(6, 'Akdeniz Bölgesi', '2017-05-24 08:25:58', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `setting`
--

INSERT INTO `setting` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'image_logo_emblem', '/upload/settings/1.png', NULL, NULL),
(2, 'image_footer', '/upload/settings/2.jpg', NULL, NULL),
(3, 'image_logo_icon', '/upload/settings/3.ico', NULL, NULL),
(4, 'image_logo_normal', '/upload/settings/4.png', NULL, NULL),
(5, 'image_logo_side', '/upload/settings/5.png', NULL, NULL),
(6, 'site_address', 'Selehattin Eyyubi Mahallesi<br>\r\n78 nolu sokak No:75<br>\r\nŞehitkamil/Gaziantep, Türkiye', NULL, NULL),
(7, 'site_address_maps', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3183.6089256418104!2d37.41057881529745!3d37.06680157989457!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1531e427bb54b855%3A0xc53f296272355736!2sAkgen+Tohumculuk!5e0!3m2!1str!2s!4v1493212026550', NULL, NULL),
(8, 'site_description', 'AKGENSEEDS', NULL, NULL),
(9, 'site_email', 'info@akgenseeds.com', NULL, NULL),
(10, 'site_fax', ' 0532 158 71 01', NULL, NULL),
(11, 'site_googleanalyticsid', 'UA-98186203-1', NULL, NULL),
(12, 'site_keywords', 'akgen, tohumculuk, tohum, domates, green, seed, seeds, akgenseeds, akgenseeds.com, www.akgenseeds.com, http://akgenseeds.com, http://www.akgenseeds.com', NULL, NULL),
(13, 'site_phone', '0533 419 86 10 - 0532 158 71 01', NULL, NULL),
(14, 'site_title_short', 'AKGENSEEDS', NULL, NULL),
(15, 'site_title', 'Akgen Tohumculuk Tohumda Kalite Merkezi', NULL, NULL),
(16, 'site_url', 'akgenseeds.com', NULL, NULL),
(17, 'social_facebook', '', NULL, NULL),
(18, 'social_googleplus', '', NULL, NULL),
(19, 'social_instagram', '', NULL, NULL),
(20, 'social_linkedin', '', NULL, NULL),
(21, 'social_twitter', '', NULL, NULL),
(22, 'site_googlerecaptchasitekey', '6Leuej4UAAAAAJER10Ntli9hZQ4XG5n71tvUdFOH', NULL, NULL),
(23, 'site_googlerecaptchasecretkey', '6Leuej4UAAAAAHFL_dTZgGXFf17Ub5cRYVqPRP-h', NULL, NULL),
(25, 'site_about', '<p>Sayın bayii ve çiftçi dostlarımız;</p><p>Firmamız AKGEN TOHUMCULUK olarak 2000 yılından bu yana, Gaziantep merkezli olarak kurulmuş ve 17 yıllık süre zarfında devamlı kendini geliştirerek Türkiye çapında ve Suriye, Irak gibi ülkelerde dağıtım ve pazarlama ağını oluşturmuştur.Tohum tarımın vazgeçilmez ve ana kalemidir, 2013 yılına kadar firmamız standart tohum pazarlaması açısından, Türkiye genelinde faaliyet gösteren bazı firmaların distribütörlüğünü yapmıştır, Ama ülkemizdeki tüm üretici firmaların en büyük handikaplarından birincisi başka firmaların üretimini yaptığı ürünleri kendi paketlerine koyarak piyasaya dağıtmak ve paketlerinde satmış oldukları ürünlere, çıkan sorunlarda sahip çıkmamaktır.</p><p>AKGEN TOHUMCULUK 2013 yılında, Tarım Orman ve Köy işleri Bakanlığından üretim, işleme izinlerini alarak GREEN SOUTH markası ile siz bayii ve çiftçilerimize,  kendi üretmiş olduğu ürünleri sunmaya başlamıştır. 2017 yılı içerisinde ise GREEN SOUTH FLOVERS Markası ile çiçek çeşitlerini ve GREEN SOUTH İTHAL Markası ile hibrit tohumlarını sizlerin beğenisine sunmuştur. Hizmetlerimiz sizlerin desteği ve beğenisiyle devam edecektir.</p><p>AKGEN TOHUMCULUK,  GREEN SOUTH markası ile piyasaya sunulan tüm ürünlerin arkasında olup, ekilen tohumlarda çıkacak olan çimlenme ve buna benzer sorunlarda çiftçimizin ve bayiimizin her zaman yanındadır.</p><p>- TOHUMDA KALİTE, ÜRÜNDE KALİTEDİR, ÜRÜNDE KALİTE İSE SOFRADA KALİTEDİR.</p><p>- PARA HİÇ BİR ZAMAN AMAÇ DEĞİLDİR.</p><p>- PARA HER ŞEYİN EN İYİSİNİ YAPMAK İÇİN ARAÇTIR.</p><p><br></p><p>SAĞLIKLI VE BOL KAZANÇLI GÜNLER DİLEĞİ İLE<br></p>', NULL, NULL),
(1002, 'social_whatsapp', '905334198610', NULL, NULL),
(1001, 'site_about_en', '<p>Dear Dealers and Farmer Friends,</p><p>Our company has been working as AKGEN SEEDS in Gaziantep since 2000 and it has created its own marketing and distributing system by developing itself for 17 years in some countries such as Syria and Iraq.Seed is the essential and main item of agriculture. Our company was the distribütör of some firms which are in service all across Turkey in marketing standard seeds. However, one of the biggest handicaps of the producers in our country is that they distribute the products of other companies by putting them in their own packages and they do not do anything about themwhen there is a problem. </p><p>AKGEN SEEDS began to present the products, which we produced, to you ur dearest dealer and farmer friends by getting the permission of production and cultivation from the ministry of agriculture and rural affairs with the name of GREEN SOUTH in 2013. And in 2017 with the brand of GREEN SOUTH FLOWERS we presented flower types, with the name of GREEN SOUTH IMPORTED we also presented hybrid seeds. Our services will go on with your regards and supports. </p><p>AKGEN SEEDS defends all the products presented to the market with the name of GREEN SOUTH and it is always with the dealers and farmers in case they have a problem in seeds or other problems. </p><p>- QUALITY IN SEED MEANS QUALITY IN CROP, QUALITY IN CROP MEANS QUALITY IN MEAL.</p><p>- MONEY IS NEVER A GOAL.</p><p>- MONEY IS A TOOL TO DO BEST WE WISH.</p><p>YOU HEALTHY AND PROSPEROUS DAYS<br></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `subject_en` varchar(100) DEFAULT NULL,
  `content` text,
  `content_en` varchar(5000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `bg_image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `slide`
--

INSERT INTO `slide` (`id`, `subject`, `subject_en`, `content`, `content_en`, `image`, `bg_image`, `created_at`, `updated_at`) VALUES
(11, 'Toprağın Sevdası', 'Passion Of Soil\'s', '<span style=\"color: rgb(0, 255, 0); font-weight: bold;\">Akgen </span>İle Toprak Tohuma Doyacak!', 'Soil Will Be Sated With <span style=\"color: rgb(0, 255, 0); font-weight: bold;\">Akgen</span>!', '/upload/slides/image/11.png', '/upload/slides/bg_image/11.jpg', '2017-04-28 09:55:25', '2018-12-18 17:20:17'),
(16, 'Delikanlı Tohum', 'Laddie Seed', '<span style=\"color: rgb(0, 255, 0); font-weight: bold;\">Akgen&nbsp;</span> İle Sağlıklı Bitki, Kaliteli Ürün!', 'Healthy Plant, Quality Product with <span style=\"color: rgb(0, 255, 0); font-weight: bold;\">Akgen</span>!', '/upload/slides/image/16.png', '/upload/slides/bg_image/16.jpg', '2017-05-12 11:39:46', '2018-12-18 17:20:22'),
(15, 'Bahçeleriniz Şenlensin', 'To Cheer Your Garden', '<span style=\"color: rgb(0, 255, 0); font-weight: bold;\">Akgen</span> <span style=\"font-weight: bold;\">Tohumculuk </span>Bahçenizdeki Uzman Tohum!', '<span style=\"color: rgb(0, 255, 0); font-weight: bold;\">Akgen</span> <span style=\"font-weight:\" bold;\"=\"\">Seeds </span>Expert Seed In Your Garden!', '/upload/slides/image/15.png', '/upload/slides/bg_image/15.jpg', '2017-04-28 10:46:14', '2018-12-18 17:20:25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cv` varchar(5000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `boss` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `phone`, `email`, `cv`, `image`, `boss`, `admin`, `created_at`, `updated_at`) VALUES
(1, 'ykorkut', 'deceb8d3ecf5bc3c7470e911c3c21aa0', 'Yusuf', 'Korkut', '0533 419 86 10', 'yusufkorkut@akgenseeds.com', '<p>Şirket Kurucusu</p>', '/upload/users/1.jpeg', 1, 1, '2016-11-28 13:24:17', '2019-02-20 16:55:10'),
(6, 'thaksal', 'e2d5b4b3502f9d9c24fe1918676ec3ce', 'Tuncay', 'Haksal', '0532 158 71 01', 'thaksal@akgenseeds.com', 'Şirket Kurucusu', '/upload/users/6.png', 0, 0, '2017-04-25 16:17:53', '2017-06-03 20:33:49');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `activation`
--
ALTER TABLE `activation`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `agendaimage`
--
ALTER TABLE `agendaimage`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `albumimage`
--
ALTER TABLE `albumimage`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `activation`
--
ALTER TABLE `activation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Tablo için AUTO_INCREMENT değeri `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `agendaimage`
--
ALTER TABLE `agendaimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- Tablo için AUTO_INCREMENT değeri `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `albumimage`
--
ALTER TABLE `albumimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `distributor`
--
ALTER TABLE `distributor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Tablo için AUTO_INCREMENT değeri `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- Tablo için AUTO_INCREMENT değeri `producttype`
--
ALTER TABLE `producttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Tablo için AUTO_INCREMENT değeri `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- Tablo için AUTO_INCREMENT değeri `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
