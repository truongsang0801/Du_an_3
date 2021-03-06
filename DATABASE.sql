USE [Duantotnghiep]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 12/21/2021 11:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](25) NOT NULL,
	[Password] [nvarchar](225) NOT NULL,
	[Name] [nvarchar](25) NULL,
	[Gender] [bit] NULL,
	[Birthday] [date] NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](12) NULL,
	[Image] [varchar](50) NULL,
	[reset_token] [nvarchar](225) NULL,
	[Deletehiden] [bit] NULL,
 CONSTRAINT [PK_Taikhoan] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 12/21/2021 11:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](25) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Authorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 12/21/2021 11:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [ntext] NOT NULL,
	[Contents_short] [ntext] NOT NULL,
	[Contents_para1] [ntext] NULL,
	[Contents_para2] [ntext] NULL,
	[Contents_para3] [ntext] NULL,
	[CreateDate] [date] NOT NULL,
	[Image] [varchar](50) NOT NULL,
	[Image1] [varchar](50) NULL,
	[Image2] [varchar](50) NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/21/2021 11:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [varchar](50) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_Danhmuc] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 12/21/2021 11:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Coupons](
	[Code] [varchar](50) NOT NULL,
	[Coupontype] [nvarchar](50) NULL,
	[Couponamount] [varchar](50) NULL,
	[Description] [ntext] NULL,
	[Deletehiden] [bit] NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/21/2021 11:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](15, 3) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Donhangchitiet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/21/2021 11:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](25) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[NumberPhone] [varchar](12) NOT NULL,
	[Address] [nvarchar](225) NOT NULL,
	[Statuss] [nvarchar](50) NULL,
	[Method] [nvarchar](50) NULL,
	[Code] [varchar](50) NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/21/2021 11:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [decimal](15, 0) NOT NULL,
	[Unit] [nvarchar](50) NULL,
	[Sale] [int] NULL,
	[Image] [varchar](50) NOT NULL,
	[Image1] [varchar](50) NULL,
	[Image2] [varchar](50) NULL,
	[Image3] [nvarchar](50) NULL,
	[Des_short] [ntext] NULL,
	[Des_long] [ntext] NULL,
	[Information] [ntext] NULL,
	[Status] [bit] NULL,
	[Deletehiden] [bit] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rates]    Script Date: 12/21/2021 11:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rates](
	[Rate_id] [int] IDENTITY(1,1) NOT NULL,
	[Star] [float] NULL,
	[Comment] [nvarchar](225) NULL,
	[Username] [nvarchar](25) NULL,
	[Product_id] [int] NULL,
	[Create_date] [datetime] NULL,
 CONSTRAINT [PK_Rates] PRIMARY KEY CLUSTERED 
(
	[Rate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/21/2021 11:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Accounts] ([Username], [Password], [Name], [Gender], [Birthday], [Address], [Email], [Phone], [Image], [reset_token], [Deletehiden]) VALUES (N'hau', N'123', N'Nguyễn Tuấn Hậu', 1, CAST(N'2021-11-19' AS Date), N'Bình Thạnh', N'hauntps12684@fpt.edu.vn', N'097652421', N'anhhau.jpg', NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Name], [Gender], [Birthday], [Address], [Email], [Phone], [Image], [reset_token], [Deletehiden]) VALUES (N'khanh', N'123', N'Huỳnh Nhật Khánh', 1, CAST(N'2021-11-18' AS Date), N'Quận Tân Bình', N'khanhhuynhnk@gmail.com', N'0123456789', N'anhkhanh.jpg', NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Name], [Gender], [Birthday], [Address], [Email], [Phone], [Image], [reset_token], [Deletehiden]) VALUES (N'sang', N'123', N'Nông Lê Trường Sang', 1, CAST(N'2021-08-08' AS Date), N'Quận 1', N'kimseohunhq@gmail.com
', N'0147258368', N'anhsang.jpg', NULL, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Name], [Gender], [Birthday], [Address], [Email], [Phone], [Image], [reset_token], [Deletehiden]) VALUES (N'truc', N'123', N'Phạm Thanh Trúc', 0, CAST(N'2021-08-08' AS Date), N'Long An', N'pdttruc5501@gmail.com', N'0795034090', N'anhtruc.jpg', NULL, 0)
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (8, N'sang', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (34, N'khanh', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (42, N'hau', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (43, N'hau', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (44, N'truc', N'CUST')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [Title], [Contents_short], [Contents_para1], [Contents_para2], [Contents_para3], [CreateDate], [Image], [Image1], [Image2]) VALUES (1, N'Top 5 món ngon từ khoai tây vừa ngon vừa dễ làm cho cả nhà', N'Bạn luộc chín khoai tây, bóc vỏ rồi nghiền thật nhuyễn. Sau đó bạn đun chảy bơ, trộn cùng khoai tây, trứng gà và một chút lá mùi tây. Bạn cắt phomai thơm ngon, béo ngậy thành các viên nhỏ, rồi bọc khoai tây ra bên ngoài, viên thật kín sau đó lăn qua một lớp bột chiên xù nhé….', N'Khoai tây chiên phô mai
Bạn luộc chín khoai tây, bóc vỏ rồi nghiền thật nhuyễn. Sau đó bạn đun chảy bơ, trộn cùng khoai tây, trứng gà và một chút lá mùi tây. Bạn cắt phomai thơm ngon, béo ngậy thành các viên nhỏ, rồi bọc khoai tây ra bên ngoài, viên thật kín sau đó lăn qua một lớp bột chiên xù nhé. Cho dầu ăn nóng già thì thả các viên khoai tây vàng chiên vàng thì vớt ra. Món này có vị bùi của khoai tây, bị béo của phomai và mùi thơm rất hấp dẫn.
Khoai tây chiên bí
Khoai tây luộc chín, bỏ vỏ rồi nghiền nhuyễn. Bí đỏ cũng hấp chín rồi nghiền chung với khoai tây. Bạn trộn bí đỏ, khoai tây với thật mịn rồi thêm trứng gà, một chút muối và tiếp tục trộn cho tất cả quyện vào nhau. Bạn xắt ra thành từng phần nhỏ rồi ấn dẹt thành các miếng bánh, đem chiên vàng. Món này có thể ăn cùng loại hải sản tươi sạch giàu dinh dưỡng như cá hồi hun khói thì càng thơm ngon hơn. Hoàn thiện món từ khoai tây với bí đỏ bằng cách trình bày ra đĩa và rắc một chút mùi tây lên trên nhé.
Nem khoai tây
Bạn chuẩn bị phần nhân của nem tương tự như món nem thông thường gồm thịt xay, hành lá xắt nhỏ, nấm hương, mộc nhĩ, cà rốt bào nhỏ, trộn đều với trứng và gia vị. Phần nhân này cho vào ngăn mát 2 tiếng để dễ thực hiện phần bọc khoai tây. Phần vỏ nem sẽ thay bằng khoai tây chín nghiền nhuyễn.
Bạn chia khoai tây thành các phần bằng nhau, ấn dẹt và cho một phần nhân nem vào trong, ve cho thật kín lại thành hình trụ tròn rồi lăn qua bột chiên xù. Đem chiên ngập trong dầu ăn đến khi nem vàng giòn thì vớt ra để ráo bớt dầu ăn. Nem khoai tây chấm với sốt mayonnaise làm món ăn trọn vị hơn.
', N'Bánh khoai tây chiên xù
Đây là 1 trong 5 món khoai tây cách làm cực kỳ đơn giản, bạn cũng tiến hành luộc và nghiền nhuyễn khoai tây như món chiên phomai, tuy nhiên sau khi nghiền xong thì bạn chỉ trộn khoai tây với trứng gà, bơ đun chảy, bột năng và gia vị thôi. Sau đó tiến hành viên thành các viên tròn với kích cỡ tùy ý rồi lăn qua bột chiên xù. Cuối cùng đem chiên ngập dầu cho lớp vỏ giòn tan nhé. Món khoai tây chiên xù này có lớp bên trong cực kỳ thơm mịn và hơi dẻo một chút là thành công..
Khoai chiên cuộn thịt xông khói
Để làm món khoai tây chiên phô mai, bạn cần chuẩn bị khoai tây, thịt xông khói, trứng gà, bột chiên xù, phomai cheddar, các gia vị cơ bản và vài xây xiên que nhé. Khoai tây đem luộc chín, bóc vỏ rồi nghiền thật nhuyễn, sau đó trộn cùng trứng gà và một chút gia vị, tiêu xay. Với phomai nguyên miếng chuyên dùng để nấu ăn bạn cắt thành từng khối vuông cỡ 1,5cm rồi bọc khoai tây ra bên ngoài, viên cho thật tròn.
Tiếp theo, bạn lăn khoai tây qua lớp bột chiên xù sao cho bột phủ thật kín khoai tây rồi lấy thịt xông khói cuộn bên ngoài. Cuối cùng, bạn lấy xiên que cố định thịt xông khói khỏi bị bung rồi cho vào chiên ngập trong dầu thực vật tốt cho sức khỏe giúp thịt vàng giòn là được. Món này cực kỳ ngon khi ăn lúc nóng.
Khoai tây nướng cả vỏ kiểu Thụy Điển
Món khoai tây kiểu Thụy Điển này có cách làm cực kỳ đơn giản. Bạn đem khoai tây rửa thật sạch, không gọt vỏ và cắt các lát mỏng nhưng không làm đứt rời từng miếng. Bạn đem khoai tây nướng sơ, sau đó kẹp thêm phomai vào giữa các lát khoai tây, thêm một chút muối và lá mùi tây. Cuối cùng phết một lớp bơ đun chảy lên bề mặt khoai tây rồi cho vào lò nướng khoảng 20 phút. Món ăn này sẽ thật ngon miệng với khoai tây thơm quyện mùi bơ và vị béo ngậy của phomai.
', N'Trứng nướng khoai tây
Khoai tây bào sợi ngắn rồi cho vào khuôn bánh, ấn nhẹ để tạo ra khoảng trống ở giữa. Bạn rắc một chút muối và tiêu rồi quét một lớp mỏng dầu ăn lên khoai tây. Bạn cho khuôn bánh có khoai tây vào nướng với nhiệt độ 220 độ C trong 20 phút. Bạn lấy khuôn ra, chờ nguội bớt rồi đập trứng vào từng ô. Cuối cùng, bạn cho khuôn vào lò nướng lần thứ 2 với nhiệt độ 220 độ C trong 10 phút là hoàn thành rồi.
Bánh khoai tây bọc trứng
Khoai tây luộc chín rồi nghiền nhuyễn, nhào với bột mì và một chút muối cho đến khi thật mịn. Trứng gà sạch, chọn lựa kỹ bạn đem chần cho chín lòng đào rồi cho ra đĩa. Thịt xông khói cắt miếng nhỏ, áp chảo cho chảy bớt mỡ. Phomai cũng cắt miếng nhỏ. Bột khoai tây cán thành miếng tròn rồi cho phomai, thịt xông khói vào. Tiếp theo cho trứng chần lên trên rồi bọc tất cả nhân bằng lớp bột khoai tây. Cuối cùng, bạn chiên bánh trong chảo ngập dầu cho đến khi chín vàng là được.
Khoai tây thịt bằm
Món khoai tây thịt bằm này hoàn toàn có thể trở thành món ăn chính trong bữa cơm của gia đình bạn. Khoai tây cắt thành các thanh vừa rồi chiên vàng. Bạn có thể dùng thịt bò cho món ăn thơm ngon hơn. Bạn phi thơm tỏi rồi cho sốt cà chua vào khuấy đều, sau đó cho thịt bò vào xào chín, nêm nếm gia vị. Khi phần sốt thịt băm chín, bạn rưới lên trên khoai tây đã bày sẵn trên đĩa, rắc thêm hành lá và thưởng thức ngay thôi nào.', CAST(N'2021-12-09' AS Date), N'blog-khoai-tay.jpg', N'blog-khoai-tay1.jpg', N'blog-khoai-tay2.jpg')
INSERT [dbo].[Blogs] ([ID], [Title], [Contents_short], [Contents_para1], [Contents_para2], [Contents_para3], [CreateDate], [Image], [Image1], [Image2]) VALUES (2, N'Top 10 món ăn làm từ rau muống ngon bất ngờ và cực dễ làm', N'Bạn luộc chín khoai tây, bóc vỏ rồi nghiền thật nhuyễn. Sau đó bạn đun chảy bơ, trộn cùng khoai tây, trứng gà và một chút lá mùi tây. Bạn cắt phomai thơm ngon, béo ngậy thành các viên nhỏ, rồi bọc khoai tây ra bên ngoài, viên thật kín sau đó lăn qua một lớp bột chiên xù nhé….', N'Rau muống xào tỏi
Tất nhiên, sẽ có rất nhiều sự lựa chọn khác cho mình, như rau bắp cải, rau muống tơi, rau ngót nhưng nếu đọc tiếp món ăn tiếp theo, bạn sẽ hiểu lý do vì sao lại thế nhé. Trên thực tế, trừ những khi mưa to gió lớn, giá cả rau củ đắt như nhau, những ngày thường, giá của rau muống là rẻ nhất và dễ mua nhất. Một mớ rau muống có thể chế biến thành món canh, món luộc, món nấu cùng với mỳ tôm và cũng sẽ xuất hiện trong những nồi lẩu ''''''''''''''''hiếm hoi” đổi bữa. Và rau muống xào tỏi cũng là một trong những món ngon mà rẻ tiền.

Rau muống xào ốc móng tay
Ốc móng tay xào rau muống là một trong những món nhậu “tủ” của nhiều người khi đến các hàng quán, thậm chí là nhà hàng. Bây giờ, Blog Adayroi sẽ hướng dẫn bạn cách làm món ăn này thật chi tiết nhé.
Ốc móng tay cũng giống như các loại thủy hải sản tươi sống có vỏ khác như nghêu, sò, hến cần khoảng 1kg được làm sạch kỹ càng trước khi đem nấu. Sau khi mua về, bạn nên ngâm ốc với nước lạnh pha giấm và cắt ớt tươi bỏ vào (khoảng 3 - 4 trái). Trong lúc ngâm ốc, bạn hãy nhặt hết phần lá và rửa rau muống cho sạch. Tiếp đến, hãy bắt nước sôi và luộc rau chín tới thì vớt ra trần qua nước lạnh để rau giòn.
Dưa rau muống
Dưa rau muống ngon miệng, dễ làm và kết hợp rất ăn ý với những món gây ngán của mùa hè như đồ chiên, đồ kho. Bên cạnh đó, để đảm bảo món ăn luôn tươi ngon, an toàn thì bạn nên muối với hũ nhỏ. Để nhờ vậy, thành phẩm được dùng hết trong 2- 3 ngày.
Có một món làm từ rau muống đơn giản, hấp dẫn mà nhiều bà nội trợ chưa để ý đến, đó là món dưa rau muống. Cách làm món này rất dễ, ai cũng có thể làm được. Bữa cơm có món dưa rau muống ăn kèm với thịt kho tàu hoặc thịt ba chỉ luộc hoặc đậu rán… thật là hấp dẫn .
Rau Muống Luộc
Rau muống luộc là món ăn nhanh và không cần cầu kỳ, nếu như bạn xem qua công thức nấu món rau muống xào phía trên cũng đã biết qua cách luộc rau như thế nào. Tuy nhiên, có một điểm bạn nên lưu ý là phần nước luộc rau. Đây là nước canh khá mát bạn có thể sử dụng lại nó bằng cách nặn thêm một nửa quả chanh vào và cho thêm bột canh, nên nhớ nặn chanh lúc nước đã nguội nếu không nước canh sẽ bị đắng. Gia vị chấm có thể dùng nước mắm tỏi ớt.
', N'Nộm rau muống tôm khô
Nộm rau muống tôm khô mang tới sự hòa quyện của vị chua, vị ngọt, vị đậm đà cùng tính giòn thanh sẵn có của rau. Còn nếu bạn đang muốn giảm cân thì đây là món ăn hỗ trợ rất tốt cho mục tiêu của bạn đó nhé.
Rau muống xào mắm tôm
Vị mắm tôm mằn mặn đậm đà cùng với rau muống giòn tươi chắc chắn sẽ đánh thức vị giác của bạn ngay khi “nghe” thấy. Trước hết bạn ngâm tôm khô trong nước lạnh cho nở ra rồi rửa sạch lại để ráo. Xay hoặc giã nhuyễn hỗn hợp ớt tươi, hành tím, tỏi, tôm khô. Bắt chảo dầu lên bếp, đợi cho nóng rồi phi thêm ít hành tỏi cho thơm, sau đó đổ hỗn hợp vừa xay xong vào khuấy đều tay. Tiếp tục đổ mắm tôm vào chảo khuấy tiếp.
Đợi cho các gia vị quyện với mắm tôm thì đổ rau muống vào, để lửa lớn và đảo đều. Nêm nếm thêm một chút đường, một chút nước lạnh cho vị ngon hơn rồi tắt bếp. Nếu muốn bạn có thể dùng thêm một ít đậu phộng rang, giã nát và đổ lên trên khi bày ra đĩa sẽ cho món ăn thêm phần hấp dẫn và béo thơm hơn nhiều.
Rau muống xào giá
Sau khi rửa sạch rau muống và giá đỗ khoảng 100 - 200 gram loại ngon, tiến hành bắt nước sôi và cho vào nồi nước 1 muỗng cafe muối cùng 1 muỗng cafe dầu ăn Nước sôi thì cho rau muống vào luộc khoảng 2 phút, vớt ra chần qua nước lạnh. Làm tương tự với món giá đỗ. Bắt chảo lên bếp khử hành tỏi cho thơm.
Sau đó cho rau, giá đỗ và 1 muỗng canh dầu hào vào, đảo thật đều tay. Cuối cùng nêm nếm gia vị cho vừa miệng và tắt bếp. Chỉ với vài thao tác đơn giản bạn đã có món ăn từ rau muống ngon tuyệt cú mèo!
', N'Rau muống xào dầu hào
Với món ngon phối hợp giữa rau muống và dầu hào bạn chỉ cần: rau muống sau khi rửa sạch thì để thật ráo. Sau đó bắt chảo dầu ăn lên bếp cho hơi nóng rồi bỏ tỏi băm vào phi cho thơm lên, tiếp tục cho rau muống vào đảo nhanh - đều tay, lựa chọn loại dầu hào nguyên chất với lượng là ½ muỗng canh đổ trực tiếp lên rau muống, thêm vào ½ muỗng cafe đường rồi đảo cho thật đều và tắt bếp. Lưu ý không nên cho thêm muối bởi dầu hào đã mặn sẵn rồi nhé.
Gỏi rau muống tai heo
Rau muống 200 gram nhặt sạch lá, để lại cọng và chẻ đôi. Đem đi rửa sạch rồi luộc qua sơ qua nước sôi. Sau đó, vớt ra chần nước lạnh rồi để ráo. Dùng chanh, muối dấm sát khuẩn cho 250 gram tai lợn, sau đó ướp thêm chút hạt nêm rồi luộc. Khi tai lợn chín thì vớt ra chần nước lạnh, thái lát mỏng và để ráo cho tai thêm giòn.
Nước trộn gỏi gồm có 1 thìa cafe dấm, 3 thìa canh nước mắm, ớt băm nhỏ, nước cốt của 1 quả chanh, 2 muỗng đường, tỏi băm cùng cho vào 1 cái chén vào khuấy đều cho tán hết đường. Cho hỗn hợp rau muống, tai heo luộc ra tô lớn, rưới nước trộn lên trên và dùng tay trộn lên thật đều cho ngấm. Sau đó đổ 100 gram đậu phộng rang giã dập lên trên rồi bắt đầu thưởng thức thôi!
Gỏi rau muống chiên giòn
Khô cá sặc nướng lên hoặc chiên vàng rồi xé bỏ xương, lấy phần thịt, ướp cùng hành tím và 1 muỗng đường. Rau muống rửa sạch 100 gram bỏ lá, chẻ cọng nhỏ, xoài keo bào thành sợi. Pha sẵn bột chiên giòn. Nước làm gỏi: pha 2 muỗng mắm, 3 muỗng đường, tỏi và ớt băm 1 muỗng, nửa muỗng mì chính.
Cho dầu ra chảo, bắt lên bếp, đợi dầu nóng thì nhúng rau muống qua tô bột chiên giòn đảm bảo an toàn sức khỏe rồi thả vào chảo. Sau khi chiên xong, vớt ra để ráo dầu. Cho nửa trái xoài keo, cá sặc cùng các loại rau vào tô, sau đó rưới hỗn hợp nước gỏi lên và trộn đều. Cuối cùng cho rau muống ra đĩa, đặt phần gỏi trộn lên trên.
', CAST(N'2021-09-07' AS Date), N'blog-rau-muong1.jpg', N'blog-rau-muong2.jpg', N'blog-rau-muong.jpg')
INSERT [dbo].[Blogs] ([ID], [Title], [Contents_short], [Contents_para1], [Contents_para2], [Contents_para3], [CreateDate], [Image], [Image1], [Image2]) VALUES (3, N'Uống nước cam buổi tối có tốt không? Uống nước cam sao cho đúng cách?', N'Bên cạnh đó sẽ khiến bạn tăng cân do dư thừa dinh dưỡng, mất khả năng hỗ trợ điều trị sỏi thận thay vào đó là khả năng hình thành sỏi thận cao vì dư thừa các khoáng chất và sẽ lắng đọng rồi hình thành sỏi thận. Uống nước cam vào thời điểm nào là tốt nhất?….', N'Uống nước cam buổi tối có tốt không?
Nhiều nghiên cứu chỉ ra rằng, không nên uống nước cam vào buổi tối bởi nó có tác dụng sinh tân dịch và lợi tiểu, dễ gây đi tiểu đêm và làm mất ngủ. Ngoài ra, trước khi đi ngủ, nếu bạn uống nước cam, nước bọt không tiết nhiều như khi bạn còn thức, lượng axit còn bám trên răng sẽ tấn công và làm hỏng lớp men răng của bạn.
Thêm một yếu tố quan trọng bạn cần lưu ý không được uống nước cam ban đêm. Vì hàm lượng khoáng chất dồi dào và nguồn năng lượng có trong nước cam sẽ thích hợp bổ sung khi cơ thể chúng ta lao động và hao hụt năng lượng.
Và buổi tối là lúc cơ thể nghỉ ngơi và không tốn năng lượng, nếu uống nước cam vào buổi tối sẽ khiến co thể dư thừa năng lượng và tích tụ khoáng chất sẽ làm mất tác dụng giảm cân. Bên cạnh đó sẽ khiến bạn tăng cân do dư thừa dinh dưỡng, mất khả năng hỗ trợ điều trị sỏi thận thay vào đó là khả năng hình thành sỏi thận cao vì dư thừa các khoáng chất và sẽ lắng đọng rồi hình thành sỏi thận.
Uống nước cam vào thời điểm nào là tốt nhất?', N'Tốt nhất bạn nên ăn và uống nước cam vào buổi sáng khi dạ dày còn trống (chưa ăn sáng), thời điểm này là tốt nhất, giúp dạ dày dễ hấp thu các chất dinh dưỡng. Bởi mỗi ngày 1 ly nước cam sẽ cho công dụng kỳ diệu, và nước cam tốt nhất nên uống vào lúc không no, không đói tức sau khi ăn 1-2 giờ. Ngoài ra không nên cất giữ nước cam trong thời gian dài vì nước cam để lâu sẽ bị mất hết giá trị dinh dưỡng, đặc biệt là vitamin C.
Tuy nhiên, nếu bạn đang bị viêm loét dạ dày, tá tràng hay viêm tuyến tụy thì nên tránh xa, vì nước cam có chứa nhiều thành phần chất hữu cơ làm tăng axit trong dạ dày, khiến viêm loét ngày càng nặng thêm.
Nếu như uống nước cam vào buổi tối và buổi sáng đều có khả năng ảnh hưởng xấu đến sức khỏe thì uống nước cam lúc nào là tốt nhất. Thời điểm uống nước cam tốt nhất là khi dạ dày còn trống (lúc chưa ăn sáng), điều này giúp chất dinh dưỡng hấp thu tốt hơn và là phương pháp giảm cân hiệu quả. Ngoài ra, nước cam nên uống vào lúc trước hoặc sau khi ăn 1-2 tiếng, lúc bụng không đói, không no, nhằm phát huy tốt tác dụng của cam đối với cơ thể.
Những ai nên uống nước cam thường xuyên?
Người thiếu chất béo
Cam không chứa chất béo, lại ít calo và chất dinh dưỡng nên không thể chọn cam làm thực phẩm thay thế các món ăn trong ngày. Cơ thể bạn cần chất béo chế độ ăn uống để hấp thụ một số vitamin, cung cấp năng lượng cho cơ thể và hỗ trợ đông máu. Do đó, việc thiếu các chất béo có thể gây hại, đặc biệt là nếu bạn sử dụng cam để thay thế loại thực phẩm như các loại hạt, trong đó cung cấp chất béo lành mạnh.
Người trong cơ thể có hàm lượng protein thấp
Một 100g cam chỉ chứa 1g protein, mà protein lại là chất dinh dưỡng cơ thể cần để xây dựng và duy trì cơ bắp, da và các mô khác. Protein cũng có thể hỗ trợ trong việc duy trì trọng lượng. Do đó, nếu ăn cam thay cho một bữa ăn nhẹ giàu protein thì có thể có tác động xấu đến sức khỏe của bạn.
Chứa ít khoáng chất', N'Mặc dù cam cung cấp một loạt các vitamin nhưng nó lại chứa ít các khoáng chất. Cam chứa hầu như không có sắt, kẽm, đồng, mangan, selen hoặc phốt pho... Vì vậy, nếu ăn thay các thực phẩm giàu dinh dưỡng khác thì có thể dẫn tới tình trạng thiếu chất trong cơ thể.
Thiếu chất xơ
Nếu bạn đang ăn kiêng, ăn các thực phẩm giàu chất xơ có thể có lợi cho mục đích này vì nó khiến bạn no lâu. Tuy nhiên, cam lại chứa tương đối ít chất xơ (chỉ khoảng 2g chất xơ trong 100 g cam). Ngoài tác dụng no lâu, chất xơ còn giúp quản lý cholesterol và lượng đường trong máu.
Vì vậy, cho dù muốn giảm cân bạn cũng không nên chỉ ăn mỗi cam không. Hãy bổ sung cam vào chế độ ăn mỗi ngày kèm theo các thực phẩm giàu chất xơ để mục đích giảm cân được thực hiện.

Lời khuyên khi bạn thích uống nước cam
Nước cam cung cấp một lượng lớn vitamin C, giúp tăng cường hệ miễn dịch. Ngoài ra, vitamin C còn giúp thúc đẩy quá trình tạo xương, chữa lành vết thương, sức khỏe răng miệng. Nước cam rất giàu chất folate, cần thiết cho quá trình tổng hợp ADN và có ích cho thai nhi. Bên cạnh đó, nước cam chứa một nguồn khoáng chất kali, giúp điều chỉnh huyết áp, phòng ngừa bệnh tim và đột quỵ.
Bệnh tim là một căn bệnh nghiêm trọng. Mỗi năm, trên thế giới có hơn 17 triệu ca tử vong vì mắc bệnh tim. Các bác sĩ đưa ra lời khuyên rằng uống nước cam có thể làm giảm nguy cơ mắc bệnh tim. Chẳng hạn như giảm thiểu tình trạng cao huyết áp, tăng cholesterol…
', CAST(N'2021-10-11' AS Date), N'blog-nuoc-cam1.jpg', N'blog-nuoc-cam2.jpg', N'blog-nuoc-cam3.jpg')
INSERT [dbo].[Blogs] ([ID], [Title], [Contents_short], [Contents_para1], [Contents_para2], [Contents_para3], [CreateDate], [Image], [Image1], [Image2]) VALUES (4, N'Bảo vệ thực vật là gì? Những điều cần biết về thuốc bảo vệ thực vật', N'Thuốc bảo vệ thực vật là những hợp chất độc có nguồn gốc tự nhiên hoặc tổng hợp hóa học được dùng trong nông nghiệp để phòng chống các đối tượng gây hại cho cây trồng và nông sản trên đồng ruộng, vườn tược, kho tàng….', N'Bảo vệ thực vật là gì? Các sản phẩm bảo vệ thực vật gồm những gì?
Thuốc bảo vệ thực vật là những hợp chất độc có nguồn gốc tự nhiên hoặc tổng hợp hóa học được dùng trong nông nghiệp để phòng chống các đối tượng gây hại cho cây trồng và nông sản trên đồng ruộng, vườn tược, kho tàng….
Thuốc trừ sâu là những hóa chất mà có thể giết chết hoặc kiểm soát sâu bệnh. Dịch hại sinh vật, vi sinh vật, côn trùng, động vật gặm nhấm có khả năng gây thiệt hại cho cây trồng và thực phẩm. Thuốc BVTV có các loại sau:
', N'Thuốc trừ sâu

Thuốc trừ bệnh

Thuốc trừ ốc sên

Thuốc trừ tuyến trùng

Thuốc trừ gặm nhấm

Thuốc trừ vi khuẩn

Thuốc trừ nấm mốc

Thuốc trừ cỏ

Thuốc bảo vệ thực vật có hiệu quả chống lại sâu bệnh trong nhiều cách khác nhau, chẳng hạn như thông qua đường ruột, thông qua miệng, qua da, qua đường hô hấp.
Các loại thuốc bảo vệ thực vật thường gặp

Thuốc bảo vệ thực vật syngenta
Các sản phẩm thuốc bảo vệ thực vật của Syngenta giúp cho bà con nông dân bảo vệ mùa màng khỏi dịch hại tấn công, tối ưu hóa năng suất cây trồng. Syngenta luôn chú trọng đầu tư vào việc nghiên cứu và phát triển công nghệ nhằm mang lại cho người nông dân những hạt giống lai với những tính năng vượt trội, đáp ứng tốt nhu cầu thị trường. Ngành Sản Phẩm Chuyên Dụng của Syngenta đã và đang cung cấp các giải pháp về sức khỏe cây trồng, quản lý dịch hại chuyên nghiệp, kiểm soát vector truyền bệnh cho khách hàng và người trồng chuyên nghiệp.
Thuốc bảo vệ thực vật bayer', N'Thuốc bảo vệ thực vật syngenta
Các sản phẩm thuốc bảo vệ thực vật của Syngenta giúp cho bà con nông dân bảo vệ mùa màng khỏi dịch hại tấn công, tối ưu hóa năng suất cây trồng. Syngenta luôn chú trọng đầu tư vào việc nghiên cứu và phát triển công nghệ nhằm mang lại cho người nông dân những hạt giống lai với những tính năng vượt trội, đáp ứng tốt nhu cầu thị trường. Ngành Sản Phẩm Chuyên Dụng của Syngenta đã và đang cung cấp các giải pháp về sức khỏe cây trồng, quản lý dịch hại chuyên nghiệp, kiểm soát vector truyền bệnh cho khách hàng và người trồng chuyên nghiệp.
Thuốc bảo vệ thực vật bayer
Các sản phẩm bảo vệ thực vật bao gồm thuốc trừ nấm, thuốc trừ sâu, thuốc diệt cỏ và xử lý hạt giống cho các cây trồng chính trên khắp Việt Nam. Bayer cũng đưa ra thị trường hạt giống lúa lai và hạt giống rau, đồng thời cung cấp các sản phẩm phòng trừ côn trùng chuyên dụng và các vector truyền bệnh.
Thuốc bảo vệ thực vật antracol
Thuốc phòng trừ bệnh phổ rộng, dạng bột thấm nước, có độ phủ tốt và có độ bám dính cao trên bề mặt lá khi phun, còn cung cấp vi lượng kẽm(Zn++) cho cây trồng giúp phát triển xanh tốt, tăng năng suất và chất lượng nông phẩm.
Thuốc bảo vệ thực vật mancozeb
Mancozeb là một phức chất của kẽm và muối mangan, dạng bột màu vàng hung, không tan trong nước và nhiều dung môi hữu cơ khác, bền trong môi trường khô nhưng thủy phân trong môi trường nóng, ẩm và acid. Hoạt chất Mancozeb không phải thuốc diệt nấm trực tiếp. Chỉ khi tiếp xúc với nước, mancozeb mới bị hoạt hóa, giải phóng ethyl isothiocyanate sunfua (EBIS). Dưới tác động của tia cực tím, EBIS chuyển hóa thành ethyl isothiocyanate (EBI). EBIS và EBI tác động tới các enzyme có chứa nhóm sulfhydryl, gây ức chế hoạt động của sáu quá trình sinh hóa khác nhau trong tế bào chất và ty thể, phá vỡ sự nảy mầm của bào tử nấm bệnh.
Viện bảo vệ thực vật ở đâu?
Viện Bảo vệ thực vật được thành lập theo điểm"c" Khoản "1" Điều 2 của Quyết định số: 220/QĐ-TTg ngày 09/9/2005 của Thủ tướng Chính phủ Thành lập Viện Khoa học Nông nghiệp Việt Nam.
Viện Bảo vệ thực vật là đơn vị sự nghiệp khoa học, trực thuộc Viện Khoa học Nông nghiệp Việt Nam, có nhiệm vụ nghiên cứu khoa học và chuyển giao công nghệ về dịch hại và sinh vật có ích trên cây trồng nông lâm nghiệp, các đối tượng kiểm dịch thực vật, thuốc bảo vệ thực vật trên phạm vi cả nước. Trụ sở của Viện đặt tại Phường Đức Thắng, Q. Bắc Từ Liêm, thành phố Hà Nội.
Các công ty sản xuất thuốc bảo vệ thực vật nổi tiếng tại Việt Nam
Công ty bảo vệ thực vật An Giang
Công ty Cổ phần Bảo vệ thực vật An Giang (AGPPS) sau 22 năm hoạt động đã trở thành nhà sản xuất, cung ứng hàng đầu cả nước trong lĩnh vực nông nghiệp, xây dựng chuỗi giá trị bền vững từ nghiên cứu, sản xuất, cung ứng vật tư, giống cây trồng đến tiêu thụ nông sản. Năm 2014, AGPPS tăng vốn điều lệ lên hơn 652 tỷ đồng. Công ty đặt mục tiêu doanh thu đến năm 2020 sẽ cán mốc 1 tỷ USD.
Công ty bảo vệ thực vật Sài Gòn
Công ty Cổ phần Bảo vệ Thực vật Sài Gòn tiền thân là Nhà máy thuốc trừ sâu Sài Gòn trực thuộc chi cục BVTV Tp.HCM được thành lập ngày 17/05/1989. Năm 2009, Công ty chính thức hoạt động dưới hình thức CTCP. Ngành nghề kinh doanh: sản xuất, gia công, mua bán phân bón, giống cây trồng, thuốc thú y thủy sản; đóng gói thuốc BVTV; dịch vụ tư vấn trồng trọt, dịch vụ xông hơi khử trùng...
Công ty bảo vệ thực vật Hà Nội
Công ty bảo vệ thực vật Hà Nội thành lập theo quyết định số 403/NN/TCCB/QĐ ngày 26/11/1985 của Bộ Nông nghiệp. Qua hơn 24 năm trưởng thành và phát triển, Công ty cổ phần bảo vệ thực vật 1 Trung ương đã trở thành doanh nghiệp hàng đầu Việt Nam về cung ứng thuốc Bảo vệ thực vật. Trong nhiều năm qua sản phẩm của Công ty luôn được sự tín nhiệm tin dùng của bà con nông dân trên khắp mọi miền đất nước. Ngành nghề kinh doanh chính: Sản xuất và mua bán hóa chất, phân bón hóa học, phân bón lá, phân bón hữu cơ sinh học, thuốc bảo vệ thực vật, thuốc diệt chuột, ruồi, muỗi,...; sản xuất và mua bán giống cây trồng.
', CAST(N'2021-07-02' AS Date), N'blog-bvtv1.jpg', N'blog-bvtv2.jpg', N'blog-bvtv3.jpg')
INSERT [dbo].[Blogs] ([ID], [Title], [Contents_short], [Contents_para1], [Contents_para2], [Contents_para3], [CreateDate], [Image], [Image1], [Image2]) VALUES (5, N'Top 7 cách bảo quản rau củ tươi xanh lâu mà không gây hại sức khỏe khi dùng', N'Cần phân loại rau củ trước khi dự trữ Mỗi loại rau củ đều có đặc tính và cách bảo quản khác nhau, do đó cần phân loại chúng trước khi bỏ vào tủ lạnh. Tránh tình trạng cho tất cả vào một bọc khiến rau củ bị hỏng nhanh hơn….', N'Cần phân loại rau củ trước khi dự trữ
Mỗi loại rau củ đều có đặc tính và cách bảo quản khác nhau, do đó cần phân loại chúng trước khi bỏ vào tủ lạnh. Tránh tình trạng cho tất cả vào một bọc khiến rau củ bị hỏng nhanh hơn.
Cách bảo quản rau củ mọng nước
Đối với một số loại rau mọng nước như cải thìa, cải cúc, xà lách…cần bảo quản đúng cách để tránh bị héo nước. Bạn nên bọc một chiếc túi nilon bên ngoài, sau đó chọc lỗ lên túi. Lấy miếng bọt biển để vào bên trong giúp thấm nước, hoặc sử dụng khăn giấy thấm giúp rau củ tránh được tình trạng hư úng.
Đối với cà chua bạn không nên để trong tủ lạnh bởi sẽ làm mất chất dinh dưỡng và mất đi mùi vị của nó. Nên lưu ý chỉ dự trữ lượng nhỏ cà chua trong tủ lạnh thôi nhé. Còn nếu muốn cà chua xanh nhanh chín hơn, bạn có thể để gần chuối hoặc táo nhé.
Cách bảo quản rau củ như khoai tây, khoai sọ, bí đỏ', N'Đừng rửa hoa quả
Nghe có vẻ hơi kỳ cục nhưng quả thực, sẽ tốt hơn rất nhiều nếu không rửa rau quả trước khi cho vào tủ lạnh (hoặc chạn bếp) bởi vì khi bạn rửa, chúng sẽ bị mất đi "lớp bảo vệ tự nhiên" để tránh bị thối rữa hay có mùi. Nếu hoa quả bị bẩn, bạn có thể dùng khăn hoặc giấy khô để lau.
Thời gian bảo quản rau củ trong tủ lạnh
2-3 ngày: măng tây, cải bắp
3-5 ngày: bông cải xanh, đậu Hà Lan, hành lá.
1 tuần: đậu, súp lơ, dưa chuột, rau lá xanh, tỏi tây, rau diếp, ớt, bí ngô.
1-2 tuần: cần tây.
2 tuần: củ cải, cà rốt, củ cải.', N'Dùng túi nilon để bảo quản rau củ
Phần lớn các loại rau củ sẽ cần độ ẩm khá cao khoảng trên 80%. Trong khi đó, độ ẩm của tủ lạnh chỉ dừng lại ở mức 65%. Do vậy khi bảo quản rau củ vào túi nilon sẽ giúp ngăn ngừa sự bay hơi nước, đặc biệt đối với rau củ không có lớp vỏ bên ngoài.
Không để tất cả các loại rau quả đặt cùng nhau
Một số loại rau quả tỏa ra Ethylene khi chúng bắt đầu chín, bao gồm chuối, mơ, dưa, lê, mận, xoài và cà chua. Trong khi đó, một số loại trái cây khác lại nhạy cảm với Ethylene bao gồm táo, cà, dưa hấu, khoai tây, bí đỏ, cà rốt và bông cải xanh. Nếu đặt chúng với những loại quả trên (quả phát ra chất Ethylene) thì chúng sẽ nhanh chóng bị thối. Do vậy, tốt nhất là hãy bảo quản riêng rẽ từng loại.
Loại bỏ những phần bị sâu úa
Để bảo quản rau củ tươi lâu, bạn lưu ý cắt bỏ đi những phần sâu úa để tránh lây lan ra các vùng khác.
Đối với các loại rau còn tươi xanh, bạn chỉ cần cuộn nhẹ vào 1 hoặc 2 lớp giấy hoặc vải sạch. Bảo quản rau củ này ở trong ngăn mát tủ lạnh. Khi dùng, bạn chỉ cần lấy ra và sơ chế, rửa sạch, sẽ giúp giữ được độ tươi ngon, bảo quản lượng vitamin, chất xơ của rau củ. Bằng cách bảo quản rau củ này, bạn có thể giữ được chúng tầm 3 đến 4 ngày mà hàm lượng dinh dưỡng không hề suy giảm.
Bảo quản ở nhiệt độ hợp lý
Nhiệt độ rất quan trọng, quyết định sẽ bảo quản rau củ trong thời gian bao lâu. Bạn nên lựa chọn nhiệt độ khoảng từ 34°-40°F (tương đương với 1°-4°C) khi bảo quản rau củ. Tránh để nhiệt độ trên 40°F vì sẽ tạo điều kiện cho các loại vi khuẩn có hại xâm nhập, làm hư hỏng các loại thực phẩm. Ngoài ra, bạn cũng cần tránh để nhiệt độ tủ lạnh thấp hơn vì có thể khiến rau củ bị đóng băng.
', CAST(N'2021-11-20' AS Date), N'blog-tulanh1.jpg', N'blog-tulanh2.jpg', N'blog-tulanh3.jpg')
INSERT [dbo].[Blogs] ([ID], [Title], [Contents_short], [Contents_para1], [Contents_para2], [Contents_para3], [CreateDate], [Image], [Image1], [Image2]) VALUES (6, N'Những loại rau, củ nào nên và không nên ăn sống để bảo vệ sức khỏe?', N'Rau, củ là món ăn quen thuộc và hầu hết chúng ta đều ăn rau, củ đã nấu chín. Có một số loại rau, củ ăn sống sẽ tốt hơn cho sức khỏe nhưng cũng có những loại rau, củ bắt buộc phải ăn chín nếu không sẽ gây ngộ độc.', N'7 loại rau bổ dưỡng hơn khi ăn sống

Bắp cải

Trong bắp cải có chứa hàm lượng vitamin A, chất xơ cao. Nếu bạn thường xuyên ăn bắp cải sống có thể giúp bảo vệ mắt, làm đẹp da. Tuy nhiên không nên nấu chín bắp cải ở nhiệt độ cao, vì như vậy sẽ làm bay hơi lượng lớn các chất có trong bắp cải cũng như ăn vào không còn tác dụng nhiều. Bạn có thể làm salad bắp cải trộn để ăn nhưng nhớ phải rửa kĩ trước khi dùng.

Bông cải xanh

Bông cải xanh có chứa một lượng lớn hợp chất chống oxy hóa gọi là sulforaphane, có thể giúp ngăn ngừa ung thư, tiểu đường loại 2, bệnh tim, viêm nhiễm, trầm cảm và các tình trạng sức khỏe khác.

Một nghiên cứu được công bố trên tạp chí Journal of Agricultural Food and Chemistry cho thấy cơ thể chúng ta hấp thụ sulforaphane nhanh hơn khi ăn bông cải xanh sống thay vì nấu chín. Tuy nhiên, nếu bạn không thích ăn bông cải xanh sống, hãy thử hấp. Cách nấu đó ít ảnh hưởng đến chất dinh dưỡng nhất.

Hành tây

Hành tây thuộc họ rau allium, có nghĩa là chúng chứa các chất chống kết tập tiểu cầu có thể ngăn ngừa bệnh tim mạch.

Hành chứa nhiều lợi ích cho sức khỏe, bao gồm cả chống ung thư nhờ vào nồng độ cao của quercetin flavonoid. Khi ăn sống, bạn sẽ phát huy tối đa đặc tính chống ung thư của hành tây. Việc ăn chín thông qua các cách chế biến khác nhau sẽ làm giảm lợi ích chống lại bệnh ung thư của các chất phytochemical trong hành tây.

Ớt chuông đỏ

Trong số các loại thực phẩm giúp tăng cường hệ miễn dịch, ớt chuông đỏ là một nguồn cung cấp vitamin C tuyệt vời, chúng chứa gần gấp ba lần lượng vitamin C của quả cam nhưng nhiệt độ cao có thể phá hủy chất dinh dưỡng thiết yếu này. Do đó, ăn sống ớt chuông đỏ sẽ có lợi hơn.

Ớt chuông đỏ có nhiều chất chống oxy hóa hơn bất kỳ loại ớt chuông nào khác, mang lại cho chúng sức mạnh siêu việt trong việc bảo vệ chống lại các loại oxy hóa gây hại cho tế bào dẫn đến ung thư, tiểu đường, Alzheimer và các bệnh khác.
', N'Củ cải đường

Củ cải đường chứa nhiều chất dinh dưỡng lành mạnh như 5 loại vitamin thiết yếu, canxi, sắt, kali và protein. Và chúng chứa nhiều chất xơ và folate (một dạng của vitamin B9). Tuy nhiên, củ cải đường nấu chín sẽ mất 25% lượng folate cũng như các vitamin và khoáng chất khác. Hãy thử nạo một ít củ cải đường lên món salad vừa thêm màu sắc lại tăng dinh dưỡng.

Tỏi: 

Giống như hành, tỏi là một loại rau thuộc nhóm allium cũng có chất chống kết tập tiểu cầu, và điều này cũng có nghĩa là đặc tính chống lại bệnh tim mạch của nó cũng bị ảnh hưởng bởi nhiệt.
', N'Lợi ích sức khỏe bất ngờ khi sử dụng tỏi sống là tính kháng khuẩn. Các nghiên cứu cho thấy, đun sôi tỏi trong 20 phút đã triệt tiêu hoàn toàn hoạt tính kháng khuẩn, và chỉ một phút nhiệt vi sóng đã phá hủy 100% khả năng chống ung thư của tỏi. Giã nát tỏi và để yên 10 phút trước khi đun nóng sẽ khôi phục một phần khả năng chống ung thư, nhưng tỏi nấu chín sẽ không tốt bằng ăn tỏi sống.

Rau mầm

Rau mầm vốn có tác dụng rất tốt đến sức khỏe và chúng ta chỉ nên ăn sống mà không cần phải nấu chín. Vì bản thân rau mầm có chứa nhiều khoáng chất, chất xơ, vitamin cần thiết, nếu nấu chín những chất này sẽ thất thoát đi rất nhiều và bạn ăn vào không còn tác dụng gì nhiều.', CAST(N'2021-10-10' AS Date), N'rau-cu.jpg', N'rau-cu1.jpg', N'leo3.jpg')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Image]) VALUES (N'CT01', N'Thịt', N'ba-chi-2.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Image]) VALUES (N'CT02', N'Cá', N'cate-ca.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Image]) VALUES (N'CT03', N'Trứng', N'cate-trung.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Image]) VALUES (N'CT04', N'Rau củ', N'cate-rau.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Image]) VALUES (N'CT05', N'Trái cây', N'cate-traicay.jpg')
INSERT [dbo].[Coupons] ([Code], [Coupontype], [Couponamount], [Description], [Deletehiden]) VALUES (N'KM0', N'Không giảm', N'0', N'Dùng cho khách hàng ko sài voucher', 1)
INSERT [dbo].[Coupons] ([Code], [Coupontype], [Couponamount], [Description], [Deletehiden]) VALUES (N'KM1', N'Sự kiện ưu đãi 11/11', N'20', N'Thẻ quà tặng tháng 11 an toàn bảo mật, gửi tặng cùng lúc nhiều người, sử dụng tại Ogani.', 0)
INSERT [dbo].[Coupons] ([Code], [Coupontype], [Couponamount], [Description], [Deletehiden]) VALUES (N'KM2', N'Sự kiện mừng năm mới', N'10', N'Giảm 10% với mỗi đơn hàng nhận diệp năm mới 2022 vời nhiều ưu đãi bất ngờ. Chúng ta hãy cùng mong đợi nào.', 0)
INSERT [dbo].[Coupons] ([Code], [Coupontype], [Couponamount], [Description], [Deletehiden]) VALUES (N'KM3', N'Sự kiện sinh nhật Ogani 1 tuổi', N'15', N'Nhân dip sinh nhật Ogani tròn 1 tuổi. Ogani gửi tặng khách hàng của mình voucher giảm 15% cho mỗi đơn hàng. Cảm ơn quý khách hàng đã đồng hành cùng Ogani', 0)
INSERT [dbo].[Coupons] ([Code], [Coupontype], [Couponamount], [Description], [Deletehiden]) VALUES (N'KM4', N'Flash Sale 12/12', N'15', N'Tháng 12 này là ngày cuối cùng của năm 2021. Nhân diệp cuối năm Ogani gửi tặng quý khách hàng của mình những sự kiện ưu đãi hấp dẫn và giảm 15% cho những đơn hàng', 0)
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10108, 10068, 11, CAST(21000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10109, 10069, 23, CAST(15000.000 AS Decimal(15, 3)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10110, 10070, 2, CAST(90000.000 AS Decimal(15, 3)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10112, 10070, 4, CAST(20000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10113, 10071, 7, CAST(20000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10114, 10071, 10, CAST(21000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10115, 10072, 5, CAST(10000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10116, 10072, 18, CAST(13000.000 AS Decimal(15, 3)), 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10117, 10072, 6, CAST(15000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10118, 10072, 23, CAST(15000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10119, 10072, 7, CAST(20000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10120, 10073, 1, CAST(80000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10121, 10073, 5, CAST(10000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10122, 10073, 8, CAST(25000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10123, 10074, 20, CAST(30000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10125, 10075, 9, CAST(90000.000 AS Decimal(15, 3)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10126, 10075, 18, CAST(13000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10127, 10075, 10, CAST(21000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10128, 10076, 18, CAST(13000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10129, 10076, 23, CAST(15000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10130, 10077, 12, CAST(190000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10131, 10078, 2, CAST(90000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10132, 10078, 4, CAST(20000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10133, 10079, 13, CAST(120000.000 AS Decimal(15, 3)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10134, 10079, 15, CAST(30000.000 AS Decimal(15, 3)), 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10135, 10080, 2, CAST(90000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10136, 10080, 4, CAST(20000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10137, 10080, 1, CAST(80000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10138, 10080, 6, CAST(15000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10140, 10082, 5, CAST(10000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10141, 10082, 18, CAST(13000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10142, 10083, 23, CAST(15000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10143, 10084, 14, CAST(35000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10144, 10084, 15, CAST(30000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10145, 10084, 21, CAST(210000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10146, 10085, 20, CAST(30000.000 AS Decimal(15, 3)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10147, 10086, 6, CAST(15000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10148, 10086, 2, CAST(90000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10149, 10087, 23, CAST(15000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10150, 10087, 26, CAST(20000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10151, 10088, 1, CAST(80000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10153, 10088, 4, CAST(20000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10154, 10089, 7, CAST(20000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10155, 10089, 6, CAST(15000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10156, 10089, 8, CAST(25000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10157, 10089, 5, CAST(10000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10158, 10090, 4, CAST(16000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10159, 10090, 1, CAST(76000.000 AS Decimal(15, 3)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10182, 10108, 1, CAST(76000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10184, 10109, 4, CAST(16000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10185, 10110, 1, CAST(76000.000 AS Decimal(15, 3)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10187, 10111, 4, CAST(16000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10196, 10117, 6, CAST(14850.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10197, 10117, 18, CAST(13000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10198, 10118, 6, CAST(14850.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10199, 10118, 18, CAST(13000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10215, 10158, 6, CAST(14850.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10216, 10158, 18, CAST(13000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10232, 10172, 6, CAST(14850.000 AS Decimal(15, 3)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10233, 10172, 18, CAST(13000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10234, 10173, 6, CAST(14850.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10235, 10173, 18, CAST(13000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10237, 10176, 4, CAST(16000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10238, 10176, 1, CAST(76000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10239, 10177, 5, CAST(7500.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10240, 10177, 18, CAST(13000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10254, 10190, 4, CAST(16000.000 AS Decimal(15, 3)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10256, 10190, 1, CAST(76000.000 AS Decimal(15, 3)), 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10068, N'hau', CAST(N'2021-01-15' AS Date), N'09876636552', N'Quận 1', N'DAHUY', N'Thanh toán paypal', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10069, N'hau', CAST(N'2021-02-26' AS Date), N'0998276625', N'Quận 2', N'DAHUY', N'Thanh toán paypal', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10070, N'truc', CAST(N'2021-03-26' AS Date), N'0795034090', N'Quận 2', N'DAHUY', N'Thanh toán paypal', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10071, N'truc', CAST(N'2021-04-26' AS Date), N'0972661511', N'Quận 1', N'DAGIAOHANG', N'Thanh toán paypal', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10072, N'truc', CAST(N'2021-05-26' AS Date), N'0997382911', N'Quận 2', N'DAHUY', N'Thanh toán paypal', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10073, N'truc', CAST(N'2021-06-08' AS Date), N'099847737', N'Quận 2', N'DANGXULY', N'Thanh toán paypal', N'KM0')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10074, N'truc', CAST(N'2021-07-26' AS Date), N'0765144231', N'Long An', N'DANGXULY', N'Thanh toán paypal', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10075, N'truc', CAST(N'2021-04-26' AS Date), N'098665241', N'Quận 1', N'DAGIAOHANG', N'Thanh toán paypal', N'KM0')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10076, N'truc', CAST(N'2021-09-02' AS Date), N'0998772223', N'Quận 2', N'DAGIAOHANG', N'Thanh toán trực tiếp', N'KM0')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10077, N'truc', CAST(N'2021-10-26' AS Date), N'0798655412', N'Quận 2', N'DAGIAOHANG', N'Thanh toán trực tiếp', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10078, N'truc', CAST(N'2021-11-26' AS Date), N'099372662', N'Thanh Hóa', N'DANGGIAOHANG', N'Thanh toán trực tiếp', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10079, N'truc', CAST(N'2021-12-26' AS Date), N'0797473633', N'Quận 1', N'DANGGIAOHANG', N'Thanh toán trực tiếp', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10080, N'hau', CAST(N'2021-01-26' AS Date), N'0977727721', N'Bình Phước', N'DAGIAOHANG', N'Thanh toán paypal', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10081, N'hau', CAST(N'2021-02-26' AS Date), N'0997727721', N'Đồng Nai', N'DAHUY', N'Thanh toán trực tiếp', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10082, N'hau', CAST(N'2021-02-26' AS Date), N'0974746373', N'Quận 1', N'DAGIAOHANG', N'Thanh toán trực tiếp', N'KM0')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10083, N'truc', CAST(N'2021-03-26' AS Date), N'099574733', N'Vĩnh Phúc', N'DAGIAOHANG', N'Thanh toán trực tiếp', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10084, N'truc', CAST(N'2021-05-26' AS Date), N'09874776332', N'Quận 1', N'DAGIAOHANG', N'Thanh toán trực tiếp', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10085, N'truc', CAST(N'2021-06-26' AS Date), N'0998377363', N'Tiền Giang', N'DAGIAOHANG', N'Thanh toán trực tiếp', N'KM0')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10086, N'truc', CAST(N'2021-07-26' AS Date), N'0997466466', N'Quận 1', N'DAGIAOHANG', N'Thanh toán trực tiếp', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10087, N'truc', CAST(N'2021-08-26' AS Date), N'09876455453', N'Trà Giang', N'DANGGIAOHANG', N'Thanh toán trực tiếp', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10088, N'hau', CAST(N'2021-11-26' AS Date), N'0123456789', N'Quận 12', N'DANGXULY', N'Thanh toán paypal', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10089, N'truc', CAST(N'2021-02-26' AS Date), N'0147258369', N'Quận 9', N'DANGXULY', N'Thanh toán paypal', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10090, N'hau', CAST(N'2021-11-27' AS Date), N'0123456789', N'Quận Cam', N'DAHUY', N'Thanh toán trực tiếp', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10108, N'hau', CAST(N'2021-11-27' AS Date), N'0123456789', N'Quận 9', N'DANGXULY', N'Thanh toán trực tiếp', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10109, N'hau', CAST(N'2021-11-27' AS Date), N'0123456798', N'Quận 9', N'DANGXULY', N'Thanh toán paypal', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10110, N'hau', CAST(N'2021-11-27' AS Date), N'0147258369', N'Quận Cam', N'DANGXULY', N'Thanh toán trực tiếp', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10111, N'hau', CAST(N'2021-11-27' AS Date), N'0456123789', N'Quận Cam', N'DAGIAOHANG', N'Thanh toán paypal', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10117, N'truc', CAST(N'2021-12-06' AS Date), N'0123456789', N'Quận Cam', N'DANGXULY', N'Thanh toán trực tiếp', N'KM0')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10118, N'truc', CAST(N'2021-12-06' AS Date), N'0123456987', N'Quận 1', N'DANGXULY', N'Thanh toán trực tiếp', N'KM2')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10158, N'truc', CAST(N'2021-12-06' AS Date), N'0123456789', N'Quận 9', N'DAGIAOHANG', N'Thanh toán trực tiếp', N'KM0')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10172, N'truc', CAST(N'2021-12-07' AS Date), N'0147258369', N'Quận 9', N'DANGXULY', N'Thanh toán trực tiếp', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10173, N'truc', CAST(N'2021-12-08' AS Date), N'01472583369', N'Quận 9', N'DANGGIAOHANG', N'Thanh toán trực tiếp', N'KM0')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10176, N'truc', CAST(N'2021-12-08' AS Date), N'0147258369', N'Quận 9', N'DANGXULY', N'Thanh toán paypal', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10177, N'truc', CAST(N'2021-12-09' AS Date), N'0795034090', N'Quận 9', N'DANGXULY', N'Thanh toán trực tiếp', N'KM1')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [NumberPhone], [Address], [Statuss], [Method], [Code]) VALUES (10190, N'truc', CAST(N'2021-12-21' AS Date), N'0123698745', N'test', N'DANGXULY', N'Thanh toán paypal', N'KM0')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (1, N'CT01', N'Thịt heo ba chỉ', CAST(80000 AS Decimal(15, 0)), N'kg', 5, N'ba-chi-1.jpg', N'ba-chi-2.jpg', N'ba-chi-3.jpg', N'thit-ba-chi.jpg', N'Thịt ba rọi hay còn gọi là thịt ba chỉ là phần thịt có tối thiểu 1 chỉ nạc. Với hương vị thịt béo hài hòa đặc trưng, thịt ba rọi là phần thịt được ưa chuộng nhất cho mọi bữa ăn của gia đình với những cách chế biến món ăn khác nhau như luộc, chiên, kho, nướng...đều phù hợp.', N'Thịt ba chỉ (hay còn gọi là ba rọi) là phần thịt heo được cắt ra từ bụng, không có xương và nhiều mỡ. Sỡ dĩ người ta thường gọi thịt ba chỉ là bởi khi cắt ngang sẽ thấy được phần thịt và mỡ xen kẽ 3 lớp với nhau theo thứ tự lớp thịt, mỡ rồi lại đến lớp thịt.

Trong ẩm thực Đông Á, Châu Âu và Bắc Mỹ, ba chỉ được sử dụng để chế biến thành các món ăn đa dạng, phong phú.', N'Ba rọi heo của thương hiệu CP đạt các tiêu chuẩn về an toàn toàn thực phẩm, đảm bảo chất lượng, độ tươi ngon. Thịt heo mềm, vân nạc, mỡ rõ ràng nên rất phù hợp làm nguyên liệu để nấu thịt kho hột vịt, thịt nướng BBQ. Có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (2, N'CT01', N'Thịt đùi heo', CAST(90000 AS Decimal(15, 0)), N'kg', 10, N'thit-dui-heo.jpg', N'dui-heo-1.jpg', N'dui-heo-2.jpg', N'dui-heo-3.jpg', N'Hàng tươi, khách hàng đem về bảo quản ngăn mát hoặc ngăn đông tủ lạnh.', N'Thịt lợn hay thịt heo là phần cơ của con lợn. Đây là một loại thực phẩm được xem là "lành" nhất trong các loại thực phẩm, thịt heo rất phổ biến trong bữa cơm gia đình Việt.
Và có lẽ, thịt heo khiến người ta ăn hoài mà không ngán cũng nhờ mỗi loại thịt heo đều có vị ngon riêng.', N'Nguồn nguyên liệu:
Đàn heo được lựa chọn kỹ càng từ trại chăn nuôi .. Heo đưa vào giết mổ phải là heo khỏe mạnh, tuyệt đối không có mầm bệnh. Trước khi đưa vào giết mổ, heo được nghỉ ngơi trong thời gian ngắn vài tiếng để chất lượng thịt heo sau khi giết mổ đạt chất lượng cao nhất. Sau khi giết mổ, heo bên đều được Cơ quan thú y nhà nước kiểm tra, đóng dấu trước khi đưa ra thị trường tiêu thụ.




Hệ thống kiểm soát:
Heo luôn được kiểm soát từ khâu nuôi nhốt đến khi giết mổ bởi Cục thú y, Trung tâm thú y TPHCM và Chi cục thú y địa phương.




Dây chuyền giết mổ :Được cơ quan kiểm định độc lập kiểm tra và cấp phép giết mổ theo yêu cầu của UBND TPHCM.




Quy trình giết mổ, pha lóc và bảo quản thịt heo:
Luôn được đặt dưới sự kiểm soát chặt chẽ của Chi cục thú y TPHCM. Thịt heo được phân phối đến các hệ thống bán lẻ ở nhiệt độ mát nhằm đảm bảo điều kiện vệ sinh tốt nhất cho sản phẩm, giúp người tiêu dùng mua được sản phẩm đạt chất lượng.









Đặc tính sản phẩm 500GR BA RỌI HEO TƯƠI ( BA RỌI THƯỜNG) - THỊT HEO TƯƠI NÓNG TÂN GIÀU FOOD - HCM
Thương hiệuNo BrandSKU1465177901_VNAMZ-6077555257Hữu cơCóNhu cầu dinh dưỡngOrganicCách đóng góiTúiNước sản xuấtViệt NamLoại đóng góiGiường đơnDelivery Option InstantCó', 0, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (4, N'CT03', N'Trứng gà', CAST(20000 AS Decimal(15, 0)), N'hộp', 20, N'trung-ga.jpg', N'trung-ga-1.jpeg', N'trung-ga-2.jpg', N'trung-ga-3.jpg', N'Đây là thực phẩm cung cấp giàu chất chống oxy hóa và các chất quan trọng cho cơ thể, có lợi cho mắt và não bộ, đồng thời cũng bảo vệ cơ thể khỏi các bệnh liên quan đến tuổi tác.', N'Các loại trứng nói chung là nguồn cung cấp protein tuyệt vờiCó nhiều món ăn ngon được chế biến từ trứng như trứng luộc, trứng chiên, trứng ốp la, trứng vịt muối hoặc trứng bắc thảo..', N'Đây là thực phẩm cung cấp giàu chất chống oxy hóa và các chất quan trọng cho cơ thể, có lợi cho mắt và não bộ, đồng thời cũng bảo vệ cơ thể khỏi các bệnh liên quan đến tuổi tác.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (5, N'CT04', N'Cải ngọt', CAST(10000 AS Decimal(15, 0)), N'kg', 25, N'cai-4.jpg', N'cai-1.jpg', N'cai-2.jpg', N'cai-3.jpg', N'Cải ngọt có chất aibumin, chất đường, vitamin B1, axít bốc hơi, axít pamic, coban, iod. 
Rễ và lá có nhiều chất kiềm thúc đẩy sự tiêu hoá, thúc đẩy cơ thể tiếp thu aibumin bảo vệ gan, chống mỡ trong gan.', N'Ở Việt Nam, cải ngọt thường được chế biến thành các món ăn như cải ngọt xào thịt, canh cải ngọt nấu tôm, rau cải ngọt luộc chấm xì dầu, cải ngọt xào thịt bò, 
cải ngọt xào chân gà..., làm lẩu cá, lẩu thịt.

Chú ý khi dùng:

- Nên chọn mua cải lá nguyên vẹn, xanh tươi, cuống thẳng, non. Mắt lá sáng bóng, thẳng nhọn, có sức căng.
- Rau khi rửa sạch và thái rau cải, phải nấu ngay, nếu để quá lâu rau sẽ bị mất chất dinh dưỡng. Nếu ăn rau còn thừa tốt nhất nên đổ đi vì nếu để lâu bạn sẽ ăn phải chất muối axit nitrat là chất gây ung thư', N'Trồng tại Thái Nguyên', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (6, N'CT04', N'Cải bó xôi', CAST(15000 AS Decimal(15, 0)), N'kg', 1, N'cai-bo-xoi.jpg', N'bo-xoi1.jpg', N'bo-xoi2.jpg', N'bo-xoi3.jpg', N'Cải bó xôi có mức calo và chất béo thấp, nhưng giàu dưỡng chất và chất xơ. Đây là các yếu tố giúp hỗ trợ giảm cân cực hiệu quả, đồng thời ngăn ngừa táo bón, kiểm soát đường huyết tốt', N'Chúng chứa nhiều vitamin C, một chất chống oxy hóa mạnh; đồng thời cải bó xôi cũng giàu folate, giúp duy trì ADN khỏe mạnh, đặc biệt là ngừa ung thư", 
 Karen Collins, cố vấn dinh dưỡng cho Viện nghiên cứu ung thư Mỹ, cho biết', N'Cải bó xôi chứa nhiều vitamin K, duy trì sức khỏe ổn định của xương. 
 Một chén cải bó xôi luộc chín cung cấp nhiều hơn 10 lần nhu cầu vitamin K hằng ngày của một người. Vitamin K giúp giảm sự kích hoạt osteoclast, một loại tế bào gây phá vỡ
 cấu trúc xương trong thời gian ngắn. Bên cạnh đó, vitamin K cũng thúc đẩy sự tổng hợp osteocalcin, một loại protein cần thiết cho việc duy trì sự chắc khỏe cho xương.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (7, N'CT04', N'Cải nồi', CAST(20000 AS Decimal(15, 0)), N'kg', 3, N'bap-cai-2.jpg', N'cainoi1.jpg', N'cainoi-2.jpg', N'cainoi-3.jpg', N'Bắp cải và các loại rau cùng họ có chứa một chất có thể chống lại tế bào ung thư trong cơ thể. Chúng là những chất kích thích các enzym để kiềm chế tốc độ tăng trưởng khối u', N'Bắp cải là loại rau rất quen thuộc Thực phẩm bổ dưỡng cho người cao tuổi chính là bí quyết vàng giúp cải thiện tình hình sức khỏe và tăng tuổi thọ của người lớn tuổi bên
 cạnh việc tập thể dục, giữ cho tinh thần thoải mái, đây lại là loại rau bổ dưỡng, vừa dùng để ăn, chữa bệnh, vừa dùng để làm đẹp… 
 Thành phần dinh dưỡng và lượng vitamin trong bắp cải nhiều gấp 4,5 lần so với cà rốt và 3,6 lần so với khoai tây.', N'Hàm lượng kali trong bắp cải rất nhiều, tốt cho sức khỏe tim mạch và duy trì lưu thông máu khỏe mạnh đồng thời tránh tắc nghẽn các mạch máu đến tim. 
 Kali cũng là một hợp chất tốt để làm giảm các triệu chứng của bệnh tăng huyết áp. Hàm lượng kali cao trong bắp cải là một trong những loại 
 thực phẩm được khuyến cáo tốt cho bệnh tăng huyết áp', 0, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (8, N'CT05', N'Cam sành', CAST(25000 AS Decimal(15, 0)), N'kg', 5, N'cam-sanh.png', N'cam-sanh1.jpg', N'cam-sanh2.jpg', N'cam-sanh3.jpg', N'Cam sành là loại trái cây vốn được nhiều người yêu thích, đặc biệt là trẻ nhỏ và chị em phụ nữ, bởi cam rất bổ dưỡng và cao cấp.', N'Trái cam sành có đặc điểm mang màu xanh sậm đến khi chín thì ngả màu vàng, dáng tròn dẹt, hương vị chua ngọt, thị trái nhiều nước. Một đặc điểm nữa đó là cam sành có khá nhiều hạt nên thường được dùng phổ biến để vắt cam.

Vỏ ngoài cam sần sùi, dày 3-5mm, trọng lượng trung bình mỗi trái khoảng 275gram. Chu kỳ khai thác là 10-15 năm. Giống cây này được trồng nhiều nhất tại tỉnh Hòa Bình và Bắc Giang, nó có thể đem lại hiệu quả kinh tế vượt trội hơn hẳn so với nhiều loại hoa quả khác.', N'Bí quyết chọn cam sành tươi, ngon và tốt cho sức khỏe hàng đầu mà các bà nội trợ cần phải ghi nhớ đó là nên mua cam vào đúng mùa. Nếu mua cam trái mùa thường tiềm ẩn những nguy hiểm gây hại cho cơ thể vì rất có thể cam được phun thuốc sâu và bảo quản bằng các hóa chất, không tốt cho sức khỏe.

Cam sành hầu như có sẵn quanh năm tuy nhiên thời điểm chính vụ thường vào dịp cuối năm. Thời điểm hiện tại, cam sành đã bắt đầu được bày bán rất tại các cửa hàng lớn nhỏ, trong siêu thị…', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (9, N'CT05', N'Bưởi năm roi', CAST(90000 AS Decimal(15, 0)), N'kg', 7, N'buoi-nam-roi.jpg', N'buoi-nam-roi1.jpg', N'nam-roi2.jpg', N'nam-roi3.jpg', N'Bưởi năm roi được công nhận là giống sạch bệnh, cho năng suất cao và chất lượng tốt, ngon nhất trong các giống bưởi hiện nay, thích nghi với điều kiện khí hậu tại các vùng sinh thái khác nhau ở nước ta. Quả có núm, khi chín màu vàng nhạt, vỏ mỏng, ráo nước, ít hạt, vị chua ngọt, thơm', N'Bưởi năm roi được công nhận là giống sạch bệnh, cho năng suất cao và chất lượng tốt, ngon nhất trong các giống bưởi hiện nay, thích nghi với điều kiện khí hậu tại các vùng sinh thái khác nhau ở nước ta. Quả có núm, khi chín màu vàng nhạt, vỏ mỏng, ráo nước, ít hạt, vị chua ngọt, thơm. Trọng lượngquả trung bình từ 900 – 1.100g/quả. Phù hợp ăn tươi, chế biến, tiêu thụ nội địa và xuất khẩu nhiều nước. Sau 2 năm trồng cho ra quả, thu hoạch tập trung với chu kỳ khai thác kinh doanh 15 năm.', N'Bưởi năm roi là một trong những đặc sản nổi tiếng tại Vĩnh Long, có nguồn gốc từ xã Mỹ Hòa, huyện Bình Minh. Đây được xem là một vùng đất được phù sa từ sông Hậu, sông Trà Von bồi đắp dồi dào cộng với điều kiện thời tiết vô cùng thuận lợi cho quá trình sinh trưởng và phát triển của giống bưởi này.

Theo một số tài liệu cổ, giống bưởi năm roi do ông Trần Văn Bưởi (1918 - 1990), người làng Mái Dầm, nay thuộc xã Phú Hữu A, huyện Châu Thành, Hậu Giang tìm thấy. Lúc sinh thời, ông Bưởi làm nghề buôn bán trên sông, lúc dừng ghe ở Tân Châu thì vớt được một loại trái cây lạ trên sông. Loại quả này có da màu xanh, ruột đỏ vàng, ăn vào có vị ngọt thanh, mọng nước nên ông đã lấy hạt mang về trồng tại Phú Hữu.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (10, N'CT05', N'Dưa hấu', CAST(21000 AS Decimal(15, 0)), N'kg', 9, N'dua-hau.jpg', N'dua-hau1.jpg', N'dua-hau2.jpg', N'dua-hau-3.jpg', N'Dưa hấu có vị ngọt mát, chứa nhiều nước và vitamin. Vì vậy, vào những ngày nắng nóng, đây luôn là loại trái cây được lựa chọn sử dụng nhiều nhất.', N'Dưa hấu hầu như được bán quanh năm. Tuy nhiên, cũng như nhiều loại trái cây khác, việc mua dưa hấu cũng cần đúng vụ mùa thì mới chọn được những quả ngon ngọt.Bên trong quả dưa có chứa 85 – 95% là nước, còn lại chủ yếu là đường. Vị ngọt của đường là kết quả của quá trình lá quang hợp và được dự trữ lại bên trong quả.', N'Thời tiết miền Bắc có sự phân chia rõ rệt giữa các mùa trong năm. Vì vậy, dưa hấu thường được thu hoạch vào mùa hè, khi thời tiết khô hanh và nắng nóng.

Vậy nên, nếu ai ở miền Bắc thì mua dưa hấu vào mùa hè sẽ dễ dàng chọn được dưa hấu ngon ngọt hơn.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (11, N'CT04', N'Dưa leo', CAST(21000 AS Decimal(15, 0)), N'kg', 0, N'leo.jpg', N'dua-leo-1.jpg', N'dua-leo-2.jpg', N'leo3.jpg', N'Dưa chuột không chỉ là loại rau củ ngon với nhiều món ăn được chế biến quen thuộc, mà còn được sử dụng trong mục đích làm đẹp khi đắp trực tiếp lên da hoặc dùng làm nước ép để uống. ', N'Dưa chuột, còn gọi là dưa leo, có thân cây leo bám rễ dưới đất, mọc và phát triển trên giàn (hoặc các khung đỡ). Quả dưa chuột hình trụ, thuôn dài với hai đầu thuôn nhọn, có chiều dài đến 62cm và đường kính tầm khoảng 10cm.

Vì chứa đến 95% là nước nên dưa chuột được xem là một loại quả mọng nhưng sở hữu lớp vỏ cứng (hoặc mỏng tùy theo giống) và không xuất hiện các đường phân chia bên trong quả. Nhìn chung, kết cấu giống với quả bí đao nên dưa chuột được xem là loại rau củ nhiều hơn là rau quả.', N'Nguồn gốc
Dưa chuột, tên khoa học là Cucumis sativus, thuộc họ Bầu bí, là loại rau củ được trồng từ rất lâu và có nguồn gốc từ khu vực Nam Á.

Hiện nay, dưa chuột được trồng phổ biến trên toàn thế giới, trong đó những nước có năng suất trồng dưa chuột lớn nhất là Trung Quốc, Hà Lan, Ai Cập, Nga, Mỹ, Nhật Bản, Tây Ban Nha và Thổ Nhĩ Kỳ.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (12, N'CT01', N'Vịt nguyên con mần sẵn', CAST(190000 AS Decimal(15, 0)), N'kg', 0, N'thit-vit.jpg', N'vit-nc.jpg', N'vit-nguyen-con.jpg', N'vit-nc1.jpg', N'Khối lượng có thể dao động từ >=5kg
Vịt được chăn thả tự nhiên, cho thịt chắc, ngọt
Có thể chế biến thành nhiều món ăn ngon khác nhau
Cung cấp nhiều dưỡng chất cho cơ thể', N'Vịt nguyên con Ba Huân nhập bán có nguồn gốc rõ ràng, đảm bảo vệ sinh an toàn thực phẩm. Vịt nguyên con được lựa chọn từ những nông trại chăn nuôi lớn, được kiểm dịch thường xuyên và chăm sóc theo quy trình hiện đại, an toàn. Đối với những bà nội trợ bận rộn, không có nhiều thời gian để nấu nướng thì Vịt nguyên con chính là lựa chọn giúp tiết kiệm thời gian. Vịt đã được làm sạch theo quy trình khép kín và đóng gói bao bì cẩn thận. Người dùng chỉ cần mua về và chế biến món ăn theo ý thích.', N'THÔNG TIN SẢN PHẨM

Xuất xứ: Công Ty Cổ Phần Ba Huân

Đơn vị tính: Kg

Sử dụng: Dùng làm nguyên liệu chế biến các món ăn tùy thích

Bảo quản: Bảo quản ở ngăn mát tủ lạnh.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (13, N'CT01', N'Gà công nghiệp nguyên con mần sẵn', CAST(120000 AS Decimal(15, 0)), N'kg', 0, N'thit-ga-cn1.jpg', N'ga-tha-vuon.jpg', N'thit-ga-cn1.jpg', N'ga-cn-3.jpg', N'Hình ảnh con gà gắn liền với nền văn hóa ẩm thực của Việt Nam, nó không chỉ xuất hiện trong các bữa ăn hàng ngày mà còn là món chủ đạo trong mâm cỗ các ngày lễ, tết.', N'Thịt gà được xem là thực phẩm có nhiều chất dinh dưỡng rất tốt cho sức khỏe và được bày bán ở khắp các chợ, siêu thị, cửa hàng tiện lợi không chỉ nguồn hàng trong nước mà gà nhập khẩu cũng được người dân ưa chuộng. Thịt gà rất dễ chế biến thành nhiều món khác nhau, để đơn giản nhất và truyền thống nhất ở nước ta vẫn là món thịt gà luộc, tuy nhiên cách lựa chọn gà ngon hay địa chỉ mua hàng uy tín ở đâu thì bạn có thể tham khảo bài viết dưới đây nhé!Thịt gà có chứa nhiều dưỡng chất rất tốt cho sức khỏe, nó có tác dụng bồi bổ cho người bị bệnh lâu ngày, suy yếu không hấp thụ được thức ăn.
Các chất dinh dưỡng chủ yếu trong thịt gà này bao gồm albumin, chất béo, vitamin A, B1, B2, C, E, axit cùng các khoáng chất như canxi, photpho, sắt.
Theo các nghiên cứu chỉ ra rằng trong thịt gà có tính ôn ngọt, không độc, bổ dưỡng, lành mạnh phổi giúp trừ phong, dạ dày bị phong hàn. Đặc biệt, thịt gà là loại thực phẩm bổ âm cho tỳ vị, bổ khí, huyết và thận.
', N'Xuất xứ: Hàn Quốc, Mỹ...
Thương hiệu: Shinwoo, Singreen,...
Loại sản phẩm: Đồ đóng gói
Tên sản phẩm: Gà nguyên con
Quy cách đóng gói: Bao 300g
Quy cách bảo quản: -18oC
Hạn sử dụng: 12 tháng kể từ ngày sản xuất', 0, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (14, N'CT01', N'Cánh gà', CAST(35000 AS Decimal(15, 0)), N'kg', 0, N'canh-ga-1.jpg', N'canh-ga-2.jpg', N'canh-ga-3.jpg', N'canh-ga.jpg', N'Thực phẩm Gia Phú Thành chúng tôi là đơn vị hoạt động nhiều năm trong lĩnh vực thực phẩm sạch, và phục vụ rất rất nhiều khách hàng tại tphcm. Do đó chúng tôi nói không với chặt chém và nói không với thực phẩm bẩn. bạn có thể tin tưởng và lựa chọn sản phẩm mà không cần lo lắng về giá.', N'Thay vì việc bạn phải đến chợ và lựa chọn cánh gà thì bạn có thể đặt hàng trực tuyến trên website của chúng tôi để tìm kiếm cánh gà theo ý muốn. ngoài ra cánh gà đông lạnh đã được làm sạch do đó khi về nhà bạn chỉ cần thỏa sức để nấu những món ăn ngon mà không phải biết làm gà. Từ dó giúp bạn tiết kiệm thời gian và công sức mà vẫn có được thực phẩm thơm ngon, bổ dưỡng.', N'Giao hàng tận nơi nhanh chóng
Miễn phí khi giao hàng trong nội thành tphcm
Chất lượng được cam kết bởi chính công ty
Giá cả hấp dẫn , đa dạng sự lựa chọn về thực phẩm sạch', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (15, N'CT01', N'Đùi gà', CAST(30000 AS Decimal(15, 0)), N'kg', 0, N'dui-ga-1.jpg', N'dui-ga-2.jpg', N'dui-ga-3.jpg', N'dui-ga-4.jpg', N' Đùi gà , tỏi gà ,Thịt gà chứa nhiều chất dưỡng chất có lợi cho sức khoẻ. Đồng thời, loại thịt này còn có thể chế biến thành rất nhiều món ăn ngon như: hấp, la-gu, rô-ti, cà-ri...Nếu chỉ thích ăn cánh hoặc chân gà, bạn hãy đập bộ phận này cho hơi giập, ướp với sa tế, hạt nêm, sau đó nướng than. Dùng với rau răm và muối tiêu quất, mùi vị rất thơm. Ngoài ra, bạn còn có thể xé nhỏ thịt gà, trộn với bắp cải nhuyễn làm gỏi...', N'Theo các nhà dinh dưỡng học, ngoài những chất albumin, chất béo, thịt gà còn có các vitamin A, B1, B2, C, E, axit, canxi, photpho, sắt. Đây là loại thực phẩm chất lượng cao, cơ thể con người dễ hấp thu và tiêu hoá.Theo Đông Y, thịt gà có tính ôn ngọt, không độc, bổ dưỡng, lành mạnh phổi. Loại thịt này còn chữa băng huyết, xích bạch đới, lỵ, ung nhọt, là loại thực phẩm bổ âm cho tỳ vị, bổ khí, huyết và thận.

Đặc biệt, thịt gà có tác dụng bồi bổ cao cho người bị bệnh lâu ngày, dạ dày bị phong hàn, suy yếu không hấp thu được thức ăn. Ngoài bổ khí huyết, thịt gà còn giúp trừ phong.Bạn có thể hầm gà với các vị thuốc như: táo tàu, kỷ tử, hải sâm, nhãn nhục, hoài sơn... hoặc nhồi cam thảo và ngải cứu vào gà ác.Đây là loại thịt ngon, bổ dưỡng, nhưng không phải ai cũng biết rõ công dụng của nó đối với sức khoẻ.Thịt gà tốt cho não bộ, làm giảm stress', N'Hàm lượng protein và phức hợp của amino axit trong thịt gà có ảnh hưởng tích cực đến não bộ, làm phấn chấn tinh thần, giảm sự lo lắng, stress cũng như có tác dụng cải thiện huyết áp và nhịp tim.Tuỳ theo sở thích, bạn có thể chế biến thịt gà theo bất cứ công thức nào. Bạn cũng có thể hết hợp gà với nhiều nguyên liệu khác. Tuy nhiên, theo dân gian, thịt gà kỵ với rau kinh giới nên bạn cẩn thận khi kết hợp.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (16, N'CT01', N'Thịt bò', CAST(180000 AS Decimal(15, 0)), N'kg', 0, N'bo-1.jpg', N'bo-2.jpg', N'thit-bo-1.jpg', N'thit-bo2.jpg', N'Thịt bò tươi là thịt không có màu đỏ sẫm, mỡ bò phải có màu vàng và cứng tự nhiên, không lấy những miếng có mỡ mềm. Không mua những miếng thịt bò có màu tái xanh, có nốt trắng tròn lốm đốm xen lẫn giữa các thớ thịt. Đây là dấu hiệu của bò nhiễm sán, gạo hoặc một số loại bệnh khác. Thịt có màu đỏ sậm mà màu vàng đậm, thớ to dễ là bò già, thịt sẽ rất dai.', N'Thông thường, nhứng miếng thịt bị bơm nước nhìn sẽ ướt, nhoáng hoặc bóng nước hơn là thịt không bơm nước. Thịt không bơm nước nhìn bằng mắt thường sẽ thấy hơi khô trên bề mặt tiếp xúc với không khí. Nếu là mùa hè, thịt để ngoài khoảng 15 phút mà chưa cắt thì có vẻ se lại, không bị dính chứng tỏ đây là thịt tươi, không bơm nước.', N'Việc lựa chọn cửa hàng, thương hiệu uy tín để mua thịt tươi là điều rất quan trọng. Nên ưu tiên mua sản phẩm tại các cửa hàng thực phẩm sạch, siêu thị hoặc đại lý lớn. Việc lựa chọn những cửa hàng uy tín sẽ đảm bảo an toàn vệ sinh thực phẩm, truy xuất nguồn gốc, điều kiện bảo quản hơn so với các cửa hàng, sạp hàng bán lẻ tại các chợ truyền thống. Có thể lựa chọn các thương hiệu uy tín về sản phẩm thịt bò như BeefDaidy. Đây là thương hiệu chuyên sản xuất và phân phối thịt bò mát chuẩn Úc với chất lượng ngọt mềm, thơm ngon, giữ trọn dinh dưỡng và sạch an lành.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (17, N'CT04', N'Cà chua', CAST(30000 AS Decimal(15, 0)), N'kg', 8, N'ca-chua.jpg', N'ca-chua-1.jpg', N'ca-chua-2.jpg', N'ca-chua3.jpg', N'Cà chua có tên khoa học Solanum lycopersicum, có nguồn gốc từ Nam Mỹ. Mặc dù về mặt thực vật học, cà chua là một loại trái cây nhưng nó lại thường được chế biến và sử dụng như một loại rau.', N'Cà chua thường có màu đỏ khi chín nhưng cũng có một số màu sắc khác như vàng, cam, xanh lá cây và tím. Có nhiều loại cà chua với hình dáng và hương vị khác nhau.

Thành phần dinh dưỡng của cà chua

Hàm lượng nước của cà chua khoảng 95%. 5% còn lại chủ yếu bao gồm carbohydrate và chất xơ cùng nhiều vitamin và khoáng chất khác.', N'Cà chua là một nguồn cung cấp chất xơ dồi dào. Hầu hết các chất xơ (87%) trong cà chua là dạng không hòa tan, ở dạng hemicellulose, cellulose và lignin.

Cà chua cũng chứa rất nhiều vitamin và khoáng chất, bao gồm:

- Vitamin C: Vitamin này là một chất dinh dưỡng thiết yếu và chất chống oxy hóa . Một quả cà chua cỡ trung bình có thể cung cấp khoảng 28% lượng tiêu thụ hàng ngày tham khảo (RDI) của vitamin C.

- Kali: Là một khoáng chất thiết yếu, có lợi cho việc kiểm soát huyết áp và ngăn ngừa bệnh tim .

- Vitamin K1 : Còn được gọi là phylloquinone, rất quan trọng đối với quá trình đông máu và sức khỏe của xương.

- Folate (vitamin B9): Rất quan trọng đối với sự phát triển bình thường của mô và chức năng tế bào, đặc biệt quan trọng đối với phụ nữ mang thai.

- Vitamin A : Tốt sức sức khỏe đôi mắt.

- Một số khoáng chất khác: canxi, sắt, magie, phốt pho, kẽm...', 0, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (18, N'CT05', N'Dâu tây Đà Lạt', CAST(13000 AS Decimal(15, 0)), N'kg', 0, N'dautay.jpg', N'dau-tay-1.jpg', N'dau-tay-2.jpg', N'dau-tay3.jpg', N'Dây tây được ưa chuộng không chỉ vì nó có vị thơm ngon, mà nó còn là loại trái cây rất có lợi cho sức khỏe, ngoài ra nó còn cung cấp nguồn vitamin cho cơ thể khá cao', N'Có rất nhiều loại dâu tây nhưng chủ yếu là dâu tây đỏ, khi chín nó có màu đỏ vô cùng đẹp mắt,vỏ mỏng, thịt dày,mọng nước, hạt nhỏ li ti có thể ăn được. Hơn thế, mùi thơm của dâu tây rất dễ chịu, cuốn hút.
Dâu tây Đà Lạt được trồng trong đất thịt nhẹ, chất hữu cơ cao, đất ẩm nhưng thoát nước tốt, độ pH từ 6 đến 7.
Dâu tây Đà Lạt phát triển thuận lợi trong khí hậu ôn đới với nhiệt độ từ 18 – 26°C và tốt nhất nên trồng ở nơi có ánh nắng trực tiếp khoảng nửa ngày. Chính vì thế tại các vườn dâu tây, người dân thường trồng trong chậu hoặc treo để cây phát triển tốt nhất.
Giá trị lớn nhất của quả dâu tây là tác dụng chữa bệnh mà người ta không tìm thấy trong bất kỳ loại thực phẩm nào khác. Trong quả dâu tây có chứa các chất bảo vệ, chống ôxy hóa nhiều gấp 10 lần những trái cây khác.
Dâu tây Đà Lạt thường chín nhiều vào mùa xuân, trái to bằng ngón chân cái. Dù dâu tây đem lại nhiều lợi ích cho sức khỏe, nhưng thật tiếc là việc dùng dâu tây chưa phổ biến ở Việt Nam, chỉ khi khách du lịch lên Đà Lạt mới mua vài ký về làm quà tặng người thân.', N'Dâu tây Đà Lạt từ lâu đã trở thành “đặc sản” mà bất cứ ai cũng đều mặc định mua làm quà mỗi lần ghé thăm Đà Lạt. Khí hậu, thổ nhưỡng tại thành phố Cao Nguyên này cho chất lượng cũng như mùi vị trái dâu rất đặc biệt. Hiện nay, tại Đà Lạt có khá nhiều giống dâu tây được trồng (cả ngoài trời và canh tác trong nhà kính), Dalavi trân trọng mang đến cho quý khách hàng giống dâu được nhiều người lựa chọn nhất hiện nay: Dâu tây Đà Lạt giống Mỹ Đá.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (19, N'CT04', N'Củ cải cà rốt', CAST(32000 AS Decimal(15, 0)), N'kg', 7, N'ca-rot.jpeg', N'ca-rot-1.jpg', N'ca-rot-2.jpg', N'ca-rot-3.png', N'Là một loại củ rất quen thuộc trong các món ăn của người Việt. Loại củ này có hàm lượng chất dinh dưỡng và vitamin A cao, được xem là nguyên liệu cần thiết cho các món ăn dặm của trẻ nhỏ, giúp trẻ sáng mắt và cung cấp nguồn chất xơ dồi dào.', N'Cà rốt không chỉ là loại củ quen thuộc trong các món ăn trong gia đình mà còn là vị thuốc quý, rất tốt cho sức khỏe. Với hàm lượng chất dinh dưỡng và vitamin A cao, cà rốt được xem là một nguyên liệu cần thiết cho các món ăn dặm của trẻ nhỏ, giúp trẻ sáng mắt và cung cấp nguồn chất xơ dồi dào. 
Ngoài ra, cà rốt còn được xem là một "thần dược" trong quá trình chăm sóc da của phụ nữ. Chỉ với những bước làm đơn giản là bạn đã có ngay hỗn hợp mặt nạ cà rốt - mật ong giúp ngăn ngừa mụn, làm sáng da và cải thiện làn da sạm và lão hóa. ', N'Các món ăn chế biến từ cà rốt
 Cà rốt có thể chế biến thành nước ép cà rốt cam và củ dền, nước ép cà rốt và cà chua, sinh tố cà rốt. Ngoài ra, cà rốt cũng có thể làm cà rốt, củ cải chua ăn kèm với thịt nguội, chả lụa cho các bữa tiệc. Một số món ăn từ cà rốt như sau: 
Các loại cháo bổ dưỡng cho trẻ như cháo tim heo cà rốt, cháo lươn cà rốt, cháo thịt bò cà rốt,... 
Cà rốt dùng cho các món nộm gỏi như nộm su hào cà rốt hoặc làm ra món kim chi cải thảo truyền thống của Hàn Quốc,...
Cà rốt xào với mì, nui,... cùng với các nguyên liệu thịt heo, thịt bò, trứng,... 
Đặc biệt, cà rốt còn được xem là món ăn vặt an toàn khi được chế biến thành mứt cà rốt, thích hợp cho việc nhâm nhi của cả gia đình. 
Lưu ý: Sản phẩm nhận được có thể khác với hình ảnh về màu sắc và số lượng nhưng vẫn đảm bảo về mặt khối lượng và chất lượng.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (20, N'CT02', N'Cá điêu hồng', CAST(30000 AS Decimal(15, 0)), N'kg', 5, N'ca-dieu-hong.jpg', N'dieu-hong1.jpg', N'dieu-hong2.jpg', N'dieu-hong3.png', N'Thịt cá diêu hồng vị ngọt, tính bình, không độc, tác dụng bổ khí huyết, ích tỳ vị, lợi ngũ tạng... Dùng bổ dưỡng cho nhiều bệnh chứng hư nhược, nhất là người già suy nhược, trẻ em còi cọc chậm lớn... ', N'Hướng dẫn sử dụng:

      Rã đông tự nhiên, riêng đối với sản phẩm bao bì hút chân không phải rã đông dưới ngăn mát tủ lạnh

      Nấu chín trước khi ăn

Bảo quản: Ở nhiệt độ ≤ -18oC hoặc trong ngăn đá tủ lạnh', N'Thành phần: Cá Diêu hồng (100%)Xuất xứ: Việt Nam', 0, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (21, N'CT01', N'Thịt bò Kobe', CAST(210000 AS Decimal(15, 0)), N'kg', 12, N'kobe-1.jpg', N'kobe-2.jpg', N'kobe-3.jpg', N'kobe-4.jpg', N'Là loài “bò thuần ăn cỏ, nghe nhạc cổ điển mà lớn lên”, quy trình nuôi bò Kobe không đơn giản như mọi người vẫn nghĩ. Bởi thế, nó cho chất lượng hảo hạng, thuộc loại thịt bò ngon nhất thế giới.', N'Được yêu chiều và chăn nuôi theo cách”xa hoa”

Nhiều người đùa rằng những con bò Kobe được sống còn an nhàn, sung sướng hơn cả những người nuôi chúng, bởi vì mỗi ngày ngoài được phục vụ bởi bia, rượu sake và những loại cỏ tươi ngon nhất, thì chúng còn được mát xa thư giãn như những “ông hoàng, bà chúa”.

Những người chăn nuôi cho hay để cho chất lượng thịt tốt, những chú bò Kobe phải được mát xa mỗi ngày, đôi khi là mát xa cùng với rượu sake trắng của Nhật để “giảm stress” và giúp chúng có tinh thần tốt nhất. Chính điều này là nguyên do tạo nên những đường vân “cẩm thạch” đặc trưng của từng miếng bò Kobe.', N'Bò Kobe thuộc chủng loại bò Wagyu, từ Wagyu dùng để chỉ những con bò được nuôi, trải qua kiểm định và nguyên tắc chăn nuôi rất gắt gao của chính phủ Nhật. Bò Kobe quý hiếm đến nỗi chỉ có thể được nhập khẩu từ Nhật, nơi chúng được nuôi trên đất núi lửa màu mỡ.

bo-kobe-quy-hiem-nhat-the-gioi

Bò Kobe quý hiếm nhất thế giới (Nguồn Internet)

Bò Kobe là một trong những đặc sản nổi tiếng thế giới và là niềm khát khao của các đầu bếp, mong muốn được tạo nên những món ăn ngon lừng danh từ loại thịt bò này một lần trong đời. Hiện nay, thịt bò Kobe được xuất khẩu đi nhiều quốc gia, phục vụ nhu cầu của thực khách sành ẩm thực. Thưởng thức bò Nhật Kobe sẽ giúp bạn bổ sung dưỡng chất và mang đến những trải nghiệm đến khó quên.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (22, N'CT04', N'Tiêu xanh', CAST(150000 AS Decimal(15, 0)), N'gam', 11, N'tieu-xanh1.jpg', N'tieu-xanh2.jpg', N'tieu-xanh3.jpg', N'tieu-xanh4.jpg', N'Hạt tiêu là gia vị cần thiết trong mỗi gia đình. Để món ăn được thơm ngon, tăng thêm hương vị thì mọi người thường thêm gia vị này vào khi nấu. Hồ tiêu là một cây có giá trị kinh tế cao ở một số vùng. Đây cũng là cây thuốc quý chữa được rất nhiều bệnh.', N'Hạt tiêu xanh là gì?
Hạt tiêu là gia vị cần thiết trong mỗi gia đình. Để món ăn được thơm ngon, tăng thêm hương vị thì mọi người thường thêm gia vị này vào khi nấu. Hồ tiêu là một cây có giá trị kinh tế cao ở một số vùng. Đây cũng là cây thuốc quý chữa được rất nhiều bệnh.

HẠT TIÊU XANH

Một trong những gia vị không thể thiếu được trong cuộc sống hàng ngày hiện nay là hạt tiêu xanh. Nó giúp tăng thêm hương vị của mỗi món ăn khi nấu mọi người thường thêm loại gia vị này. Cây hạt tiêu xanh là một trong những sản phẩm có giá trị cao được trồng phổ biến tại các vùng đất Tây Nguyên. Không chỉ làm gia vị, hạt tiêu xanh còn được sử dụng làm thuốc quý chữa nhiều loại bệnh. Dưới đây là những tác dụng của hạt tiêu xanh trong cuộc sống hàng ngày và trong y học.

Trong hạt tiêu xanh có chứa nhiều thành phần có lợi cho sức khỏe đặc biệt là vitamin C một chất tăng sức đề kháng và hỗ trợ sức khỏe cho người dùng. Cứ khoảng 1/2 cốc hạt tiêu xanh có chứa khoảng 230% nhu cầu canxi- thống kê này được thực hiện bởi các chuyên gia y họ c.Không chỉ vậy các chất có trong hạt tiêu như tinh dầu, chất béo, tinh bột. piperin và chanvixin đều là những chất có lợi cho sức khỏe bạn.', N'Tác dụng của hạt tiêu xanh với sức khỏe
Những lợi ích mà hạt tiêu xanh mang lại đối với sức khỏe con người là tăng cường khả năng hấp thụ các chất dinh dưỡng, cải thiện hệ tiêu hóa. Trong hạt tiêu có tính nóng do vậy nó phù hợp để sử dụng làm thuốc chữa các bệnh ho, cảm cúm. Chất kháng viêm có trong hạt tiêu có lợi ích cho sức khỏe trong việc điều trị ho, cảm cúm nhờ công dụng kháng viêm, hạt tiêu còn có lợi ích về việc chữa các bệnh về xương khớp. Đây là một trong những loại gia vị vừa phổ biến vừa mang lại sức khỏe cho người dùng tốt nhất.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (23, N'CT04', N'Tiêu đen', CAST(15000 AS Decimal(15, 0)), N'gam', 8, N'tieu.png', N'tieu1.jpg', N'tieu2.jpg', N'tieu3.jpg', N'Tiêu xay chắc hẳn là loại gia vị đã vô cùng quen thuộc với nhiều người. Tiêu xay chính là hạt tiêu đen đã qua công đoạn xay nhuyễn. Nhiều quán ăn, nhà hàng, hay các đại lý thường mua tiêu xay với số lượng lớn để phục vụ cho công việc kinh doanh của mình.', N'Nhưng thực tế, việc mua tiêu xay sẽ dễ gặp phải những mặt hàng kém chất lượng, không rõ nguồn gốc xuất xứ, trôi nổi trên thị trường. Để tránh ảnh hưởng tới sức khỏe của người dùng cũng như tăng sự uy tín cho chính công việc kinh doanh của mình, quý khách nên lựa chọn tiêu đen hạt còn nguyên vẹn, sấy và rang sơ qua, xay nhuyễn tại gia và dùng dần. Như vậy, quý vị vừa có thể an tâm khi dùng trong các món ăn, làm gia vị cũng như giữ được hương vị tươi mới, thơm cay nồng của tiêu đen.', N'Khi hạt tiêu đã xay nhuyễn thì chất lượng sẽ không thể kiểm chứng tùy tâm người làm. Việc tiêu được trộn thêm tiêu lép, tiêu lừng, lẫn tạp, hoặc pha thêm các chất phụ gia cũng khó nhận biết vì tất cả đã được trộn với nhau rồi, màu sắc cũng đồng đều y hệt, mắt thường không thể nhận ra Ngay cả khi quý vị nếm thử thì cũng khó phân biệt vì vị tiêu đen sẽ lấn át các phụ gia khác

Hơn thế nữa, tiêu xay ở dạng bột dễ bị ẩm mốc, thời gian bảo quản không lâu, nhanh bị hư hỏng. Rất nhiều gia đình chưa sử dụng hết số tiêu xay mua về đã phải bỏ đi vì không thể sử dụng được nữa. Tiêu để lâu sẽ bay hết mùi thơm, chỉ còn lại vị cay. Khi sử dụng với các món ăn làm nước chấm, hay ướp thực phẩm thì không dậy lên được mùi hương thơm như ban đầu.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (24, N'CT04', N'Ớt chuông Đà Lạt', CAST(80000 AS Decimal(15, 0)), N'kg', 0, N'ot-chuong.jpg', N'ot-chuong1.jpg', N'ot-chuong2.jpg', N'ot-chuong3.jpg', N'Ớt chuông thuộc họ Solanaceae, loài Capsicum annuum, đây là giống ớt không tạo ra capsaicin (gây cảm giác cay nóng cho người ăn). Ớt chuông có hình dạng giống như quả chuông cùng với lớp vỏ thành dày, giòn và nhiều hạt bên trong.

Tùy theo giống mà ớt chuông có nhiều màu sắc khác nhau, từ màu vàng, màu đỏ, màu cam, màu xanh lục, màu tím cho đến màu trắng và màu nâu.

Ớt chuông có vị ngọt và mỗi mức độ chín thì vị ngọt của ớt cũng sẽ khác nhau. Ví dụ, ớt chuông xanh có vị ít ngọt, hơi đắng so vớt ớt chuông vàng và cam, trái lại ớt chuông đỏ có vị ngọt nhất.

Hạt ớt bên trong thường có vị đắng. Nhìn chung, ớt chuông rất nhạy cảm với nhiệt độ (nên từ 21 - 29 độ C) và độ ẩm vừa đủ (không để bị úng nước).', N'Công dụng:

Tăng cường thị lực.
Ngăn ngừa bệnh thiếu máu.
Tốt cho sức khỏe tim mạch.
Giúp ngủ ngon, cân bằng tâm trạng.
Hỗ trợ giảm cân, kích thích tiêu hóa.
Làm sáng và tăng độ đàn hồi cho da.
Giảm rụng, giúp tóc chắc khỏe và mau dài.', N'Xuất xứ: Đà Lạt.

Trọng lượng: 500g.

Chế biến: món xào, cơm chiên Dương Châu, hấp,…

Bảo quản: nơi khô ráo thoáng mát, bảo quản lâu hơn trong ngăn mát tủ lạnh.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (25, N'CT04', N'Đậu Cove', CAST(20000 AS Decimal(15, 0)), N'kg', 8, N'dau-cove1.jpg', N'dau-cove.jpg', N'cove-2.jpg', N'cove3.jpg', N'Đậu cove (hay đậu que) là một loại thực phẩm được ưa chuộng trên khắp thế giới. Chúng không chỉ mang đến giá trị dinh dưỡng to lớn mà còn mang đến nhiều lợi ích cho sức khỏe. Đặc biệt, đậu cove Đà Lạt được trồng theo tiêu chuẩn siêu sạch và an toàn tại nông trại Farm24h nên đảm bảo mang đến cho khách giá trị dinh dưỡng cao nhất.', N'Công dụng:

Ngăn ngừa ung thư.
Giảm nguy cơ mắc bệnh trầm cảm.
Giúp xương chắc khỏe hơn.
Tăng cường sức khỏe tim mạch.
Hỗ trợ kiểm soát bệnh tiểu đường.
Cải thiện thị lực.
Tăng cường chức năng hệ tiêu hóa.', N'Thông tin sản phẩm

Xuất xứ: Đà Lạt.

Trọng lượng: 500g.

Chế biến: xào, luộc,…

Bảo quản: nơi khô ráo thoáng mát, bảo quản lâu hơn trong ngăn mát tủ lạnh.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (26, N'CT04', N'Bí đao', CAST(20000 AS Decimal(15, 0)), N'kg', 4, N'bi-dao.jpg', N'bi-dao1.jpg', N'bi-dao2.jpg', N'bi-dao3.jpg', N'Bí đao còn gọi là bí xanh, bí phấn, đông qua, bạch qua, chẩm qua…  Đây thực phẩm quen thuộc trong bữa ăn hằng ngày này rất tốt cho sức khỏe, nó có tác dụng thanh nhiệt làm mát ruột, giúp da đẹp dáng thon.', N'Những công dụng nổi bật của bí đao
Giảm cân, chống béo phì

Có thể nhắc đến đầu tiên là tác dụng giảm cân của  bí đao. Bí đao có công dụng giảm cân chủ yếu là bởi vì bí đao có khả năng làm no bụng mà không chứa năng lượng nhiều.

Trong bí đao chứa rất nhiều nước và không chứa chất béo. Hơn nữa, trong bí đao còn chứa hợp chất hóa học hyterin-caperin ngăn không cho đường chuyển hóa thành mỡ trong cơ thể, nên cơ thể sẽ không bị tích lũy mỡ thừa.

Thịt quả bí đao chứa nhiều chất xơ dạng sợi. Loại chất xơ này rất có lợi cho ruột và đường tiêu hóa. Khả năng sinh nhiệt thấp, hàm lượng chất béo gần như không có và có khả năng làm giảm tích tụ mỡ trong cơ thể nên Bí đao là vị thuốc lý tưởng để chữa bệnh béo phì, ăn bí đao lâu dài có thể giúp cho bạn có một cơ thể thanh thoát.

Ngoài ra, các vitamin B9, vitamin C, vitamin E, vitamin A và các khoáng chất như: kali, phospho, magiê có trong bí đao cũng góp phần làm đẹp cơ thể, loại bỏ mỡ ở bụng. Vỏ bí đao được cho là chứa nhiều vitamin và chất khoáng, nên có thể ăn cả vỏ, nhất là vỏ bí đao khi quả còn non. Với những người mắc bệnh béo phì hoặc muốn giảm cân, ăn bí đao thường xuyên thực sự rất tốt.

Tuy nhiên nhiều bạn gái kỳ vọng vào công dụng của bí đao nên rất hay ăn bí đao sống hoặc nước ép bí đao mà không biết rằng,', N'Bí đao thuộc loại cây thân thảo, có nhiều lông, dạng dây leo, thân dài đến 5 m. Lá cây xòe, hình bầu, có lông rậm, đường kính từ 10-25 cm, phiến lá xẻ chân thùy.
Hoa mọc đơn trên cuống, màu vàng, bầu hình trụ hay hình trứng. Quả thon, dày, dài khoảng 25-40 cm, lúc non có da xanh nhạt, lông cứng, khi già màu xanh đậm hoặc lục mốc, ít lông, có lớp phấn như sáp bám bên ngoài. Cây ra hoa vào tháng 6-7, đậu quả vào tháng 7-10 hàng năm.
Cây bí đao sinh trưởng ưa nắng nóng, nhưng trái lại chịu được nhiệt độ thấp, do đó có thể để qua mùa đông mà không hỏng, trong khi cây bí đao chỉ mọc năm một và tàn vào mùa đông. Bí đao thường trồng trên giàn bằng tre, nứa; cũng có thể để bò trên mặt đất như dưa.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (27, N'CT02', N'Cá lóc nuôi', CAST(50000 AS Decimal(15, 0)), N'kg', 7, N'ca-loc.jpg', N'ca-loc1.png', N'ca-loc2.jpeg', N'ca-loc3.jpg', N'Cá lóc nuôi tại ao', N'Cá lóc có tên khoa học là Channa striata, hay còn được gọi là cá quả. Đây là loài cá nước ngọt được đánh bắt nhiều ở các nước Đông Nam Á và được coi là nguồn cung cấp protein chất lượng cao. Ngoài ra, nó còn được xem như một phương pháp chữa bệnh truyền thống phổ biến tại nhiều địa phương.

Cá lóc không chỉ là thực phẩm tốt cho sức khỏe mà thường được dùng làm thuốc chữa các bệnh. Nó là một trong những loài cá được biết đến nhiều nhất với những lợi ích dược lý truyền thống đã được xác định như tác dụng điều trị vết thương và giảm đau, khả năng tăng cường năng lượng cho người bệnh. Tuy nhiên, cá lóc vẫn chưa được khai thác một cách đầy đủ và rõ ràng, mặc dù chúng là thành phần quan trọng của nhiều bài thuốc phổ biến và cũng được các dược điển hiện hành và quá khứ trên thế giới công nhận.', N'Cá lóc là loài ăn thịt, chúng ăn cá, ếch, rắn, côn trùng, giun đất và nòng nọc, do đó thịt của nó được cho là có tác dụng làm trẻ hóa, đặc biệt là đối với những người đang hồi phục sau các bệnh hiểm nghèo. Sự nổi tiếng của cá lóc như một tác nhân điều trị có liên quan đến niềm tin dân gian về hiệu quả của nó trong việc điều trị vết thương, giảm đau và tăng cường năng lượng. Vì thế ở một số địa phương, phụ nữ sau sinh thường hoặc sinh mổ, bệnh nhân phục hồi sau phẫu thuật thường xuyên được khuyên nên ăn các bữa ăn có cá lóc.

Dưới góc nhìn của dinh dưỡng, cá lóc đóng vai trò là thực phẩm chức năng, mang lại lợi ích sức khỏe. Nó là một nguồn thực phẩm tốt vì chứa hàm lượng cao các axit amin và axit béo. Các axit amin có thể đã góp phần vào các đặc tính dược lý, bao gồm glycine, lysine và araginine, trong khi các axit béo của cá lóc là axit arachidonic, axit plamitic và axit docosahexaenoic.

Chiết xuất của cá lóc được sản xuất từ ​​toàn bộ cơ, da và chất nhầy. Chúng dường như thể hiện tác dụng của chúng thông qua việc hình thành một số loại phân tử hoạt tính sinh học. Chiết xuất Channastritata có thể cải thiện vẻ ngoài thẩm mỹ của vết thương và đạt được sự hài lòng cao của bệnh nhân.', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (28, N'CT02', N'Cá rô phi', CAST(42000 AS Decimal(15, 0)), N'kg', 3, N'ca-phi.jpg', N'ca-phi1.jpg', N'ca-phi2.jpg', N'ca-phi3.jpg', N'Cá rô phi là loại cá quen thuộc trong bữa cơm gia đình người Việt, từ món chiên cho đến món hấp và món sốt.', N'Cá rô phi là cá gì?
Cá rô phi là loại cá nước ngọt, sống chủ yếu ở ao hồ, kênh rạch và sông suối, thuộc họ Cichlidae và có nguồn gốc từ các nước thuộc khu vực Trung Đông và châu Phi.

Cá rô phi đã sớm gắn liền với đời sống sinh hoạt của con người, vì người ta phát hiện hình ảnh của cá rô phi được điêu khắc trên những bức tượng đá trong các kim tự tháp Ai Cập cổ. Ngoài ra, loài cá này cũng được nuôi đầu tiên vào năm 1924 và trong những năm 1940 - 1950 được nuôi nhiều hơn ở các nước thuộc khu vực nhiệt đới, cận nhiệt đới.

Cá rô phi có tốc độ phát triển nhanh, cho sản lượng cao và đạt hiệu quả kinh tế, nên đã trở thành loại cá phổ biến và có thể được tìm thấy trên hơn 100 quốc gia.', N'Thịt cá rô phi ngọt, vị bùi và giàu các loại vitamin, khoáng chất (như phốt pho, selen, kali) cùng với hàm lượng protein vừa phải. Trung bình 100gr cá rô phi (sống) gồm các chất dinh dưỡng như sau:

Năng lượng: 96kcal
Nước: 78.08g
Chất đạm: 20.08g
Chất béo: 1.7g
Vitamin E: 0.4mg
Vitamin D: 124 IU
Ngoài ra, cá rô phi còn chứa nhiều chất khoáng như: 170mg phốt pho, 302mg kali, 10mg canxi, 52mg natri,… và hầu hết các loại vitamin B như: 0.063mg vitamin B2, 3.903mg vitamin B3,…', 1, 0)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [Name], [Price], [Unit], [Sale], [Image], [Image1], [Image2], [Image3], [Des_short], [Des_long], [Information], [Status], [Deletehiden]) VALUES (29, N'CT03', N'Trứng vịt', CAST(40000 AS Decimal(15, 0)), N'hộp', 5, N'trung-vit.jpg', N'trung-vit1.jpg', N'trung-vit2.jpg', N'trung-vit3.png', N'Trứng vịt thu hoạch tại nông trại Chăn nuôi gà vịt Vĩnh Phước', N'Trứng vịt là loại thực phẩm giàu dinh dưỡng và phổ biến trong bữa cơm của nhiều gia đình. Một quả trứng vịt thường có chứa gần 130 đơn vị calo. Ngoài ra, trong trứng vịt có chứa 9 gam protein và 9.7 gam chất béo triglyceride, hàm lượng canxi và kali cao. Do đó, bạn nên bổ sung trứng vịt vào trong thực đơn các món ăn của gia đình mình khoảng 2 lần/tuần để cung cấp dinh dưỡng và năng lượng cho cơ thể.', N'Xuất xứ: Công Ty Cổ Phần Thực Phẩm Vĩnh Thành Đạt

Thành phần: Trứng vịt

Quy cách: 10 quả/Hộp

Đơn vị tính: Hộp

Sử dụng: Dùng chế biến thực phẩm

Bảo quản: Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng mặt trời', 1, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Rates] ON 

INSERT [dbo].[Rates] ([Rate_id], [Star], [Comment], [Username], [Product_id], [Create_date]) VALUES (1, 3, N'Ngon', N'hau', 1, CAST(N'2021-11-30 20:26:18.963' AS DateTime))
INSERT [dbo].[Rates] ([Rate_id], [Star], [Comment], [Username], [Product_id], [Create_date]) VALUES (2, 3, N'Ngon đấy', N'hau', 1, CAST(N'2021-11-30 20:32:15.357' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rates] OFF
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (N'STAF', N'Staffs')
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Coupons] FOREIGN KEY([Code])
REFERENCES [dbo].[Coupons] ([Code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Coupons]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Danhmuc] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Sanpham_Danhmuc]
GO
ALTER TABLE [dbo].[Rates]  WITH CHECK ADD  CONSTRAINT [FK_Rates_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Rates] CHECK CONSTRAINT [FK_Rates_Accounts]
GO
ALTER TABLE [dbo].[Rates]  WITH CHECK ADD  CONSTRAINT [FK_Rates_Products] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Rates] CHECK CONSTRAINT [FK_Rates_Products]
GO
