USE [master]
GO
/****** Object:  Database [dbQLNS]    Script Date: 09-Dec-17 9:46:27 AM ******/
CREATE DATABASE [dbQLNS]
 CONTAINMENT = NONE
 ON  PRIMARY 
 /*Tạo file dbQLNS.mdf tại đường dẫn này. Đổi đường dẫn cho phù hợp*/
( NAME = N'dbQLNS', FILENAME = N'D:\java-switch\QLNhaSach\CSDL\dbQLNS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
 /*Tạo file dbQLNS_log.ldf tại đường dẫn này. Đổi đường dẫn cho phù hợp*/
( NAME = N'dbQLNS_log', FILENAME = N'D:\java-switch\QLNhaSach\CSDL\dbQLNS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dbQLNS] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbQLNS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbQLNS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbQLNS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbQLNS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbQLNS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbQLNS] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbQLNS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbQLNS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbQLNS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbQLNS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbQLNS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbQLNS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbQLNS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbQLNS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbQLNS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbQLNS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbQLNS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbQLNS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbQLNS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbQLNS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbQLNS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbQLNS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbQLNS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbQLNS] SET RECOVERY FULL 
GO
ALTER DATABASE [dbQLNS] SET  MULTI_USER 
GO
ALTER DATABASE [dbQLNS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbQLNS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbQLNS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbQLNS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbQLNS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbQLNS', N'ON'
GO
ALTER DATABASE [dbQLNS] SET QUERY_STORE = OFF
GO
USE [dbQLNS]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [dbQLNS]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 09-Dec-17 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET DATEFORMAT dmy
CREATE TABLE [dbo].[CHUCVU](
	[MaCV] [nvarchar](50) NOT NULL,
	[ChucVu] [nvarchar](250) NULL,
	[DinhDoanh] [nvarchar](250) NULL,
	[IsDelete] [int] NULL,
 CONSTRAINT [PK_CHUCVU] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 09-Dec-17 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaSach] [nvarchar](50) NOT NULL,
	[DonGia] [money] NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [money] NULL,
	[IsDelete] [int] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD],[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 09-Dec-17 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[NgayLap] [date] NULL,
	[TongTien] [money] NULL,
	[IsDelete] [int] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 09-Dec-17 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](250) NULL,
	[NgaySinh] [date] NULL,
	[NgayVaoLam] [date] NULL,
	[SoChungMinh] [nvarchar](50) NULL,
	[MaCV] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Isdelete] [int] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 09-Dec-17 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[MaNXB] [nvarchar](50) NOT NULL,
	[TenNXB] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[IsDelete] [int] NULL,
 CONSTRAINT [PK_NXB] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 09-Dec-17 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [nvarchar](50) NOT NULL,
	[TenSach] [nvarchar](250) NULL,
	[MaNXB] [nvarchar](50) NULL,
	[TacGia] [nvarchar](250) NULL,
	[GiaBan] [money] NULL,
	[TheLoai] [nvarchar](150) NULL,
	[SoLuong] [int] NULL,
	[IsDelete] [int] NULL,
 CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 09-Dec-17 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MaTk] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
	[IsDelete] [int] NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[MaTk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [SDT], [DiaChi], [Email], [IsDelete]) VALUES (N'nxb01', N'Đại học quốc gia tp HCM', N'0197852545', N'Tp HCM', N'dhql@gmal.com', 0)
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [SDT], [DiaChi], [Email], [IsDelete]) VALUES (N'nxb02', N'Kim Đồng', N'0197816153', N'TP HCm', N'kimdong@gmail.com', 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaNXB], [TacGia], [GiaBan], [TheLoai], [SoLuong], [IsDelete]) VALUES (N's01', N'SQL server', N'nxb01', N'thanh', 150000.0000, N'Giáo trình', 50, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaNXB], [TacGia], [GiaBan], [TheLoai], [SoLuong], [IsDelete]) VALUES (N's02', N'OOP', N'nxb02', N'hiep', 200000.0000, N'Giáo trình', 50, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaNXB], [TacGia], [GiaBan], [TheLoai], [SoLuong], [IsDelete]) VALUES (N's03', N'java', N'nxb01', N'phuc', 200000.0000, N'Giáo trình', 50, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaNXB], [TacGia], [GiaBan], [TheLoai], [SoLuong], [IsDelete]) VALUES (N's04', N'ERP', N'nxb02', N'Hữu Phúc', 120000.0000, N'Giáo trình', 20, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaNXB], [TacGia], [GiaBan], [TheLoai], [SoLuong], [IsDelete]) VALUES (N's05', N'odoo', N'nxb01', N'hoang hiep', 250000.0000, N'Giáo trình', 100, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaNXB], [TacGia], [GiaBan], [TheLoai], [SoLuong], [IsDelete]) VALUES (N's06', N'English', N'nxb02', N'Gia Lượng', 130000.0000, N'Ngoại Ngữ', 10, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaNXB], [TacGia], [GiaBan], [TheLoai], [SoLuong], [IsDelete]) VALUES (N's08', N'xam si du', N'nxb01', N'le minh', 150000.0000, N'xam', 10, 1)
INSERT [dbo].[TAIKHOAN] ([MaTk], [username], [password], [MaNV], [IsDelete]) VALUES (N'tk01', N'admin', N'admin', 'NV01', 0)
INSERT [dbo].[TAIKHOAN] ([MaTk], [username], [password], [MaNV], [IsDelete]) VALUES (N'tk02', N'thungan', N'thungan', 'NV02', 0)


INSERT [dbo].CHUCVU ([MaCV], [ChucVu], [DinhDoanh],[IsDelete]) VALUES ('CV01', N'Admin', N'Quản lý hệ thống',0)
INSERT [dbo].CHUCVU ([MaCV], [ChucVu], [DinhDoanh],[IsDelete]) VALUES ('CV02', N'Thu ngân', N'Thanh toán hóa đơn cho khách',0)
INSERT [dbo].CHUCVU ([MaCV], [ChucVu], [DinhDoanh],[IsDelete]) VALUES ('CV03', N'Nhân viên mua hàng', N'Lên kế hoạch mua các đầu sách, dụng cụ,...',0)
INSERT [dbo].CHUCVU ([MaCV], [ChucVu], [DinhDoanh],[IsDelete]) VALUES ('CV04', N'Nhân viên IT', N'Sửa chữa, quản lý, hỗ trợ kỹ thuật',0)
INSERT [dbo].CHUCVU ([MaCV], [ChucVu], [DinhDoanh],[IsDelete]) VALUES ('CV05', N'Nhân viên kho', N'Quản lý kho',0)
INSERT [dbo].CHUCVU ([MaCV], [ChucVu], [DinhDoanh],[IsDelete]) VALUES ('CV06', N'Nhân viên an ninh', N'Bảo đảm an ninh',0)
INSERT [dbo].CHUCVU ([MaCV], [ChucVu], [DinhDoanh],[IsDelete]) VALUES ('CV07', N'Nhân viên kế toán', N'Chịu trách nhiệm về các vấn đề liên quan đến tài chính, dòng tiền',0)

INSERT [dbo].[NHANVIEN]([MaNV], [TenNV], [NgaySinh], [NgayVaoLam], [SoChungMinh],[MaCV], [SDT], [Email], [IsDelete]) VALUES (N'NV01',N'Nguyên Văn A', '1/1/2002', '10/12/2021' ,N'012356789',N'CV01',N'012356789',N'anguyenvan@gmai.com',0)
INSERT [dbo].[NHANVIEN]([MaNV], [TenNV], [NgaySinh], [NgayVaoLam], [SoChungMinh],[MaCV], [SDT], [Email], [IsDelete]) VALUES (N'NV02',N'Nguyên Văn B', '1/2/2002', '21/12/2022' ,N'012356789',N'CV02',N'012356789',N'bnguyenvan@gmai.com',0)
INSERT [dbo].[NHANVIEN]([MaNV], [TenNV], [NgaySinh], [NgayVaoLam], [SoChungMinh],[MaCV], [SDT], [Email], [IsDelete]) VALUES (N'NV03',N'Nguyên Văn C', '1/3/2002', '31/12/2023' ,N'012356789',N'CV03',N'012356789',N'cnguyenvan@gmai.com',0)
INSERT [dbo].[NHANVIEN]([MaNV], [TenNV], [NgaySinh], [NgayVaoLam], [SoChungMinh],[MaCV], [SDT], [Email], [IsDelete]) VALUES (N'NV04',N'Nguyên Văn D', '1/4/2002', '20/01/2019' ,N'012356789',N'CV04',N'012356789',N'dnguyenvan@gmai.com',0)
INSERT [dbo].[NHANVIEN]([MaNV], [TenNV], [NgaySinh], [NgayVaoLam], [SoChungMinh],[MaCV], [SDT], [Email], [IsDelete]) VALUES (N'NV05',N'Nguyên Văn E', '1/5/2002', '11/08/2018' ,N'012356789',N'CV05',N'012356789',N'enguyenvan@gmai.com',0)
INSERT [dbo].[NHANVIEN]([MaNV], [TenNV], [NgaySinh], [NgayVaoLam], [SoChungMinh],[MaCV], [SDT], [Email], [IsDelete]) VALUES (N'NV06',N'Nguyên Văn F', '1/6/2002', '01/03/2017' ,N'012356789',N'CV06',N'012356789',N'fnguyenvan@gmai.com',0)
INSERT [dbo].[NHANVIEN]([MaNV], [TenNV], [NgaySinh], [NgayVaoLam], [SoChungMinh],[MaCV], [SDT], [Email], [IsDelete]) VALUES (N'NV07',N'Nguyên Văn G', '1/7/2002', '22/12/2020' ,N'012356789',N'CV07',N'012356789',N'gnguyenvan@gmai.com',0)
INSERT [dbo].[NHANVIEN]([MaNV], [TenNV], [NgaySinh], [NgayVaoLam], [SoChungMinh],[MaCV], [SDT], [Email], [IsDelete]) VALUES (N'NV08',N'Nguyên Văn H', '1/8/2002', '23/11/2021' ,N'012356789',N'CV02',N'012356789',N'hnguyenvan@gmai.com',0)
INSERT [dbo].[NHANVIEN]([MaNV], [TenNV], [NgaySinh], [NgayVaoLam], [SoChungMinh],[MaCV], [SDT], [Email], [IsDelete]) VALUES (N'NV09',N'Nguyên Văn J', '1/9/2002', '24/02/2022' ,N'012356789',N'CV03',N'012356789',N'jnguyenvan@gmai.com',0)

ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [fk_cthd_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [fk_cthd_Sach]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [kh_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [kh_HoaDon]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [fk_NhanVien]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [fk_ChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[CHUCVU] ([MaCV])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [fk_ChucVu]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [fk_NXB] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NXB] ([MaNXB])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [fk_NXB]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [fk_TaiKhoan_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [fk_TaiKhoan_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [dbQLNS] SET  READ_WRITE 
GO