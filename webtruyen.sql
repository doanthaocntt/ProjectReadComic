use master
begin try
drop database [webtruyenpt]
end try
begin catch
end catch
create database [webtruyenpt]
go
use [webtruyenpt]
CREATE TABLE [dbo].[ChuongTruyen](
	[MaTruyen] [int] NOT NULL,
	[SoChuong] [int] NOT NULL,
	[TenChuong] [nvarchar](50) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[NoiDung] [ntext] NOT NULL,
	[Dang] [bit] NOT NULL,
 CONSTRAINT [PK_ChuongTruyen] PRIMARY KEY CLUSTERED 
(
	[MaTruyen] ASC,
	[SoChuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HanhDongCuaTK]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HanhDongCuaTK](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaTruyen] [int] NULL,
	[SoChuong] [int] NULL,
	[LoaiHD] [int] NOT NULL,
	[NgayHanhDong] [datetime] NOT NULL,
	[MaTK] [int] NOT NULL,
	[GhiChu] [ntext] NULL,
	[DaXem] [bit] NULL,
	[TacGia] [int] NULL,
	[PhanHoi] [int] NULL,
	[MaNhom] [int] NULL,
 CONSTRAINT [PK_HanhDongCuaTK] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomTG]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomTG](
	[MaNhom] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](50) NOT NULL,
	[NgayThanhLap] [datetime] NOT NULL,
	[NguoiThanhLap] [int] NULL,
	[TinhTrang] [int] NOT NULL,
	[Khauhieu] [nvarchar](100) NULL,
 CONSTRAINT [PK_NhomTG] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__NhomTG__234F91CC3F6018B9] UNIQUE NONCLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLyHinhAnh]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLyHinhAnh](
	[MaAnh] [int] IDENTITY(1,1) NOT NULL,
	[MaTK] [int] NOT NULL,
	[URL] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_QuanLyHinhAnh] PRIMARY KEY CLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__QuanLyHi__356240DE0E41D0D8] UNIQUE NONCLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__QuanLyHi__356240DEBDF89068] UNIQUE NONCLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[HovaTen] [nvarchar](50) NOT NULL,
	[Mail] [varchar](50) NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[SDT] [varchar](12) NULL,
	[NgayTao] [datetime] NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[NgayKhoa] [datetime] NULL,
	[Avatar] [varchar](200) NULL,
	[VaiTro] [int] NOT NULL,
	[ButDanh] [nvarchar](50) NULL,
	[ngayDKTG] [datetime] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__TaiKhoan__27250071DADD3422] UNIQUE NONCLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__TaiKhoan__7B8521DBD189F935] UNIQUE NONCLUSTERED 
(
	[Mail] ASC,
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVienNhom]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVienNhom](
	[MaTK] [int] NOT NULL,
	[MaNhom] [int] NOT NULL,
	[Ngayvaonhom] [datetime] NOT NULL,
	[Vaitro] [int] NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
	[DaDuyet] [bit] NOT NULL,
 CONSTRAINT [PK_ThanhVienNhom_1] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC,
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Truyen]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Truyen](
	[MaTruyen] [int] IDENTITY(1,1) NOT NULL,
	[TenTruyen] [nvarchar](100) NOT NULL,
	[MaLoai] [int] NOT NULL,
	[TacGiaGoc] [nvarchar](50) NULL,
	[NgayTao] [datetime] NOT NULL,
	[NgayDang] [datetime] NULL,
	[TamAn] [bit] NOT NULL,
	[DaDuyet] [bit] NULL,
	[Khoa] [bit] NULL,
	[LoaiTruyen] [int] NOT NULL,
	[TinhTrang] [int] NULL,
	[AnhBia] [int] NOT NULL,
	[MoTa] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_Truyen] PRIMARY KEY CLUSTERED 
(
	[MaTruyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Truyen__6AD20A4A897251CE] UNIQUE NONCLUSTERED 
(
	[MaTruyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruyenTacGia]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruyenTacGia](
	[MaTruyen] [int] NOT NULL,
	[MaTK] [int] NOT NULL,
	[VaiTro] [int] NOT NULL,
	[DangNhom] [int] NULL,
 CONSTRAINT [PK_TruyenTacGia] PRIMARY KEY CLUSTERED 
(
	[MaTruyen] ASC,
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChuongTruyen]  WITH CHECK ADD  CONSTRAINT [FK_ChuongTruyen_Truyen] FOREIGN KEY([MaTruyen])
REFERENCES [dbo].[Truyen] ([MaTruyen])
GO
ALTER TABLE [dbo].[ChuongTruyen] CHECK CONSTRAINT [FK_ChuongTruyen_Truyen]
GO
ALTER TABLE [dbo].[HanhDongCuaTK]  WITH CHECK ADD  CONSTRAINT [FK_HanhDongCuaTK_ChuongTruyen] FOREIGN KEY([MaTruyen], [SoChuong])
REFERENCES [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HanhDongCuaTK] CHECK CONSTRAINT [FK_HanhDongCuaTK_ChuongTruyen]
GO
ALTER TABLE [dbo].[HanhDongCuaTK]  WITH CHECK ADD  CONSTRAINT [FK_HanhDongCuaTK_HanhDongCuaTK] FOREIGN KEY([PhanHoi])
REFERENCES [dbo].[HanhDongCuaTK] ([MaHD])
GO
ALTER TABLE [dbo].[HanhDongCuaTK] CHECK CONSTRAINT [FK_HanhDongCuaTK_HanhDongCuaTK]
GO
ALTER TABLE [dbo].[HanhDongCuaTK]  WITH CHECK ADD  CONSTRAINT [FK_HanhDongCuaTK_NhomTG] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomTG] ([MaNhom])
GO
ALTER TABLE [dbo].[HanhDongCuaTK] CHECK CONSTRAINT [FK_HanhDongCuaTK_NhomTG]
GO
ALTER TABLE [dbo].[HanhDongCuaTK]  WITH CHECK ADD  CONSTRAINT [FK_HanhDongCuaTK_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[HanhDongCuaTK] CHECK CONSTRAINT [FK_HanhDongCuaTK_TaiKhoan]
GO
ALTER TABLE [dbo].[HanhDongCuaTK]  WITH CHECK ADD  CONSTRAINT [FK_HanhDongCuaTK_TaiKhoan1] FOREIGN KEY([TacGia])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[HanhDongCuaTK] CHECK CONSTRAINT [FK_HanhDongCuaTK_TaiKhoan1]
GO
ALTER TABLE [dbo].[HanhDongCuaTK]  WITH CHECK ADD  CONSTRAINT [FK_HanhDongCuaTK_Truyen] FOREIGN KEY([MaTruyen])
REFERENCES [dbo].[Truyen] ([MaTruyen])
GO
ALTER TABLE [dbo].[HanhDongCuaTK] CHECK CONSTRAINT [FK_HanhDongCuaTK_Truyen]
GO
ALTER TABLE [dbo].[NhomTG]  WITH CHECK ADD  CONSTRAINT [FK_NhomTG_TaiKhoan] FOREIGN KEY([NguoiThanhLap])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[NhomTG] CHECK CONSTRAINT [FK_NhomTG_TaiKhoan]
GO
ALTER TABLE [dbo].[QuanLyHinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyHinhAnh_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[QuanLyHinhAnh] CHECK CONSTRAINT [FK_QuanLyHinhAnh_TaiKhoan]
GO
ALTER TABLE [dbo].[ThanhVienNhom]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVienNhom_NhomTG] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomTG] ([MaNhom])
GO
ALTER TABLE [dbo].[ThanhVienNhom] CHECK CONSTRAINT [FK_ThanhVienNhom_NhomTG]
GO
ALTER TABLE [dbo].[ThanhVienNhom]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVienNhom_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[ThanhVienNhom] CHECK CONSTRAINT [FK_ThanhVienNhom_TaiKhoan]
GO
ALTER TABLE [dbo].[Truyen]  WITH CHECK ADD  CONSTRAINT [FK_Truyen_QuanLyHinhAnh] FOREIGN KEY([AnhBia])
REFERENCES [dbo].[QuanLyHinhAnh] ([MaAnh])
GO
ALTER TABLE [dbo].[Truyen] CHECK CONSTRAINT [FK_Truyen_QuanLyHinhAnh]
GO
ALTER TABLE [dbo].[Truyen]  WITH CHECK ADD  CONSTRAINT [FK_Truyen_TheLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[TheLoai] ([MaLoai])
GO
ALTER TABLE [dbo].[Truyen] CHECK CONSTRAINT [FK_Truyen_TheLoai]
GO
ALTER TABLE [dbo].[TruyenTacGia]  WITH CHECK ADD  CONSTRAINT [FK_TruyenTacGia_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[TruyenTacGia] CHECK CONSTRAINT [FK_TruyenTacGia_TaiKhoan]
GO
ALTER TABLE [dbo].[TruyenTacGia]  WITH CHECK ADD  CONSTRAINT [FK_TruyenTacGia_Truyen] FOREIGN KEY([MaTruyen])
REFERENCES [dbo].[Truyen] ([MaTruyen])
GO
ALTER TABLE [dbo].[TruyenTacGia] CHECK CONSTRAINT [FK_TruyenTacGia_Truyen]
go
create FUNCTION [dbo].[f_coDau_koDau](@inputVar NVARCHAR(MAX) )
RETURNS NVARCHAR(MAX)
AS
BEGIN    
    IF (@inputVar IS NULL OR @inputVar = '')  RETURN ''
   
    DECLARE @RT NVARCHAR(MAX)
    DECLARE @SIGN_CHARS NCHAR(256)
    DECLARE @UNSIGN_CHARS NCHAR (256)
 
    SET @SIGN_CHARS = N'ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệếìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵýĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ' + NCHAR(272) + NCHAR(208)
    SET @UNSIGN_CHARS = N'aadeoouaaaaaaaaaaaaaaaeeeeeeeeeeiiiiiooooooooooooooouuuuuuuuuuyyyyyAADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD'
 
    DECLARE @COUNTER int
    DECLARE @COUNTER1 int
   
    SET @COUNTER = 1
    WHILE (@COUNTER <= LEN(@inputVar))
    BEGIN  
        SET @COUNTER1 = 1
        WHILE (@COUNTER1 <= LEN(@SIGN_CHARS) + 1)
        BEGIN
            IF UNICODE(SUBSTRING(@SIGN_CHARS, @COUNTER1,1)) = UNICODE(SUBSTRING(@inputVar,@COUNTER ,1))
            BEGIN          
                IF @COUNTER = 1
                    SET @inputVar = SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)-1)      
                ELSE
                    SET @inputVar = SUBSTRING(@inputVar, 1, @COUNTER-1) +SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)- @COUNTER)
                BREAK
            END
            SET @COUNTER1 = @COUNTER1 +1
        END
        SET @COUNTER = @COUNTER +1
    END
    -- SET @inputVar = replace(@inputVar,' ','-')
    RETURN @inputVar
END
GO
/****** Object:  UserDefinedFunction [dbo].[fLuotThich]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create function [dbo].[fLuotThich](
	@maTruyen int
 )
 returns int
 as
 begin
	declare @count int
	select @count = count(*) from LuotThichTruyen
	where MaTruyen = @maTruyen
	return @count
 end
GO
/****** Object:  UserDefinedFunction [dbo].[fLuotXem]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create function [dbo].[fLuotXem](
	@maTruyen int
 )
 returns int
 as
 begin
	declare @count int
	select @count = count(*) from LuotXem
	where MaTruyen = @maTruyen
	return @count
 end
GO
/****** Object:  UserDefinedFunction [webtruyenpt].[laySoChuong]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [laySoChuong] 
(
	@top int,
	@MaTruyen int
)
returns int
begin
	if (@top > (select count(*) from ChuongTruyen where MaTruyen = @MaTruyen and Dang = cast(1 as bit)))
		return null
	declare @soChuong int
	select top (@top) @soChuong = SoChuong from ChuongTruyen
	where MaTruyen = @MaTruyen and Dang = cast(1 as bit)
	order by SoChuong desc
	return @soChuong
end
GO
/****** Object:  UserDefinedFunction [webtruyenpt].[layTenChuong]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [layTenChuong] 
(
	@top int,
	@MaTruyen int
)
returns nvarchar(50)
begin
	if (@top > (select count(*) from ChuongTruyen where MaTruyen = @MaTruyen and Dang = cast(1 as bit)))
		return null
	declare @tenChuong nvarchar(50)
	select top (@top) @tenChuong = TenChuong from ChuongTruyen
	where MaTruyen = @MaTruyen and Dang = cast(1 as bit)
	order by SoChuong desc
	return @tenChuong
end
GO
/****** Object:  View [dbo].[Admin]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Admin] as
select MaTK, Mail as Username, MatKhau as Password, VaiTro = 0, NgayTao from TaiKhoan
where VaiTro = 0;
GO
/****** Object:  View [dbo].[BinhLuan]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[BinhLuan] as
SELECT MaHD AS MaBinhLuan, MaTruyen, tk.MaTK, 
tk.HovaTen,
tk.Avatar,
GhiChu AS NoiDung, 
NgayHanhDong AS NgayBinhLuan, 
PhanHoi, 
SoChuong, 
LoaiHD
FROM   dbo.HanhDongCuaTK hd, TaiKhoan tk
WHERE tk.MaTK = hd.MaTK and (LoaiHD = 5)
GO
/****** Object:  View [dbo].[LuotThichChuong]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[LuotThichChuong] 
as
select MaTruyen,MaTK, NgayHanhDong as NgayThich, SoChuong, LoaiHD from HanhDongCuaTK
where LoaiHD = 7
GO
/****** Object:  View [dbo].[LuotThichTruyen]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[LuotThichTruyen] 
as
select MaTruyen,MaTK, NgayHanhDong as NgayThich, LoaiHD from HanhDongCuaTK
where LoaiHD = 2
GO
/****** Object:  View [dbo].[LuotXem]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[LuotXem] 
as
select MaTruyen,MaTK, NgayHanhDong as NgayXem, SoChuong, LoaiHD from HanhDongCuaTK
where LoaiHD = 1
GO
/****** Object:  View [dbo].[TacGia]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[TacGia] as
SELECT MaTK AS MaTG, IIF(ButDanh is null,HovaTen, ButDanh) as ButDanh, ngayDKTG AS NgayDangKy, iif(VaiTro IN (2, 3, 4), 1, iif(VaiTro IN (5, 6, 7), 2, 0)) AS VaiTro, iif(VaiTro IN (2, 5), cast(0 AS bit), iif(VaiTro IN (3, 6), cast(1 AS bit), cast(0 AS bit))) AS DaDuyet, iif(VaiTro IN (2, 3, 5, 6), cast(0 AS bit), iif(VaiTro IN (7, 4), cast(1 AS bit), 
             cast(0 AS bit))) AS Khoa
FROM   TaiKhoan
WHERE VaiTro IN (2, 3, 4, 5, 6, 7)
GO
/****** Object:  View [dbo].[TheodoTG]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[TheodoTG] 
as
select MaTK,TacGia as MaTG, NgayHanhDong as Ngaytheodoi, LoaiHD from HanhDongCuaTK
where LoaiHD = 3
GO
/****** Object:  View [dbo].[ThongBao]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ThongBao]
AS
SELECT MaHD AS MaThongBao, MaTK, GhiChu AS ThongBao, NgayHanhDong AS NgayThongBao, DaXem, LoaiHD, MaTruyen, SoChuong, TacGia, MaNhom, PhanHoi
FROM   dbo.HanhDongCuaTK
WHERE (LoaiHD = 4)
GO
/****** Object:  View [dbo].[TraoDoiNhom]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TraoDoiNhom]
AS
SELECT dbo.HanhDongCuaTK.MaHD AS MaTraoDoi, dbo.HanhDongCuaTK.MaNhom, dbo.TaiKhoan.MaTK AS MaTV, dbo.TaiKhoan.Avatar, dbo.HanhDongCuaTK.GhiChu AS NoiDung, dbo.HanhDongCuaTK.NgayHanhDong AS NgayViet, dbo.HanhDongCuaTK.PhanHoi, 
             dbo.HanhDongCuaTK.LoaiHD, dbo.TaiKhoan.ButDanh
FROM   dbo.HanhDongCuaTK INNER JOIN
             dbo.TaiKhoan ON dbo.HanhDongCuaTK.MaTK = dbo.TaiKhoan.MaTK
WHERE (dbo.HanhDongCuaTK.LoaiHD = 6)
GO
/****** Object:  View [dbo].[vTruyen]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE view [dbo].[vTruyen] as
SELECT A_1.MaTruyen, A_1.TenTruyen, A_1.MaLoai, A_1.TacGiaGoc, A_1.NgayTao, A_1.NgayDang, A_1.TamAn, A_1.DaDuyet, A_1.Khoa, A_1.LoaiTruyen, A_1.TinhTrang, A_1.MoTa, A_1.AnhBia, B.LuotXem as LuotThich, C.LuotThich as LuotXem
FROM   (SELECT t.MaTruyen, t.TenTruyen, t.MaLoai, t.TacGiaGoc, t.NgayTao, t.NgayDang, t.TamAn, t.DaDuyet, t.Khoa, t.LoaiTruyen, t.TinhTrang, t.MoTa, a.URL AS AnhBia
             FROM    dbo.Truyen AS t INNER JOIN
                           dbo.QuanLyHinhAnh AS a ON a.MaAnh = t.AnhBia) AS A_1 INNER JOIN
                 (SELECT t2.MaTruyen, COUNT(CASE WHEN th.MaTK IS NOT NULL THEN 1 END) AS LuotXem
                 FROM    dbo.Truyen AS t2 LEFT OUTER JOIN
                              dbo.LuotThichTruyen AS th ON th.MaTruyen = t2.MaTruyen
                 GROUP BY t2.MaTruyen) AS B ON A_1.MaTruyen = B.MaTruyen INNER JOIN
                 (SELECT t3.MaTruyen, COUNT(CASE WHEN x.MaTK IS NOT NULL THEN 1 END) AS LuotThich
                 FROM    dbo.Truyen AS t3 LEFT OUTER JOIN
                              dbo.LuotXem AS x ON x.MaTruyen = t3.MaTruyen
                 GROUP BY t3.MaTruyen) AS C ON B.MaTruyen = C.MaTruyen
WHERE (A_1.DaDuyet = CAST(1 AS bit)) AND (A_1.Khoa = CAST(0 AS BIT)) AND (A_1.TamAn = CAST(0 AS BIT))
GO
/****** Object:  View [webtruyenpt].[DanhGia]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [DanhGia] as
select MaTruyen,MaTK, NgayHanhDong as NgayDanhGia, GhiChu as DanhGia
from HanhDongCuaTK
where LoaiHD = 8
GO
/****** Object:  View [webtruyenpt].[vvTruyen]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Object:  StoredProcedure [dbo].[TIMKIEM_ADMIN]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TIMKIEM_ADMIN]
(
	@TIMKIEM NVARCHAR(100),
	@SKIP INT,
	@TAKE INT
)
AS
BEGIN
	SELECT * FROM TaiKhoan 
	WHERE VaiTro = 0 AND( MaTK like CONCAT('%',@TIMKIEM,'%')
	OR HovaTen like CONCAT('%',@TIMKIEM,'%')
	OR Mail like CONCAT('%',@TIMKIEM,'%')
	OR SDT like CONCAT('%',@TIMKIEM,'%'))
	ORDER BY MaTK
	OFFSET     @SKIP ROWS       -- skip 10 rows
	FETCH NEXT @TAKE ROWS ONLY; -- take 10 rows
END
GO
/****** Object:  StoredProcedure [dbo].[TIMKIEM_NHOM]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TIMKIEM_NHOM]
(
	@TIMKIEM NVARCHAR(100)
)
AS
BEGIN
	SELECT * FROM NhomTG
	WHERE TenNhom like concat('%',@TIMKIEM,'%')
END
GO
/****** Object:  StoredProcedure [dbo].[TIMKIEM_TACGIA]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TIMKIEM_TACGIA]
(
	@TIMKIEM NVARCHAR(100),
	@SKIP INT,
	@TAKE INT
)
AS
BEGIN
	SELECT * FROM TacGia 
	WHERE MaTG like CONCAT('%',@TIMKIEM,'%')
	OR ButDanh like CONCAT('%',@TIMKIEM,'%')
	ORDER BY NgayDangKy
	OFFSET     @SKIP ROWS       -- skip 10 rows
	FETCH NEXT @TAKE ROWS ONLY; -- take 10 rows
END
GO
/****** Object:  StoredProcedure [dbo].[TIMKIEM_TAIKHOAN]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TIMKIEM_TAIKHOAN]
(
	@TIMKIEM NVARCHAR(100),
	@SKIP INT,
	@TAKE INT
)
AS
BEGIN
	SELECT * FROM TaiKhoan 
	WHERE MaTK like CONCAT('%',@TIMKIEM,'%')
	OR HovaTen like CONCAT('%',@TIMKIEM,'%')
	OR Mail like CONCAT('%',@TIMKIEM,'%')
	OR SDT like CONCAT('%',@TIMKIEM,'%')
	ORDER BY MaTK
	OFFSET     @SKIP ROWS       -- skip 10 rows
	FETCH NEXT @TAKE ROWS ONLY; -- take 10 rows
END
GO
/****** Object:  StoredProcedure [dbo].[TIMKIEM_THELOAI]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[TIMKIEM_THELOAI] 
	@TENLOAI NVARCHAR(50) 
AS
BEGIN
    -- Insert statements for procedure here
	SELECT *
	FROM TheLoai
	WHERE dbo.f_coDau_koDau(TheLoai.TenLoai) LIKE dbo.f_coDau_koDau(CONCAT ('%', @TENLOAI, '%'))
END
GO
/****** Object:  StoredProcedure [dbo].[TIMKIEM_Truyen]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TIMKIEM_Truyen]
( 
	@TENTRUYEN NVARCHAR(100),
	@SKIP INT,
	@TAKE INT
) 
AS 
BEGIN 
IF (@TENTRUYEN IS NOT NULL)
BEGIN
	SELECT		*
	FROM        vvTruyen
	WHERE		dbo.f_coDau_koDau(TenTruyen) like dbo.f_coDau_koDau(concat('%',@TENTRUYEN,'%'))
	ORDER BY	vvTruyen.NgayDang DESC
	OFFSET     @SKIP ROWS       -- skip 10 rows
	FETCH NEXT @TAKE ROWS ONLY; -- take 10 rows
END
END
GO
/****** Object:  StoredProcedure [dbo].[TIMKIEM_Truyen2]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TIMKIEM_Truyen2]
( 
	@TENTRUYEN NVARCHAR(100),
	@SKIP INT,
	@TAKE INT
) 
AS 
BEGIN 
IF (@TENTRUYEN IS NOT NULL)
BEGIN
	SELECT		*
	FROM        Truyen
	WHERE		dbo.f_coDau_koDau(TenTruyen) like dbo.f_coDau_koDau(concat('%',@TENTRUYEN,'%'))
	ORDER BY	MaTruyen DESC
	OFFSET     @SKIP ROWS       -- skip 10 rows
	FETCH NEXT @TAKE ROWS ONLY; -- take 10 rows
END
END
GO
/****** Object:  StoredProcedure [webtruyenpt].[layAnhTruyenTranh]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [layAnhTruyenTranh]
(
	@noiDung nvarchar(max)
)
as
select * from QuanLyHinhAnh
where MaAnh in (select * from STRING_SPLIT (@noiDung,','))
GO
/****** Object:  StoredProcedure [webtruyenpt].[TIMKIEMTV]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [TIMKIEMTV] 
(
	@MANHOM INT,
	@TIMKIEM NVARCHAR(100)
)
as
	select TaiKhoan.MaTK, ButDanh,Ngayvaonhom, Avatar, ThanhVienNhom.Vaitro
	from ThanhVienNhom
	inner join TaiKhoan  
	on ThanhVienNhom.MaTK = TaiKhoan.MaTK
	where ButDanh like CONCAT ('%',@TIMKIEM,'%') and DaDuyet = cast(1 as bit)
	and MaNhom = @MANHOM
GO
/****** Object:  StoredProcedure [webtruyenpt].[tkLuotTheoDoi]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [tkLuotTheoDoi](
	@ngay int,
	@maTK int
)
as
declare @time table(
	t date
)

declare @j int=0
while @j!=@ngay
begin
	insert into @time(t) values(dateadd(day,-@j,GETDATE()))
	select @j=@j+1
end
select t as Ngay,count(lx.Ngaytheodoi) as SoLuong from @time t left join (select * from TheodoTG where MaTG = @maTK) as lx
on t.t = cast(lx.Ngaytheodoi as date)
group by t.t
GO
/****** Object:  StoredProcedure [webtruyenpt].[tkLuotThich]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [tkLuotThich](
	@ngay int,
	@maTK int
)
as
declare @time table(
	t date
)

declare @j int=0
while @j!=@ngay
begin
	insert into @time(t) values(dateadd(day,-@j,GETDATE()))
	select @j=@j+1
end
select t as Ngay,count(lx.NgayThich) as SoLuong from @time t left join (
select lt.* from LuotThichTruyen lt, Truyen tr, TacGia tg, TruyenTacGia tr_tg
where lt.MaTruyen = tr.MaTruyen and 
tr_tg.MaTK = tg.MaTG and
tr_tg.MaTruyen = tr.MaTruyen and
MaTG = @MaTK) as lx
on t.t = cast(lx.NgayThich as date)
group by t.t
GO
/****** Object:  StoredProcedure [webtruyenpt].[tkLuotXem]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [tkLuotXem](
	@ngay int,
	@maTK int
)
as
declare @time table(
	t date
)

declare @j int=0
while @j!=@ngay
begin
	insert into @time(t) values(dateadd(day,-@j,GETDATE()))
	select @j=@j+1
end
select t as Ngay,count(lx.NgayXem) as SoLuong from @time t left join (
select lt.* from LuotXem lt, Truyen tr, TacGia tg, TruyenTacGia tr_tg
where lt.MaTruyen = tr.MaTruyen and 
tr_tg.MaTK = tg.MaTG and
tr_tg.MaTruyen = tr.MaTruyen and
MaTG = @MaTK
) as lx
on t.t = cast(lx.NgayXem as date)
group by t.t
GO
CREATE VIEW [vvTruyen]
AS
SELECT MaTruyen, TenTruyen, LuotXem, LuotThich, NgayDang, AnhBia, MaLoai, dbo.laySoChuong(1, MaTruyen) AS SoChuong1, dbo.laySoChuong(2, MaTruyen) AS SoChuong2, dbo.laySoChuong(3, MaTruyen) AS SoChuong3, dbo.layTenChuong(1, 
             MaTruyen) AS TenChuong1, dbo.layTenChuong(2, MaTruyen) AS TenChuong2, dbo.layTenChuong(3, MaTruyen) AS TenChuong3, LoaiTruyen
FROM   dbo.vTruyen
WHERE (DaDuyet = CAST(1 AS bit))
GO
create trigger [dbo].[trg_xoaTruyen] on [dbo].[Truyen] INSTEAD OF delete
as
begin
	declare @maTruyen int
	select @maTruyen = MaTruyen from deleted
	delete TruyenTacGia where MaTruyen = @maTruyen
	delete HanhDongCuaTK where MaTruyen = @maTruyen
	delete ChuongTruyen where MaTruyen = @maTruyen
	delete Truyen where MaTruyen = @maTruyen
end
go 
create trigger [dbo].[trg_xoaChuong] on [dbo].[ChuongTruyen] FOR delete
as
begin
	declare @maTruyen int, @soChuong int
	update ChuongTruyen set SoChuong = SoChuong - 1 where MaTruyen = @maTruyen and SoChuong > @soChuong
end
/****** Object:  Table [dbo].[ChuongTruyen]    Script Date: 9/18/2021 9:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (1, N'Lồng An Phúc', N'anphuc@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'0123456789', CAST(N'2021-07-11T10:47:21.850' AS DateTime), 0, CAST(N'2021-09-16T15:29:24.373' AS DateTime), N'/Asset/TaiKhoan/Avatar/1-201993907_1676392532553534_2333070533641069708_n.jpg', 6, N'Phúc', CAST(N'2021-07-31T15:02:52.353' AS DateTime))
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (2, N'Đoàn Thị Thu Thảo', N'thuthao@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'0972345345', CAST(N'2021-07-11T10:47:21.850' AS DateTime), 0, CAST(N'2021-09-16T15:32:41.517' AS DateTime), N'/Asset/TaiKhoan/Avatar/2-211226356_1560097657656922_8485193369241692719_n.jpg', 6, N'AZĐoàn', CAST(N'2021-09-14T18:43:21.090' AS DateTime))
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (3, N'Nguyễn Văn A', N'nguyenvana@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'0123456788', CAST(N'2021-07-31T15:08:37.073' AS DateTime), 0, CAST(N'2021-09-05T20:06:48.660' AS DateTime), NULL, 3, N'Nguyễn Văn A', CAST(N'2021-07-31T15:08:52.430' AS DateTime))
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (12, N'Cicero Lebsack', N'mikayla5@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456794', CAST(N'2021-08-01T17:09:35.850' AS DateTime), 0, NULL, NULL, 3, N'Tác Giả Nghiệp Dư', CAST(N'2021-08-04T22:35:05.797' AS DateTime))
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (13, N'Althea Haag', N'rose6@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456795', CAST(N'2021-08-01T17:09:35.853' AS DateTime), 0, NULL, NULL, 3, N'Tác Giả Chuyên Nghiệp', CAST(N'2021-08-04T22:36:42.277' AS DateTime))
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (14, N'Estell Stracke', N'clair7@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456796', CAST(N'2021-08-01T17:09:35.857' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (15, N'Shemar Schuster', N'grayce8@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456797', CAST(N'2021-08-01T17:09:35.860' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (16, N'Bryce Reilly', N'darrin9@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456798', CAST(N'2021-08-01T17:09:35.863' AS DateTime), 0, NULL, NULL, 6, N'Bryce Reilly', CAST(N'2021-09-05T16:18:02.490' AS DateTime))
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (17, N'Eli Haag', N'charles10@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456799', CAST(N'2021-08-01T17:09:35.863' AS DateTime), 0, NULL, NULL, 2, N'Eli Haag', CAST(N'2021-09-14T18:25:23.227' AS DateTime))
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (18, N'Bret Parker', N'renee11@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456800', CAST(N'2021-08-01T17:09:35.870' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (19, N'Hailie Skiles', N'kale12@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456801', CAST(N'2021-08-01T17:09:35.873' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (20, N'Mrs. Ruben Walsh V', N'jaylan13@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456802', CAST(N'2021-08-01T17:09:35.877' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (21, N'Ms. Fred Stokes II', N'alene14@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456803', CAST(N'2021-08-01T17:09:35.883' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (22, N'Mrs. Arnaldo Wisozk III', N'lane15@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456804', CAST(N'2021-08-01T17:09:35.887' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (23, N'Edwardo Ullrich', N'al16@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456805', CAST(N'2021-08-01T17:09:35.890' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (24, N'Prof. Sid Alexandria Koch Jr.', N'maximillian17@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456806', CAST(N'2021-08-01T17:09:35.897' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (25, N'Shannon Macejkovic', N'lea18@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456807', CAST(N'2021-08-01T17:09:35.897' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (26, N'Bernhard Hoeger', N'garett19@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456808', CAST(N'2021-08-01T17:09:35.903' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (27, N'Adrain Volkman', N'cordia20@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456809', CAST(N'2021-08-01T17:09:35.907' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (28, N'Miss Emily Cassin DVM', N'annamarie21@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456810', CAST(N'2021-08-01T17:09:35.910' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (29, N'Kaylie Kirlin', N'angel22@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456811', CAST(N'2021-08-01T17:09:35.913' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (30, N'Garth Beahan', N'myrl23@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456812', CAST(N'2021-08-01T17:09:35.917' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (31, N'Rod Rowe III', N'alexander24@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456813', CAST(N'2021-08-01T17:09:35.920' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (32, N'Noah Lakin', N'monroe25@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456814', CAST(N'2021-08-01T17:09:35.923' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (33, N'Isac Lemke', N'pablo26@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456815', CAST(N'2021-08-01T17:09:35.927' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (34, N'Florida Brown', N'erik27@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456816', CAST(N'2021-08-01T17:09:35.927' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (35, N'Miss Pedro Nicklaus Rempel', N'elroy28@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456817', CAST(N'2021-08-01T17:09:35.933' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (36, N'Mrs. Velda Krajcik DVM', N'eladio29@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456818', CAST(N'2021-08-01T17:09:35.943' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (37, N'Ms. Ben Erich Williamson III', N'jack30@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456819', CAST(N'2021-08-01T17:09:35.960' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (38, N'Jammie Nitzsche', N'assunta31@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456820', CAST(N'2021-08-01T17:09:35.967' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (39, N'Ms. Jarret Sanford MD', N'abe32@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456821', CAST(N'2021-08-01T17:09:35.973' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (40, N'Prof. Fabian Fisher V', N'jerad33@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456822', CAST(N'2021-08-01T17:09:35.980' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (41, N'Thad Turner', N'enid34@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456823', CAST(N'2021-08-01T17:09:35.987' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (42, N'Curtis Fadel', N'nick35@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456824', CAST(N'2021-08-01T17:09:35.993' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (43, N'Mrs. Karolann Brendon Macejkovic', N'ardella36@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456825', CAST(N'2021-08-01T17:09:36.000' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (44, N'Davonte Cruickshank V', N'wilmer37@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456826', CAST(N'2021-08-01T17:09:36.007' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (45, N'Josie Jonas Yost I', N'clyde38@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456827', CAST(N'2021-08-01T17:09:36.013' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (46, N'Granville Roob', N'itzel39@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456828', CAST(N'2021-08-01T17:09:36.020' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (47, N'Elouise Gulgowski I', N'julio40@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456829', CAST(N'2021-08-01T17:09:36.027' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (48, N'Madelyn Gaylord', N'daren41@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456830', CAST(N'2021-08-01T17:09:36.033' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (49, N'Isabelle McKenzie', N'kaylah42@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456831', CAST(N'2021-08-01T17:09:36.043' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (50, N'Louvenia Denesik', N'alvera43@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456832', CAST(N'2021-08-01T17:09:36.050' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (51, N'Miss Demetrius Rickie Streich', N'ava44@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456833', CAST(N'2021-08-01T17:09:36.063' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (52, N'Alyce Schuppe', N'hipolito45@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456834', CAST(N'2021-08-01T17:09:36.067' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (53, N'Oral Crona', N'mya46@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456835', CAST(N'2021-08-01T17:09:36.077' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (54, N'Julianne Eichmann', N'emile47@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456836', CAST(N'2021-08-01T17:09:36.080' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (55, N'Mr. Tatum Murazik', N'kayley48@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456837', CAST(N'2021-08-01T17:09:36.090' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (56, N'Mrs. Mac Klein', N'jammie49@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456838', CAST(N'2021-08-01T17:09:36.097' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (57, N'Prof. Valentine Langworth', N'macie50@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456839', CAST(N'2021-08-01T17:09:36.100' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (58, N'Doris Bartholome Larkin V', N'theo51@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456840', CAST(N'2021-08-01T17:09:36.107' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (59, N'Russel Luettgen', N'greg52@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456841', CAST(N'2021-08-01T17:09:36.110' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (60, N'Elody Mayert', N'adan53@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456842', CAST(N'2021-08-01T17:09:36.113' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (61, N'Prof. Kraig Kobe Hermann IV', N'joseph54@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456843', CAST(N'2021-08-01T17:09:36.117' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (62, N'Valentina Stark Jr.', N'genevieve55@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456844', CAST(N'2021-08-01T17:09:36.123' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (63, N'Dr. Arnold D''Amore DDS', N'isaias56@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456845', CAST(N'2021-08-01T17:09:36.130' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (64, N'Mr. Santina Towne DDS', N'turner57@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456846', CAST(N'2021-08-01T17:09:36.230' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (65, N'Estella Hoeger', N'valentina58@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456847', CAST(N'2021-08-01T17:09:36.237' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (66, N'Mathilde Emmerich', N'astrid59@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456848', CAST(N'2021-08-01T17:09:36.243' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (67, N'Ettie White', N'ellen60@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456849', CAST(N'2021-08-01T17:09:36.250' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (68, N'Giovani Parisian', N'niko61@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456850', CAST(N'2021-08-01T17:09:36.257' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (69, N'Ms. Kylee Hilpert Sr.', N'gracie62@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456851', CAST(N'2021-08-01T17:09:36.263' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (70, N'Enos Kareem Johnston IV', N'melyna63@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456852', CAST(N'2021-08-01T17:09:36.277' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (71, N'Maureen Flatley', N'annie64@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456853', CAST(N'2021-08-01T17:09:36.283' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (72, N'Daisha Heaven Kozey I', N'candida65@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456854', CAST(N'2021-08-01T17:09:36.293' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (73, N'Tito Stoltenberg', N'wilmer66@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456855', CAST(N'2021-08-01T17:09:36.303' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (74, N'Keenan Nitzsche', N'georgianna67@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456856', CAST(N'2021-08-01T17:09:36.313' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (75, N'Lucio Wehner', N'lionel68@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456857', CAST(N'2021-08-01T17:09:36.323' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (76, N'Mrs. Luther Welch IV', N'vladimir69@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456858', CAST(N'2021-08-01T17:09:36.333' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (77, N'Adella Batz', N'harvey70@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456859', CAST(N'2021-08-01T17:09:36.343' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (78, N'Dr. Kelli O''Connell', N'jason71@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456860', CAST(N'2021-08-01T17:09:36.350' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (79, N'Kaley Skiles MD', N'freeda72@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456861', CAST(N'2021-08-01T17:09:36.357' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (80, N'Janet Lesch', N'joelle73@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456862', CAST(N'2021-08-01T17:09:36.363' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (81, N'Miss Jazmin Reichert', N'casper74@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456863', CAST(N'2021-08-01T17:09:36.370' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (82, N'Alexandra Ritchie V', N'zelma75@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456864', CAST(N'2021-08-01T17:09:36.373' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (83, N'Ed Stracke', N'alysa76@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456865', CAST(N'2021-08-01T17:09:36.380' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (84, N'Mr. Kiana Zachariah Wilkinson', N'lizzie77@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456866', CAST(N'2021-08-01T17:09:36.390' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (85, N'Arno Al Kunze II', N'mark78@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456867', CAST(N'2021-08-01T17:09:36.397' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (86, N'Lela Schaden', N'adelbert79@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456868', CAST(N'2021-08-01T17:09:36.403' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (87, N'Mrs. Lew Eldora Stokes DDS', N'ross80@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456869', CAST(N'2021-08-01T17:09:36.410' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (88, N'Ms. Columbus Nathan Powlowski IV', N'zora81@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456870', CAST(N'2021-08-01T17:09:36.420' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (89, N'Kristofer Jakubowski', N'annie82@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456871', CAST(N'2021-08-01T17:09:36.427' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (90, N'Prof. Liliane Bertram Bogan', N'ciara83@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456872', CAST(N'2021-08-01T17:09:36.433' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (91, N'Dr. Howell Forest Towne', N'mariela84@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456873', CAST(N'2021-08-01T17:09:36.443' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (92, N'Prof. Hallie Tristian Pfannerstill', N'katherine85@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456874', CAST(N'2021-08-01T17:09:36.453' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (93, N'Shaylee Auer', N'daphne86@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456875', CAST(N'2021-08-01T17:09:36.463' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (94, N'Solon Jacobs', N'andreanne87@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456876', CAST(N'2021-08-01T17:09:36.477' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (95, N'Prof. Jamie Johns', N'dolly88@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456877', CAST(N'2021-08-01T17:09:36.490' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (96, N'Miss Erica Jones', N'lisa89@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456878', CAST(N'2021-08-01T17:09:36.510' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (98, N'Miss Viva Goodwin', N'mariano91@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456880', CAST(N'2021-08-01T17:09:36.533' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (101, N'Scot Hudson', N'kelli94@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456883', CAST(N'2021-08-01T17:09:36.570' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (102, N'Christelle Pagac MD', N'elroy95@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456884', CAST(N'2021-08-01T17:09:36.583' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (104, N'Sonia Volkman', N'emmanuel97@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456886', CAST(N'2021-08-01T17:09:36.607' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (105, N'Augustine Treutel', N'scarlett98@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456887', CAST(N'2021-08-01T17:09:36.617' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (106, N'Mr. Crystel Littel', N'greg99@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456888', CAST(N'2021-08-01T17:09:36.633' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (107, N'Nia Grady', N'jeanette100@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', N'123456889', CAST(N'2021-08-01T17:09:36.643' AS DateTime), 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (108, N'Admin', N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, CAST(N'2021-07-11T11:06:29.460' AS DateTime), 0, CAST(N'2021-09-05T18:35:46.350' AS DateTime), NULL, 0, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (114, N'An Phúc', N'AnPhuc', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, CAST(N'2021-09-14T15:25:44.270' AS DateTime), 2, CAST(N'2021-09-16T14:20:22.983' AS DateTime), NULL, 0, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([MaTK], [HovaTen], [Mail], [MatKhau], [SDT], [NgayTao], [TinhTrang], [NgayKhoa], [Avatar], [VaiTro], [ButDanh], [ngayDKTG]) VALUES (115, N'Thu thảo', N'thuthao', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, CAST(N'2021-09-14T15:30:26.493' AS DateTime), 0, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[QuanLyHinhAnh] ON 

INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (46, 2, N'/Asset/TacGia/Anh/6b68653a-38fd-4dee-a650-deab98354a38_6032781654b808129056318e.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (47, 2, N'/Asset/TacGia/Anh/59455ef9-7609-4552-9845-c9d5aabaf4f0_611cf4153e48b.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (48, 2, N'/Asset/TacGia/Anh/41fcd9a2-a78a-4ee9-af98-68f8ef5aee2d_000-1629287476.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (49, 2, N'/Asset/TacGia/Anh/ffe16ae2-6686-4f30-84e8-a9d9944845d9_001-1629287477.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (50, 2, N'/Asset/TacGia/Anh/830797fd-35b9-4714-8c5d-cbb792c91af8_002-1629287480.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (51, 2, N'/Asset/TacGia/Anh/711673e2-e8b8-4942-8813-1e396f467704_003-1629287481.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (52, 2, N'/Asset/TacGia/Anh/d2dae492-c088-41d0-a802-2b0471e30e31_004-1629287483.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (53, 2, N'/Asset/TacGia/Anh/2be1ead2-cc0a-4fea-b1c2-0b51fda549ed_005-1629287484.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (54, 2, N'/Asset/TacGia/Anh/89c2c80a-dc6d-4caf-bcc6-decdbc51a4d3_006-1629287486.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (55, 2, N'/Asset/TacGia/Anh/5c343947-d1e0-4aee-abc8-4212a0401183_007-1629287487.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (56, 2, N'/Asset/TacGia/Anh/7768245e-2b1b-41d4-bba8-c56eb8fa9557_008-1629287489.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (57, 2, N'/Asset/TacGia/Anh/2925ea70-c9b1-4687-9d44-58338c54dc36_009-1629287490.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (58, 2, N'/Asset/TacGia/Anh/ab7da1de-ded8-49f4-967d-186519c0614d_58f76621ef21ec599104c390.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (59, 2, N'/Asset/TacGia/Anh/9e9e0697-360d-46c6-85f8-d22860b8ad32_5cc0008e54b8083995c9912e.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (60, 1, N'/Asset/TacGia/Anh/cc2e14d4-7e4e-48b2-87de-3a22ed4ff330_truyen-ngan-doraemon-moi-nhat.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (61, 1, N'/Asset/TacGia/Anh/63de5b87-f5a2-428a-b2ab-e6a2c458ba98_7.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (62, 1, N'/Asset/TacGia/Anh/0e4f6a47-5042-40c6-81a6-e338e8fa133b_8.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (63, 1, N'/Asset/TacGia/Anh/eb75415b-5f4d-4d18-a429-fd811f792570_9.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (64, 1, N'/Asset/TacGia/Anh/bcdbc7d6-5f5f-4db5-b17a-e987b36a7b5f_10.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (65, 1, N'/Asset/TacGia/Anh/44cdc6ee-cd2b-4737-b669-d0a79ccbd406_11.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (66, 1, N'/Asset/TacGia/Anh/3b4d1b8c-b692-4a1e-9f8a-e8045d5ab744_12.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (67, 1, N'/Asset/TacGia/Anh/fa8716fe-d103-4fdb-be86-da516640f85b_13.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (68, 1, N'/Asset/TacGia/Anh/a34525e5-72e9-4bad-8ca3-a4120abc1e4f_14.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (69, 1, N'/Asset/TacGia/Anh/bb2775ae-020f-4670-bade-ba8965044d2d_15.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (70, 1, N'/Asset/TacGia/Anh/a60d0583-303f-4f11-bea7-8217dade3a1c_16.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (71, 1, N'/Asset/TacGia/Anh/8a37c500-aef4-4ae7-84df-5449c75b308d_17.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (72, 1, N'/Asset/TacGia/Anh/845cfc44-e1a9-475f-9cb4-b5320e41db81_18.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (73, 1, N'/Asset/TacGia/Anh/b2205ec7-1ebc-4c07-999a-1ec765c99a8f_6.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (74, 1, N'/Asset/TacGia/Anh/2088e5bb-4c36-48af-bc9d-fbea6f8a1ec7_7.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (75, 1, N'/Asset/TacGia/Anh/638272ae-473c-4aa6-9dda-20719c3e3e5d_8.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (76, 1, N'/Asset/TacGia/Anh/afd70700-4df9-43e4-a18f-1b75329755e2_9.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (77, 1, N'/Asset/TacGia/Anh/941809d8-3f11-49ae-a6ae-63ed465b2b7b_10.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (78, 1, N'/Asset/TacGia/Anh/c55b7725-4bd0-4823-aead-460f69a0038e_11.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (79, 1, N'/Asset/TacGia/Anh/821d789a-7919-40c4-ad59-0844fc62e53d_12.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (80, 1, N'/Asset/TacGia/Anh/50da9b7e-6723-4ce2-a72d-618ccb81be32_13.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (81, 1, N'/Asset/TacGia/Anh/671509a5-9a34-42f3-8e90-6a1c9288a158_14.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (82, 1, N'/Asset/TacGia/Anh/b643cad7-b5e1-4ddc-9582-6c8fa4e19e30_15.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (83, 1, N'/Asset/TacGia/Anh/6da4ed2e-29ea-44f1-bf5e-caf462212c99_16.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (84, 1, N'/Asset/TacGia/Anh/4a6fa226-0841-4e05-8735-183bdcb45c3f_17.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (85, 1, N'/Asset/TacGia/Anh/924da4d2-7413-43e0-9c03-c26698377e7b_5c7f702f54b8083c1834c755.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (86, 3, N'/Asset/TacGia/Anh/6fb2c487-e974-4ca5-8e89-22e8d4a2d300_5f2f7b4b5b404.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (87, 3, N'/Asset/TacGia/Anh/e8a6b875-8f47-4663-bbcc-b94b6023fa09_cao-nang-lai-tap-truyendl-000-1596947310.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (88, 3, N'/Asset/TacGia/Anh/db40c35f-269d-49f7-b3c9-bbc92c409c2e_cao-nang-lai-tap-truyendl-001-1596947312.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (89, 3, N'/Asset/TacGia/Anh/641175e3-5ede-47f4-aa19-dc5a946327ec_cao-nang-lai-tap-truyendl-002-1596947314.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (90, 3, N'/Asset/TacGia/Anh/15b4f021-fceb-484f-ab0a-18f8507f4b90_cao-nang-lai-tap-truyendl-003-1596947315.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (91, 3, N'/Asset/TacGia/Anh/9527cfdc-8606-49a2-9207-acc019d42476_cao-nang-lai-tap-truyendl-004-1596947317.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (92, 3, N'/Asset/TacGia/Anh/1325e6d9-2d17-442f-bf52-a41fc6141480_cao-nang-lai-tap-truyendl-005-1596947318.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (93, 3, N'/Asset/TacGia/Anh/f0fc181c-06d5-4977-83a0-57fbec6ba2d6_cao-nang-lai-tap-truyendl-006-1596947320.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (94, 3, N'/Asset/TacGia/Anh/22d56cf0-571d-46dc-bf6d-7d44f98431fe_cao-nang-lai-tap-truyendl-007-1596947321.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (95, 3, N'/Asset/TacGia/Anh/f1a06185-bea7-48e0-97f0-d39f744a9971_cao-nang-lai-tap-truyendl-008-1596947323.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (96, 3, N'/Asset/TacGia/Anh/04684d5b-466d-4844-a156-5ed16869436d_cao-nang-lai-tap-truyendl-009-1596947324.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (97, 3, N'/Asset/TacGia/Anh/e8425a59-4cea-464f-b33e-8e4d497c0ef5_cao-nang-lai-tap-truyendl-010-1596947326.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (98, 3, N'/Asset/TacGia/Anh/652542a3-d055-4ab5-b800-00387434b71d_cao-nang-lai-tap-truyendl-011-1596947327.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (99, 3, N'/Asset/TacGia/Anh/e6bb67b1-32c2-4d7f-a804-6c328a768190_cao-nang-lai-tap-truyendl-012-1596947329.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (100, 3, N'/Asset/TacGia/Anh/3f079d62-281e-438f-b154-f644cae47de1_cao-nang-lai-tap-truyendl-000-1596947317.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (101, 3, N'/Asset/TacGia/Anh/e79f785f-1582-4d00-9130-942286691be2_cao-nang-lai-tap-truyendl-001-1596947318.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (102, 3, N'/Asset/TacGia/Anh/4e6651e7-4da3-4da2-81cc-f53721c1c19a_cao-nang-lai-tap-truyendl-002-1596947320.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (103, 3, N'/Asset/TacGia/Anh/b2be45c0-5a7b-4fd1-8ce6-613dde2f96ba_cao-nang-lai-tap-truyendl-003-1596947322.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (104, 3, N'/Asset/TacGia/Anh/dad44d0d-6dc1-4035-86b8-b0cbcabda8d8_cao-nang-lai-tap-truyendl-004-1596947323.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (105, 3, N'/Asset/TacGia/Anh/e998e6c2-e43c-4af5-9c5b-4e6c387e165e_cao-nang-lai-tap-truyendl-005-1596947325.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (106, 3, N'/Asset/TacGia/Anh/92583415-37bb-4d45-a09e-f17f7d849649_cao-nang-lai-tap-truyendl-006-1596947326.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (107, 3, N'/Asset/TacGia/Anh/aac91a3e-5798-4ed3-8e13-1c843031a33b_cao-nang-lai-tap-truyendl-007-1596947328.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (108, 3, N'/Asset/TacGia/Anh/99dd8f51-ffc1-4c17-8b8c-4e8544c2910e_cao-nang-lai-tap-truyendl-008-1596947329.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (109, 3, N'/Asset/TacGia/Anh/1dfd3aeb-2f6b-4c81-9f7a-081b0763f230_cao-nang-lai-tap-truyendl-010-1596947332.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (110, 3, N'/Asset/TacGia/Anh/52c6e589-da54-49ba-b170-4e565af6713e_cao-nang-lai-tap-truyendl-011-1596947334.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (111, 3, N'/Asset/TacGia/Anh/a8730ee0-58fb-4960-8eaf-9e4c99622c7a_cao-nang-lai-tap-truyendl-012-1596947335.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (112, 3, N'/Asset/TacGia/Anh/723af563-6e16-4334-ad66-37c8358f721f_cao-nang-lai-tap-truyendl-014-1596947338 (1).png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (113, 3, N'/Asset/TacGia/Anh/7d47cd10-4b83-4f9b-a28a-db7fcbf8b063_cao-nang-lai-tap-truyendl-015-1596947340.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (114, 3, N'/Asset/TacGia/Anh/f82918e0-1663-472a-a0e1-dbf71c542f63_cao-nang-lai-tap-truyendl-016-1596947341.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (115, 3, N'/Asset/TacGia/Anh/b6ef3a12-66e4-4513-a27d-2ea2d3d45d8d_cao-nang-lai-tap-truyendl-017-1596947343.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (116, 3, N'/Asset/TacGia/Anh/669ef56c-78b1-42b7-ab5b-cf07503663ba_cao-nang-lai-tap-truyendl-018-1596947344.png')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (117, 3, N'/Asset/TacGia/Anh/193a27d1-2eb9-4801-b27c-5d6da4681b7c_lessa-thumbnail-origin.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (118, 3, N'/Asset/TacGia/Anh/02a13c3d-833c-48bd-ae6e-086c44584310_1436625438-Lessa-Chap-1-ve-chai-03.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (119, 3, N'/Asset/TacGia/Anh/45b460a8-8d4c-4dc8-8411-f5b50e78d28f_1436625438-Lessa-Chap-1-ve-chai-04 (1).jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (120, 3, N'/Asset/TacGia/Anh/f19cd67d-bcd5-4bb7-9edf-c7d18ba7d610_1436625438-Lessa-Chap-1-ve-chai-04.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (121, 3, N'/Asset/TacGia/Anh/04a91e2d-693c-4285-a0d5-e3a629a626aa_1436625438-Lessa-Chap-1-ve-chai-05.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (122, 3, N'/Asset/TacGia/Anh/5c7eca4a-ffc6-45f4-991d-e91c75e4f4cb_1436625438-Lessa-Chap-1-ve-chai-06.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (123, 3, N'/Asset/TacGia/Anh/c470c231-0a2f-4b13-a429-fbd3954ad52b_1436625438-Lessa-Chap-1-ve-chai-07 (1).jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (124, 3, N'/Asset/TacGia/Anh/36a4b983-dea8-43a1-8f08-a2c457e6e7b0_1436625438-Lessa-Chap-1-ve-chai-07.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (125, 3, N'/Asset/TacGia/Anh/b816cc02-2d5f-45fb-a03e-88a57d3299b1_1436625438-Lessa-Chap-1-ve-chai-08 (1).jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (126, 3, N'/Asset/TacGia/Anh/39e323a2-99ec-4500-bfdc-a3f613ee8476_1436625438-Lessa-Chap-1-ve-chai-08.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (127, 3, N'/Asset/TacGia/Anh/0b82a4b3-e755-4520-bfbd-34830e9f6065_1436625438-Lessa-Chap-1-ve-chai-09.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (128, 3, N'/Asset/TacGia/Anh/cc4eb5ea-6a47-49b7-9762-ecf4873940c8_1436625438-Lessa-Chap-1-ve-chai-10.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (129, 12, N'/Asset/TacGia/Anh/f336efb9-9f71-4f5d-98c2-505dcd530586_aassanhtrangvakehailongnDWdcWAlo4.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (130, 12, N'/Asset/TacGia/Anh/ce13edb0-947f-4e60-b688-240e9709619f_aasslamotcogaimanhmeemhieuthenaolacodonANdvZSTNhW.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (131, 12, N'/Asset/TacGia/Anh/a833bb5c-25ca-45cd-8c58-e897bc55f7e3_chu-oc-sen.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (132, 12, N'/Asset/TacGia/Anh/f44e3fcc-1728-46ae-9f6b-dfbab49ca4ef_tu-cam-thanh-1.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (133, 12, N'/Asset/TacGia/Anh/64cdc20a-f526-4c52-ac18-c8381be4aa3b_hinh-anh-ke-chuyen-be-nghe-truyen-co-tich-con-qua-thong-minh-3.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (134, 16, N'/Asset/TacGia/Anh/cc92ce4b-618c-41be-9854-ee3965940ad4_5f8d3d6b208c3.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (135, 16, N'/Asset/TacGia/Anh/99c9d781-7824-45e1-bc7c-0a904d38982c_trong-bong-toi-chap-11-2-5f8d3d8a0f848.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (136, 16, N'/Asset/TacGia/Anh/5b813779-252e-4afe-bac0-5a1448c242f5_trong-bong-toi-chap-12-1-5f8d3d8ca0eac.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (137, 16, N'/Asset/TacGia/Anh/cef569d1-ae43-463b-a6f1-2bcf0d760235_trong-bong-toi-chap-12-2-5f8d3d8d151a1.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (138, 16, N'/Asset/TacGia/Anh/d4f55319-ab14-4402-a49c-47bbd2be560d_trong-bong-toi-chap-12-3-5f8d3d8d7d580.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (139, 16, N'/Asset/TacGia/Anh/e92c45db-8c98-4af7-8822-c0840da8ba04_trong-bong-toi-chap-12-4-5f8d3d8e48c07.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (140, 16, N'/Asset/TacGia/Anh/af000ae8-b55e-4084-97f1-f449de5abdc2_trong-bong-toi-chap-12-6-5f8d3d8f2caad.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (141, 16, N'/Asset/TacGia/Anh/c7436faf-d650-4b8d-822d-907698156998_trong-bong-toi-chap-13-1-5f8d3d8fcf110.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (142, 16, N'/Asset/TacGia/Anh/dfb8c8e9-29fd-4135-9331-a22f5ab29c5a_trong-bong-toi-chap-13-2-5f8d3d90307a7.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (143, 16, N'/Asset/TacGia/Anh/fb09cc59-e3fc-459c-bbd1-08dcc664c7ad_trong-bong-toi-chap-13-3-5f8d3d9095770.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (144, 16, N'/Asset/TacGia/Anh/77ac89c3-b0a9-45f4-8225-fd4b06d845c7_trong-bong-toi-chap-13-4-5f8d3d9104e8e.jpg')
GO
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (145, 16, N'/Asset/TacGia/Anh/75560d63-1100-4e0a-bd5d-cc8d832f3b3a_trong-bong-toi-chap-13-5f8d3d8f2e317.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (146, 16, N'/Asset/TacGia/Anh/3a2e31cf-5b47-4b5e-b34a-c7cc0f277bb9_trong-bong-toi-chap-13-6-5f8d3d92a82e3 (1).jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (147, 16, N'/Asset/TacGia/Anh/c856c4a5-3da9-4a57-9a58-ddc29de77b55_trong-bong-toi-chap-13-6-5f8d3d92a82e3.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (148, 16, N'/Asset/TacGia/Anh/b3af12fd-57d8-4c25-af9c-eafbf052ffa6_trong-bong-toi-chap-13-7-5f8d3d9346e84.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (149, 16, N'/Asset/TacGia/Anh/b6e6d3fb-88cb-4ed0-8b8f-b36f261e732d_trong-bong-toi-chap-13-8-5f8d3d939e5de.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (150, 16, N'/Asset/TacGia/Anh/f1dde753-9669-4899-8c56-1c0c4105c9c8_trong-bong-toi-chap-13-9-5f8d3d9428f25.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (151, 16, N'/Asset/TacGia/Anh/4989fc26-ee3d-47a4-bee0-5e3f597cb2f5_trong-bong-toi-chap-13-11-5f8d3d954bf00.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (152, 16, N'/Asset/TacGia/Anh/296ece0c-bb2a-4c30-9464-117c611c1816_59884ea4ef21ec50d46b2e98.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (153, 1, N'/Asset/TacGia/Anh/61fc894b-e3fe-4706-a6ed-f66fdd69c888_64953_large.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (154, 13, N'/Asset/TacGia/Anh/f733a7cb-8968-44c7-a20d-d34082470389_5b7c0cf254b8085399d78d89.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (155, 13, N'/Asset/TacGia/Anh/7f7ab78a-8307-436d-8c89-a4e008d19fc9_607f3c6f54b808134143f563.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (156, 13, N'/Asset/TacGia/Anh/ddf6c49a-2ab1-456a-8412-3a2854e015b6_5eee339654b8084a60f95ec7.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (157, 13, N'/Asset/TacGia/Anh/d1aff056-ec4f-4cc9-86e0-9a19bb67f54a_613cd36854b808791c96622a.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (158, 13, N'/Asset/TacGia/Anh/58697d65-3fbe-4dbc-85fd-3bbe8c69e4e3_5a057bedef21ec74582b3049.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (159, 2, N'/Asset/TacGia/Anh/a01d46cb-20bc-46bd-9bba-f28dd8fc7be2_5c4fefaa54b80805d515d481.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (160, 2, N'/Asset/TacGia/Anh/9b6b5e1e-1b2e-48a8-a562-2515101ec371_58b9e21e70957c654bb99564.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (161, 2, N'/Asset/TacGia/Anh/d535727a-6a0f-434b-9dab-8393afce449a_57d64e7f70957c7bf362a3ed.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (162, 1, N'/Asset/TacGia/Anh/0ea54aa0-7450-42f1-823f-4403725d6ad1_5da6df2654b8085abd4700fc.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (163, 13, N'/Asset/TacGia/Anh/5e4e4f8d-b428-4b9d-8a4d-f180956463ec_5940a7c5ef21ec56a42ade4f.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (164, 13, N'/Asset/TacGia/Anh/d32f0f9c-85b6-4f50-bd91-82c0b1b5bf12_5e3ba82354b8085ba25543a5.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (165, 2, N'/Asset/TacGia/Anh/6483f8e5-0d2b-493a-aa32-93d4a99e7781_1576580872-171899afb9cae7e4b726f03d7947249c.jpg')
INSERT [dbo].[QuanLyHinhAnh] ([MaAnh], [MaTK], [URL]) VALUES (166, 2, N'/Asset/TacGia/Anh/10ed6808-b1ef-4bc7-9a0a-9d493b292d8d_6091081e54b80877f459199f.jpg')
SET IDENTITY_INSERT [dbo].[QuanLyHinhAnh] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (1, N'Xuyên không', CAST(N'2021-07-28T21:01:11.333' AS DateTime))
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (2, N'Trinh Thám', CAST(N'2021-07-28T21:01:11.353' AS DateTime))
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (3, N'Lãng Mạn', CAST(N'2021-07-28T21:01:11.357' AS DateTime))
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (4, N'Tình Cảm', CAST(N'2021-07-28T21:01:11.357' AS DateTime))
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (5, N'Truyện Ngắn', CAST(N'2021-07-28T21:01:11.357' AS DateTime))
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (6, N'Ngôn Tình', CAST(N'2021-07-28T21:01:11.357' AS DateTime))
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (7, N'Học Đường', CAST(N'2021-07-28T21:01:18.743' AS DateTime))
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (8, N'Khoa Học Viễn Tưởng', CAST(N'2021-07-28T21:01:18.743' AS DateTime))
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (9, N'Truyện Teen', CAST(N'2021-07-28T21:01:18.743' AS DateTime))
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (10, N'Cổ Đại', CAST(N'2021-07-28T21:01:18.747' AS DateTime))
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (11, N'Đam Mỹ', CAST(N'2021-07-28T21:01:18.747' AS DateTime))
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [NgayTao]) VALUES (12, N'Kinh Dị', CAST(N'2021-07-28T21:01:18.747' AS DateTime))
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
SET IDENTITY_INSERT [dbo].[Truyen] ON 

INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (16, N'Xuyên thành pháo hôi minh tinh sau ta bạo hồng', 1, NULL, CAST(N'2021-09-09T08:53:35.163' AS DateTime), CAST(N'2021-09-14T13:59:38.027' AS DateTime), 0, 1, 1, 1, NULL, 46, N'<p>【 xuyên thư giới giải trí / sảng văn lưu 】</p><p>Nguyên chủ có một trương nghịch thiên thần nhan, rõ ràng có thể dựa mặt chế bá giới giải trí, lại bởi vì dễ tin ngốc nghếch người đại diện xúi giục, tham gia mỗ tràng đặc thù ‘ rượu cục ’, chịu khổ hủy dung, trực tiếp chặt đứt tinh đồ.</p><p>Pháo hôi mười tám tuyến, lên sân khấu chỉ tam chương, quả thực là đem ‘ thảm ’ tự khắc vào trán thượng.</p><p>Ảnh đế Kỷ Li một sớm xuyên thư, đương trường tay xé rách lạn nhân thiết, hắn xem kỹ trong gương dung mạo ——</p><p>Êm đẹp, đi cái gì bàng môn tả đạo? Có gương mặt này, dựa vào chính mình làm sự nghiệp không hương sao?</p><p>Hương.</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (17, N'Vấn Đan Chu  ', 4, NULL, CAST(N'2021-09-09T09:01:04.790' AS DateTime), CAST(N'2021-09-14T13:59:40.953' AS DateTime), 0, 1, 0, 2, NULL, 47, N'<p><span style="color: rgb(33, 37, 41); font-family: " open="" sans",="" sans-serif;="" font-size:="" 16px;"="">Vấn Đan Chu</span><br style="min-height: 0px; min-width: 0px; color: rgb(33, 37, 41); font-family: " open="" sans",="" sans-serif;="" font-size:="" 16px;"=""><br style="min-height: 0px; min-width: 0px; color: rgb(33, 37, 41); font-family: " open="" sans",="" sans-serif;="" font-size:="" 16px;"=""><br></p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (18, N'Tuyệt thế thần y: Phúc hắc đại tiểu thư', 1, NULL, CAST(N'2021-09-09T09:11:59.467' AS DateTime), CAST(N'2021-09-09T09:11:59.467' AS DateTime), 0, 1, 0, 1, NULL, 58, N'<p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Nàng là hai mươi bốn thế kỷ thần y, một chi ngân châm, hoạt tử nhân, nhục bạch cốt. Một tịch xuyên qua, trở thành vương phủ mỗi người kêu đánh đại tiểu thư. Không có giới linh, ngang ngược kiêu ngạo vô năng, thân là vương phủ đích mạch lại bị vị hôn phu mang theo tân hoan khinh tới cửa tới?</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Vốn là thiên chi kiêu tử, há dung ngươi chờ làm càn! Ngân châm nơi tay, thiên hạ ta có! Thiên huyền địa bảo đều ở nàng tay, tuyệt thế công pháp hạ bút thành văn. Kêu ngươi biết cái gì là vả mặt! Thần y nơi nơi, hồn đoạn cửu tiêu. Chưa từng tưởng, lại cứu lên một con trùng theo đuôi.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Hắn tuyệt sắc yêu dị, thủ đoạn tàn nhẫn, lại đối cái này ngẫu nhiên cứu hắn một mạng tiểu gia hỏa, yêu sâu sắc.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">“Chúng ta không thân.” Mỗ thần y trừng mắt lãnh đối.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Người nào đó tà mị cười, “Mặc xong quần áo liền không nhận biết? Ta đây cởi ngươi lại nhận nhận?”</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (19, N'Mị vương sủng thê: Quỷ y hoàn khố phi ( Y phi kinh thế )', 6, NULL, CAST(N'2021-09-09T09:19:31.100' AS DateTime), CAST(N'2021-09-09T09:19:31.100' AS DateTime), 0, 1, 0, 1, NULL, 59, N'<p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Một sớm xuyên qua thành Tướng quân phủ phế sài đích tiểu thư, trở thành đệ nhất vị bị từ hôn Thái tử phi, mỗi người trào phúng!</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Tuyển tú bữa tiệc, nàng bị ban gả cho lừng lẫy nổi danh tàn phế Vương gia.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Mọi người cười: Người mù xứng tàn phế, trời sinh là một đôi.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Lại không biết nàng tay cầm thất truyền đan phương, có thể luyện tuyệt đỉnh đan dược; nuôi trong nhà Thần cấp manh sủng, thiên hạ độc nhất vô nhị!</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Càng đáng sợ chính là nhà nàng tàn phế Vương gia ——</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Một bụng phúc hắc ý nghĩ xấu, cộng thêm nghịch thiên tu luyện thể chất, nháy mắt hạ gục một chúng thiên tài.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Ban ngày ngồi xe lăn, buổi tối lại quấn lấy nàng ở trên giường luyện eo cơ, đậu má, nói tốt tàn phế đâu?</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (20, N'Doraemon', 8, NULL, CAST(N'2021-09-09T09:30:37.233' AS DateTime), CAST(N'2021-09-09T09:30:37.233' AS DateTime), 0, 1, 0, 2, NULL, 60, N'<p>Trở về với tuổi thơ cùng Doraemon</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (21, N'Ngươi không trêu chọc nổi tiểu ba ba nhà ta đâu', 3, NULL, CAST(N'2021-09-09T09:40:15.107' AS DateTime), CAST(N'2021-09-09T09:40:15.107' AS DateTime), 0, 1, 0, 1, NULL, 85, N'<p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Gõ bảng đen: Chủ công, mỹ cường, niên hạ nhan công X thẳng nam cường thụ</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Tuổi tác kém mười hai tuổi, thần tiên quyến lữ, ngọt ngọt, chán ngán tử ngươi.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">【 đêm khuya đương ái tình hài kịch mảnh, tô ngọt chọc tao khà khà khà 】</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">[ thật – sắc đẹp – hot search thể chất – chúng ta hỏa quá. jpg]</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Ai có thể nghĩ tới, năm đó hot search võng hồng, sau khi tốt nghiệp cự tuyệt ngăn nắp sinh hoạt, bây giờ dĩ nhiên vùi ở bằng hộ khu tiểu tiệm tạp hóa, cũng cùng minh tinh bạn trai vì tam quan không hợp chia tay.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Vườn trẻ thân tử trong hội thao, Tham Lãng làm quen lớn tuổi chính mình mười hai tuổi ly hôn mang oa bá tổng Thương Vũ Hiền.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Từ đây, tiểu đoàn tử trải qua cuộc sống hạnh phúc, bá tổng nhiễm phải khói lửa.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;"><br></p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (22, N'Cao Năng Lai Tập  ', 10, NULL, CAST(N'2021-09-10T15:25:55.100' AS DateTime), CAST(N'2021-09-10T15:25:55.100' AS DateTime), 0, 1, 0, 2, NULL, 86, N'<p>Cao Năng Lai Tập&nbsp;&nbsp;<br></p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (23, N'Vampire', 10, NULL, CAST(N'2021-09-10T15:38:44.563' AS DateTime), CAST(N'2021-09-10T15:38:44.563' AS DateTime), 0, 1, 0, 2, NULL, 117, N'<p>Ma cà rồng</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (24, N'ÁNH TRĂNG VÀ KẺ HAI LÒNG', 5, NULL, CAST(N'2021-09-10T16:09:18.917' AS DateTime), CAST(N'2021-09-10T16:09:18.917' AS DateTime), 0, 1, 0, 1, NULL, 129, N'<h2 style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 18px; color: rgb(47, 82, 178); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; letter-spacing: -2px; text-transform: uppercase;">ÁNH TRĂNG VÀ KẺ HAI LÒNG</h2>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (25, N'LÀ MỘT CÔ GÁI MẠNH MẼ, EM HIỂU THẾ NÀO LÀ CÔ ĐƠN?', 5, NULL, CAST(N'2021-09-10T16:10:56.087' AS DateTime), CAST(N'2021-09-10T16:10:56.087' AS DateTime), 0, 1, 0, 1, NULL, 130, N'<h2 style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 18px; color: rgb(47, 82, 178); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; letter-spacing: -2px; text-transform: uppercase;">LÀ MỘT CÔ GÁI MẠNH MẼ, EM HIỂU THẾ NÀO LÀ CÔ ĐƠN?</h2>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (26, N'Bài học từ chú Ốc Sên', 5, NULL, CAST(N'2021-09-10T16:13:28.973' AS DateTime), CAST(N'2021-09-10T16:13:28.973' AS DateTime), 0, 1, 0, 1, NULL, 131, N'<h1 class="post-title entry-title" itemprop="name headline" style="font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 30px; line-height: normal; font-family: Roboto, sans-serif; margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); overflow-wrap: break-word !important;">Bài học từ chú Ốc Sên</h1>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (27, N'Những chuyện li kì, rùng rợn trong Tử cấm thành', 5, NULL, CAST(N'2021-09-10T16:15:22.737' AS DateTime), CAST(N'2021-09-10T16:15:22.737' AS DateTime), 0, 1, 0, 1, NULL, 132, N'<h1 class="post-title entry-title" itemprop="name headline" style="font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 30px; line-height: normal; font-family: Roboto, sans-serif; margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); overflow-wrap: break-word !important;">Những chuyện li kì, rùng rợn trong Tử cấm thành</h1>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (28, N'Chàng đốn củi và con tinh', 5, NULL, CAST(N'2021-09-10T16:17:24.883' AS DateTime), CAST(N'2021-09-10T16:17:24.883' AS DateTime), 0, 1, 0, 1, NULL, 133, N'<h1 class="post-title entry-title" itemprop="name headline" style="font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 30px; line-height: normal; font-family: Roboto, sans-serif; margin-top: 0px; margin-bottom: 10px; color: rgb(0, 0, 0); overflow-wrap: break-word !important;">Chàng đốn củi và con tinh</h1>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (29, N'Trong bóng tối', 9, NULL, CAST(N'2021-09-11T10:28:33.913' AS DateTime), CAST(N'2021-09-11T10:28:33.913' AS DateTime), 0, 1, 0, 2, NULL, 134, N'<p><span style="color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;">- Rốt cục tôi là ai? Cái chết chỉ là một khởi đầu mới. Trở về cảnh cục sau khi kết thúc nhiệm vụ nằm vùng, một kí ức khác trong người Tạ Lam Sơn dần dần thức tỉnh. Lang thang trên mũi đao nhọn, chạy loạn quanh vùng tội ác. Cảnh sát hình sự hàng đầu lưu manh phong nhã gặp phải chuyên gia mô phỏng chân dung tội phạm lạnh lùng thần bí, sẽ bừng lên "tia lửa" thế nào? Gặp nhau chẳng phải ngẫu nhiên, từng bước đưa anh vào bóng tối...</span><br style="min-height: 0px; min-width: 0px; color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;"><br></p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (30, N'Mục tiêu luôn cho rằng ta thích hắn [ xuyên nhanh ]', 1, NULL, CAST(N'2021-09-11T10:36:03.590' AS DateTime), CAST(N'2021-09-11T10:36:03.590' AS DateTime), 0, 1, 0, 1, NULL, 152, N'<p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Lần thứ N thân cận sau khi thất bại, Hướng Hàn được đến một phần công tác: Đãi ngộ hảo, tiền lương cao, miễn phí (thời không) lữ hành, bao ăn, bao ở, bao đối tượng? !</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Ngay từ đầu hắn cho rằng, trừ bỏ tổng muốn xuyên thành nhân tra, pháo hôi, tâm cơ ngụy bạch liên ngoại, không có gì không tốt. Sau lại mới phát hiện, cứu vớt mục tiêu cũng rất có vấn đề, não bổ dừng không được tới, ăn cái mì gói đều bị cho rằng là tưởng khiến cho hắn chú ý.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Hướng Hàn: Này giới mục tiêu không được.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Mỗ công: Thực hảo, ngươi đã thành công khiến cho ta chú ý.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Hướng Hàn: Ra cửa quẹo trái xem mắt khoa, mặt khác đối tượng có thể không bao.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Mỗ công: Cái này cần thiết đến bao!</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Quét mìn:</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Mau xuyên, chủ thụ, 1V1</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Tinh phân não bổ công X yêu diễm ngốc bạch ngọt thụ</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Vô logic, tạt máu chó</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (31, N'Thiếu nữ 9 tuổi', 1, NULL, CAST(N'2021-09-11T19:27:18.073' AS DateTime), CAST(N'2021-09-11T19:27:18.073' AS DateTime), 0, 1, 0, 1, NULL, 153, N'<p>Nàng 9 tuổi, trong một lần tai nạn xuyên không về 2000 năm trước vào thân xác của một thiếu nữ 19 tuổi</p><p>Phu quân là Thái tử</p><p>Một câu chuyện xuyên không của một cô bé chưa biết sự đời là gì, lại còn bị vướng phải mấy mớ chuyện tình cảm rắc rối</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (32, N'Trọng sinh ngộ Tứ gia', 10, NULL, CAST(N'2021-09-12T08:18:48.763' AS DateTime), CAST(N'2021-09-12T08:18:48.763' AS DateTime), 0, 1, 0, 1, NULL, 154, N'<p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Ai ta luận văn còn không có viết xong thế nhưng trọng sinh trở lại chính mình khi còn nhỏ, ký túc gia tứ ca thế nhưng là phản xuyên qua tới Tứ gia, MyGod! Bổ ta đi, ta tuy rằng trọng sinh trước thực thích xuyên qua văn, đặc biệt thích thanh xuyên Tứ gia, nhưng ta mới không cần thật sự cùng Tứ gia ở chung đâu ~~~</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Càng ngày càng viên đàn: 293681091 hoan nghênh đại gia gia nhập!</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Bổn văn kết thúc, tân văn ta hậu viện sinh hoạt hy vọng đại gia có thể tiếp tục duy trì!</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (33, N'Bạch nguyệt quang', 10, NULL, CAST(N'2021-09-12T08:25:35.050' AS DateTime), CAST(N'2021-09-12T08:25:35.050' AS DateTime), 0, 1, 0, 1, NULL, 155, N'<p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Lục tinh tuyết vẫn luôn cho rằng chính mình trừ bỏ mỹ mạo, hai bàn tay trắng.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Thẳng đến có một ngày……</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Nàng phát hiện chính mình là những cái đó xuyên thư nữ, nguyên nữ chủ trong mắt&nbsp;</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Bá chiếm các nam chính trong lòng quan trọng vị trí lại chú định sớm chết bạch nguyệt quang.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Ở xuyên thư nữ, nguyên nữ chủ đấu đến chết đi sống lại thời điểm, bạch nguyệt quang lục tinh tuyết chỉ nghĩ giữ được mạng chó!</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Xuyên thư nữ cùng nguyên nữ chủ đột nhiên phát hiện&nbsp;</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Theo bạch nguyệt quang càng sống càng lâu, điên cuồng yêu nàng người liền càng ngày càng nhiều!</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Vô luận các nàng như thế nào đấu, thế nhưng đều mẹ nó dính chọc không đến bạch nguyệt quang.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;"><br></p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (34, N'Ta có thể đổi vạn vật', 10, NULL, CAST(N'2021-09-12T08:30:11.077' AS DateTime), CAST(N'2021-09-12T08:30:11.077' AS DateTime), 0, 1, 0, 1, NULL, 156, N'<p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Tam hảo thanh niên Tần Mục, xuyên qua đến tu tiên thế giới, đạt được có thể đổi chư thiên vạn vật thương thành.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Tuy rằng không có linh căn, vô pháp luyện hóa linh khí, nhưng tu tiên phương thức có rất nhiều.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">【 đổi bá thể đan 】</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">【 đổi ngưng thần quyết 】</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Thân thể nghiền áp cùng thế hệ.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Thần hồn có thể so với tông sư.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Phế tài lão bà tưởng biến cường.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Đơn giản, đổi Tẩy Tủy Đan.</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (35, N'Đặc thù ỷ lại [ABO]', 2, NULL, CAST(N'2021-09-12T08:33:31.787' AS DateTime), CAST(N'2021-09-12T08:33:31.787' AS DateTime), 0, 1, 0, 1, NULL, 157, N'<p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Nhã bĩ đệ nhị tính chinh bác sĩ Alpha × ôn nhuận tranh sơn dầu lão sư Omega</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">-----</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Quan tâm cưỡng bách chứng, là chỉ ỷ lại người khác đối chính mình ỷ lại, thích quan tâm người khác, không đi quan tâm người khác chính mình liền khó chịu.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Cố Y hàn liền hoạn có loại này chứng bệnh, hắn cảm thấy chính mình sinh ra chính là muốn đi ái người nào đó.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Mà hạ hành chính là hắn sở lựa chọn ái nhân, cũng là hắn diễm | ngộ đối tượng —— một cái ưu tú, cường đại Alpha.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Hắn cùng hắn làm cái “Giao dịch”, hắn cấp trận này giao dịch mệnh danh là —— tình yêu.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">-</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Bờ biển, lều trại.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Nhân loại ở nhắm mắt lại lúc sau, mặt khác cảm quan sẽ bị vô hạn phóng đại, bởi vậy cố Y hàn tuy rằng không trợn mắt, nhưng là có thể cảm giác được hạ hành giống như ở dần dần tiếp cận hắn.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Hắn hô hấp cơ hồ ngừng lại rồi, tiếp theo trên môi bỗng nhiên mềm nhũn ——</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (36, N'Mao Sơn Tróc Quỷ Nhân', 2, NULL, CAST(N'2021-09-12T08:35:59.757' AS DateTime), CAST(N'2021-09-12T08:35:59.757' AS DateTime), 0, 1, 0, 1, NULL, 158, N'<h2 style="box-sizing: inherit; line-height: 28.05px; font-size: 1.7rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(68, 68, 68); font-family: Arial, Helvetica, sans-serif;">Mao Sơn Tróc Quỷ Nhân</h2>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (37, N'Sư Phụ Ta Là Lâm Chánh Anh', 12, NULL, CAST(N'2021-09-12T08:40:43.760' AS DateTime), CAST(N'2021-09-12T08:40:43.760' AS DateTime), 0, 1, 0, 1, NULL, 159, N'<p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Này, là một cái yêu ma quỷ quái điện ảnh thế giới vị diện, mà hắn là Cửu thúc đồ đệ.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Thiên địa linh khí thiếu thốn, yêu ma hoành hành, cương thi quỷ quái tàn sát bừa bãi, Hứa Nham mang theo chính mình hệ thống, đi bước một đi lên thiên sư chi lộ. ( bổn chuyện xưa cập nhân vật chỉ do hư cấu, như có tương đồng, chỉ do trùng hợp, chớ bắt chước. )</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (38, N'Âm dương quỷ thuật', 12, NULL, CAST(N'2021-09-12T08:43:57.517' AS DateTime), CAST(N'2021-09-12T08:43:57.517' AS DateTime), 0, 1, 0, 1, NULL, 160, N'<p><span style="font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Huyền thuật phân âm dương, dương vì đạo thuật, âm vì quỷ thuật. Lâm hiểu phong học quỷ thuật, trảo tà ám, nhưng lại lâm vào một cái lại một cái âm mưu quỷ kế bên trong. Thần bí trảo yêu cục, quỷ dị Thần Nông Giá, khủng bố Côn Luân sơn. Thả xem lâm hiểu phong như thế nào chém yêu ma,...</span><br></p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (39, N'Ma Vương', 12, NULL, CAST(N'2021-09-12T08:46:54.477' AS DateTime), CAST(N'2021-09-12T08:46:54.477' AS DateTime), 0, 1, 0, 1, NULL, 161, N'<p><span style="font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Ở nông thôn tiểu ma vật trưởng thành ký.</span><br></p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (44, N'Sư tôn là chỉ miêu', 11, NULL, CAST(N'2021-09-12T09:02:56.450' AS DateTime), CAST(N'2021-09-12T09:02:56.450' AS DateTime), 0, 1, 0, 1, NULL, 163, N'<p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Văn chương cơ bản tin tức</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Văn chương loại hình: Nguyên sang - thuần ái - cổ kính - tình yêu</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Tác phẩm thị giác: Chủ chịu thị giác</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Tác phẩm phong cách: Chính kịch</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Tương ứng hệ liệt: Cổ đại đam mỹ</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (45, N'Xuyên tiến vạn nhân mê văn ta nhân thiết băng rồi', 11, NULL, CAST(N'2021-09-12T09:06:18.827' AS DateTime), CAST(N'2021-09-12T09:06:18.827' AS DateTime), 0, 1, 0, 1, NULL, 164, N'<p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Phương Triều Chu xuyên vào một quyển không biết vai chính công là ai trường thiên đam mỹ tiểu thuyết, trở thành bên trong trùng tên trùng họ nhị sư huynh.</p><p style="box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; font-size: 16.5px;">Trong nguyên tác, Phương Triều CHu ái vai chính thụ tiểu sư đệ ái đến phát cuồng, vì hắn chắn kiếm, vì hắn giết yêu thú, vì hắn loảng xoảng loảng xoảng đâm nhà tù.</p>')
INSERT [dbo].[Truyen] ([MaTruyen], [TenTruyen], [MaLoai], [TacGiaGoc], [NgayTao], [NgayDang], [TamAn], [DaDuyet], [Khoa], [LoaiTruyen], [TinhTrang], [AnhBia], [MoTa]) VALUES (53, N'Bọn họ lão bà thực đáng sợ', 4, NULL, CAST(N'2021-09-17T15:05:51.133' AS DateTime), CAST(N'2021-09-17T15:17:02.030' AS DateTime), 0, 1, 0, 1, NULL, 166, N'<p>☆ Chân thành cảm ơn chị Leo Sing đã mua raw! ☆</p><p>3000 tiểu thế giới trung, luôn có như vậy một ít cô chú sinh ác nữ.</p><p>Nguyệt Lão thở dài một hơi, đến đây đi, dắt tơ hồng bá</p><p>“Huyết sát âm thụ tinh” “Ma giáo nữ ma đầu” “Thực tâm bạch li yêu” “Dị năng đại sát khí” “Ban đêm nữ bác sĩ”.</p><p>Kéo bầu trời một đoạn tơ hồng, xả trên mặt đất một đoạn nhân duyên.</p><p>Đây là mấy cái “Ác nữ” ngọt ngào câu chuyện tình yêu.</p><p>———————</p><p>Nguyên tưởng rằng nàng mềm hương ôn ngọc sắc nhiều kiều, không nghĩ tới nàng tàn nhẫn độc ác rắn rết tràng.</p><p>Các nam chính:…… Giống như nơi nào không đúng lắm, rồi lại thực tâm động.</p>')
SET IDENTITY_INSERT [dbo].[Truyen] OFF
GO
SET IDENTITY_INSERT [dbo].[NhomTG] ON 

INSERT [dbo].[NhomTG] ([MaNhom], [TenNhom], [NgayThanhLap], [NguoiThanhLap], [TinhTrang], [Khauhieu]) VALUES (4, N'Nhóm Thiên Ân', CAST(N'2021-09-16T14:41:17.280' AS DateTime), 2, 0, N'Nhóm trời ban ân')
INSERT [dbo].[NhomTG] ([MaNhom], [TenNhom], [NgayThanhLap], [NguoiThanhLap], [TinhTrang], [Khauhieu]) VALUES (5, N'Nhóm Mèo Đen', CAST(N'2021-09-18T21:25:57.947' AS DateTime), 1, 0, N'Hay thuần phục mèo đen')
SET IDENTITY_INSERT [dbo].[NhomTG] OFF
GO
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (16, 1, N'Chương 1', CAST(N'2021-09-09T08:58:42.310' AS DateTime), N'<p>“Uy, Kỷ Li, ngươi không sao chứ? Như thế nào quăng ngã vựng ở trong WC?”<br></p><p>Kỷ Li trầm mặc, rũ xuống ánh mắt quan sát đến chính mình tình cảnh —— trên người quần áo đã ướt đẫm, thùng nước lật nghiêng ở hắn bên chân, bóng loáng trên sàn nhà vệt nước một mảnh.</p><p>Cái ót ẩn ẩn làm đau, đại khái là vừa rồi ngã trên mặt đất khi cắn sưng lên.</p><p>“Đều lúc này còn đương người câm đâu? Không có việc gì đi ngươi?” Đối phương có lệ truy vấn, lời nói nghe không ra nửa phần chân thật quan tâm.</p><p>Kỷ Li ngước mắt, không dấu vết mà quan sát đến trước mắt người, trong đầu thực mau liền trào ra một cái tên, “…… Lâm Kiều?”</p><p>“Nhìn dáng vẻ không quăng ngã hư đầu óc, đỡ phải chúng ta giúp ngươi kêu xe cứu thương.” Lâm Kiều nhẹ nhướng mày, nghiêng người nhìn về phía chờ ở WC ngoại đồng bạn.</p><p>—— này đồ nhà quê mệnh, quả nhiên lại tiện lại ngạnh.</p><p>Bên ngoài tiếng cười nhạo liền chói lọi mà truyền tới, hiển nhiên đều minh bạch Lâm Kiều thần sắc ám chỉ.</p><p>Kỷ Li nghe tiếng, tầm mắt y này đảo qua bên ngoài mấy trương tuổi trẻ gương mặt, đều không ngoại lệ, đều là trêu đùa biểu tình.</p><p>Lâm Kiều không để ý hắn đánh giá, không chút để ý mà mở miệng nói, “Ngươi đi WC, còn có thể đem chính mình quăng ngã vựng? Trách không được đều nói, người chỉ cần xui xẻo, liền uống nước đều sẽ tắc kẽ răng.”</p><p>“Kiều ca, ngươi cùng hắn phí nói cái gì a, tiểu tâm dính vào vị này Thần Xui Xẻo đen đủi.” Có người ác ý ứng hòa, lại gặp phải một mảnh cười vang.</p><p>Bọn họ đều là Mộng Tưởng Truyền Thông điện ảnh huấn luyện sinh, Kỷ Li cũng là. Người sau là từ nông thôn đến, lúc trước liền bởi vì có được một trương hảo túi da, bị phá cách thiêm vào công ty.</p><p>Chỉ tiếc, Kỷ Li nhan giá trị cùng tính cách hoàn toàn là hai cái cực đoan, làm người chất phác thả khô khan, ngày thường bị khi dễ cũng không lên tiếng.</p><p>Dần dà, đồng kỳ huấn luyện sinh ra được đều không đem hắn đương hồi sự.</p><p>Đều nói quả hồng đều chọn mềm đến niết, buồn tẻ thả dài dòng huấn luyện sinh hoạt, mọi người liền dựa vào ‘ trêu cợt Kỷ Li ’ tìm việc vui.</p><p>Mười phút trước, bọn họ lại một lần chơi tâm nổi lên, đem đựng đầy nước bẩn xô vệ sinh hư cấu ở môn tường thượng.</p><p>Chọc ghẹo người thủ đoạn tuy rằng cũ kỹ chút, nhưng Kỷ Li vẫn là dại dột trúng chiêu. Mang theo mười phần trọng lượng thùng nước nện ở trên đầu, hắn đương trường ngã vào thủy đậu trung, chết ngất qua đi, nửa ngày không phản ứng.</p><p>Lâm Kiều làm huấn luyện sinh dẫn đầu người, sợ nháo lớn không hảo thu thập, lúc này mới làm bộ làm tịch trên mặt đất tới hô hai câu.</p><p>Đều nói người nghèo mệnh ngạnh, này không, đối phương tỉnh lại sau một chút việc không có, chỉ biết giống cái cọc gỗ giống nhau ngốc đứng.</p><p>Quá dài tóc mái lại ướt lại dơ, dính vào Kỷ Li đôi mắt chung quanh, lộ ra ngoài khuôn mặt tiều tụy mà tái nhợt, hoàn toàn nhìn không ra ngày xưa tươi sống.</p><p>Liên tiếp ba tháng trêu cợt cùng khi dễ, làm thanh niên hoàn toàn phong bế nội tâm, quả thực chính là cái buồn người câm.</p><p>Cứ như vậy người, còn xứng tiến giới giải trí?</p><p>Lâm Kiều nhịn không được câu môi, thực vừa lòng đối phương hiện giờ này phó quỷ bộ dáng.</p><p>Hắn tới gần một bước, giơ tay vỗ vỗ Kỷ Li bả vai, “Kỷ Li, nếu không ngươi trở về đổi kiện quần áo? Tốt xấu là điện ảnh bộ huấn luyện sinh, làm cho như vậy lôi thôi nhưng không hảo……”</p><p>Nào biết giây tiếp theo, từ trước đến nay nhút nhát Kỷ Li chịu trói ở cánh tay hắn.</p><p>Lâm Kiều cảm giác tới tay thượng lực độ, kinh ngạc ngẩn ra.</p><p>“…… Thiếu tới này bộ.” Kỷ Li không mặn không nhạt mà liếc mắt nhìn hắn, trong lòng minh cùng gương dường như, “Mỗi ngày chỉ thị người khác chơi loại này khi dễ xiếc, ba tuổi tiểu hài tử đều so ngươi thành thục.”</p><p>Khi nói chuyện, hắn tầm mắt liền quét ở Lâm Kiều trên mặt. Rõ ràng lời nói việc làm đều đạm đến không có phập phồng, nhưng người sau mạc danh liền cảm thấy một loại trào phúng.</p><p>So sánh với bởi vì bộ dạng xuất sắc, phá cách tiến vào công ty Kỷ Li, Lâm Kiều diện mạo tại đây một đống huấn luyện sinh trung, liền có chút không đủ nhìn, đơn giản là ỷ vào trong nhà có mấy cái tiền dơ bẩn, hắn mới có thể ở huấn luyện sinh giữa quát mắng.</p><p>Lâm Kiều bỗng nhiên ném ra bị kiềm chế tay, thẹn quá thành giận mà chém ra nắm tay, “Kỷ Li! Ngươi nói hươu nói vượn cái gì? Liền ngươi này kẻ bất lực bộ dáng! Ta ——”</p><p>‘ phi ’ tự còn không có xuất khẩu, Kỷ Li liền nhanh chóng nghiêng người một trốn, không chỉ có như thế, hắn còn ở người ngoài nhìn không thấy tầm mắt góc chết, dứt khoát lưu loát mà phản đẩy một phen.</p><p>Cùng hắn chơi tâm nhãn? Còn nộn chút.</p><p>Sàn nhà vết nước còn không có làm, Lâm Kiều lòng bàn chân một cái trượt ngã ở trên mặt đất, quăng ngã cái rung trời vang, “A!”</p><p>Trong chớp mắt, tình thế liền xoay ngược lại.</p><p>Mọi người tầm mắt qua lại mơ hồ, hiển nhiên đều còn không có thấy rõ là chuyện như thế nào —— từ từ, không phải kiều ca tại giáo huấn Kỷ Li sao? Chính hắn như thế nào quăng ngã?</p><p>Không đợi bọn họ phản ứng lại đây, phía sau liền vang lên một trận nghiêm khắc dò hỏi thanh, “Tụ ở bên nhau làm gì đâu? Còn muốn hay không khảo hạch? Vương đạo đã tới rồi, chẳng lẽ muốn cho hắn lãng phí thời gian chờ các ngươi này đó tân nhân?”</p><p>“Chạy nhanh hồi phòng luyện tập, năm phút sau chuẩn bị khảo hạch!”</p><p>“Này không có gì sự! Lão sư yên tâm, chúng ta lập tức trở về!” Bên ngoài có người tương ứng.</p><p>“Kiều ca, khảo hạch quan trọng, chúng ta chạy nhanh đổi bộ quần áo đi về trước.” Có người chạy vào nâng dậy Lâm Kiều, trừng mắt nhìn liếc mắt một cái ‘ gây chuyện thị phi ’ Kỷ Li, “Chờ khảo hạch kết thúc, lại đến thu thập cái này không có mắt đồ vật!”</p><p>“Kiều ca, xin bớt giận.” Lại có người khuyên giải, bọn họ không nhìn thấy Kỷ Li động tác, còn tưởng rằng Lâm Kiều là chính mình không cẩn thận té ngã.</p><p>Lâm Kiều ngực phập phồng đến lợi hại, hiển nhiên ở cực lực áp chế lửa giận.</p><p>Hắn tự nhiên biết lúc này khảo hạch tầm quan trọng, một khi thuận lợi thông qua, công ty liền sẽ chính thức cho bọn hắn tài nguyên thí thủy.</p><p>Lâm gia là có tiền, nhưng cùng giới giải trí liên lụy cơ hồ bằng không. Bằng không, hắn cũng sẽ không nhẫn nại tính tình từ huấn luyện sinh làm khởi.</p><p>“Kỷ Li! Ngươi cho ta chờ! Ta sẽ làm ngươi ăn không hết gói đem đi!” Lâm Kiều hung hăng mà xẻo thanh niên liếc mắt một cái, phía sau lưng còn nóng rát mà đau.</p><p>Kỷ Li mặt không đổi sắc, hoàn toàn không đem đối phương ‘ uy hiếp ’ để ở trong lòng.</p><p>Thẳng đến này nhóm người càng lúc càng xa sau, Kỷ Li mới xoay người tới gần bồn rửa tay. Hắn đem tóc mái loát đến hai sườn, nhìn chằm chằm trên gương kia trương xa lạ lại tinh xảo mặt, không khỏi thở dài ——</p><p>Tuy rằng không muốn thừa nhận, nhưng hắn tựa hồ xuyên thư.</p><p>Hơn nữa vẫn là hắn nhàn ở nhà khi, tùy tay lật xem quá một quyển giới giải trí sảng văn! Sở dĩ nhớ rõ như vậy rõ ràng, đến quy công với hắn cùng nguyên chủ không sai biệt mấy tên.</p><p>Trong đầu ký ức hỗn độn bất kham, Kỷ Li chỉ có thể tốn chút công phu sửa sang lại.</p><p>Nguyên chủ quán thượng cái không đáng tin cậy mẹ, mới vừa vừa sinh ra đã bị đối phương ném về ở nông thôn quê quán, người sau đảo mắt liền không có bóng người, nhiều năm như vậy vẫn luôn không tái xuất hiện quá.</p><p>Nguyên chủ là hắn cữu cữu nuôi nấng lớn lên, từ nhỏ chính là ngoan ngoãn nghe lời tính tình, hơn nữa một bộ trời sinh hảo túi da, ngay cả láng giềng quê nhà cũng đối hắn phá lệ yêu quý.</p><p>Chỉ tiếc, nguyên chủ mợ không phải cái hảo ở chung chủ nhân.</p><p>Ba tháng trước, đối phương vì thân nhi tử học phí, không biết từ nơi nào nghe được tin tức, đem mới vừa tốt nghiệp nguyên chủ ‘ quải ’ vào nhà này công ty, tự mình thế hắn ký xuống huấn luyện sinh hiệp ước.</p><p>Không chỉ có như thế, nàng còn trước tiên đem nguyên chủ ký hợp đồng phí, tiền lương toàn bộ cầm đi!</p><p>Suốt một trăm vạn tiền vi phạm hợp đồng, đối với nguyên chủ tới nói quả thực là cái giá trên trời!</p><p>Rơi vào đường cùng, hắn đành phải an phận đãi ở công ty huấn luyện. Đã có thể như vậy, vẫn là khiến cho Lâm Kiều đám kia người chú ý, cả ngày biến đổi pháp mà trêu đùa hắn.</p><p>Liền tỷ như, vừa mới trò đùa dai.</p><p>Kỷ Li xoa sưng to cái ót, sắc mặt có chút khó coi.</p><p>Nếu là hắn nhớ không lầm, tại đây bổn sảng văn lưu trong tiểu thuyết, nguyên chủ chỉ là một vị lên sân khấu bất quá tam chương pháo hôi mười tám tuyến!</p><p>Nguyên chủ uổng có một bộ hảo túi da, bị công ty nhanh chóng đóng gói xuất đạo sau, là tham diễn quá mấy bộ điện ảnh kịch. Nhưng hắn kỹ thuật diễn quá kém, tính cách quá buồn, căn bản lưu không được fan trung thành, ở đổi mới cực nhanh giới giải trí không có thể nhấc lên nhiều ít bọt nước.</p><p>Nguyên chủ người đại diện là cái quán sẽ đi bàng môn tả đạo, thấy người trước ẩn ẩn có bị công ty từ bỏ dấu hiệu, liền lén xúi giục hắn đi tham gia một hồi ‘ đặc thù ’ tiệc rượu, lấy này tới đổi lấy tài nguyên.</p><p>Nhưng chính là trận này tiệc rượu, dẫn tới nguyên chủ ngoài ý muốn hủy dung, cũng hoàn toàn chung kết hắn tinh đồ.</p><p>…</p><p>Từ mười sáu tuổi áo rồng nhập vòng, đến sau lại toàn quan ảnh đế, ở hiện thực giới giải trí lăn lê bò lết gần hai mươi năm, Kỷ Li vẫn luôn đi được là thực lực phái lộ tuyến.</p><p>Lúc trước đọc được này đoạn khi, hắn còn ở trong lòng phun tào quá: Nguyên chủ đi cái gì bàng môn tả đạo? Hồ đồ! Có một trương trời cho tuấn nhan, lắng đọng lại xuống dưới nỗ lực đề cao kỹ thuật diễn, dựa vào chính mình làm sự nghiệp không hương sao?</p><p>Không nghĩ tới, người định không bằng trời định.</p><p>Làm ảnh sử thượng ít có toàn quan ảnh đế, Kỷ Li ở toàn thịnh khi tuyên bố lui vòng tránh bóng, không đợi quá thượng mấy ngày uống trà đậu miêu, tìm người thả bay luyến ái nhàn nhã nhật tử, kết quả một giấc ngủ dậy ——</p><p>Hắn lại chạy về giới giải trí tầng chót nhất? Thành một người mặc cho ai đều có thể ‘ dẫm lên một chân ’ huấn luyện sinh?</p><p>Không mang theo như vậy làm tâm thái!</p><p>Kỷ Li nhịn xuống mắng thô tục xúc động, rút ra một bên khăn giấy chà lau ngọn tóc, gương mặt vệt nước.</p><p>Nói thật ra lời nói, nguyên chủ diện mạo xưng được với một câu ‘ thần nhan ’, nhưng duy nặc khiếp đảm tính cách ảnh hưởng hắn khí chất, hơn nữa không thích hợp trang điểm cùng bệnh thiếu máu khí sắc, bề ngoài thượng thêm thành tựu đại suy giảm.</p><p>Bất quá hảo đáy bãi tại đây, mặt khác vấn đề đảo đều tính việc nhỏ.</p><p>—— lộc cộc.</p><p>Giày cao gót dẫm mà thanh âm đánh gãy Kỷ Li suy nghĩ, hắn nghiêng người nhìn lại, cửa đứng một người tóc dài nữ tính.</p><p>Đối phương đem hắn trên dưới đánh giá liếc mắt một cái, nhíu mày đặt câu hỏi, “Ngươi như thế nào biến thành như vậy? Lập tức liền đến phiên ngươi khảo hạch, còn không mau qua đi?”</p><p>“Tống Lam tỷ.” Kỷ Li từ trong trí nhớ cướp đoạt ra đối ứng tên, đối phương là công ty nghệ sĩ tổng giám, cũng là bọn họ này kỳ huấn luyện sinh người tổng phụ trách.</p><p>Tống Lam hơi tưởng tượng, cũng có thể dự đoán được hắn là chuyện như thế nào, lắc đầu nói, “Kỷ Li, đừng trách ta không nhắc nhở ngươi, trước hai lần khảo hạch ngươi đều không đạt tiêu chuẩn, lúc này muốn lại không thông qua, đã có thể khó làm.”</p><p>Khôn sống mống chết, là giới giải trí thiết tắc.</p><p>Mộng Tưởng Truyền Thông khảo hạch chế độ, ở đồng loại hình công ty trung đã coi như rộng thùng thình, đối kỳ hạ huấn luyện sinh đãi ngộ cũng thập phần hậu đãi.</p><p>Nhưng công ty rốt cuộc không phải làm từ thiện, sẽ không vẫn luôn lưu trữ không tiến bộ huấn luyện sinh. Giống Kỷ Li như vậy, rất có khả năng đã bị ném đi kiếm một đợt mau tiền, sau đó quyết đoán từ bỏ, tuyết tàng.</p><p>“Cảm ơn Tống Lam tỷ nhắc nhở, ta sẽ nỗ lực.” Kỷ Li ngữ khí khách sáo. Tới cũng tới rồi, hắn dù sao cũng phải thế nguyên chủ đem đường đi đi xuống.</p><p>“Đi đổi thân quần áo đi, ta đi vào cùng vương đạo giải thích một chút, làm hắn hơi chút từ từ ngươi.” Tống Lam ngữ khí chậm lại một ít, chuyện tới hiện giờ, tổng không thể làm đối phương lấy này phó không xong bộ dáng thấy đạo diễn.</p><p>Vốn dĩ kỹ thuật diễn liền không được, tốt xấu hình tượng không thể lại ném phân.</p><p>“Không được, ta cứ như vậy vào đi thôi, khảo chính là kỹ thuật diễn, lại không phải ngoại tại hình tượng.” Kỷ Li thu liễm suy nghĩ, bước nhanh đi ra buồng vệ sinh, “Đừng làm cho vương đạo đợi lâu, không lễ phép.”</p><p>Nói nữa, ‘ Tái ông mất ngựa nào biết phi phúc ’, nói không chừng lấy hiện tại này phó hình tượng đi vào khảo hạch ngược lại càng tốt.</p><p>Tống Lam nhìn chằm chằm hắn mạc danh tiêu sái bóng dáng, khó có thể lý giải mà lắc lắc đầu.</p><p>Tính, đỡ không dậy nổi A Đấu, nói lại nói nhiều cũng vô dụng.</p><p>……</p><p>Kỷ Li rảo bước tiến lên phòng luyện tập khi, cười nhạo thanh liền từ bốn phương tám hướng truyền tới. Đạo diễn Vương Chướng thấy người trước ăn mặc, hơi hơi nhăn lại mày.</p><p>Này tính sao lại thế này? Lôi thôi lếch thếch.</p><p>“Kiều ca ngươi xem, này đồ nhà quê cư nhiên không đổi quần áo liền tới đây? Mặt đều ném hết!” Có người đối với Lâm Kiều vui sướng khi người gặp họa nói, “Liền Vương Chướng đạo diễn này biểu tình, còn có hắn ngày thường kia đầu gỗ kỹ thuật diễn, kế tiếp khảo hạch có thể quá mới là lạ!”</p><p>“Đó là! Hắn có thể cùng chúng ta kiều ca so?” Lại có một người ứng hòa nói.</p><p>Lâm Kiều nghe thấy này đó thổi phồng, hừ cười một tiếng. Hắn vừa mới đã khảo hạch xong rồi, được đến thành tích còn tính lý tưởng, hơn nữa Vương Chướng đạo diễn đối hắn tựa hồ thập phần vừa lòng!</p><p>“Ngươi chính là Kỷ Li?” Vương Chướng cúi đầu nhìn thoáng qua huấn luyện sinh tư liệu, hỏi chuyện.</p><p>“Là, đạo diễn ngươi hảo, ta vừa mới trượt chân té ngã một cái, cho nên đến chậm, ngượng ngùng.” Kỷ Li nhẹ nhàng bâng quơ mà lao đi vừa mới nhạc đệm, không tính toán mách lẻo bán thảm.</p><p>“Ân, liền thừa ngươi, bốc thăm xong liền chuẩn bị khảo hạch đi.” Vương Chướng căng chặt sắc mặt gật đầu, trên thực tế, trong lòng đã sớm cảm thấy không kiên nhẫn ——</p><p>Hắn là đầu bị lừa đá, mới chịu đáp ứng Mộng Tưởng Truyền Thông lão tổng đảm đương khảo hạch đạo sư.</p><p>Nguyên tưởng rằng thật có thể tại đây một đám huấn luyện sinh chiếm được hạt giống tốt, không nghĩ tới một đám đều là học điện ảnh đoạn ngắn ‘ y dạng họa hồ lô ’, căn bản là không điểm biểu diễn linh khí!</p><p>Trên thực tế, vì làm huấn luyện sinh nhóm có thể hảo hảo tiêu hóa, sở hữu rút thăm khảo hạch điện ảnh đoạn ngắn đều là trước tiên chuẩn bị tốt.</p><p>Nếu liền khảo hạch đều là đi ngang qua sân khấu, Vương Chướng liền lười đến phát biểu cái gì chân thật cái nhìn, hắn nhẫn nại tính tình nhìn nửa giờ, cuối cùng chịu đựng được đến cuối cùng một vị, muộn điểm liền vỗ vỗ mông chạy lấy người.</p><p>Phụ trách kỹ thuật diễn hằng ngày chỉ đạo Triệu kình phong ngồi ở một bên, hắn chỉ hướng trừu rương, “Kỷ Li, chạy nhanh lại đây trừu ngươi khảo hạch đoạn ngắn.”</p><p>Dứt lời sau, hắn nhanh chóng cùng trong đám người Lâm Kiều trao đổi một ánh mắt.</p><p>Kỷ Li đã nhận ra này ngắn ngủi một màn, đôi mắt hơi lóe. Hắn bước nhanh tiến lên rút thăm, trống rỗng trừu rương, chỉ còn lại có cuối cùng một trương memory card.</p><p>Kỷ Li đem nó giao cho Triệu kình phong, người sau tiếp tạp nháy mắt, đáy mắt ác ý thoảng qua.</p><p>Kỷ Li nhận thấy được điểm này, trên tay động tác không khỏi căng thẳng, một loại mãnh liệt trực giác nảy lên hắn trong óc: Người này đối khảo hạch nội dung động tay chân?</p><p>Triệu kình phong thấy hắn không buông tay, hỏi, “Làm sao vậy?”</p><p>“Không có gì, phiền toái lão sư.” Kỷ Li áp xuống trong lòng dao động, mặt không đổi sắc mà lui về tại chỗ.</p><p>Thực mau mà, Triệu kình phong liền thả ra trong thẻ khảo hạch đoạn ngắn.</p><p>Video nhân vật xuất hiện ở màn hình nháy mắt, trong nhà liền vang lên một trận kinh hô. Ngay cả đã mất hứng thú Vương Chướng đạo diễn, cũng theo bản năng mà ngồi thẳng thân mình.</p><p>Đứng ở cửa Tống Lam ninh khởi giữa mày, tức khắc ý thức được ——</p><p>Cái này điện ảnh đoạn ngắn không phải bọn họ bộ môn trước tiên chuẩn bị! Có người lâm thời trộm thay đổi khảo hạch đoạn ngắn?</p><p>※※※※※※※※※※※※※※※※※※※※</p><p>Đinh! Siêu thần kỹ thuật diễn · siêu cường trực giác · ngươi Kỉ Li bảo bối đã online!</p><p>【 hàng phía trước cao lượng 】</p><p>① giới giải trí vả mặt sảng văn, chịu ánh mắt độc ác, trực giác siêu cấp chuẩn! Công thụ kỹ thuật diễn đều ngưu bức, bổn văn hàm chút ít diễn trung diễn!</p><p>② có toàn văn đại cương, không hố. Văn trung nhân vật các loại pháo hôi lui tới, đều là vì tình tiết phát triển, không mừng liền trực tiếp điểm xoa!</p><p>③ cùng hiện thực giới giải trí vô liên lụy, vô nguyên hình, vô nội hàm! Bổn văn công thụ đều là độc nhất vô nhị! Xin đừng ky điểm này!</p><p><br></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (17, 1, N'Chương 1', CAST(N'2021-09-10T15:01:49.787' AS DateTime), N'48,49,50,51,52,53,54,55,56,57', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (18, 1, N'Chương 1:  Kiếp trước kiếp này', CAST(N'2021-09-09T09:14:09.900' AS DateTime), N'<p>Đêm tối bao phủ ở núi rừng, chói mắt ngọn lửa cắn nuốt kia tòa lập với trong núi biệt thự, lệ quỷ khóc tiếng la quanh quẩn ở yên tĩnh trong sơn cốc.</p><p>Một người mười bốn lăm tuổi thiếu nữ, mặt vô biểu tình nhìn trước mắt lửa lớn, trong tay nắm kia dẫn phát lửa lớn cây đuốc.</p><p>Bị tưới xăng mộc chất biệt thự, căn bản ngăn cản không được ngọn lửa ăn mòn, đã từng hết thảy bị ngọn lửa một chút đốt cháy, chỉ để lại đùng giòn nứt thanh.</p><p>Thiêu hủy, toàn bộ thiêu hủy.</p><p>Này tội ác nhà giam, đem vĩnh viễn biến mất.</p><p>Nắm cây đuốc hơi hơi nghiêng đầu, nhìn chính mình một tay sáng tạo ra kiệt tác.</p><p>Giam cầm nàng mười mấy năm lao tù, cuối cùng ở nàng đôi tay dưới, trở thành biển lửa.</p><p>Cùng chi nhất cùng chôn vùi, còn có kia chỉ ác ma.</p><p>“Chúng ta muốn đi đâu?” Non nớt thanh âm từ thiếu nữ trên vai Miêu nhi trong miệng nói ra, bàn tay đại tiểu miêu lại có một đôi thanh minh thấu triệt đôi mắt, nó liếm liếm chính mình móng vuốt, nhìn thiếu nữ lạnh băng sườn mặt.</p><p>“Nào đều được, chỉ cần rời đi nơi này.” Thiếu nữ cuối cùng nhìn thoáng qua chính mình kiệt tác, xoay người hướng tới núi rừng ngoại đi đến, leng keng leng keng giòn vang theo nàng nện bước vang lên, đứt gãy xiềng xích, bối rối ở nàng mảnh khảnh mắt cá chân, **** hai chân không hề cảm giác đi ở gập ghềnh rừng rậm bên trong.</p><p>Liền ở thiếu nữ xoay người đi tới kia một khắc, một cái cả người bị ngọn lửa bao vây nam nhân từ biển lửa trung vọt ra, ngọn lửa hạ hai mắt gắt gao trừng mắt cái kia đi xa bóng dáng, xé rách thanh âm vang vọng toàn bộ phía chân trời.</p><p>“Vô Tà! Ngươi cho ta trở về! Ngươi vĩnh viễn không thể rời đi nơi này!! Ngươi là thuộc về ta!”</p><p>Mười mấy năm tâm huyết, ở trong một đêm hóa thành hư ảo, tỉ mỉ bồi dưỡng hoàn mỹ tác phẩm, thế nhưng trở thành trận này ác mộng thủ phạm.</p><p>Thiếu nữ dừng lại bước chân, quay đầu nhìn về phía kia một chút bị ngọn lửa cắn nuốt rớt nam nhân, bình tĩnh mắt đen bên trong không có một chút ít dao động, nàng bình tĩnh nói: “Ngươi muốn chết, ta còn sống.”</p><p>Nam nhân ở trong ngọn lửa kêu rên, thiếu nữ cuối cùng nhìn thoáng qua nàng ác mộng, lãnh khốc nói: “Vĩnh biệt, gia gia.”</p><p>Ngồi ở thiếu nữ trên vai Miêu nhi, phát ra khinh thường nhạo báng, gia gia?</p><p>Một cái vì y học mà đánh mất tự mình kẻ điên, một cái đem chính mình thân cháu gái coi như thí nghiệm phẩm quyển dưỡng ở núi sâu rừng già bệnh tâm thần, cũng xứng làm chủ nhân gia gia?</p><p>“Chủ nhân, ngươi có tính toán gì không?” Làm lơ kia dần dần bị ngọn lửa cắn nuốt thanh âm, Miêu nhi run run lông xù xù thân mình, hỏi hướng thiếu nữ.</p><p>Thiếu nữ cúi đầu, nhìn chính mình mảnh khảnh đôi tay, “Khảo cái thú y giấy phép.”</p><p>“Ha ha ha! Lão gia hỏa kia, nếu là biết, chính mình một lòng bồi dưỡng thiên tài thần y, cư nhiên muốn đi làm thú y, nhất định chết đều sẽ không nhắm mắt.” Quỷ dị Miêu nhi, cười ở thiếu nữ trên vai run rẩy.</p><p>“Không nhắm mắt sao?” Thiếu nữ đôi mắt buông xuống, khóe môi hơi hơi gợi lên một mạt cơ hồ không tồn tại ý cười.</p><p>Một năm lúc sau, ở A thành định cư thiếu nữ bắt được một phân thú y giấy phép, từ đây đi lên vô đức thú y bất quy lộ.</p><p>……</p><p>Sống hay chết ở luân phiên, một khắc trước còn ở tổ chức phòng giải phẫu nàng, lại ở một tiếng nổ mạnh lúc sau, đi vào một cái thế giới xa lạ.</p><p>Mưa to tầm tã tầm tã mà xuống, nằm ở loạn thạch phía trên Vô Tà bình tĩnh phán đoán tình huống hiện tại.</p><p>Nàng đi tới một thế giới hoàn toàn mới, thay thế được một cái sắp chết đi linh hồn, đạt được một cái tân thân phận, nói đến có chút buồn cười, này phó thể xác chủ nhân cũng kêu Vô Tà, chẳng qua nhiều một cái dòng họ, quân. Quân Vô Tà.</p>', 0)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (18, 2, N'Chương 2:  Tự cứu ( 1 )', CAST(N'2021-09-09T09:15:49.050' AS DateTime), N'<p>Thích Quốc Lân Vương cháu gái, tập trăm ngàn sủng ái tại một thân đại tiểu thư, trời sinh tính ngang ngược kiêu ngạo, ngang ngược vô lý, chỉnh một cái vô pháp vô thiên tam thế tổ, thượng dám đánh tơi bời hoàng tử, hạ dám làm nhục bá tánh, nàng gia gia là Thích Quốc khai quốc đế quân bái kết huynh đệ, là khai quốc đế quân thân phong Tịnh Kiên Vương, toàn bộ Lân Vương phủ có thể nói là Thích Quốc trong vòng để cho người sợ hãi chỗ, ngay cả đương kim đế vương đều phải lễ nhượng ba phần, Lân Vương có hai tử, lại chỉ có Quân Vô Tà như vậy một cái đời thứ ba, đối Quân Vô Tà sủng ái có thể nói là tới vô pháp vô thiên nông nỗi, liền bởi vì Quân Vô Tà coi trọng đương kim Nhị hoàng tử, Lân Vương đều có thể không quan tâm trực tiếp uy áp đế quân, làm đế quân tứ hôn, một chút không cho hoàng gia lưu mặt mũi.</p><p>Chính là chính là như vậy một cái thiên chi kiêu nữ, hiện giờ lại hấp hối nằm ở một đống loạn thạch bên trong, nếu không phải Vô Tà linh hồn thay thế, nàng hiện tại cũng chỉ là một cái phơi thây hoang dã kẻ đáng thương.</p><p>“Hai chân dập nát tính gãy xương, bên trái xương sườn chặt đứt tam căn, cổ tay phải trật khớp, từ như vậy cao địa phương rơi xuống, này thân thể cư nhiên còn không có bị quăng ngã thành thịt nát, thật là hiếm lạ.” Một cái khác thanh âm ở Quân Vô Tà trong thân thể vang lên, làm bạn Vô Tà vượt qua mười mấy năm quang ảnh mèo đen, đã ở trong bất tri bất giác dung nhập tới rồi này phó thể xác trong thân thể.</p><p>“Còn sống.” Quân Vô Tà nằm ở loạn thạch đôi, không có dao động khuôn mặt nhìn không ra đau đớn dấu vết, phảng phất này thân thể đau nhức cùng nàng không quan hệ.</p><p>“Chúc mừng chủ nhân, ngươi lại không chết thành.” Màu đen sương khói từ Quân Vô Tà ngực tràn ra, ngưng tụ thành một con mèo đen bộ dáng, bồi hồi ở Quân Vô Tà bên người.</p><p>Không chết, lại cũng ly chết không xa.</p><p>Sinh mệnh trôi đi làm tử vong càng ngày càng tiếp cận, lạnh băng nước mưa cọ rửa thân thể cuối cùng một tia độ ấm, gia tốc tử vong tiến đến.</p><p>Trước tìm một chỗ tránh mưa, bảo đảm thân thể nhiệt lượng, Vô Tà ở mưa to tầm tã trung tìm kiếm này vách núi hạ tất cả có thể lợi dụng địa phương, rốt cuộc, làm nàng ở cách đó không xa nhai thấp phát hiện một cái sơn động.</p><p>Dựa vào đôi tay bò sát, Quân Vô Tà bình tĩnh con ngươi không có nửa điểm phập phồng, nàng chỉ là ở tính toán tồn tại tỷ lệ.</p><p>Trên người quần áo sớm đã ướt đẫm, phân không rõ là nước mưa vẫn là mồ hôi bọt nước treo đầy Vô Tà toàn thân, hai chân miệng vết thương ở bò sát trên đường để lại thật dài vết máu, đỏ đậm máu tươi ở nước mưa cọ rửa hạ thực mau biến mất. Màu đen Miêu nhi ở nàng trước người nhảy lên, theo chủ nhân đi tới một chút tới gần sơn động.</p><p>Ai đều không thể cảm nhận được, này ngắn ngủn một đoản bò sát, yêu cầu hao phí cỡ nào đại nhẫn nại lực.</p><p>Cả người là trên dưới vỡ vụn đau đớn, đủ để cho ý chí nhất kiên định người lâm vào ngất vô số lần.</p><p>Thẳng đến bò tiến kia đen nhánh sơn động, Vô Tà trắng bệch mặt đã không có một tia huyết sắc.</p><p>Dựa vào lạnh băng huyệt động, rốt cuộc đã không có mưa to cọ rửa, đột nhiên, một cái giống như quỷ mị thanh âm, từ kia đen nhánh huyệt động chỗ sâu trong truyền đến.</p><p>“Là ai?”</p><p>Cẩn thận mèo đen bị thanh âm kia dọa một cái, cong người lên, chắn Quân Vô Tà trước người.</p><p>“Đi xem.” Quân Vô Tà lạnh giọng mở miệng, tình huống của nàng thực không xong, không có chữa bệnh hoàn cảnh, chỉ bằng nàng chính mình tình huống hiện tại, là vô pháp đối chính mình tiến hành cứu trị, nàng chỉ có thể tìm kiếm mặt khác khả năng.</p><p>Một cái tồn tại người, có lẽ có thể giúp được nàng.</p><p>Từ mèo đen dẫn đường, Quân Vô Tà một chút tới gần thanh âm nơi phát ra, ở trong bóng tối, Vô Tà cảm giác được một cổ xa lạ hơi thở.</p><p>“Ngươi sắp chết.” Mang theo một tia diễn ngược trầm thấp tiếng nói từ nàng đỉnh đầu truyền đến, khàn khàn lại cực phú từ tính thanh âm, tràn ngập nam tính hơi thở.</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (18, 3, N'Chương 2:  Tự cứu ( 2 )', CAST(N'2021-09-09T09:16:44.447' AS DateTime), N'<p>Vô Tà trong bóng đêm nhìn không tới người nọ bộ dáng, chính là nàng lại rõ ràng nghe được xích sắt va chạm thanh thúy thanh âm.</p><p>Này nam nhân, bị xích sắt khóa? Tại đây vách núi huyệt động chỗ sâu trong?</p><p>Mèo đen ở nam nhân mở miệng nháy mắt hóa thành sương khói chui vào Quân Vô Tà trong cơ thể, người nam nhân này, làm nó cảm thấy rất nguy hiểm.</p><p>“Ngươi bị khóa?” Vô Tà không quản kia tràn ngập diễn ngược nói, nàng mãn đầu óc quanh quẩn chỉ có một ý niệm, người nam nhân này có lẽ có thể giúp nàng một phen, tiền đề là…… Hắn hành động tự do.</p><p>“Ân? Ngươi là nói này đó vật nhỏ?” Trong bóng đêm nam nhân khẽ động hạ xiềng xích, thưa thớt thanh âm quanh quẩn ở đen nhánh huyệt động bên trong, “Xem như đi.”</p><p>“Ta thả ngươi, ngươi cứu ta.” Vô Tà cắn răng, cả người lãnh phát run, lấy bác sĩ chuyên nghiệp tu dưỡng tới xem, nàng phỏng chừng thác không lâu, nhiệt lượng trôi đi cùng thân thể suy yếu, chính không ngừng đem nàng kéo hướng tử vong vực sâu.</p><p>Trong bóng đêm nam nhân không nói gì, hắn tựa hồ thực kinh ngạc cái này nửa chết nửa sống tiểu gia hỏa cư nhiên sẽ nói ra nói như vậy tới.</p><p>Nam nhân trầm mặc, bị Vô Tà coi như cam chịu, mặc kệ này nam nhân hay không đáp ứng, nàng đều phải nếm thử một chút.</p><p>Bằng vào đôi tay chống đỡ chính mình tới gần trong bóng đêm nam tử, Vô Tà từ đầu thượng sờ soạng hạ một cây tinh tế cái trâm cài đầu, nàng là thần y, không phải thần trộm, mở khóa kỹ năng nàng cũng không am hiểu, biết đến về điểm này da lông, vẫn là nào đó vì nàng mà chết ngu ngốc đã từng ở nàng trước mặt tú quá, cũng không biết hiện tại còn có thể hay không dùng.</p><p>Trong bóng tối, Vô Tà tay nhỏ sờ soạng tới rồi nam nhân thân thể, liền một cái y giả “Xúc cảm” tới xem, này thân thể tố chất tuyệt đối một bậc bổng.</p><p>Cố hết sức sờ đến trói buộc ở nam tử tứ chi xiềng xích, Vô Tà bình tĩnh học người nào đó đã từng dùng quá kỹ năng</p><p>Vô Tà chưa bao giờ cảm thấy chính mình đôi tay như vậy vụng về quá.</p><p>Lăn lộn nửa ngày, nàng cũng liền mở ra một phen, liền này một phen đã hao phí nàng sở hữu sức lực.</p><p>“Như ngươi mong muốn.” Trầm mặc hồi lâu nam nhân lại một lần mở miệng, mang theo trầm thấp tươi cười, thanh âm kia quanh quẩn ở toàn bộ huyệt động bên trong.</p><p>Chưa chờ Vô Tà phản ứng lại đây người này đang nói chút cái gì, nàng đã nghe được liên tiếp tan vỡ thanh, bị cởi bỏ một cây trói buộc nam tử thình lình gian phát lực, tránh thoát mặt khác ba đạo gông xiềng, Vô Tà trực tiếp bị một đôi hữu lực cánh tay ôm vào trong lòng.</p><p>Tránh thoát trói buộc nam tử, ôm Vô Tà, thình lình gian chạy ra khỏi huyệt động.</p><p>Ngoài động, mưa to không ngừng rơi xuống, quang minh chiếu sáng hết thảy.</p><p>Ở ánh sáng hạ, thần bí nam tử dung mạo cũng triển lộ ở nàng trước mắt.</p><p>Đao tước khuôn mặt, tuấn mỹ giống như trời sinh, như hắc lụa tóc dài tùy ý rối tung trên vai, tinh oánh dịch thấu nước mưa theo hắn hoàn mỹ phần cổ đường cong chảy xuống trước ngực, tựa như trời cao kiệt xuất nhất tác phẩm.</p><p>Ngửa đầu nhìn phía chân trời nam tử, tựa hồ cảm giác được nào đó tiểu gia hỏa tầm mắt, hắn hơi hơi cúi đầu, lan tử la sắc con ngươi hơi hơi nheo lại, tà mị khóe môi hơi hơi giơ lên.</p><p>Vô Tà đạm nhiên nhìn cặp kia yêu dị mắt tím, không có một tia biểu tình.</p><p>Tí tách tí tách nước mưa sái lạc ở nàng tái nhợt gương mặt, ướt nhẹp nàng thật dài lông mi, nàng chỉ là bình tĩnh, gần như vô tình nhìn trước mắt cái này yêu nghiệt nam nhân.</p><p>Tiểu gia hỏa bình tĩnh có chút dị thường phản ứng, làm mắt tím nam tử hơi hơi nhướng mày.</p><p>Này vẫn là cái thứ nhất, nhìn thấy hắn đôi mắt không có phát ra thét chói tai người.</p><p>“Ngươi không sợ?” Khàn khàn tiếng nói mang theo mị hoặc lực lượng ở Vô Tà bên tai vang lên.</p><p>“Ta muốn chết.” Quân Vô Tà nhắc nhở đối phương cùng chính mình ước định, đen nhánh mà bình tĩnh hai tròng mắt, liền như vậy cho đến nhìn cặp kia màu tím đôi mắt, không có cầu xin, không có sợ hãi, có chỉ là kia như nước mặt bình tĩnh, phảng phất nàng trong miệng tử vong, cũng không phải nàng bản thân.</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (19, 1, N'Chương 1: phế vật tiểu thư', CAST(N'2021-09-09T09:20:45.333' AS DateTime), N'<p>Đau.</p><p>Đầu nổ mạnh đau đớn, thân thể phảng phất bị xe nghiền áp quá, nóng rát đau đớn truyền khắp toàn thân, khó chịu đến cực điểm.</p><p>Bách Lý Hồng Trang cố hết sức mà mở hai tròng mắt, đãi thấy rõ trước mắt xa lạ hết thảy khi, nàng đột nhiên hoàn toàn thanh tỉnh lại đây.</p><p>“Nơi này là địa phương nào?”</p><p>Thâm nếu u đàm con ngươi lập loè cơ trí quang mang, nàng rõ ràng nhớ rõ nàng ở thần thú sào huyệt tìm được rồi một quả thần bí nhẫn, máu tươi vô ý nhỏ giọt ở nhẫn thượng.</p><p>Rồi sau đó đột nhiên cuồng phong gào thét, thiên địa vì này biến sắc, lần thứ hai tỉnh lại liền tới tới rồi cái này xa lạ địa phương.</p><p>“Tê……”</p><p>Bách Lý Hồng Trang cau mày, đôi tay sờ hướng về phía đầu, vô số quen thuộc lại xa lạ ký ức đoạn ngắn ở nàng trong đầu xuất hiện, cơ hồ muốn sinh sôi căng bạo nàng đầu óc.</p><p>Sau một lát, đầu đau muốn nứt ra cảm giác dần dần biến mất, Bách Lý Hồng Trang trong mắt mê hoặc cũng biến mất không thấy, trong lòng lại chấn động đến tột đỉnh.</p><p>“Ta thế nhưng xuyên qua?” Bách Lý Hồng Trang mặt lộ vẻ không thể tưởng tượng chi sắc, “Lại còn có xuyên qua đến ngàn năm lúc sau Thánh Huyền đại lục?”</p><p>Nàng nguyên là Thánh Huyền đại lục tuổi trẻ nhất thế gia gia chủ, thiên phú tuyệt luân, thanh danh vang dội.</p><p>Không nghĩ tới liền bởi vì một quả nhẫn mà hồn xuyên đến ngàn năm sau Thánh Huyền đại lục Phong Bác Quốc tướng quân phủ phế vật tiểu thư trên người!</p><p>Xảo chính là vị tiểu thư này thế nhưng cũng kêu Bách Lý Hồng Trang!</p><p>Đáng tiếc thân là tướng quân phủ đích tiểu thư lại không được tướng quân sủng ái, mẹ đẻ mất sớm, cũng may cùng thái tử chắc chắn có hôn ước, lúc này mới bảo vệ địa vị.</p><p>Chưa từng tưởng ba tháng trước đột nhiên biến thành người mù, đánh mất trở thành quốc mẫu tư cách.</p><p>Hôm qua Hoàng Thượng tuyên bố hủy bỏ hôn ước, Bách Lý Hồng Trang nhất thời luẩn quẩn trong lòng liền nuốt vàng tự sát.</p><p>Nói đến, này nuốt vàng tự sát cũng có nàng kia “Hảo tỷ tỷ” Bách Lý Ngọc Nhan công lao.</p><p>Hôm qua liền vẫn luôn đánh an ủi ngụy trang, nói kích thích Bách Lý Hồng Trang nói.</p><p>Chỉ sợ, lúc trước biến thành người mù sự tình cũng cùng Bách Lý Ngọc Nhan thoát không được can hệ!</p><p>Cũng may, nàng xuyên qua lúc sau thị lực nhưng thật ra khôi phục.</p><p>“Cái gì phá giới chỉ!” Bách Lý Hồng Trang chửi ầm lên.</p><p>Từ kinh diễm thế gia gia chủ đến một cái phế vật tiểu thư, này chênh lệch cũng không phải là giống nhau đại!</p><p>Bách Lý Hồng Trang thở dài thời điểm một cúi đầu, ánh mắt chợt đọng lại, một quả màu đen phục cổ nhẫn vừa lúc đoan đoan mà mang ở tay nàng thượng!</p><p>“Này…… Sao có thể?”</p><p>Bách Lý Hồng Trang kinh ngạc mà vuốt trên tay nhẫn, chẳng lẽ nhẫn cùng nàng cùng nhau xuyên qua tới?</p><p>Lúc này, ngoài cửa vang lên một chuỗi tinh mịn tiếng bước chân, ngay sau đó một nam một nữ lẫn nhau dựa sát vào nhau thân ảnh liền xuất hiện ở Bách Lý Hồng Trang trong tầm mắt.</p><p>Này hai người không phải người khác, đúng là Bách Lý Ngọc Nhan cùng thái tử Hiên Viên Hoàn!</p><p>Cùng Bách Lý Hồng Trang phế tài bất đồng, Bách Lý Ngọc Nhan tu luyện thiên phú thập phần xuất chúng, tuổi còn trẻ liền đã ở Phong Bác Quốc có được một phen thanh danh.</p><p>Đúng là bởi vậy, tướng quân phủ đã sớm tính toán làm Bách Lý Ngọc Nhan thế thân nàng vị trí!</p><p>Hai người nhìn thấy ngồi ở trên giường sống sờ sờ Bách Lý Hồng Trang, trên mặt đều là thoáng hiện một tia kinh ngạc chi sắc.</p><p>Bọn họ rõ ràng nghe nha hoàn nói Bách Lý Hồng Trang không có hơi thở lúc này mới chậm rì rì mà lại đây, như thế nào cũng chưa chết?</p><p>“Hảo muội muội, ngươi như thế nào như vậy luẩn quẩn trong lòng? Thế nhưng nuốt vàng tự sát a!”</p><p>Bách Lý Ngọc Nhan đi tới Bách Lý Hồng Trang bên cạnh, ra vẻ quan tâm bộ dáng, trong mắt lại tràn ngập chán ghét quang.</p><p>Ngày hôm qua nàng nói như vậy nhiều chính là nghĩ Bách Lý Hồng Trang có thể tự sát, hôm nay nghe nói việc này lúc sau càng là cảm thấy thống khoái, không nghĩ tới cái này phế vật thế nhưng không chết thành!</p><p>Phế vật chính là phế vật! Liền tự sát loại chuyện này đều làm không tốt, về sau vẫn là nàng tới hỗ trợ hảo!</p><p>Nhiễm cẩm sách mới 《 tiên y đế phi 》 đã khai, hy vọng các bảo bảo nhiều hơn duy trì ha ~</p><p>( tấu chương xong )</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (19, 2, N'Chương 2: làm ra vẻ', CAST(N'2021-09-09T09:21:49.027' AS DateTime), N'<p>Bách Lý Hồng Trang trong lòng cười lạnh, trên mặt lại như cũ làm bộ nhìn không thấy bộ dáng, thanh âm nhu nhược, “Tỷ tỷ, ta……”</p><p>Hiên Viên Hoàn một tay đem Bách Lý Ngọc Nhan kéo lại, trong mắt lập loè dâm tà ý cười, đôi tay càng là ở Bách Lý Ngọc Nhan trên người làm càn tự do.</p><p>“Ngọc Nhan, cái này phế vật đã chết cũng là giải thoát, ngươi còn như vậy quan tâm nàng làm cái gì?”</p><p>Nếu như không phải Ngọc Nhan kêu hắn cùng tới xem, hắn căn bản không muốn nhìn thấy cái này phế vật người mù.</p><p>Hắn đường đường thái tử thế nhưng có như vậy một cái vị hôn thê, ngầm không biết bị bao nhiêu người nhạo báng!</p><p>Thật vất vả hủy bỏ hôn ước, hắn rốt cuộc có thể không hề nhìn thấy cái này phế vật, không nghĩ tới nữ nhân này thế nhưng nuốt vàng tự sát!</p><p>Đối với loại này một khóc hai nháo ba thắt cổ tiết mục, hắn nhất chán ghét, nữ nhân này chính là ý đồ dùng như vậy phương thức tới vãn hồi hắn tâm!</p><p>Bách Lý Ngọc Nhan trên mặt mạn khai vui sướng tươi cười, tùy ý Hiên Viên Hoàn ở nàng trên người làm xằng làm bậy, ngoài miệng lại như cũ nói cố tình làm ra vẻ lời nói.</p><p>“Thái tử điện hạ, Hồng Trang là ta muội muội, ta như thế nào có thể làm nàng làm việc ngốc đâu?”</p><p>“Ngọc Nhan, ngươi chính là như vậy thiện lương, ta thật là yêu ngươi muốn chết.”</p><p>Hiên Viên Hoàn tươi cười xán lạn, làm trò người mù Bách Lý Hồng Trang mặt như thế làm nhưng thật ra có một loại nói không nên lời khoái cảm!</p><p>Bách Lý Ngọc Nhan trong lòng mừng thầm, một bên phối hợp Hiên Viên Hoàn động tác, một bên tiếp tục người sắm vai hảo tỷ tỷ thân phận.</p><p>“Thái tử, ngươi nói như vậy Hồng Trang sẽ thương tâm!”</p><p>“Hà tất có như vậy nhiều cố kỵ!” Hiên Viên Hoàn khinh thường mà nhìn Bách Lý Hồng Trang liếc mắt một cái, “Nếu như không phải Bách Lý Hồng Trang là tướng quân đích tiểu thư, ta mới sẽ không cùng nàng định ra hôn ước, ta thích chính là Ngọc Nhan ngươi a!”</p><p>Bách Lý Hồng Trang nhìn trước mắt trình diễn xấu xa tiết mục, trong lòng cười lạnh không ngừng, này Bách Lý Ngọc Nhan thật đúng là bạch liên hoa a!</p><p>Làm trò một cái tự sát chưa toại người trước mặt, thế nhưng có thể chẳng biết xấu hổ mà làm ra loại chuyện này, này hai người nhân phẩm thật sự làm người tán dương!</p><p>Cũng may nguyên bản Bách Lý Hồng Trang đã chết, nếu không chính mắt nhìn trước mặt một màn này, chỉ sợ sẽ chịu không nổi lần thứ hai tự sát đi!</p><p>Bách Lý Hồng Trang đánh giá trước mắt Hiên Viên Hoàn, uổng lúc trước Bách Lý Hồng Trang như vậy khuynh mộ hắn.</p><p>Ở nàng xem ra, người này căn bản chính là một cái háo sắc bao cỏ, làm người từ đáy lòng buồn nôn!</p><p>Nếu không phải hiện tại thân thể chưa khôi phục, nàng nhất định sẽ làm này đối gian phu -*** biết hoa nhi vì cái gì như vậy hồng!</p><p>Hiên Viên Hoàn xấu xa cười, chặn ngang bế lên Bách Lý Ngọc Nhan, một bên ôm hôn một bên hướng Bách Lý Hồng Trang đi đến.</p><p>Hiển nhiên, hắn muốn làm Bách Lý Hồng Trang gần gũi mà cảm thụ này hết thảy!</p><p>Bách Lý Hồng Trang mắt trong lập loè châm chọc chán ghét quang, thuận tay từ cầm lấy một cái hình tròn châu hoa, không dấu vết mà ném tới rồi Hiên Viên Hoàn dưới chân.</p><p>Phanh!</p><p>Hiên Viên Hoàn một chân đạp lên châu hoa thượng, cả người về phía trước một phác, trong tay Bách Lý Ngọc Nhan tắc bị hắn nặng nề mà ném đi ra ngoài!</p><p>“A!”</p><p>Bách Lý Ngọc Nhan hét thảm một tiếng, nàng mặt trực tiếp đụng vào trên giường, máu mũi không ngừng mà chảy xuôi, kiều tiếu khuôn mặt cũng một mảnh xanh tím.</p><p>Hiên Viên Hoàn quăng ngã một cái chó ăn cứt, cả người hình chữ X mà ngã trên mặt đất, nào còn có phía trước đắc ý dạng?</p><p>“Tỷ tỷ, các ngươi làm sao vậy?”</p><p>Bách Lý Hồng Trang trong lòng cười lạnh, lại ra vẻ thần sắc hoảng loạn, vẻ mặt mờ mịt mà nhìn phía trước.</p><p>Hiên Viên Hoàn vội vàng đứng lên, thần sắc thập phần xấu hổ, duỗi tay liền đi đỡ phía trước Bách Lý Ngọc Nhan.</p><p>Nhưng mà, Hiên Viên Hoàn mới vừa về phía trước mại một bước, dưới chân lại là vừa trượt, trực tiếp đâm hướng về phía phía trước!</p><p>( tấu chương xong )</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (20, 1, N'Chap 1: ', CAST(N'2021-09-09T09:31:38.803' AS DateTime), N'61,62,63,64,65,66,67,68,69,70,71,72', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (20, 2, N'Chương 2:', CAST(N'2021-09-09T09:35:29.020' AS DateTime), N'73,74,75,76,77,78,79,80,81,82,83,84', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (21, 1, N'Chương 1', CAST(N'2021-09-09T09:43:38.860' AS DateTime), N'<p>Cái này mùa đông tựa hồ đặc biệt rét lạnh, toàn bộ thành thị thiên ngưng mà bế.</p><p>Tham Lãng đem Minibus ngừng ở nhà trẻ ngoài cửa xe vị, tay sát lôi kéo, nhảy xuống xe, nhìn thời gian, 8 giờ 40 phân.</p><p>Xốc lên Minibus cốp xe, bên trong đôi đầy ắp đồ ăn vặt văn phòng phẩm, hắn dốc hết sức lực, đem bên trong xe hàng hóa dọn không, cốp xe một khóa.</p><p>Hai rương đồ uống trên dưới chồng một khối ôm vào trong ngực, Tham Lãng triều nhà trẻ đại môn đi đến.</p><p>“Ôn đại gia, buổi sáng tốt lành.”</p><p>Lão Ôn nhiệt tình mà từ bảo vệ cửa chỗ chạy ra, “Mau tới, đi cửa nhỏ, như thế nào không chạy đến cửa?”</p><p>Tham Lãng: “Người nhiều, hài tử chạy loạn, không an toàn.”</p><p>“Đồ vật không ít đi,” lão Ôn nhìn phía nói biên hàng hóa, “Ta gọi điện thoại, kêu vài người lại đây hỗ trợ.”</p><p>“Không cần không cần, nhiều chạy mấy tranh chuyện này,” Tham Lãng nói, “Hóa đôi có một oa tiểu miêu, ly không được người, ngài giúp ta xem một chút liền hảo.”</p><p>“Được rồi! Để ý xem lộ.”</p><p>Từ nhỏ môn đi vào, Tham Lãng tránh đám người, vòng đến tường vây biên đường nhỏ, hướng giáo viên lâu phương hướng đi.</p><p>Làm nam cảng khu thu phí quý nhất nhà trẻ, Cambridge quốc tế được công nhận giáo dục mầm non đầu tuyển, có năng lực cầm nữ thành công đưa vào tới gia trưởng, đều là xã hội thượng thực ghê gớm người đi.</p><p>Dáng người đĩnh bạt thanh niên, hành tẩu ở sắc thái rực rỡ vườn trẻ, hắn tham quan mùa đông viên cảnh, bốn phía như có như không tầm mắt cũng ở tham quan hắn.</p><p>Cho dù là ôm đại hóa rương, y tùy ý, cũng ngăn không được quanh mình đầu tới kinh diễm ánh mắt.</p><p>Thanh niên ăn mặc áo sơ mi tử quần, áo khoác áo lông vũ, góc cạnh rõ ràng khuôn mặt, bất quá với bạch, lại tinh tế, giống đồ một tầng men gốm, ở ánh sáng mặt trời hạ phiếm khỏe mạnh ánh sáng.</p><p>Một đôi mắt đào hoa nhi, ghé mắt ngước mắt gian, thịnh cực dung mạo mang theo một chút cao lãnh, ánh mắt trung làm như có sương lạnh, cả người tản ra cực có xâm lược tính giống đực hormone, nhìn qua tính cách không quá mượt mà, cũng không tốt lắm thân cận.</p><p>Nhưng mà, trên thực tế, cũng không phải ——</p><p>“Tiểu Tham tới đưa hóa a?”</p><p>“Lý lão sư hảo.”</p><p>“Hiệu trưởng ở sân thể dục đâu, giám khảo tịch thượng.”</p><p>“Khổng lão sư hảo.”</p><p>“Từ từ, Tham ca, bên này đi, từ phòng bếp cửa sau đi ra ngoài, đi tắt.”</p><p>“Cảm ơn Trương lão sư, nga đúng rồi ——”</p><p>Tham Lãng ở bậc thang dừng bước, từ đồ uống rương mặt sau ló đầu ra, “Tiểu Trương lão sư, ta dọn một rương cà phê vị sữa bò, nhớ rõ ngươi cùng Khổng lão sư ái uống cái này, ta ở thùng giấy thượng đánh dấu ‘ giáo viên dùng ’, đừng quên cùng hài tử thức ăn tách ra phóng —— tiểu hài tử không thể uống cà phê đi?”</p><p>“Đúng vậy, ngươi cũng thật cẩn thận.” Lớp Hướng Dương Tiểu Trương lão sư có một phen sẽ ca hát hảo giọng nói, nàng cười khanh khách đánh giá một chút Tham Lãng, chút nào không che giấu đối hắn thưởng thức: “Ân, hôm nay chưởng quầy vẫn như cũ rất tuấn tú, sinh ý thịnh vượng a.”</p><p>“…… Ách, cảm ơn?”</p><p>Dọc theo đường đi không ngừng miệng mà cùng người vấn an, gặp người liền chào hỏi, ngẫu nhiên quan tâm thượng hai câu, ngày mùa đông nóng hầm hập.</p><p>Tham Lãng vóc cao, chân dài, nhan giá trị cao, miệng còn ngọt, nhà trẻ mỗi cái công nhân đều đối cái này tiệm tạp hóa tiểu ca ấn tượng không tồi.</p><p>Lại nói tiếp, nhà trẻ cùng tiệm tạp hóa chi gian còn có một đoạn kỳ duyên.</p><p>Hai năm trước, tiệm tạp hóa lão gia gia cứu một cái ở Đông Lệnh Doanh vô ý rơi xuống nước hài tử, lúc ấy hồ thượng kết miếng băng mỏng, lão nhân không chút do dự liền phá băng nhảy xuống. Đánh kia về sau, hiệu trưởng liền cùng tiệm tạp hóa thành lập trường kỳ hợp tác quan hệ —— bất luận là đồ ăn vặt văn phòng phẩm vẫn là làm công đồ dùng, đều sẽ ở tiệm tạp hóa hạ đơn đặt hàng, sau đó từ tiệm tạp hóa khắp nơi tìm con đường đi mua sắm.</p><p>Cũng may mắn có nhà trẻ chiếu cố, bằng không kia nhà tan cũ vùng ngoại thành lão phô sớm nên đóng cửa đại cát.</p><p>Đối mọi người tới nói, nhảy cầu cứu hài tử lão Tham là cái kỳ nhân, hắn cháu ngoại Tiểu Tham càng là cái diệu nhân.</p><p>Vứt lại “Lớn lên hảo” được công nhận điểm này ngoại trừ, Tiểu Tham ở tiệm tạp hóa hỗ trợ, bất quá mới cho nhà trẻ tặng non nửa năm hóa, liền nhớ kỹ bên trong vườn mọi người tên họ, liền bảo an tiểu ca cùng nhà ăn a di cũng không ngoại lệ, bao gồm một ít tiểu bằng hữu nhũ danh, thậm chí là hài tử sở trường đặc biệt cùng khẩu vị.</p><p>Tính cách hảo, nhân duyên hảo, trí nhớ hảo.</p><p>Nói đến cùng cũng là một loại thiên phú.</p><p>Mắt thấy dọn đồ uống Tham Lãng vào nhà ăn, Khổng lão sư quay đầu lại ngó Tiểu Trương lão sư liếc mắt một cái: “Đừng xem xét, muốn nhìn soái ca, liền đi tiệm tạp hóa xem cái đủ.”</p><p>“Ngài cũng đừng khai ta vui đùa,” Tiểu Trương thu hồi chụp lén hai bức ảnh di động, nhỏ giọng nói, “Ta cùng hắn không thân.”</p><p>Khổng lão sư: “Tuy rằng nói, kia hài tử không có hảo công tác, có lẽ tương lai chỉ có thể đến cái tiểu tiệm tạp hóa, nhưng giống hắn như vậy nghiêm túc cẩn thận tiểu tử lập tức nhưng không nhiều lắm, tính tình hảo, tướng mạo hảo, ngươi nhưng đến làm thí điểm khẩn, cũng không biết hắn có hay không bạn gái……”</p><p>Tiểu Trương lão sư: “……”</p><p>Tham Lãng: “……”</p><p>Phía sau truyền đến nhỏ giọng đối thoại, Tham Lãng vội vàng nhanh hơn bước chân.</p><p>Người khác ngầm đàm luận hắn cái gì, hắn nhiều ít nghe nói qua một ít, nói thực ra, hắn cảm thấy trên thế giới không còn có so “Tìm công tác” cùng “Bạn gái” càng xấu hổ đề tài.</p><p>Tham Lãng học chính là thương mậu, trải qua vô số lần nhận lời mời thất bại lúc sau, hắn dưới sự giận dữ đem lý lịch sơ lược đưa tới rồi 500 cường “Thế Kỷ Hằng Thương”, thành công tỷ lệ gần như bằng không, biết rõ</p><p>Nhà trẻ nhà ăn, Tham Lãng nghỉ ngơi khẩu khí, đem hai rương đồ uống đặt lên bàn, tùy tay ấn khai di động hòm thư.</p><p>Quả nhiên, không có thu được công ty hồi phục, cũng không có cuộc gọi nhỡ.</p><p>Lại tìm không thấy công tác, cũng chỉ có thể kế thừa gia nghiệp.</p><p>Tiểu tiệm tạp hóa làm sao vậy, lại vô dụng cũng là sinh ý không phải?</p><p>Châu chấu lại tiểu cũng là thịt.</p><p>Chú ý tới WeChat icon thượng, có một cái chưa đọc.</p><p>Tức phụ nhi: [ ta đường về, đêm nay 6 giờ trở về. ]</p><p>Nhìn chằm chằm di động nhìn một hồi, đánh chữ: [ muốn ăn cái gì? ]</p><p>Đối phương thật lâu không hồi.</p><p>*</p><p>Thế Kỷ Hằng Thương 65 tầng, một đám tây trang giày da tinh anh từ hội nghị đại sảnh trào ra tới.</p><p>“Thương tổng, ta đây trước xuống lầu.”</p><p>“Chúc ngươi thành công, sau khi trở về ta mời khách.”</p><p>Thương Vũ Hiền buông ly cà phê, xoa xoa ngón tay, đối nghiệp vụ bộ giám đốc công đạo xong rồi đấu thầu cuối cùng công việc.</p><p>Tổng tài đặc trợ Tiểu Phương không mục mắt lé, nhanh hơn trên tay tư liệu sửa sang lại công tác, Tiểu Viên còn lại là vẻ mặt dì cười, cười tủm tỉm mà nhìn nhà mình tổng tài trong tay khăn tay.</p><p>Có ai gặp qua đến nay vẫn như cũ ở dùng thuần miên khăn tay cùng anh hùng bút máy 500 cường tổng tài?</p><p>Vứt trừ gia tộc bối cảnh nhân tố bên ngoài, 40 tuổi phía trước, lương một năm 300 vạn, 10% tập đoàn cổ phần, có xe có phòng có nhân mạch có gia thất, thỏa thỏa nhân sinh người thắng, hiển nhiên là mỗi cái làm công tộc chức nghiệp kiếp sống cọc tiêu.</p><p>Lệnh Tiểu Viên vui mừng chính là, công ty không có cái nào không có mắt, dám đối với tổng tài ba ba động oai tâm tư.</p><p>Đương nhiên, trừ bỏ nàng cùng Tiểu Phương ở ngoài, cũng không có cái nào chú ý tới, tổng tài ngón áp út thượng nhẫn cưới không thấy.</p><p>Thương Vũ Hiền đem khăn tay cất vào âu phục túi, nhìn về phía đang ở sửa sang lại văn kiện hai gã đặc trợ, “Các ngươi không cần sốt ruột, ta bên này có điểm việc tư, muốn đi ra ngoài một chuyến, không cần theo tới.”</p><p>Nói xong, Thương Vũ Hiền đứng dậy, áo gió tùy tay đạp ở trên cánh tay, đi nhanh hướng phòng họp đại môn đi, nhìn qua có điểm dồn dập.</p><p>“Thương tổng, từ từ.” Đặc trợ Tiểu Viên đem bút điện hợp lại, khẩn đuổi kịp đi, “Thỉnh chờ một lát một chút, Thương tổng, Phong Kình Lệ tổng gọi điện thoại nói, hắn vừa mới hạ cơ, 9 giờ ở chỗ cũ chờ ngài……”</p><p>Thương Vũ Hiền xoay người: “Lệ Uy Dương? Ngươi không nói cho hắn ta ở mở họp?”</p><p>Tiểu Viên một dọa, nghỉ nghiêm trạm hảo, “Ta nói nha, ta vẫn luôn giải thích, chính là hắn căn bản không để ý tới.”</p><p>Thương Vũ Hiền: “……”</p><p>Thương Vũ Hiền thở dài, nhìn phía cửa sổ sát đất ngoại sáng sủa không trung.</p><p>Trời nắng.</p><p>Đáng chết trời nắng.</p><p>Suốt ba tháng, chính mình vẫn luôn ủy thác tài xế đưa nữ nhi trên dưới học, liền tam cơm cũng phó thác cho nhà trẻ nhà ăn.</p><p>Hắn đã thật lâu không có cùng tiểu hài tử tiến hành thân tử giao lưu.</p><p>Tối hôm qua, Cambridge quốc tế công chúng hào đẩy tặng thông tri, nói là “Nếu ngày mai không dưới tuyết, thân tử đại hội thể thao liền cứ theo lẽ thường tổ chức”.</p><p>Lớp Hướng Dương Tiểu Trương lão sư càng là cho chính mình đã phát WeChat, không chỉ có đem thông tri phục chế một lần, còn đặc biệt công đạo:</p><p>【 Đường Đường ba ba, ngày mai trời nắng nói, buổi sáng 9 giờ 30 phân đại hội thể thao lễ khai mạc, sở hữu gia trưởng đều sẽ tới, bọn nhỏ đều thực chờ mong lần này hoạt động, thỉnh ngài nhất định đằng ra thời gian, nhất định nhất định phải trình diện. 】</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (21, 2, N'Chương 2', CAST(N'2021-09-09T09:46:16.767' AS DateTime), N'<p>Từ trước đến nay không yêu hồi WeChat hắn, còn phá lệ ứng cái: Hảo</p><p>Xem một cái đồng hồ, 8 giờ 50 phân.</p><p>Còn có thời gian…</p><p>Thương Vũ Hiền: “Đánh cấp họ lệ, nói ta lập tức đến.”</p><p>*</p><p>“Gia bảo! Cố lên! Gia bảo! Chạy mau!”</p><p>“Nhiều đóa truy nàng, nhiều đóa cố lên!”</p><p>Đông gió thổi, trống trận lôi, cờ màu khí cầu đón gió tung bay.</p><p>Buổi sáng 9 giờ 50 phân, 200 mễ một vòng tiểu sân thể dục thượng, thân tử đại hội thể thao lễ khai mạc kết thúc, thi đấu chính thức bắt đầu rồi.</p><p>Người xem trên khán đài biển người tấp nập, mỗi cái tiểu hài tử đều có một cái khổng lồ người nhà đoàn, hổ mẹ miêu ba nhóm hận không thể đem sở hữu thân thích đều mời đến cấp bảo bối hò hét trợ uy.</p><p>Cùng hiệu trưởng đánh qua tiếp đón, Tham Lãng tay chân không ngừng, đem đơn đặt hàng thượng hàng hóa dọn đến các chỉ định địa điểm, có cung cấp cấp gia trưởng cùng bọn nhỏ đồ ăn vặt, cũng có chia ấu sư nhóm đồ uống, còn có làm phần thưởng sách vở cùng văn phòng phẩm.</p><p>Trước sau chạy mười tới tranh, còn dư lại cuối cùng hai rương thương phẩm.</p><p>Trong đó một rương là cúp, chỉnh rương tương đối trọng, lưu đến cuối cùng tìm người hỗ trợ khuân vác; mà lúc này trong lòng ngực hắn này rương, liền có ý tứ, là một lồng sắt tiểu nãi miêu.</p><p>Mới ra oa tiểu quất miêu, trợn mắt không lâu, vì giữ ấm, đại thùng giấy trừ bỏ lồng sắt, còn tắc một cái tiểu chăn bông.</p><p>Thùng giấy thể tích đại, chắn tầm mắt, ôm vào trong ngực không tiện tay, Tham Lãng không đến gần nói, tránh đi người, vòng đến rừng cây nhỏ bên kia.</p><p>Này oa tiểu miêu, đều không phải là hiệu trưởng đơn đặt hàng thượng thương phẩm, mà là tiệm tạp hóa quất miêu nhãi con.</p><p>Tối hôm qua Tham Lãng đem “Trong nhà Chiêu Tài hạ một oa nhãi con, chủng loại không quá thuần, đang tìm tìm chủ nhân” sự nói cho cho hiệu trưởng, hiệu trưởng bà bà phi thường cảm thấy hứng thú, nói là nguyện ý toàn bộ tiếp nhận, cũng tính toán ở nhà trẻ phía đông tu sửa một tòa miêu mễ phòng nhỏ, các lớp thành lập chăn nuôi tiểu tổ, từ tiểu bằng hữu thay phiên chiếu cố nuôi nấng.</p><p>Tham Lãng: “……”</p><p>Nhìn xem, cái gì kêu có tiền tùy hứng, bên này người còn không có chỗ ngồi trụ đâu, bên kia phải cho miêu xây nhà.</p><p>Ôm một cái rương tiểu miêu, Tham Lãng đi đến ven tường đồng thoại phòng nhỏ khi, trước mắt chợt lóe mà qua một cái nơ con bướm.</p><p>Có cái hài tử ngồi xổm cây nhỏ mặt sau.</p><p>Mơ hồ nghe thấy nhỏ giọng khụt khịt.</p><p>Tham Lãng nghe xong nửa ngày, biểu tình càng thêm mà ngưng trọng.</p><p>Vui vui vẻ vẻ hoạt động ngày, như thế nào sẽ có tiểu bằng hữu né tránh đám người khóc nhè?</p><p>Tham Lãng nhìn quanh bốn phía, không nhìn thấy cái nào ấu sư trải qua.</p><p>Mọi người đều ở vội đại hội thể thao, cũng không thể tùy ý hài tử chạy loạn, xảy ra chuyện gì liền không hảo.</p><p>Sợ dọa đến tiểu hài tử, Tham Lãng ho nhẹ một tiếng, cố ý tăng thêm bước chân, “Nơi này có tiểu miêu, mèo con nhi nga,” như vậy tố chất thần kinh mà lẩm bẩm, sải bước đi đến tiểu hài tử bên người.</p><p>Nhân gia căn bản không lý.</p><p>Đối phương nho nhỏ một con, tiểu bả vai một tủng một tủng, chỉ lo hút nước mũi, chút nào không chú ý tới, một cái người xa lạ đã chậm rãi tiếp cận.</p><p>Như vậy gần còn không có phát hiện?</p><p>An toàn ý thức quá mỏng nhược, cấp gia trưởng làm công phân.</p><p>Khuôn mặt có điểm hồng, mu bàn tay cũng thuân.</p><p>Không có hảo hảo mạt quá hộ da sương?</p><p>0 điểm.</p><p>Con bướm kẹp tóc lệch qua trên đầu, bím tóc trát đến lộn xộn.</p><p>0 điểm.</p><p>Tiểu giày da nhưng thật ra xinh đẹp, vừa thấy liền không phải hàng vỉa hè, nhưng đế giày cũng quá mỏng điểm……</p><p>0 điểm, 0 điểm, cần thiết cấp gia trưởng làm công phân!</p><p>Tham Lãng tại chỗ nghĩ nghĩ, lén lút xoay người, trở về đi, không bao xa, bàn tay tiến thùng giấy, từ lồng sắt bắt ra một con tiểu nãi miêu, hướng khô héo trong bụi cỏ nhẹ nhàng một ném ——</p><p>“Cái kia, phía trước tiểu mỹ nữ,” Tham Lãng hỏi, “Có thể giúp đại ca ca tìm một chút tiểu miêu sao?”</p><p>Tiểu mỹ nữ: “……</p><p>Nước mắt lưng tròng mà, khuôn mặt nhỏ cũng khóc hoa, bị người tới hoảng sợ, còn đánh cái cách.</p><p>Nguyên lai là lớp Hướng Dương tiểu cô nương.</p><p>Tham Lãng nhận ra nàng.</p><p>Tiểu đoàn tử tính cách tương đối quái gở, không thế nào hòa hợp với tập thể, thường xuyên tan học lúc sau không ai tiếp, rất nhiều lần hắn buổi tối cấp phòng bếp đưa hóa, đều thấy nàng một người ở nhà ăn ăn nhi đồng cơm.</p><p>Tham Lãng chớp chớp mắt, mơ hồ nhớ tới một trương treo ở mỹ thuật pha lê trong phòng bút sáp họa, là đạt được giải nhất tác phẩm.</p><p>Phía dưới có hài tử ký tên.</p><p>Giải nhất: Đường Đường</p><p>( hoa hướng dương mẫu giáo bé: Thương Ngôn Diệp )</p><p>Tác phẩm tên là 《 hai chúng ta 》.</p><p>Vải vẽ tranh phảng phất một cái không rộng vũ trụ, có hai cái tách ra vòng tròn lớn vòng, giống gặp thoáng qua hai cái tinh cầu.</p><p>Một cái tinh cầu là dưới ánh mặt trời, một người nam nhân đứng ở cao cao cao chọc trời cao ốc thượng, âu phục giày da, giày da bóng lưỡng, trước mắt rậm rạp tất cả đều là người máy, đang ở mặt vô biểu tình mà hướng mái nhà thượng leo lên.</p><p>Một cái tinh cầu là ánh trăng, một cái tiểu hài tử ở phòng tối đọc chuyện xưa thư, song đuôi ngựa chỉ trát một bên, bên kia tóc rối tung, bên người là mãn nhà ở ngồi dưới đất rũ đầu búp bê vải.</p><p>Người máy biểu tình nhất trí, tứ chi động tác khác nhau.</p><p>Búp bê vải động tác nhất trí, trên mặt biểu tình khác nhau.</p><p>Chợt nhìn lại tương đương quỷ quyệt một bức họa.</p><p>Nhìn kỹ tới lại có điểm……</p><p>Không thể nề hà.</p><p>Lúc ấy, Tham Lãng là lần đầu tiên tham quan nhà trẻ phòng tranh, hắn ở kia phúc nhi đồng bút sáp họa trước, đứng yên thật lâu thật lâu, mãn đầu đều là một câu thơ:</p><p>Nhân sinh bất tương kiến, động như tham dự thương.</p><p>“Nga, nguyên lai là Đường Đường.”</p><p>Tham Lãng gọi ra tiểu hài tử tên, không đợi đối phương lấy lại tinh thần, hắn cong lưng, đem một rương tiểu miêu đặt ở tiểu hài tử trước mắt, cấp hoang mang rối loạn hỏi:</p><p>“Đường Đường đồng học, ngươi thấy ca ca tiểu miêu sao, như vậy tiểu miêu, ném một con.”</p><p>Tiểu hài tử: “???”</p><p>Ước chừng là chưa từng gặp qua nhiều như vậy tiểu nãi miêu.</p><p>Tiểu đoàn tử ngẩn ngơ, thậm chí với khóc thút thít biểu tình cũng cứng đờ, tiểu hài tử đối tiểu động vật có trời sinh thân cận cùng yêu thích, một chút đã bị hấp dẫn chú ý.</p><p>Lông xù xù, nho nhỏ, mềm mềm mại mại cô đôi ở bên nhau, quá đáng yêu.</p><p>Nước mắt còn treo ở trên cằm, tiểu hài tử nhìn chằm chằm một oa mèo con, cả người đều có điểm ngốc: “Cách, không, không nha, ta cũng không biết……”</p><p>Tham Lãng lộ ra nôn nóng thần sắc, một ngụm kịch nói khang: “Thiên nột, quá không xong, như vậy lãnh thiên, tiểu miêu sẽ đông chết, kia quả thực là nhất định!”</p><p>Tiểu đoàn tử: “…… A, a?”</p><p>Tham Lãng: “Đại ca ca không không ra tay, ngươi giúp đại ca ca tìm một chút, hảo sao?”</p><p>“Hảo nhưng thật ra hảo, chính là, kia làm sao bây giờ nha, ta thật sự không, cách, không nhìn thấy……”</p><p>Tiểu đoàn tử lúc này mới phản ứng lại đây, cũng đi theo nóng nảy, khuôn mặt nhỏ lại bắt đầu rối rắm, muốn khóc không khóc, kinh hoảng mà khắp nơi nhìn xung quanh.</p><p>Tham Lãng cũng không quấy rầy nàng, quan sát đến tiểu hài tử cảm xúc biến hóa.</p><p>Bỗng nhiên, nàng trợn to ngập nước đôi mắt, giơ tay chỉ hướng cách đó không xa: “Di? Có, thấy! Ta thấy!”</p><p>Tham Lãng vẻ mặt kinh ngạc: “Thật sự sao, ở đâu đâu, đại ca ca như thế nào không nhìn thấy?”</p><p>Đường Đường vẻ mặt chắc chắn: “Thật sự, ở mặt cỏ, ta đi tìm, lập tức liền trở về.”</p><p>“Thật ghê gớm, Đường Đường, vậy làm ơn ngươi?”</p><p>“Giao cho ta không thành vấn đề.”</p><p>“Để ý xem lộ.”</p><p>“Ân.”</p><p>Tiểu hài tử dùng mu bàn tay lau đem đôi mắt, hít sâu một ngụm, một chút tỉnh lại lên, cổ đủ dũng khí hướng bên kia bước đi.</p><p>Hô, hảo phù hoa, nhìn nho nhỏ một đoàn bóng dáng, Tham Lãng âm thầm lau một phen hãn, may mắn chính mình lạn kỹ thuật diễn cũng đủ lừa gạt trụ tiểu bằng hữu.</p><p>Mang thai ngốc ba năm, nãi ba xuẩn mười năm, mỗi cái cha mẹ đều là diễn tinh, bằng hữu vòng thành không ta khinh.</p><p>Đáng thương thiên hạ cha mẹ tâm nột.</p><p>Tiểu đoàn tử đi đến bụi cỏ biên, tò mò mà nhìn chằm chằm cuộn tròn trên mặt đất run bần bật tiểu miêu, quay đầu hỏi: “Đại ca ca, nó có thể hay không cắn ta?”</p><p>“Vậy muốn xem biểu hiện của ngươi,” Tham Lãng làm như có thật, “Ngươi thích nó, đối nó hảo, nó liền sẽ không cắn ngươi.”</p><p>Tiểu đoàn tử biểu tình một túc: “Ta thích nó, sẽ đối nó tốt!”</p><p>Tham Lãng: “Đó chính là, trên mặt đất quá lạnh, mau đem nó bế lên tới.”</p><p>“Làm ta ôm?” Đường Đường đầu tiên là khẩn trương, lại có điểm tiểu chờ mong, thật cẩn thận mà ngồi xổm xuống, nâng lên tiểu miêu ôm vào trong ngực, hưng phấn mà đi vào Tham Lãng trước người.</p><p>Thiên chân vô tà gương mặt tươi cười, như thế nào sẽ như vậy manh.</p><p>Hoàn toàn là phạm quy a, thật đúng là chữa khỏi.</p><p>Làm ước lượng!</p><p>Tham Lãng có điểm đắc ý: “Thế nào, ta nói không sai đi?”</p><p>Tiểu hài tử ngẩng đầu lên, cũng vẻ mặt đắc ý: “Đại ca ca, nó đặc biệt thích ta.”</p><p>Tham Lãng: “……”</p><p>Cái này thiên nên như thế nào liêu? Thế nhưng không lời gì để nói.</p><p>Cho nên nói ngươi là làm sao thấy được?</p><p>Tham Lãng cười gượng hạ: “Đúng rồi, chúng nó về sau muốn ở tại nhà trẻ, tiểu bằng hữu phải thân thủ nuôi nấng chúng nó, một con cũng không có thể thiếu, ngươi muốn giúp đại ca ca ôm hảo nó, chúng ta đem tiểu miêu nhóm đưa đến hiệu trưởng bà bà nơi đó đi, đây là hai chúng ta hôm nay nhiệm vụ,” nói, hắn xụ mặt, nghiêm túc hỏi, “Đường Đường đồng học, ngươi tiếp thu nhiệm vụ này sao?”</p><p>“Nuôi nấng?” Tiểu hài tử lý giải một hồi, hai mắt sáng lên, một chút cười khai, “Tuân mệnh!”</p><p>“Xuất phát đi.”</p><p>Tham Lãng thở phào một hơi, xoa xoa tiểu hài tử đầu, khom lưng bế lên đại thùng giấy đi phía trước đi, không chút để ý hỏi: “Như thế nào một người ở chỗ này, mọi người đều ở khai đại hội thể thao.”</p><p>Tiểu đoàn tử gia tăng bước chân, cùng hắn đi phía trước đi, “Nam sinh chơi, thi chạy.”</p><p>“Ai nói, không phải cũng có nữ hài sao,” Tham Lãng liếc nhìn nàng một cái, “Nghe nói, còn có thân tử hạng mục, chính là cùng ba ba mụ mụ cùng nhau chơi trò chơi cái loại này.”</p><p>“…… Nga.”</p><p>“Nga là cái quỷ gì?”</p><p>“……”</p><p>“???Uy? Như thế nào không nói lời nào?”</p><p>“……”</p><p>Tiểu đoàn tử không hé răng, bỗng nhiên dừng lại bước chân, cúi đầu nhìn chằm chằm trong lòng ngực tiểu miêu, nhỏ giọng lẩm bẩm một câu cái gì, sau đó buồn đầu đi phía trước chạy.</p><p>“Cái gì? Từ từ, ta đuổi không kịp ngươi, đứng lại!”</p><p>Này tiểu quỷ chạy cái gì?</p><p>Tham Lãng nhanh hơn bước chân, đuổi tới nàng trước người, ngăn trở tiểu hài tử đường đi.</p><p>Tiểu đoàn tử: “……”</p><p>“Sao lại thế này, đột nhiên chạy lên rất nguy hiểm, té ngã làm sao bây giờ?” Tham Lãng nửa ngồi xổm xuống, xụ mặt, cùng tiểu hài tử nhìn thẳng.</p><p>Cùng nàng trầm mặc nhìn nhau một hồi.</p><p>Tham Lãng nhẹ giọng nói: “Ngươi xem, trong lòng ngực tiểu miêu đều sợ hãi, ca ca còn dọn đại cái rương, lần sau cũng không dám như vậy, nghe thấy được sao?”</p><p>Ước chừng là cảm thấy được trước mặt người thiện ý cùng khẩn trương, bị nghiêm khắc phê bình tiểu hài tử cố nén trụ nước mắt, thành thật gật gật đầu: “Nghe thấy được.”</p><p>Tham Lãng ngữ khí phóng nhu: “Ta đây hỏi ngươi, vừa rồi chính mình một người nói thầm cái gì đâu, đại ca ca không nghe rõ.”</p><p>Tiểu đoàn tử: “……”</p><p>Tham Lãng: “Nói chuyện, đại nhân hỏi chuyện, ngươi muốn trả lời, lễ phép đâu?”</p><p>Tiểu đoàn tử bẹp bẹp miệng, “Ba ba……”</p><p>Tham Lãng: “Đại điểm thanh, nghe không thấy.”</p><p>Tiểu đoàn tử ngạnh trụ yết hầu, tiểu tiểu thanh: “Ba ba là đại ngu ngốc.”</p><p>Tham Lãng: “???”</p><p>“Ba ba là đại ngu ngốc.”</p><p>“A?”</p><p>Tiểu đoàn tử ngẩng đầu, ngập ngừng một chút, lớn tiếng kêu: “Ba ba là đại ngu ngốc…… Đường Đường, không có người cùng nhau chơi trò chơi anh anh…… Ba ba là đại ngu ngốc! Đại ngu ngốc a a a a ngẩng!!”</p><p>Tham Lãng đào đào lỗ tai: “…… Nghe thấy được.”</p><p>Hai phút sau.</p><p>“Anh.”</p><p>“Phát tiết hảo sao?”</p><p>“Cách.”</p><p>“Chơi cái trò chơi sao, bao lớn điểm nhi sự, đến nỗi sao?</p><p>“Ô.”</p><p>“…… Đừng khóc.”</p><p>“Ô a a, Ngô Đại Bảo hắn ba ba nói, không cần cùng Đường Đường một tổ, nói Đường Đường không có ba ba mụ mụ, không thể cùng nhau chơi trò chơi, Đường Đường ở bàn phía dưới đều nghe thấy được, ô a a a ngẩng……”</p><p>Ngươi còn không có xong lạp?</p><p>Nước mũi, chú ý nước mũi, ăn vào đi a.</p><p>Sao chỉnh.</p><p>Ngày nắng, ngươi ở bàn phía dưới là muốn làm gì?</p><p>Liền phun tào đều không biết từ chỗ nào phun khởi.</p><p>Cuộc đời lần đầu tiên lộng khóc tiểu hài tử.</p><p>Tham Lãng trên mặt không hiện, lại là lòng nóng như lửa đốt, xoa xoa cái trán, ở áo lông vũ trong túi đào nửa ngày, xả ra một cái nhăn dúm dó khăn tay nhỏ, tùy tay ở tiểu hài tử mũi phía dưới lau hai thanh, ngoài miệng còn có một câu không một câu mà lẩm bẩm:</p><p>“Được rồi, hôm nay ngươi ngộ đúng rồi người, hai ta cũng coi như là có duyên. Đại ca ca ta, nhà trẻ quét rác tăng, trò chơi giới nhân tài kiệt xuất, ba đường du tẩu đại sát tứ phương, nhân xưng kim cương đánh dã ba ba, mang muội cũng không nhường một tấc, nay cái thời tiết hảo, thích hợp trời cao, ca mang ngươi trang bức mang ngươi phi……”</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (21, 3, N'Chương 3: ', CAST(N'2021-09-09T09:47:23.603' AS DateTime), N'<p class="MsoNormal">Từ trước đến nay không yêu hồi WeChat hắn, còn phá lệ ứng
cái: Hảo<o:p></o:p></p><p class="MsoNormal">Xem một cái đồng hồ, 8 giờ 50 phân.<o:p></o:p></p><p class="MsoNormal">Còn có thời gian……<o:p></o:p></p><p class="MsoNormal">Thương Vũ Hiền: “Đánh cấp họ lệ, nói ta lập tức đến.”<o:p></o:p></p><p class="MsoNormal">*<o:p></o:p></p><p class="MsoNormal">“Gia bảo! Cố lên! Gia bảo! Chạy mau!”<o:p></o:p></p><p class="MsoNormal">“Nhiều đóa truy nàng, nhiều đóa cố lên!”<o:p></o:p></p><p class="MsoNormal">Đông gió thổi, trống trận lôi, cờ màu khí cầu đón gió tung
bay.<o:p></o:p></p><p class="MsoNormal">Buổi sáng 9 giờ 50 phân, 200 mễ một vòng tiểu sân thể dục
thượng, thân tử đại hội thể thao lễ khai mạc kết thúc, thi đấu chính thức bắt đầu
rồi.<o:p></o:p></p><p class="MsoNormal">Người xem trên khán đài biển người tấp nập, mỗi cái tiểu hài
tử đều có một cái khổng lồ người nhà đoàn, hổ mẹ miêu ba nhóm hận không thể đem
sở hữu thân thích đều mời đến cấp bảo bối hò hét trợ uy.<o:p></o:p></p><p class="MsoNormal">Cùng hiệu trưởng đánh qua tiếp đón, Tham Lãng tay chân không
ngừng, đem đơn đặt hàng thượng hàng hóa dọn đến các chỉ định địa điểm, có cung
cấp cấp gia trưởng cùng bọn nhỏ đồ ăn vặt, cũng có chia ấu sư nhóm đồ uống, còn
có làm phần thưởng sách vở cùng văn phòng phẩm.<o:p></o:p></p><p class="MsoNormal">Trước sau chạy mười tới tranh, còn dư lại cuối cùng hai
rương thương phẩm.<o:p></o:p></p><p class="MsoNormal">Trong đó một rương là cúp, chỉnh rương tương đối trọng, lưu
đến cuối cùng tìm người hỗ trợ khuân vác; mà lúc này trong lòng ngực hắn này
rương, liền có ý tứ, là một lồng sắt tiểu nãi miêu.<o:p></o:p></p><p class="MsoNormal">Mới ra oa tiểu quất miêu, trợn mắt không lâu, vì giữ ấm, đại
thùng giấy trừ bỏ lồng sắt, còn tắc một cái tiểu chăn bông.<o:p></o:p></p><p class="MsoNormal">Thùng giấy thể tích đại, chắn tầm mắt, ôm vào trong ngực
không tiện tay, Tham Lãng không đến gần nói, tránh đi người, vòng đến rừng cây
nhỏ bên kia.<o:p></o:p></p><p class="MsoNormal">Này oa tiểu miêu, đều không phải là hiệu trưởng đơn đặt hàng
thượng thương phẩm, mà là tiệm tạp hóa quất miêu nhãi con.<o:p></o:p></p><p class="MsoNormal">Tối hôm qua Tham Lãng đem “Trong nhà Chiêu Tài hạ một oa
nhãi con, chủng loại không quá thuần, đang tìm tìm chủ nhân” sự nói cho cho hiệu
trưởng, hiệu trưởng bà bà phi thường cảm thấy hứng thú, nói là nguyện ý toàn bộ
tiếp nhận, cũng tính toán ở nhà trẻ phía đông tu sửa một tòa miêu mễ phòng nhỏ,
các lớp thành lập chăn nuôi tiểu tổ, từ tiểu bằng hữu thay phiên chiếu cố nuôi
nấng.<o:p></o:p></p><p class="MsoNormal">Tham Lãng: “……”<o:p></o:p></p><p class="MsoNormal">Nhìn xem, cái gì kêu có tiền tùy hứng, bên này người còn
không có chỗ ngồi trụ đâu, bên kia phải cho miêu xây nhà.<o:p></o:p></p><p class="MsoNormal">Ôm một cái rương tiểu miêu, Tham Lãng đi đến ven tường đồng
thoại phòng nhỏ khi, trước mắt chợt lóe mà qua một cái nơ con bướm.<o:p></o:p></p><p class="MsoNormal">Có cái hài tử ngồi xổm cây nhỏ mặt sau.<o:p></o:p></p><p class="MsoNormal">Mơ hồ nghe thấy nhỏ giọng khụt khịt.<o:p></o:p></p><p class="MsoNormal">Tham Lãng nghe xong nửa ngày, biểu tình càng thêm mà ngưng
trọng.<o:p></o:p></p><p class="MsoNormal">Vui vui vẻ vẻ hoạt động ngày, như thế nào sẽ có tiểu bằng hữu
né tránh đám người khóc nhè?<o:p></o:p></p><p class="MsoNormal">Tham Lãng nhìn quanh bốn phía, không nhìn thấy cái nào ấu sư
trải qua.<o:p></o:p></p><p class="MsoNormal">Mọi người đều ở vội đại hội thể thao, cũng không thể tùy ý
hài tử chạy loạn, xảy ra chuyện gì liền không hảo.<o:p></o:p></p><p class="MsoNormal">Sợ dọa đến tiểu hài tử, Tham Lãng ho nhẹ một tiếng, cố ý
tăng thêm bước chân, “Nơi này có tiểu miêu, mèo con nhi nga,” như vậy tố chất
thần kinh mà lẩm bẩm, sải bước đi đến tiểu hài tử bên người.<o:p></o:p></p><p class="MsoNormal">Nhân gia căn bản không lý.<o:p></o:p></p><p class="MsoNormal">Đối phương nho nhỏ một con, tiểu bả vai một tủng một tủng,
chỉ lo hút nước mũi, chút nào không chú ý tới, một cái người xa lạ đã chậm rãi
tiếp cận.<o:p></o:p></p><p class="MsoNormal">Như vậy gần còn không có phát hiện?<o:p></o:p></p><p class="MsoNormal">An toàn ý thức quá mỏng nhược, cấp gia trưởng làm công phân.<o:p></o:p></p><p class="MsoNormal">Khuôn mặt có điểm hồng, mu bàn tay cũng thuân.<o:p></o:p></p><p class="MsoNormal">Không có hảo hảo mạt quá hộ da sương?<o:p></o:p></p><p class="MsoNormal">0 điểm.<o:p></o:p></p><p class="MsoNormal">Con bướm kẹp tóc lệch qua trên đầu, bím tóc trát đến lộn xộn.<o:p></o:p></p><p class="MsoNormal">0 điểm.<o:p></o:p></p><p class="MsoNormal">Tiểu giày da nhưng thật ra xinh đẹp, vừa thấy liền không phải
hàng vỉa hè, nhưng đế giày cũng quá mỏng điểm……<o:p></o:p></p><p class="MsoNormal">0 điểm, 0 điểm, cần thiết cấp gia trưởng làm công phân!<o:p></o:p></p><p class="MsoNormal">Tham Lãng tại chỗ nghĩ nghĩ, lén lút xoay người, trở về đi,
không bao xa, bàn tay tiến thùng giấy, từ lồng sắt bắt ra một con tiểu nãi
miêu, hướng khô héo trong bụi cỏ nhẹ nhàng một ném ——<o:p></o:p></p><p class="MsoNormal">“Cái kia, phía trước tiểu mỹ nữ,” Tham Lãng hỏi, “Có thể
giúp đại ca ca tìm một chút tiểu miêu sao?”<o:p></o:p></p><p class="MsoNormal">Tiểu mỹ nữ: “……”<o:p></o:p></p><p class="MsoNormal">Nước mắt lưng tròng mà, khuôn mặt nhỏ cũng khóc hoa, bị người
tới hoảng sợ, còn đánh cái cách.<o:p></o:p></p><p class="MsoNormal">Nguyên lai là lớp Hướng Dương tiểu cô nương.<o:p></o:p></p><p class="MsoNormal">Tham Lãng nhận ra nàng.<o:p></o:p></p><p class="MsoNormal">Tiểu đoàn tử tính cách tương đối quái gở, không thế nào hòa
hợp với tập thể, thường xuyên tan học lúc sau không ai tiếp, rất nhiều lần hắn
buổi tối cấp phòng bếp đưa hóa, đều thấy nàng một người ở nhà ăn ăn nhi đồng
cơm.<o:p></o:p></p><p class="MsoNormal">Tham Lãng chớp chớp mắt, mơ hồ nhớ tới một trương treo ở mỹ
thuật pha lê trong phòng bút sáp họa, là đạt được giải nhất tác phẩm.<o:p></o:p></p><p class="MsoNormal">Phía dưới có hài tử ký tên.<o:p></o:p></p><p class="MsoNormal">Giải nhất: Đường Đường<o:p></o:p></p><p class="MsoNormal">( hoa hướng dương mẫu giáo bé: Thương Ngôn Diệp )<o:p></o:p></p><p class="MsoNormal"><span lang="FR">Tác phẩm tên là </span><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">《</span><span lang="FR"> hai chúng ta </span><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">》</span><span lang="FR">.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vải vẽ tranh phảng
phất một cái không rộng vũ trụ, có hai cái tách ra vòng tròn lớn vòng, giống gặp
thoáng qua hai cái tinh cầu.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Một cái tinh cầu
là dưới ánh mặt trời, một người nam nhân đứng ở cao cao cao chọc trời cao ốc
thượng, âu phục giày da, giày da bóng lưỡng, trước mắt rậm rạp tất cả đều là
người máy, đang ở mặt vô biểu tình mà hướng mái nhà thượng leo lên.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Một cái tinh cầu
là ánh trăng, một cái tiểu hài tử ở phòng tối đọc chuyện xưa thư, song đuôi ngựa
chỉ trát một bên, bên kia tóc rối tung, bên người là mãn nhà ở ngồi dưới đất rũ
đầu búp bê vải.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Người máy biểu
tình nhất trí, tứ chi động tác khác nhau.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Búp bê vải động
tác nhất trí, trên mặt biểu tình khác nhau.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chợt nhìn lại
tương đương quỷ quyệt một bức họa.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nhìn kỹ tới lại
có điểm……<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Không thể nề hà.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lúc ấy, Tham Lãng
là lần đầu tiên tham quan nhà trẻ phòng tranh, hắn ở kia phúc nhi đồng bút sáp
họa trước, đứng yên thật lâu thật lâu, mãn đầu đều là một câu thơ:<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nhân sinh bất
tương kiến, động như tham dự thương.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">*<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Nga,
nguyên lai là Đường Đường.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tham Lãng gọi ra
tiểu hài tử tên, không đợi đối phương lấy lại tinh thần, hắn cong lưng, đem một
rương tiểu miêu đặt ở tiểu hài tử trước mắt, cấp hoang mang rối loạn hỏi:<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Đường Đường
đồng học, ngươi thấy ca ca tiểu miêu sao, như vậy tiểu miêu, ném một con.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tiểu hài tử:
“???”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ước chừng là chưa
từng gặp qua nhiều như vậy tiểu nãi miêu.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tiểu đoàn tử ngẩn
ngơ, thậm chí với khóc thút thít biểu tình cũng cứng đờ, tiểu hài tử đối tiểu động
vật có trời sinh thân cận cùng yêu thích, một chút đã bị hấp dẫn chú ý.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lông xù xù, nho
nhỏ, mềm mềm mại mại cô đôi ở bên nhau, quá đáng yêu.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nước mắt còn treo
ở trên cằm, tiểu hài tử nhìn chằm chằm một oa mèo con, cả người đều có điểm ngốc:
“Cách, không, không nha, ta cũng không biết……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tham Lãng lộ ra
nôn nóng thần sắc, một ngụm kịch nói khang: “Thiên nột, quá không xong, như vậy
lãnh thiên, tiểu miêu sẽ đông chết, kia quả thực là nhất định!”<o:p></o:p></span></p><p class="MsoNormal">Tiểu đoàn tử: “…… A, a?”<o:p></o:p></p><p class="MsoNormal">Tham Lãng: “Đại ca ca không không ra tay, ngươi giúp đại ca
ca tìm một chút, hảo sao?”<o:p></o:p></p><p class="MsoNormal">“Hảo nhưng thật ra hảo, chính là, kia làm sao bây giờ nha,
ta thật sự không, cách, không nhìn thấy……”<o:p></o:p></p><p class="MsoNormal">Tiểu đoàn tử lúc này mới phản ứng lại đây, cũng đi theo nóng
nảy, khuôn mặt nhỏ lại bắt đầu rối rắm, muốn khóc không khóc, kinh hoảng mà khắp
nơi nhìn xung quanh.<o:p></o:p></p><p class="MsoNormal">Tham Lãng cũng không quấy rầy nàng, quan sát đến tiểu hài tử
cảm xúc biến hóa.<o:p></o:p></p><p class="MsoNormal">Bỗng nhiên, nàng trợn to ngập nước đôi mắt, giơ tay chỉ hướng
cách đó không xa: “Di? Có, thấy! Ta thấy!”<o:p></o:p></p><p class="MsoNormal">Tham Lãng vẻ mặt kinh ngạc: “Thật sự sao, ở đâu đâu, đại ca
ca như thế nào không nhìn thấy?”<o:p></o:p></p><p class="MsoNormal">Đường Đường vẻ mặt chắc chắn: “Thật sự, ở mặt cỏ, ta đi tìm,
lập tức liền trở về.”<o:p></o:p></p><p class="MsoNormal">“Thật ghê gớm, Đường Đường, vậy làm ơn ngươi?”<o:p></o:p></p><p class="MsoNormal">“Giao cho ta không thành vấn đề.”<o:p></o:p></p><p class="MsoNormal">“Để ý xem lộ.”<o:p></o:p></p><p class="MsoNormal">“Ân.”<o:p></o:p></p><p class="MsoNormal">Tiểu hài tử dùng mu bàn tay lau đem đôi mắt, hít sâu một ngụm,
một chút tỉnh lại lên, cổ đủ dũng khí hướng bên kia bước đi.<o:p></o:p></p><p class="MsoNormal">Hô, hảo phù hoa, nhìn nho nhỏ một đoàn bóng dáng, Tham Lãng
âm thầm lau một phen hãn, may mắn chính mình lạn kỹ thuật diễn cũng đủ lừa gạt
trụ tiểu bằng hữu.<o:p></o:p></p><p class="MsoNormal">Mang thai ngốc ba năm, nãi ba xuẩn mười năm, mỗi cái cha mẹ
đều là diễn tinh, bằng hữu vòng thành không ta khinh.<o:p></o:p></p><p class="MsoNormal">Đáng thương thiên hạ cha mẹ tâm nột.<o:p></o:p></p><p class="MsoNormal">Tiểu đoàn tử đi đến bụi cỏ biên, tò mò mà nhìn chằm chằm cuộn
tròn trên mặt đất run bần bật tiểu miêu, quay đầu hỏi: “Đại ca ca, nó có thể
hay không cắn ta?”<o:p></o:p></p><p class="MsoNormal">“Vậy muốn xem biểu hiện của ngươi,” Tham Lãng làm như có thật,
“Ngươi thích nó, đối nó hảo, nó liền sẽ không cắn ngươi.”<o:p></o:p></p><p class="MsoNormal">Tiểu đoàn tử biểu tình một túc: “Ta thích nó, sẽ đối nó tốt!”<o:p></o:p></p><p class="MsoNormal">Tham Lãng: “Đó chính là, trên mặt đất quá lạnh, mau đem nó bế
lên tới.”<o:p></o:p></p><p class="MsoNormal">“Làm ta ôm?” Đường Đường đầu tiên là khẩn trương, lại có điểm
tiểu chờ mong, thật cẩn thận mà ngồi xổm xuống, nâng lên tiểu miêu ôm vào trong
ngực, hưng phấn mà đi vào Tham Lãng trước người.<o:p></o:p></p><p class="MsoNormal">Thiên chân vô tà gương mặt tươi cười, như thế nào sẽ như vậy
manh.<o:p></o:p></p><p class="MsoNormal">Hoàn toàn là phạm quy a, thật đúng là chữa khỏi.<o:p></o:p></p><p class="MsoNormal">Làm ước lượng!<o:p></o:p></p><p class="MsoNormal">Tham Lãng có điểm đắc ý: “Thế nào, ta nói không sai đi?”<o:p></o:p></p><p class="MsoNormal">Tiểu hài tử ngẩng đầu lên, cũng vẻ mặt đắc ý: “Đại ca ca, nó
đặc biệt thích ta.”<o:p></o:p></p><p class="MsoNormal">Tham Lãng: “……”<o:p></o:p></p><p class="MsoNormal">Cái này thiên nên như thế nào liêu? Thế nhưng không lời gì để
nói.<o:p></o:p></p><p class="MsoNormal">Cho nên nói ngươi là làm sao thấy được?<o:p></o:p></p><p class="MsoNormal">Tham Lãng cười gượng hạ: “Đúng rồi, chúng nó về sau muốn ở tại
nhà trẻ, tiểu bằng hữu phải thân thủ nuôi nấng chúng nó, một con cũng không có
thể thiếu, ngươi muốn giúp đại ca ca ôm hảo nó, chúng ta đem tiểu miêu nhóm đưa
đến hiệu trưởng bà bà nơi đó đi, đây là hai chúng ta hôm nay nhiệm vụ,” nói, hắn
xụ mặt, nghiêm túc hỏi, “Đường Đường đồng học, ngươi tiếp thu nhiệm vụ này
sao?”<o:p></o:p></p><p class="MsoNormal">“Nuôi nấng?” Tiểu hài tử lý giải một hồi, hai mắt sáng lên,
một chút cười khai, “Tuân mệnh!”<o:p></o:p></p><p class="MsoNormal">“Xuất phát đi.”<o:p></o:p></p><p class="MsoNormal">Tham Lãng thở phào một hơi, xoa xoa tiểu hài tử đầu, khom
lưng bế lên đại thùng giấy đi phía trước đi, không chút để ý hỏi: “Như thế nào
một người ở chỗ này, mọi người đều ở khai đại hội thể thao.”<o:p></o:p></p><p class="MsoNormal">Tiểu đoàn tử gia tăng bước chân, cùng hắn đi phía trước đi,
“Nam sinh chơi, thi chạy.”<o:p></o:p></p><p class="MsoNormal">“Ai nói, không phải cũng có nữ hài sao,” Tham Lãng liếc nhìn
nàng một cái, “Nghe nói, còn có thân tử hạng mục, chính là cùng ba ba mụ mụ
cùng nhau chơi trò chơi cái loại này.”<o:p></o:p></p><p class="MsoNormal">“……<span lang="FR"> Nga.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Nga là cái
quỷ gì?”<o:p></o:p></span></p><p class="MsoNormal">“……”<span lang="FR"><o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">???Uy? Như
thế nào không nói lời nào?”<o:p></o:p></span></p><p class="MsoNormal">“……”<span lang="FR"><o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tiểu đoàn tử
không hé răng, bỗng nhiên dừng lại bước chân, cúi đầu nhìn chằm chằm trong lòng
ngực tiểu miêu, nhỏ giọng lẩm bẩm một câu cái gì, sau đó buồn đầu đi phía trước
chạy.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Cái gì? Từ
từ, ta đuổi không kịp ngươi, đứng lại!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Này tiểu quỷ chạy
cái gì?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tham Lãng nhanh
hơn bước chân, đuổi tới nàng trước người, ngăn trở tiểu hài tử đường đi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tiểu đoàn tử:
“……”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Sao lại thế
này, đột nhiên chạy lên rất nguy hiểm, té ngã làm sao bây giờ?” Tham Lãng nửa
ngồi xổm xuống, xụ mặt, cùng tiểu hài tử nhìn thẳng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cùng nàng trầm mặc
nhìn nhau một hồi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tham Lãng nhẹ giọng
nói: “Ngươi xem, trong lòng ngực tiểu miêu đều sợ hãi, ca ca còn dọn đại cái
rương, lần sau cũng không dám như vậy, nghe thấy được sao?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ước chừng là cảm
thấy được trước mặt người thiện ý cùng khẩn trương, bị nghiêm khắc phê bình tiểu
hài tử cố nén trụ nước mắt, thành thật gật gật đầu: “Nghe thấy được.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tham Lãng ngữ khí
phóng nhu: “Ta đây hỏi ngươi, vừa rồi chính mình một người nói thầm cái gì đâu,
đại ca ca không nghe rõ.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tiểu đoàn tử:
“……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tham Lãng: “Nói
chuyện, đại nhân hỏi chuyện, ngươi muốn trả lời, lễ phép đâu?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tiểu đoàn tử bẹp
bẹp miệng, “Ba ba……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tham Lãng: “Đại
điểm thanh, nghe không thấy.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tiểu đoàn tử ngạnh
trụ yết hầu, tiểu tiểu thanh: “Ba ba là đại ngu ngốc.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tham Lãng: “???”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Ba ba là đại
ngu ngốc.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">A?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tiểu đoàn tử ngẩng
đầu, ngập ngừng một chút, lớn tiếng kêu: “Ba ba là đại ngu ngốc…… Đường Đường,
không có người cùng nhau chơi trò chơi anh anh…… Ba ba là đại ngu ngốc! Đại ngu
ngốc a a a a ngẩng!!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tham Lãng đào đào
lỗ tai: “…… Nghe thấy được.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hai phút sau.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Anh.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Phát tiết
hảo sao?”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Cách.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Chơi cái
trò chơi sao, bao lớn điểm nhi sự, đến nỗi sao?”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Ô.”<o:p></o:p></span></p><p class="MsoNormal">“……<span lang="FR"> Đừng
khóc.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Ô a a, Ngô
Đại Bảo hắn ba ba nói, không cần cùng Đường Đường một tổ, nói Đường Đường không
có ba ba mụ mụ, không thể cùng nhau chơi trò chơi, Đường Đường ở bàn phía dưới
đều nghe thấy được, ô a a a ngẩng……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngươi còn không
có xong lạp?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nước mũi, chú ý
nước mũi, ăn vào đi a.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Sao chỉnh.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngày nắng, ngươi ở
bàn phía dưới là muốn làm gì?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Liền phun tào đều
không biết từ chỗ nào phun khởi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cuộc đời lần đầu
tiên lộng khóc tiểu hài tử.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tham Lãng trên mặt
không hiện, lại là lòng nóng như lửa đốt, xoa xoa cái trán, ở áo lông vũ trong
túi đào nửa ngày, xả ra một cái nhăn dúm dó khăn tay nhỏ, tùy tay ở tiểu hài tử
mũi phía dưới lau hai thanh, ngoài miệng còn có một câu không một câu mà lẩm bẩm:<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Được rồi,
hôm nay ngươi ngộ đúng rồi người, hai ta cũng coi như là có duyên. Đại ca ca
ta, nhà trẻ quét rác tăng, trò chơi giới nhân tài kiệt xuất, ba đường du tẩu đại
sát tứ phương, nhân xưng kim cương đánh dã ba ba, mang muội cũng không nhường một
tấc, nay cái thời tiết hảo, thích hợp trời cao, ca mang ngươi trang bức mang
ngươi phi……”</span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (22, 1, N'Chương 1', CAST(N'2021-09-10T15:29:36.083' AS DateTime), N'87,88,89,90,91,92,93,94,95,96,97,98,99', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (22, 2, N'Chương 2', CAST(N'2021-09-10T15:32:03.037' AS DateTime), N'100,101,102,103,104,105,106,107', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (22, 3, N'Chương 3', CAST(N'2021-09-10T15:35:45.437' AS DateTime), N'108,109,110,111,112,113,114,115,116', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (23, 1, N'Chương 1', CAST(N'2021-09-10T15:41:37.443' AS DateTime), N'118,119,121,122,123,125,127,128', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (24, 1, N'Oneshot', CAST(N'2021-09-10T16:10:03.060' AS DateTime), N'<p><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Trăng đêm nay tròn quá dỗi, ánh sáng thanh nhẹ soi vào lòng người. Hắn vẫn luôn gặp em vào những đêm tình như thế, hắn khẽ thì thầm vào tai em vài lời:</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Sói thích bầu trời nhưng Sói cũng yêu ánh trăng.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn khẽ hôn lên trán em. Vẻ mặt em hân hoan ngọt ngào và tràn đầy hạnh phúc như hắn chẳng có nói gì, hắn chỉ một lòng yêu em. Em yêu hắn nhiều đến thế trong khi hắn lộ rõ bản chất của kẻ hai lòng? Tôi đang ghen đấy em à.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Ai đó khẽ gọi hắn, một vài cơn gió cuốn ngang bầu trời, đám mây con che đi ánh trăng vàng vành vạnh. Cả phố phường nhộn nhịp chìm vào bóng tối lửng lơ. Hắn vuốt lại mái tóc em thật ân cần, trao cho em những cử chỉ đường mật nhất. Một cái véo nhẹ vào má, hay nụ cười say lòng có phần kiêu ngạo của hắn,... hắn muốn cho em biết một cuộc tình vụn trộm nó thú vị thế nào và đau đớn ra sao ấy. Mà sao em cứ mãi lầm lũi trong một tình yêu sẽ chia như thế, em có biết tôi đau thế nào không?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn cất bước rời đi. Bước chân nhanh nhẹn, lạnh lùng, đáng người chững chạc đầy cao ngạo, và cái đầu nghiêng nghiêng chẳng ngoảnh nhìn em lấy một lần. Hắn khuất bóng rồi bỏ em chơ vơ với bóng tối. Em nhìn lên bầu trời hoanh lạnh, như chính cõi lòng em, ánh mắt thù hằn và căm ghét với ánh ánh trắng cao. Bầu trời có ghét ánh trăng giống như em không? Tôi không biết.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Em tựa vào bức tường lạnh khuất sáng , khuất cả ánh trăng. Cuộn người khóc nấc lên. Em ghét hắn, vì em là Bầu Trời, hắn là Sói, và cô ấy là Ánh Trăng. Chỉ có tôi một lòng yêu em, nhung nhớ về em, và là cái bóng của hắn, em biết không? Tôi ước gì em có thể tựa vào vai tôi lúc này, nhưng tôi đã mờ đi và trở về bên hắn, có buồn không em ơi?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Thành phố Mùa Xuân nhộn nhịp, trên khuôn mặt mọi người tràn đầy vẻ hoan hỉ. Hắn cầm tay một cô gái dìu dắt qua dòng người, thỉnh thoảng họ dừng lại ở một hàng quán bày đủ loại đồ lưu niệm, hắn mĩm cười với cô ấy một cách dịu dàng, ánh mắt chăm chú luôn ẩn chứa nét tinh nghịch và hoang dại. Đó là mùa xuân đầu tiên cả hai ở cùng nhau, cùng yêu nhau một cách chân thành, không toan tính. Tôi nghĩ thế, vì hắn chưa yêu ai cả. Thế còn em, hắn có yêu em không? Chỉ có tôi yêu em thôi.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Ánh trăng vẫn cao, vẫn tròn. Vào những ngày trăng tròn, sói là một con thú thật sự. Tiếng hú vang vọng bất giác truyền từ nơi xa khiến tôi rợn người, làm hắn chú ý. Hắn đói, đói những cuộc tình, và em đã là con mồi của hắn. Rồi cô ấy cũng thế thôi. Không khí vẫn náo nức, không ngừng lan tỏa. Mọi người vẫn vui, cô ấy vẫn vui, duy chỉ có hắn còn vui.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Vài đôi ngày trôi đi. Ánh trăng lẳng lặng biến mất khỏi bầu trời. Có vài cơn gió mùa nhộn nhạo bủa vây bầu trời. Sói lang thang.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn thô lỗ nắm lấy tay em mà kéo đi, chẳng dịu dàng chút nào. Hắn liếc nhìn những gã trai quanh em một cách nguy hiểm. Như em là của hắn, của riêng hắn. Em vùng khỏi tay hắn , vội chạy đi. Hắn khác quá. Nước mắt em tuôn rơi và lặng yên, em bần thần khi hắn nắm lấy tay em, nhẹ nhàng và dịu dàng làm em dao động. Hắn luôn biết cách dỗ dành con gái, hắn quá nguy hiểm. Em à!</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Đừng giận Sói. Vì Sói rất thích bầu trời.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn giúp em lau đi những giọt nước mắt còn đọng lại, nhưng nước mắt em vẫn rơi, em cố nhắm nghiền đôi mắt để ngăn dòng nước mắt, nhưng sao không thể. Hay phần nào trong em đã biết hắn là kẻ dối gian, chỉ có trái tim em còn cố chấp?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Sói thích bầu trời hay Sói thích những vì sao trên bầu trời?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Giọng em run run, rời rạc và nấc nghẹn. Chẳng biết sao sống mũi em say xè, nức nở, hay em yêu hắn rồi? Tôi sẽ ghen, em đấy.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Thành phố chợt tắt ngấm ánh đèn, bóng xô đẩy nhau đến cạnh hắn như muốn nói vài lời tâm tình. Em thoáng sợ hãi, hắn đặt ngón tay lên môi em, ra hiệu cho em im lặng, tay hắn đặt lên vai em như để nói:"có anh ở đây rồi".</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Ánh sáng một làn nữa lan đi, bóng tối rời đi trong khó chịu. Chỉ vài giây ngắn ngủi mà sắc mặt em thay đổi đi rất nhiều, nước mắt em không còn rơi, em thôi nức nở, và vẻ mặt thẩn thờ xen lẫn hốt hoảng. Hắn rời đi theo tiếng gọi của một cơn gió lạ, đậm hương và nồng nàn. Như hắn đã từng nói về em, sự ngọt ngào của bầu trời thanh tao.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Em biết đấy. Sói là kẻ hai lòng. Sói không thể chỉ yêu một bầu trời hay một ánh trăng, Sói yêu bất kì ai. Chỉ có tôi là chung tình, là một lòng yêu em. Mà có sao em chẳng một lần quan tâm? Cái bóng này yêu em từ lâu.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Đã từ lâu khi bài tình ca của bầu trời và mặt đất ngân vang. Sói chỉ luôn hướng về bầu trời và khát khao. Sói ghét những cơn gió cứ vờn quanh bên bầu trời, cố cắt cứa lời thì thầm sói chỉ dành riêng cho bầu trời. Chẳng có ai nguyện chúc phúc cho cả hai, chỉ có mưa là nguyện vì cả hai mà cầu chúc. Giọt mưa cứ tí tách rơi như ca vang bài tình ca của bầu trời và mặt đất.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Mái tóc tôi ướt đẫm mưa, chắc vậy, những giọt mưa cô đọng không ngừng rơi xuống. Em ghét tôi từ khi tôi nhìn em vui say bên người khác, một kẻ có nụ cười tinh ngịch và cử chỉ dịu dàng, em đẩy tôi đi như hai ta đã chấm dứt, em quên rồi? Tôi cười, tôi vẫn thói quen cũ, vẫn âu yếm má em mỗi khi em giận dỗi, em chỉ cố né đi. Tôi dơ bẩn, tôi biết.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Sói có nghe thấy bài tình ca của bầu trời và mặt đất.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Đừng ngớ ngẩn như thế. Tôi không phải bầu trời và Sói cũng không phải mặt đất. Vả lại, bầu trời và mặt đất không thể ở cùng nhau, cả hai chỉ có thể đau đớn nhìn nhau từng ngày qua ngày.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Em hét lên, gã vỗ về em, gã nhìn về tôi, khinh bỉ. Bất giác tôi mĩm cười. Em là bầu trời, gã là cơn gió, tôi chỉ còn là cái bóng của Sói.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Nước mắt tôi rơi, tự nhiên, lặng lẽ, không một dự báo nào chảy trôi khỏi khóe mắt, hắn nhìn tôi, khiêu khích, vẻ đắt thắng hiện rõ lên khuôn mặt dù đã sủng ướt. Và tất cả là lý do để hắn trở thành tôi của thực tại.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Phần cô ấy.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Cô ấy nhẹ nhàng và dịu dàng như ánh trăng. Mang lại cho sói niềm vui, nụ cười và sự chững chạc, trưởng thành.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Sói yêu ánh trăng mất rồi.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn khẽ cười, ngây ngô, nét hồn nhiên trẻ dại mà ở cạnh em tôi chưa một dám thể hiện. Hắn ghét em và yêu cô ấy, tôi yêu em và không thích cô ấy. Vì cô ấy giành mất hắn của em, vì tôi không thể yêu em. Thôi nào, cô ấy lại cười rồi, có lẽ không quá yêu kiều, nhưng đủ làm tôi bối rối, hắn rạo rực.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Mưa bất chợt rơi khỏi bầu trời không một dự báo trước, chẳng nhạc, chẳng ca, chỉ là dòng lạnh giá phủ lên đầu, dội xuống người. Như mưa ghét sói, ghét cả hai, chẳng buồn ngân vang bài tình ca của bầu trời và mặt đất. Vô nghĩa.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Nhưng cơn mưa nặng hạt kia chẳng đủ làm cả hai buồn phiền, họ vui đùa trong mưa, nghịch ngợm như những đứa trẻ. Khi thấm mệt, hắn cõng cô về, điều tôi chưa một lần làm với em, cô ngủ thiếp đi trên vai hắn, và chỉ như một sự vô tình nào đó, hắn ngoái nhìn về một hướng hửng nắng cuối trời, môi cô khẽ chạm lên má hắn, ửng đỏ. Trông hắn mới ngờ nghệch làm sao, cả khuôn mặt đỏ lửng, ánh mắt xa xăm mang nét cười, và sự rạng rỡ không sao giấu hết. Hắn chỉ vừa mới đặt chân đến nấc thang đầu tiên của tình yêu, chỉ là khởi đầu, rồi hắn sẽ nhanh chóng giống tôi thôi.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Ngày không trăng, sói đợi chờ, vẻ thất vọng, chán chờm vẽ khuôn mặt sói ra một dạng thật khó coi. Những vì sao rơi rụng khắp cả bầu trời, thu hút sói, bầu trời tìm sói đấy có nghe không?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Em đến tìm hắn vào một ngày trăng non mập mờ tối, vẻ đợi chờ và mong mỏi. Tôi mờ nhạt, và chắc là hắn cố ý để em không nhìn thấy tôi.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Sói có yêu bầu trời không? Sói đã ghen kia mà.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Tôi có ghen và yêu em đấy. Nếu em hỏi tôi, tôi sẽ trả lời ngay, chẳng nghĩ ngợi nhiều như hắn làm em lo lắng, phải bối rối chăm chú đợi chờ câu trả lời từ hắn. Hắn thật kiêu ngạo, em nhỉ?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Sói là kẻ đa tình, em biết không? Vì khi yêu một người chỉ toàn là thương đau, như một cái bóng cứ lầm lũi và khuất sâu.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn nói về tôi. Về một người từng yêu em tha thiết, về một người giận em đến vô cùng, chắc hắn cũng ghét em, hắn sẽ không yêu em đâu. Và khi hắn vẫn ở cạnh cô ấy, hắn không yêu thêm bất kì ai, chắc vậy. Như tôi chỉ yêu mình em.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- nhưng Sói rất thích bầu trời. Nếu em muốn, hãy bắt đầu lại, được không?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Khi nghe câu ấy, tôi như chấn động, hắn yêu em? Không thể nào. Nhưng em lại vỡ òa, lao vào lòng hắn, lòng hắn có ấm áp như tôi? Em khóc nấc lên, hắn vỗ về trên đôi vai gầy, run rẩy, như hắn thật sự thương em. Mà sao, ánh mắt hắn lạnh như băng, nụ cười cũng hời hợt và sảo quyệt quá. Hắn chỉ muốn trêu em.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Giá tôi có thể nó em nghe, hắn không phải là tôi yêu em như ngày xưa, hắn chẳng dại khờ yêu em nữa đâu, hắn chỉ muốn trả lại em những đớn đau em đã tạo. Vậy còn tôi, tôi có yêu em không? Tôi hoang mang với mớ hồ nghi trong lòng. Tôi không biết. Tôi chỉ nhớ, em rất lạnh lùng khi xa tôi,em tàn nhẫn đẩy tôi khỏi cuộc sống của em. Em đã giết tôi rồi. Tôi chỉ còn là cái bóng lầm lũi mãi nghĩ suy về em.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Trên thảo nguyên xanh mát, sói chạy một cách điên cuồng trong đêm, như sợ một cái gì chẳng rõ ràng, sợ không gian tĩnh mịch? Sợ đêm tối? Hay sợ sự vắng mặt của ánh trăng? Sói lao vun vút những ngọn cỏ đẫm sương, xé tan vài cơn gió lắm chuyện, hướng về phía bên kia bầu trời nơi ánh trăng vẫn còn hiện hữu.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn và cô cùng nhau đi ăn tối, là hiện hò chăng, sau rất nhiều lần lỗi hiện không lí do.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Sói có bắt cá hai tay không?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Cô ấy bất ngờ hỏi hắn khi đang ăn dở dang một món cá, có chăng cô ấy đã nghi ngờ, hắn nhìn cô, rồi nhìn về vài hướng khác. Trong ánh mắt đó hiện lên sự ngờ vực, và hắn sợ phải làm ánh mắt đó não nề và nhập nhòa. Như một ánh trăng thanh khiết lùa vào đám mây dày,mọi thứ trở nên thật tăm tối và trống trải, tôi và hắn đều không thích như thế, nhưng tôi không yêu cô ta, và sẽ thôi bận tâm về chuyện của hắn.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Sói là kẻ trăng hoa.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Một ai đó lên tiếng thay cho lời khẳng định của cô, và câu trả lời từ hắn. Chỉ là một câu nói buâng quơ từ bàn bên cạnh, nhưng nó đủ sức đánh bật ý nghĩ mềm yếu của cả hai người. Hắn bối rối, tôi thích thế, giờ phút này trông hắn thật thảm hại. Ơ mà, tôi vừa nghĩ gì thế này!</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hai hay ba cánh hoa nào đó rơi xuống mặt đất, cả người hắn nhếch nhác đủ thứ nước, tôi thấy khó chịu trông người, như chính tôi đang trong hoàn cảnh đó. Cánh tay hắn có vìa vết cứa, đâu đó còn chứa mảnh thủy tinh vụn vỡ, tim tôi buốt lên, đau nhói. Hắn quỵ lên sàn như một kẻ thất bại, tôi cảm thấy tái tê trong lòng, sao tôi chẳng vui như mọi ngày? Sao tôi thấy đớn đau thế này? Như tôi và hắn đã cùng trải qua, tất cả.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Cô ấy bỏ đi rồi, chỉ còn mình hắn chơ vơ trên những bộn bề vụn vỡ. Giờ phút này tôi chợt nhớ đến em khinh khủng, không biết hắn có nhớ em không, nhớ về người, về em, về cô ấy, đã khiến cả hai, tôi và hắn đau đớn đến thế này. Chán quá em à, thật là chán.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn nhìn về phía cánh cửa kính dày, nhìn về tôi, nhìn về cô ấy, một cách căm ghét, một cách oán trách, một cách nuối tiếc. Vì hắn đã đùa giỡn với tình yêu, vì hắn lừa dối em, vì hắn đã không thành thật với cô ấy.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Sói trốn sâu vào hang, cuộn người vào một góc. Sói không muốn gặp bầu trời, lại càng không dám nhìn về hướng ánh trăng. Sói là kẻ hèn nhát.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn cứ co rúc người vào một góc trong căn phòng tối, trông thật đáng thương. Tôi vẫn cứ đi lung tung quanh căn phòng của mình, chỉ vì hắn buột tôi phải ở đây. Hắn khóc? Tôi nghe thấy tiếng nấc. Hắn vẫn cuối gầm khuôn mặt trên đầu gói, bóng tối quanh hắn như dày hơn, tối hơn, đáng sợ hơn vài phần.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Tôi đến cạnh, ngồi cùng hắn. Chẳng có tia sáng nào quanh đây và tôi đã quen với bóng tối. Tiếng nấc vẫn đều và thật nghẹn ngào. Hắn như một đứa trẻ vừa đánh mất niền tin, và hơn cả là vụt mất tình yêu, thứ hắn chỉ vừa mới chập chững cảm nhận được. Đau lắm, tôi biết, hắn đã giống như tôi, nhưng sao tôi chẳng thấy vui một tẹo nào? Tôi vỗ về hắn như một đứa em ngây dại mới lần đầu thất tình.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn ngã đầu lên vai tôi, đây là lần đầu tiên tôi và hắn ở gần nhau như thế, mặc cho chúng tôi chỉ là một, dù có phân định như thế nào thì tôi vẫn là cái bóng. Hắn đã thôi không khóc nữa, nhưng nước mắt vẫn rơi, thấm ướt cả bã vai tôi.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Làm một cái bóng chắc không đau lắm đau nhỉ?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn hỏi một câu hỏi ngốc nghếch chưa từng có. Thử hỏi, là cái bóng có đau không? Có đấy, tôi thấy đau rát trong lòng khi chính hắn cảm thấy đau, và có lẽ trước đây hắn cũng đã đau đớn thay cho tôi rất nhiều. Hay để hắn sống hết kiếp người này đi, ganh đua làm chi với chính mình ở sự tồn tại của bản thân?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Sói lang thang giữa thành phố chật bóng người, lướt qua nhau, sói lọt thỏm nơi dòng người huyên náo. Có ai sợ sói không? Có ai ghét sói không? Không. Sói đã chẳng còn là sói để ai phải nể sợ, kính trọng.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn bước đi chơi vơi với bước chân như quỵ ngã. Lang thang, tôi lang thang cùng hắn. Tôi chợt thẫn người khi nghe thấy tiếng gọi quen thuộc tôi hằng nhung nhớ, em vẫy gọi hắn, mà hắn vẫn bước đi, vô hồn. Hay hắn cố cấm đoán tôi nhìn thấy em?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Không. Hắn đã dừng lại, trong cái nắm tay bất chợt của em giữ hắn lại, hắn nhìn em một cách khó hiểu, như hắn đã lãng quên em. Hắn nghi hoặc nhìn về phía tôi.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Sói có sao không? Nghe nói Sói không khỏe.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Em lên tiếng hỏi thăm, ánh nhìn chăm chú quan sát thật kĩ trên khuôn mặt lạnh nhạt của hắn. Giá như em có thể nhìn tôi như thế trong một vài giây thôi tôi cũng vui rồi. Tôi muốn chạm đến em, đôi tay này muốn vỗ về khuôn mặt nhỏ nhắn, xinh xắn đã không còn hay cười của em. Tôi khẽ sững sờ khi cảm giác ấm nóng chảy truyền qua da thịt, em chăm chú nhìn tôi có phần lo lắng.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Hắn, qua tấm gương, nhìn về tôi mĩm cười, hắn cho tôi một chút thời gian để ở cạnh em, để yêu em, và tạm biệt em. Lúc này, tôi bỗng dưng chợt nhớ về cô ấy. Tôi khẽ cười, hắn cất bước rời đi, như một lời hứa, không phiền đến tôi.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Em cùng tôi rong ruổi suốt cả ngày dài, em mĩm cười rất vui, rất tươi, như trước đây, trước cái lúc em bỏ tôi đi. Nhưng tôi vẫn yêu em, dù qua thời gian, nó nhạt nhòa và nguội lạnh đi ít nhiều. Như ước nguyện, tôi và em đã cùng nhau đi qua hết cả ngày dài, qua cả hoàng hôn muộn, bước vào bóng tối. Em dịu dàng hôn lên má tôi, cảm giác nóng rang chạy dọc khắp cả người, một cảm giác mà từ lâu tôi đã không cảm nhận được. Tôi đáp lại em bằng một nụ hôn lên trán, đó là giới hạn mà tôi sẽ không vượt qua, vì tôi đã không còn cơ hội để yêu em.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Sói rất thích bầu trời.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Tôi ôm siết em vào lòng, cảm nhận sự tồn tại của em tại thời khắc này, muốn chắc rằng lần này em không bỏ tôi đi. Dù đó có là sự níu kéo muộn màng của riêng tôi.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Sói có yêu em không?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Đã từng. Nhưng bây giờ, tôi có yêu em không? Tôi hoang mang với mớ hồ nghi trong lòng. Em nhìn tôi, chờ đợi câu trả lời trong sự mong mõi, tôi chỉ biết bối rối quay mặt đi, thật tình tôi cũng không biết nữa, em hiểu cho tôi có được không?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">- Có, đã từng, rất yêu. Nhưng em biết không, với Sói, em vĩnh viễn là Bầu trời, Sói không bao giờ với tới. Sói chỉ là Sói_Một kẻ hai lòng.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Giọt nước mắt lặng lẻ rơi khỏi khóe mắt em. Đôi vai nhỏ bé của em run lên, tiếng nấc nghẹn bị em chôn dấu, bất chợt vang lên, như oán trách tôi vô tình. Em ghét tôi? Giá như được thế, em chỉ việc cẳm ghét tôi thôi, được không?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Em rời đi với nụ cười gượng ép trông thật buồn. Nhưng lần cuối cùng, em chạy đến ôm siết tôi vào vòng tay run rẫy, đây sẽ là lần cuối cùng em ôm lấy tôi như thế. Em mĩm cười tươi vui thay cho lời giã từ không đủ cam đảm để nói ra, có lẽ em sẽ bật khóc mất. Và tôi cũng không đủ dũng khí mà quên em đi, thật may có phải không?</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Khi em dần biến mất vào bóng tối, tôi muốn chạy đến, lần sau cùng, tôi đưa em về nhà trong dự bình an. Nhưng khó có thể, tôi từng chút một biến mất vào bóng tối, khi hắn bước đến với nụ cười trên môi, xuyên qua người tôi. Tôi không đủ cứng cõi để bước ra khỏi cuộc đời em.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Sáng sớm, sương phủ mờ cả bầu trời. Hắn dắt tay cô ây đi dạo quanh thành phố tĩnh lặng hiếm hoi. Hắn lướt qua em như người xa lạ, tôi lướt qua em như một cơn gió thi thoảnh quanh bầu trời, cô ấy nhìn em. Bước đi. Có những ngã rẽ không chung đường đâu em, rồi em sẽ hạnh phúc hơn bây giờ.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Sói là kẻ hai lòng. Vì tôi chỉ yêu riêng mình em, một tình yêu bi lụy, ray rứt và khốn khổ. Vì hắn chỉ yêu riêng mình cô ấy, một thứ tình yêu ngông cuồng, mạnh mẽ, và... có đôi chút hoang dại. Sói là kẻ hai lòng, em biết không? Cô ấy biết rồi, nhưng vẫn yêu Sói đấy em à. Nhưng em đừng yêu Sói, vì Sói là kẻ hai lòng.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (24, 2, N'Oneshot', CAST(N'2021-09-10T16:17:52.270' AS DateTime), N'<p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Nhưng kiếm được một gánh củi không phải là dễ. Một hôm, theo lệ thường chàng tiến vào rừng sâu tìm củi. Sắp giơ búa giáng vào một cây đại thụ bỗng có một con tinh từ trong thân cây hiện ra trước mặt van lạy, van nài. Chàng dừng tay hỏi:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Mày muốn gì?</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Đáp:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Xin ngài làm ơn đi chặt chỗ khác, tha cho chúng tôi ở đây được yên ổn.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Thấy thế, chàng càng làm già:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Không được. Tao hết hơi, hết sức mới tìm được cây gỗ này chặt về lấy tiền nuôi thân mà mày lại bảo tao đi đâu. Hãy cút ngay cho tao làm việc.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Con tinh thấy anh chàng lại giơ búa, hốt hoảng:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Cây này với chúng tôi như bóng với hình, không thể nào rời được. Ngài hãy thương cho, chúng tôi sẽ xin kính biếu ngài một vật.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Vật gì? Đưa ra đây. Mau! Nếu không thì đừng có trách.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Con tinh bảo chờ một lát, đoạn mang đến một cái mâm đồng và nói:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Ngài chỉ cần gõ vào mâm ba tiếng là có ăn ngay, muốn thức ngon vật lạ bao nhiêu cũng có.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Nghe nói, anh chàng vô cùng mừng rỡ, vội nhận lấy mâm ra về, không quên hứa để cho con tinh được yên ổn.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Khi đi qua chợ, chàng ghé ngay vào quán cơm, nơi mà thường ngày mình vẫn đặt gánh củi nặng trước cửa vào một cái bánh, vài đĩa xôi ăn đỡ đói và đỡ mệt. Lần này, chàng có ý khoe với nhà hàng là từ nay mình sẽ không cần ăn chịu và cũng không cần ăn khổ như trước nữa. Nghĩ vậy, bèn đặt mâm của mình trước mặt vợ chồng chủ quán và mọi người, gõ lên ba tiếng. Tự nhiên trong long mâm tuôn ra những bát cơm, bát canh, những đĩa cá, thịt, giò, chả đầy tú ụ, những chén rượu cúc tràn trề, v.v…, toàn là những thức ăn chưa bao giờ được nếm. Trước con mắt ngạc nhiên của đám đông khách ăn trong quán, chàng đốn củi đắc chí mời họ cùng ngồi dự tiệc.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Ăn xong, say rượu, chàng nằm lăn ra giường làm một giấc ly bì. Lão chủ quán thấy thế thì động lòng tham lam. Thừa dịp mọi người tản đi, hắn vào buồng chọn một cái mâm giống với chiếc mâm màu nhiệm kia, rồi đánh tráo vào. Chàng đốn củi thức dậy không biết là mâm đã bị đánh tráo, hý hửng mang về. Sắp về tới làng, anh nghĩ bụng nên cho mọi người biết số phận của mình từ nay đã khác trước và nhân thể đãi làng xóm chén một bữa ra trò. Cho nên chàng rẽ ngay vào đính đánh trống gọi làng ầm ĩ. Tất cả mọi người từ ông tiên thứ chỉ cho đến anh mõ, ai nấy đều tưởng là có việc, lục tục đổ ra đình đông như hội. Anh chàng trịnh trọng lên tiếng:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Không mấy khi cháu có bữa rượu, vậy mời quý cụ và đồng dân thượng hạ ngồi vào dự cuộc.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Nói rồi đặt mâm xuống chiếu, gõ lên thành mâm mấy cái. Nhưng anh ngạc nhiên thấy lần này mâm không còn mầu nhiệm như trước nữa. Chàng gõ mãi, gõ mãi, mâm vẫn trơ trơ bất động. Cho là đánh lừa mọi người, ông xã trưởng liền sai tuần đinh xông lại nện cho chàng một trận nên thân.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Trở về nhà, chàng đốn củi bực mình vô hạn. Chắc chỉ có con tinh nó lừa mình nên chuyện mới xảy ra như thế. Cho nên qua ngày mai, anh lại vác búa lên rừng tìm đến cái cây cũ ra sức giáng búa vào. Con tinh hốt hoảng chạy ra van lạy chí chết và xin tặng một con ngựa ỉa ra vàng để được tha tính mạng.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Đưa ngay ra đây cho ta. Đồ lừa đảo!</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Chàng quát lên như thế và chỉ lát sau một con ngựa đã hiện ra. Chàng cưỡi lên phi một đoạn để cho ngựa ỉa, quả nhiên có rất nhiều vàng vụn văng ra sáng giấp giới. Chàng mừng quá, giắt búa vào lưng và cưỡi ngựa ra về.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Đến chợ, chàng lại xuống ngựa, vào khoe với vợ chồng lão chủ quán:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Lần này tôi có con ngựa vô cùng quý báu. Trong bụng nó là cả một kho vàng đấy ông bà ạ! Rồi nó sẽ làm cho mà xem!</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Lão chủ quán thấy quả đúng như thế thì hoa cả mắt. Hắn sung sướng được chàng biếu trọn số vàng rơi ra. Nhưng hắn còn muốn được cả con ngựa. Hắn vội dọn cho anh một mâm đầy rượu thịt. Rồi chờ lúc anh chàng ngủ say, hắn lại đi tìm một con ngựa khác cũng có màu lông hung hung y hệt để thay vào, rồi dắt con kia đi biệt.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Khi tỉnh dậy, chàng đốn củi vẫn không ngờ vực gì cả. Chàng lại nhảy lên ngựa cưỡi về đến đầu làng. Bụng bảo vệ: – “Lần trước vì con tinh khiến cho ta mang tiếng là đánh lừa mọi người. Lần này ta phải biếu bà con một ít vàng để bà con thấy ta thực bụng”. Thế rồi, chàng lại vào đình đánh trống ầm ĩ. Làng lại đổ ra đình. Chàng nói:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Tôi lần này có con ngựa rất có phép ỉa ra vàng. Vậy mời làng ra đây để nhận cho tôi một ít của báu.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Đoạn chàng phi cho ngựa ỉa, nhưng con ngựa ấy thì làm gì mà có vàng. Nhìn thấy đống phân ngựa vãi ra không hơn gì những đống phân ngựa khác, các cụ cho là thằng cha đã xỏ xiên cả làng nên không nên được cơn tức giận. Cuối cùng, chàng bị làng tịch thu con ngựa và còn bị tuần nọc xuống đánh ba mươi roi.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Qua ngày hôm sau hắn lại dậy sớm vác búa lên rừng quyết trị cho con tinh một mẻ. Lần này chàng bổ những nhát búa rất dữ dội. Thấy con tinh hiện ra quỳ lạy khóc lóc, chàng quát to:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Sao mày dám lừa ông làm ông mang oán với mọi người. Mâm và ngựa của mày chỉ là những của vứt đi, không đáng một đồng kẽm.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Con tinh hết sức phân trần, vạch tội lão chủ quán, rồi nói tiếp:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Để tôi xin biếu ngài cái ống này, lúc về có thể lấy lại những của đã mất.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Hắn đưa ống ra và dặn:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Cái ống này có phép làm cho bất kỳ bao nhiêu người cũng phải chống ngược lên trời nếu cầm ống chỉ lên không ba lần. Cho đến khi nào gõ xuống đất ba lần thì mọi sự trở lại như cũ.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Nghe bùi tai, chàng đốn củi lại dừng tay búa, cầm ống phép bắt con tinh phải chống đít lên trời xem thử, thấy quả nghiệm rồi mới ra về.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Đến chợ, chàng lại ghé vào quán cơm tươi cười hỏi mọi người:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Các ông các bà có muốn chống chăng?</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Vợ chồng lão chủ quán tưởng có món gì bở nên vội đáp:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Cơm ăn no, trầu đầy đây, không chống để làm gì?</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Lập tức cái ống mầu nhiệm đã bắt cả nhà lão chủ quán chống hai tay xuống đất, chân giơ lên trời không cụ cựa.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Chắc là lần này chàng đốn củi đã rõ mưu mô gian dối của mình nên cố tâm phạt mình với phép thuật thần dị, lão chủ quán van khóc hết lời. Hắn hứa trả lại mâm và ngựa để xin tha mạng. Anh chàng chỉ cần có mấy món bảo vật cũ, nên vui lòng làm phép tha cho cả nhà lão đứng dậy.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Khi châu đã về hợp phố, chàng phi ngựa nước đại trở về làng. Chàng không quên tiến vào đình thúc một hồi trống lớn mời làng như mấy lần trước. Thế rồi trước mặt quan viên và đồng dân thượng hạ, chàng đặt mâm xuống chiếu mời mọi người chia hàng ngồi vào.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Tiếng gõ mâm lúc này rất có hiệu quả. Cơm rượu và mọi thức ngon vật lạ tuôn ra đầy mâm đầy chiếu. Cả làng không đợi mời nhiều, ai nấy cắm đầu ăn uống mặc sức.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Ăn uống xong đâu đấy, chàng chỉ vào con ngựa và nói:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Nếu quý cụ và mọi người vui lòng nhận một ít vàng tôi sẽ bảo con ngựa này làm ngay.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Không một người nào từ chối lòng tốt của chàng. Họ đứng ra hai hàng, mỗi người cầm một cái rá chực hứng phân ngựa. Quả nhiên, ngựa chạy đến đâu, người ta đổ xô nhau nhặt đến đấy vì họ thấy lấp lánh trên mặt đất bao nhiêu là vàng vung vãi.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Xong cuộc nhặt vàng, anh chàng giơ ống lên và hỏi:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Bây giờ còn ống phép này, bà con ta ai muốn chống xin mời đứng về phía này.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Bấy giờ người đã no say lại được vàng giắt lưng, ai nấy chắc mẩm lại có món quà gì nữa, nên chẳng một ai từ chối. Ống vừa giơ lên, tất cả mọi người đều chổng đít lên trời, dù cố gắng thế nào cũng không buông xuống được.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Hôm ấy, không ngờ lại có lão trọc phú và con gái lão cũng có mặt ở đấy. Con gái lão là người đã làm cho chàng đốn củi chết mê chết mệt. Mọi ngày, tuy thấy anh nghèo khổ mà nàng vẫn tỏ lòng quyến luyến, những lúc chàng đến làm công cho lão trọc phú, hai bên từng có cơ hội gặp gỡ, chuyện trò. Nhưng đối với lão thì đừng có hòng tính chuyện lấy nhau. Bây giờ đây, thấy lão van như vạc, chàng tới thỉnh cầu lão gả con gái cho mình. Lão gật. Thế là chiếc ống lại gõ xuống đất buông tha tất cả mọi người.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Rồi đó, anh chàng đốn củi lấy được vợ như ý muốn. Với ba món bảo bối, chàng đi khắp thiên hạ giúp đỡ những người nghèo khổ và trị tội những bọn tham lam độc ác.</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (25, 1, N'Oneshot', CAST(N'2021-09-10T16:11:18.667' AS DateTime), N'<p><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Chào em - cô gái mạnh mẽ đang quay cuồng giữa cuộc sống trầm bổng này. Em là người con gái đa năng, khi có thể tự thay bóng đèn, khi thì sửa ống nước, đôi lúc lại tự khiêng đố vật nặng. Em không dựa dẫm vào ai, một mình em mạnh mẽ, một mình em gánh chịu. Đôi lần có lỡ yếu lòng, muốn dựa vào lòng ai đó, nhưng sợ lại lệ thuộc vào người ta nên em thu mình vào vỏ bọc bé nhỏ, cứ vậy, vỏ bọc ngày càng lớn, em thì ngày càng chẳng cần tới ai.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Người ta thường bảo" Con gái nên yếu đuối để con trai che chở". Có người con trai nào lại muốn yêu một cô gái mà khi ở cạnh người đó mình trở nên vô dụng, không có cảm giác sẽ che chở cho họ không. Nhưng biết làm sao được, một mình đã rèn cho em tính tự lập, mạnh mẽ để không bị cuộc đời này quật ngã, luôn tự nhủ là phải kiên cường.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Tuy nhiên, mấy ai hiểu rằng, đâu phải cứ sinh ra cũng mạnh mẽ đâu, em cũng mệt, trong tim. Người khác không hiểu rằng,bên ngoài mỗi vỏ bọc cứng rắn lại chính là tâm hồn mong manh, cùng trái tim rỉ máu. Bởi vì chúng ta là con gái, dù có sắt đá cỡ nào thì trong lòng cũng cố chấp giữ lại sự yếu đuối.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Cô gái ơi, hãy yếu lòng dù chỉ một chút thôi, mệt mỏi quá thì hãy tìm một bờ vai tựa vào. Gồng gánh chịu đứng một mình trong suốt cả thời gian dài như vậy, em thật sự là người dũng cảm mà. Nhưng mạnh mẽ là có thể cân bằng mọi thứ không phải chịu đựng tất cả đau khổ. Mạnh mẽ là khi em làm người xung quanh tin tưởng, yên tâm vào bản thân mình, không còn phải lo lắng nữa. Đã đến lúc em trở về làm một cô gái đúng nghĩa rồi. Nếu như độc lập và cá tính quá thì đàn ông trên đời hết chuyện để làm rồi phải không. Mạnh mẽ không phải là cứ gồng mình lên và gánh chịu mọi thứ, con gái cá tính như em cũng có quyền khóc, nũng nịu, mè nheo vì đó là đặc quyền của phái nữ. Hãy cười thật tươi khi vui và khóc khi cảm thấy yếu lòng. Đừng đặt cả gánh nặng của thế giới lên đôi vai nhỏ bé của mình nữa. Vì bầu trời có vỡ tung thì cũng sẽ có người vì em mà đứng ra chống đỡ rồi. Việc của em là hãy sống hết mình, mở lòng với mọi người để sống một cuộc đời an yên.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"><span style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;">Thật đáng sợ nếu em để mình cô đơn lâu quá, mạnh mẽ lâu quá. Bởi khi ấy, cảm xúc cứ chai lì từng đêm qua dòng nước mắt thì em chẳng cần đến ai. Em ơi! Cánh của này đóng lại, là để một cánh cửa khác mở ra. Em khép lòng mình lại một thời gian thôi nhé, ánh bình minh mới sáng mai vẫn đang chờ em mở cửa đón chúng vào, người thương em vẫn chờ ngày em cần được tựa vai.</span><br style="outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, Arial, sans-serif; font-size: 17px;"></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (26, 1, N'Oneshot', CAST(N'2021-09-10T16:14:02.733' AS DateTime), N'<p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Vì cơ thể chúng ta không có xương để chống đỡ, chỉ có thể bò, mà bò cũng không nhanh – Ốc sên mẹ nói.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Chị sâu róm không có xương cũng bò chẳng nhanh, tại sao chị ấy không đeo cái bình vừa nặng vừa cứng đó?</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Vì chị sâu róm sẽ biến thành bướm, bầu trời sẽ bảo vệ chị ấy.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Nhưng em giun đất cũng không có xương, cũng bò chẳng nhanh, cũng không biến hóa được, tại sao em ấy không đeo cái bình vừa nặng vừa cứng đó?</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Vì em giun đất sẽ chui xuống đất, lòng đất sẽ bảo vệ em ấy.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Ốc sên con bật khóc, nói:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Chúng ta thật đáng thương, bầu trời không bảo vệ chúng ta, lòng đất cũng không che chở chúng ta.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Vì vậy chúng ta có cái bình – Ốc sên mẹ an ủi con – Chúng ta không dựa vào trời, cũng chẳng dựa vào đất, chúng ta dựa vào chính bản thân chúng ta.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">***<br style="overflow-wrap: break-word !important;">Thường thì người ta chỉ nhận thấy sự nặng nề của “cái bình” mà quên mất những thứ nó mang lại.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Nghèo khổ mang đến cho ta ý chí quyết tâm.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Đau buồn mang đến cho ta sự trân trọng những thứ làm cho ta vui vẻ.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Thất bạị mang đến cho ta sự khôn ngoan.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Chia tay mang đến những cơ hội mới.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Lúng túng mang đến sự chân thật.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Và khó khăn mang đến một con người mạnh mẽ, được tôi luyện cứng cáp hơn những người khác nhiều.</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (27, 1, N'Oneshot', CAST(N'2021-09-10T16:15:54.250' AS DateTime), N'<p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Thứ hai: Người gác cửa.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">5 giờ chiều là thời điểm Cố Cung đóng cửa. Nghe nói ấy là lúc âm khí nặng nhất. Có rất nhiều du khách cảm giác được rằng dù đương trong mùa hè oi bức thì từ 5 giờ trở đi, Cố Cung cũng sẽ toát ra sự lạnh lẽo lạ lùng. Đó là do bởi khi đã qua 5 giờ, dương khí của con người sẽ giảm và là lúc âm khí trỗi dậy. Ngày trước Cố Cung cũng từng có người gác cửa nhưng nghe những người lớn tuổi kể rằng, những người làm nghề này đều nhiễm âm khí rất nặng và lây sang cả con cháu đời sau nên nghề này dần chẳng còn ai làm nữa, đến tận bây giờ thì Cố Cung hoàn toàn không có một ai giữ cửa.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Thứ ba: Cái giếng cổ quái.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Trong Cố Cung có rất nhiều giếng, bình thường ban ngày nhìn xuống thì chỉ thấy có đá và cỏ mà thôi, thế nhưng cứ đến 12 giờ khuya, khi nhìn xuống dưới, chỉ cần trên trời có ánh trăng thì thứ hiện dưới giếng không phải đá, cũng chả phải cỏ, mà là nước… và mặt nước ấy sẽ phản chiếu gương mặt của chính bạn…</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Thứ tư: Bóng ma cung nữ.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Một đêm khuya năm 1983, có người đi ngang qua khu vực gần Côi Bảo Quán (nơi cất giữ châu báu) thì bỗng phát hiện ở phía xa có một người cầm đèn lồng, anh ta nhớ là thời đại này người nào cũng dùng đèn pin hết cả rồi, ai lại dùng đèn lồng cơ chứ, chẵng nhẽ… Nhưng lại tự trấn tĩnh trên đời tuyệt không có quỷ thần, chắc chắn là anh ta hoa mắt hoặc có lẽ là hiện tượng tự nhiên gì đó mà thôi, vì vậy bèn vững dạ tiến tới xem thử, nhưng đi mãi mà anh ta vẫn không đuổi kịp được người cầm đèn lồng đó. Thế là anh ta bèn căng mắt chăm chú nhìn hồi lâu, đích thật là một cô cung nữ mặc sườn xám đời Thanh, trên tay cầm một chiếc đèn lồng dẹt theo chuẩn quy tắc cung đình. Phát hiện này khiến anh ta sợ hãi ngã thụp xuống đất và không dám đuổi theo nữa, mãi đến khi không nhìn thấy ánh đèn lồng nữa mới lê bước về nhà theo con đường khác.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Thứ năm: Ai đã báo động?</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Ở Cố Cung đã từng xảy ra một án trộm châu báu, kẻ tình nghi đã trốn ở khe hở giữa hai nhà vệ sinh tại Côi Bảo Quán, khi nhân viên tan làm thì bước ra ngoài hành sự, trước khi chui vào Côi Bảo Quán thì hắn ta đã thó không ít thứ quý giá ở Chung Bảo Quán, song đi chưa được bao xa thì đã bị nhân viên tuần tra phát hiện. Quá trình phát hiện cũng rất kỳ lạ, vốn nhân viên tuần tra kia không định ngẩng đầu nhìn nhưng một âm thanh nào đó đã vang lên báo cho anh ta biết một cách rất trùng hợp: “Có người lấy đồ của ta, hắn ở ngay trên tường…”, cảm giác đó rất rõ rệt và dai dẳng, vì thế anh ta đã chiếu đèn pin lên tường và thực sự phát hiện ra kẻ hiềm nghi kia. Nhưng giữa đêm giữa hôm mà trên tường lại bất thình lình xuất hiện một bóng người nên anh ta cũng sợ hãi vì vậy mà anh ta đã kêu toáng lên, bóng người kia cũng hoảng hốt nhảy xuống tường. Sau đó nghe nói phía cảnh sát đã điều người tới phong tỏa Cố Cung tầng tầng lớp lớp. Còn kẻ hiềm nghi kia tất nhiên không bị ngã chết nhưng lại bị thương ở chân, thế là bị tóm!</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Thứ sáu: Chuyện lạ ở Trữ Tú cung.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Vào những năm 80, cứ đến đêm là Tử Cấm Thành sẽ luôn có một đội tuần tra, cũng có hẳn cả đội cứu hỏa túc trực. Mùa hè nọ, sau khi những nhân viên đội cứu hỏa diễn tập cứu hỏa ở Trữ Tú cung thì ngủ tại đây. Bởi khá nóng nên không ai dùng chăn, chỉ trải chiếu rồi ngủ thôi. Hai giờ sáng, có một đội viên bị gió lay tỉnh, khi anh ta mơ màng mở mắt thì bỗng ồ lên: “Sao tui lại ngủ ngoài hành lang thế này? Rõ ràng tui nằm ở bên trong cơ mà?”. Dù sợ nhưng nói cho cùng thì anh ta cũng là lính, thế nên cũng mắt nhắm mắt mở làm lơ ôm chiếu vô lại trong điện. Sáng tỉnh dậy cũng thấy mình bị đá ra ngoài hành lang nên anh ta đã thở than với những đội viên khác rằng: “Đừng quậy nữa, mấy cậu không làm khổ tui là không được hả? Tập luyện đã mệt rồi, mấy người còn rảnh đi hành tui nữa!”. Những đội viên khác nói: “Bọn này không có đá cậu ra ngoài, sáng ngủ dậy đã thấy cậu ngủ ngoài rồi. Có phải cậu bị mộng du không đấy, nhưng cậu đâu có cái tật này đâu, lạ nhỉ”. Thế là họ quyết định làm rõ chuyện này, sau khi tuần tra xong đều ngủ lại ở đó, nhưng lần nào anh lính đó cũng bị “mang” ra ngoài hành lang. Họ thật sự sợ hãi, từ đó không dám ngủ lại Trữ Tú cung nữa. Nhưng tại sao chỉ có mình anh lính đó bị “mang” ra? Có lẽ là do dương khí của anh lính kia khá yếu, sau khi tuần tra xong lại mệt mỏi nên càng yếu hơn, thế là bị “trêu đùa” như vậy.</p><ol style="margin: 0.5em 0px 1.5em; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;"><li style="overflow-wrap: break-word !important;">Có người từng giữ nhiệm vụ canh cửa cho Cố Cung ngày trước đã kể lại rằng mỗi tối đều nghe thấy tiếng ai đó tấu nhạc, thậm chí đôi khi còn thấy có cả một hàng dài cung nữ thái giám xếp hàng đi lướt qua… ( 1 hàng dài đó bà con @@)<p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; overflow-wrap: break-word !important;">2. Tử Cấm Thành là nơi chôn thây vùi xác của rất nhiều người, có người chết minh bạch nhưng cũng có lắm kẻ phải rời cõi trần một cách oan khiên, mà những người biến mất một cách “vô cớ” như thế này tuy không tra ra được nguyên nhân tử vong song luôn có một điểm giống nhau: sau khi người đó chết, nếu tìm thấy được thi thể thì thi thể đó cũng không có da mặt.</p></li><li style="overflow-wrap: break-word !important;"><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; overflow-wrap: break-word !important;">Hồi tôi còn học cấp 2, hình như là năm 93 thì phải, tầm tháng 11. Hôm nọ nghe bạn bè nói Tử Cấm Thành có nhiều chuyện ma quái lắm thế là tôi bèn quyết định cuối tuần ghé qua xem thử. Cuối tuần đó tôi làm xong bài tập, đợi đến 8 giờ thì tạt qua nhà cậu tôi, em họ tôi nói hôm nay ông ấy có ca trực ở Tử Cấm Thành. Tôi cực kỳ hứng khởi bởi có thể ở lại đó lâu hơn một chút. Tôi mò tới Tử Cấm Thành tìm cậu tôi tám nhảm: “Con nghe nói Cố Cung có ma hả cậu, là thật à?”. Sau khi nghe tôi nói, cậu ngẩn người một hồi mới bảo: “Không có ma, người ta nói bậy bạ thôi”, nhưng cậu tôi chỉ nói có thế, không đề cập đến bất kỳ câu nào nữa.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; overflow-wrap: break-word !important;">Tầm 9 rưỡi ông ấy đuổi tôi về nhà. Bởi mục đích của tôi tới đây là muốn kiểm chứng xem có ma hay không nên cứ lần lữa không chịu đi. Rất nhanh đã tới 11 giờ, tôi lấy cớ muốn đi WC để chuồn khỏi phòng trực. Nói ra cũng lạ, hôm ấy thời tiết khá tốt nhưng khi tôi vừa mới ra ngoài thì trời liền nổi gió.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; overflow-wrap: break-word !important;">Lúc đó tôi sợ điếng người, ngây ngốc một phút đồng hồ mới định thần lại được. Tôi ngẫm nghĩ một hồi, trông phục sức thì có vẻ như người đó là cung nữ. Tôi vội men theo đường cũ quay trở về phòng trực của cậu, khi bước vào phòng tôi đã nói với cậu rằng tôi đã thật sự nhìn thấy ma và kể lại câu chuyện mới xảy ra. Ông ấy chăm chú nghe tôi nói hết, khóe môi ông giật giật mấy cái và hỏi: “Con tới đại điện à?”. Tôi nói tôi vẫn chưa vào, ông ấy thở phào nhẹ nhõm và bảo rằng nơi ấy không được tùy tiện bước vào khi trời về đêm.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; overflow-wrap: break-word !important;">Tuy tôi rất sợ nhưng lại rất muốn đi xem thử nên đã nài nỉ cậu cùng đi tới đó. Cuối cùng ông ấy đành bó tay và đi theo tôi một cách rất không tình nguyện. Lúc chúng tôi bước tới trước cửa đại điện thì sững cả người, tôi thấy không chỉ có một cung nữ mà rất nhiều cung nữ đang đi về phía đại điện. Cuối cùng thì tôi đã hiểu tại sao cậu tôi lại nói tối đến không được tùy tiện bước vào đây rồi…</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; overflow-wrap: break-word !important;">4. Nghe nói một đêm nọ có một tên trộm muốn đến Tử Cấm Thành thó trân châu trong giếng. Vì ông nội của hắn ta là thái giám tiền triều nên ông ấy đã sống trong cung từ rất lâu, biết được rất nhiều chuyện, mãi đến khi Đại Thanh diệt vong. Năm đó, bởi trong cung xảy ra đại loạn nên có một hoàng phi đã nhảy xuống giếng tự vẫn, trong miệng vẫn còn ngậm ngọc. Chuyện này khiến hắn ta trăn trở mãi thôi, do muốn phát tài nên đã tìm cơ hội lẻn vào Tử Cấm Thành.</p></li></ol><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Hôm đó hắn ta đến bên miệng giếng, đêm ấy vừa khéo trời nổi gió to sấm lớn, bỗng chớp lóe lên, một cô gái mặc đồ trắng bước ra từ vách tường đối diện, hắn ta sợ tới mức… chết ngay tại chỗ! Sau đó cảnh sát có đến điều tra nhưng không biết nguyên nhân gây nên cái chết, vì vậy đã phái người đến canh phòng nghiêm ngặt Tử Cấm Thành. Một tháng sau, cũng vào một đêm mưa to gió lớn như vậy, chuyện tương tự xảy ra ngay trước mặt đội cảnh vệ, song cũng may là nhiều người ở đó nên không ảnh hưởng đến tính mạng, nhưng sau đêm đó không ít cảnh vệ bị ám ảnh và nhiễm bệnh nặng, chuyện này hiện vẫn chẳng có ai có thể lý giải được.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;"><strong style="overflow-wrap: break-word !important;">1. Chuyện Cái Giếng</strong></p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Theo lời kể của 1 thái giám tiền triều thì trong Tử Cấm Thành có gần 100 cái giếng nhưng trải qua biết bao triều đại và hàng thế kỷ, người trong cả hoàng cung không ai dám uống thứ nước dưới những cái giếng này, thậm chí cả Hoàng Thượng cũng không dám uống mà lấy từ một nơi tên là “Ngọc Tuyền viên” sau đó chuyển đến chỗ các cung nhân ở Di Hòa Viên. Sau khi được kiểm tra xong xuôi, phần nước này mới được đem đi đến các cung khác. Kể từ thời Minh đã bắt đầu “tục” này rồi. Bởi giếng là công cụ dùng để trả thù rất phổ biến, bạn sẽ không thể biết được dưới những miệng giếng ấy là bao nhiêu mạng người đã vùi thây, ngay cả đệ nhất ái phi của hoàng đế Quang Tự là Trân phi cũng đã bị mẹ chồng Từ Hy đẩy thẳng xuống giếng. Ngoài những cái xác đã phân hủy sau sự mài mòi của năm tháng, nước ở dưới giếng cũng có rất nhiều “thứ” khác và là nguyên nhân gây đau bụng, ngộ độc thậm chí là xảy thai.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;"><strong style="overflow-wrap: break-word !important;">2. Chuyện Trân Phi</strong></p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Trân Phi là vị phi tần được Quang Tự sủng ái nhất. Sở hữu nhan sắc ổn nhất dàn hậu cung, kết hợp với tư tưởng phóng khoáng trong cách sống và lối suy nghĩ mới lạ về chuyện triều cương, vua Quang Tự và Trân Phi dần hợp nhau trong cách nghĩ, vì vậy Trân Phi luôn được Quang Tự yêu thích và xem như điểm tựa tinh thần. Nếu dùng ngôn ngữ hiện đại để miêu tả thì Trân Phi quả là một “nữ hán tử”, bà không sợ cường quyền, không sợ Từ Hy và sẵn sàng lên án những hành động bất công. Điều này khiến Từ Hy chán ghét và nuôi chí “thanh trừng” cô con dâu này. Năm 1900, trước sự mạnh mẽ của quân ngoại xâm và phong trào Nghĩa Hòa Đoàn nên hoàng thất buộc phải lui về Tây An lánh nạn, trước khi đi 1 ngày, Từ Hy lấy cớ muốn “tuẫn tiết” để “giảm gánh nặng cho hoàng thượng” nên đã “rủ” Trân Phi cùng “tự tử”. Sau đó Trân Phi bị đám thái giám Lý Liên Anh cưỡng ép đẩy xuống giếng. Trước khi chết Trân Phi có khí khái nói rằng: “Hoàng Thượng sẽ không để ta chết. Bà thích trốn thì cứ trốn đi. Nhưng Hoàng Thượng thì không nên trốn”. Quả đúng vậy, thân làm đế vương – không thể trốn!</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; overflow-wrap: break-word !important;">Một năm sau, Hoàng Thượng về lại Tử Cấm Thành, thương tiếc nàng ái phi, ngài đã hạ lệnh vớt thi hài Trân Phi lên nhưng sau đó đã bị Từ Hy ra lệnh đem chôn ở khu vực mộ phần dành cho cung nữ ngoài Tử Cấm Thành, sau đó “phong” cho nàng làm Trân Quý Phi. Đến khi Phổ Nghi lên ngôi mới bố cáo thiên hạ là Trân Phi “tự vẫn” và truy phong thành Khác Thuận Hoàng quý phi. Mãi đến năm 1915, Cẩn Phi (chị ruột của Trân Phi cùng tiến cung với Trân Phi) mới có thể mang hài cốt em gái mình về Sùng Lăng</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (28, 1, N'Oneshot', CAST(N'2021-09-10T16:18:01.333' AS DateTime), N'<p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Nhưng kiếm được một gánh củi không phải là dễ. Một hôm, theo lệ thường chàng tiến vào rừng sâu tìm củi. Sắp giơ búa giáng vào một cây đại thụ bỗng có một con tinh từ trong thân cây hiện ra trước mặt van lạy, van nài. Chàng dừng tay hỏi:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Mày muốn gì?</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Đáp:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Xin ngài làm ơn đi chặt chỗ khác, tha cho chúng tôi ở đây được yên ổn.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Thấy thế, chàng càng làm già:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Không được. Tao hết hơi, hết sức mới tìm được cây gỗ này chặt về lấy tiền nuôi thân mà mày lại bảo tao đi đâu. Hãy cút ngay cho tao làm việc.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Con tinh thấy anh chàng lại giơ búa, hốt hoảng:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Cây này với chúng tôi như bóng với hình, không thể nào rời được. Ngài hãy thương cho, chúng tôi sẽ xin kính biếu ngài một vật.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Vật gì? Đưa ra đây. Mau! Nếu không thì đừng có trách.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Con tinh bảo chờ một lát, đoạn mang đến một cái mâm đồng và nói:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Ngài chỉ cần gõ vào mâm ba tiếng là có ăn ngay, muốn thức ngon vật lạ bao nhiêu cũng có.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Nghe nói, anh chàng vô cùng mừng rỡ, vội nhận lấy mâm ra về, không quên hứa để cho con tinh được yên ổn.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Khi đi qua chợ, chàng ghé ngay vào quán cơm, nơi mà thường ngày mình vẫn đặt gánh củi nặng trước cửa vào một cái bánh, vài đĩa xôi ăn đỡ đói và đỡ mệt. Lần này, chàng có ý khoe với nhà hàng là từ nay mình sẽ không cần ăn chịu và cũng không cần ăn khổ như trước nữa. Nghĩ vậy, bèn đặt mâm của mình trước mặt vợ chồng chủ quán và mọi người, gõ lên ba tiếng. Tự nhiên trong long mâm tuôn ra những bát cơm, bát canh, những đĩa cá, thịt, giò, chả đầy tú ụ, những chén rượu cúc tràn trề, v.v…, toàn là những thức ăn chưa bao giờ được nếm. Trước con mắt ngạc nhiên của đám đông khách ăn trong quán, chàng đốn củi đắc chí mời họ cùng ngồi dự tiệc.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Ăn xong, say rượu, chàng nằm lăn ra giường làm một giấc ly bì. Lão chủ quán thấy thế thì động lòng tham lam. Thừa dịp mọi người tản đi, hắn vào buồng chọn một cái mâm giống với chiếc mâm màu nhiệm kia, rồi đánh tráo vào. Chàng đốn củi thức dậy không biết là mâm đã bị đánh tráo, hý hửng mang về. Sắp về tới làng, anh nghĩ bụng nên cho mọi người biết số phận của mình từ nay đã khác trước và nhân thể đãi làng xóm chén một bữa ra trò. Cho nên chàng rẽ ngay vào đính đánh trống gọi làng ầm ĩ. Tất cả mọi người từ ông tiên thứ chỉ cho đến anh mõ, ai nấy đều tưởng là có việc, lục tục đổ ra đình đông như hội. Anh chàng trịnh trọng lên tiếng:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Không mấy khi cháu có bữa rượu, vậy mời quý cụ và đồng dân thượng hạ ngồi vào dự cuộc.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Nói rồi đặt mâm xuống chiếu, gõ lên thành mâm mấy cái. Nhưng anh ngạc nhiên thấy lần này mâm không còn mầu nhiệm như trước nữa. Chàng gõ mãi, gõ mãi, mâm vẫn trơ trơ bất động. Cho là đánh lừa mọi người, ông xã trưởng liền sai tuần đinh xông lại nện cho chàng một trận nên thân.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Trở về nhà, chàng đốn củi bực mình vô hạn. Chắc chỉ có con tinh nó lừa mình nên chuyện mới xảy ra như thế. Cho nên qua ngày mai, anh lại vác búa lên rừng tìm đến cái cây cũ ra sức giáng búa vào. Con tinh hốt hoảng chạy ra van lạy chí chết và xin tặng một con ngựa ỉa ra vàng để được tha tính mạng.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Đưa ngay ra đây cho ta. Đồ lừa đảo!</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Chàng quát lên như thế và chỉ lát sau một con ngựa đã hiện ra. Chàng cưỡi lên phi một đoạn để cho ngựa ỉa, quả nhiên có rất nhiều vàng vụn văng ra sáng giấp giới. Chàng mừng quá, giắt búa vào lưng và cưỡi ngựa ra về.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Đến chợ, chàng lại xuống ngựa, vào khoe với vợ chồng lão chủ quán:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Lần này tôi có con ngựa vô cùng quý báu. Trong bụng nó là cả một kho vàng đấy ông bà ạ! Rồi nó sẽ làm cho mà xem!</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Lão chủ quán thấy quả đúng như thế thì hoa cả mắt. Hắn sung sướng được chàng biếu trọn số vàng rơi ra. Nhưng hắn còn muốn được cả con ngựa. Hắn vội dọn cho anh một mâm đầy rượu thịt. Rồi chờ lúc anh chàng ngủ say, hắn lại đi tìm một con ngựa khác cũng có màu lông hung hung y hệt để thay vào, rồi dắt con kia đi biệt.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Khi tỉnh dậy, chàng đốn củi vẫn không ngờ vực gì cả. Chàng lại nhảy lên ngựa cưỡi về đến đầu làng. Bụng bảo vệ: – “Lần trước vì con tinh khiến cho ta mang tiếng là đánh lừa mọi người. Lần này ta phải biếu bà con một ít vàng để bà con thấy ta thực bụng”. Thế rồi, chàng lại vào đình đánh trống ầm ĩ. Làng lại đổ ra đình. Chàng nói:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Tôi lần này có con ngựa rất có phép ỉa ra vàng. Vậy mời làng ra đây để nhận cho tôi một ít của báu.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Đoạn chàng phi cho ngựa ỉa, nhưng con ngựa ấy thì làm gì mà có vàng. Nhìn thấy đống phân ngựa vãi ra không hơn gì những đống phân ngựa khác, các cụ cho là thằng cha đã xỏ xiên cả làng nên không nên được cơn tức giận. Cuối cùng, chàng bị làng tịch thu con ngựa và còn bị tuần nọc xuống đánh ba mươi roi.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Qua ngày hôm sau hắn lại dậy sớm vác búa lên rừng quyết trị cho con tinh một mẻ. Lần này chàng bổ những nhát búa rất dữ dội. Thấy con tinh hiện ra quỳ lạy khóc lóc, chàng quát to:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Sao mày dám lừa ông làm ông mang oán với mọi người. Mâm và ngựa của mày chỉ là những của vứt đi, không đáng một đồng kẽm.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Con tinh hết sức phân trần, vạch tội lão chủ quán, rồi nói tiếp:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Để tôi xin biếu ngài cái ống này, lúc về có thể lấy lại những của đã mất.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Hắn đưa ống ra và dặn:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Cái ống này có phép làm cho bất kỳ bao nhiêu người cũng phải chống ngược lên trời nếu cầm ống chỉ lên không ba lần. Cho đến khi nào gõ xuống đất ba lần thì mọi sự trở lại như cũ.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Nghe bùi tai, chàng đốn củi lại dừng tay búa, cầm ống phép bắt con tinh phải chống đít lên trời xem thử, thấy quả nghiệm rồi mới ra về.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Đến chợ, chàng lại ghé vào quán cơm tươi cười hỏi mọi người:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Các ông các bà có muốn chống chăng?</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Vợ chồng lão chủ quán tưởng có món gì bở nên vội đáp:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Cơm ăn no, trầu đầy đây, không chống để làm gì?</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Lập tức cái ống mầu nhiệm đã bắt cả nhà lão chủ quán chống hai tay xuống đất, chân giơ lên trời không cụ cựa.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Chắc là lần này chàng đốn củi đã rõ mưu mô gian dối của mình nên cố tâm phạt mình với phép thuật thần dị, lão chủ quán van khóc hết lời. Hắn hứa trả lại mâm và ngựa để xin tha mạng. Anh chàng chỉ cần có mấy món bảo vật cũ, nên vui lòng làm phép tha cho cả nhà lão đứng dậy.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Khi châu đã về hợp phố, chàng phi ngựa nước đại trở về làng. Chàng không quên tiến vào đình thúc một hồi trống lớn mời làng như mấy lần trước. Thế rồi trước mặt quan viên và đồng dân thượng hạ, chàng đặt mâm xuống chiếu mời mọi người chia hàng ngồi vào.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Tiếng gõ mâm lúc này rất có hiệu quả. Cơm rượu và mọi thức ngon vật lạ tuôn ra đầy mâm đầy chiếu. Cả làng không đợi mời nhiều, ai nấy cắm đầu ăn uống mặc sức.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Ăn uống xong đâu đấy, chàng chỉ vào con ngựa và nói:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Nếu quý cụ và mọi người vui lòng nhận một ít vàng tôi sẽ bảo con ngựa này làm ngay.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Không một người nào từ chối lòng tốt của chàng. Họ đứng ra hai hàng, mỗi người cầm một cái rá chực hứng phân ngựa. Quả nhiên, ngựa chạy đến đâu, người ta đổ xô nhau nhặt đến đấy vì họ thấy lấp lánh trên mặt đất bao nhiêu là vàng vung vãi.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Xong cuộc nhặt vàng, anh chàng giơ ống lên và hỏi:</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">– Bây giờ còn ống phép này, bà con ta ai muốn chống xin mời đứng về phía này.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Bấy giờ người đã no say lại được vàng giắt lưng, ai nấy chắc mẩm lại có món quà gì nữa, nên chẳng một ai từ chối. Ống vừa giơ lên, tất cả mọi người đều chổng đít lên trời, dù cố gắng thế nào cũng không buông xuống được.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Hôm ấy, không ngờ lại có lão trọc phú và con gái lão cũng có mặt ở đấy. Con gái lão là người đã làm cho chàng đốn củi chết mê chết mệt. Mọi ngày, tuy thấy anh nghèo khổ mà nàng vẫn tỏ lòng quyến luyến, những lúc chàng đến làm công cho lão trọc phú, hai bên từng có cơ hội gặp gỡ, chuyện trò. Nhưng đối với lão thì đừng có hòng tính chuyện lấy nhau. Bây giờ đây, thấy lão van như vạc, chàng tới thỉnh cầu lão gả con gái cho mình. Lão gật. Thế là chiếc ống lại gõ xuống đất buông tha tất cả mọi người.</p><p style="margin-right: 0px; margin-bottom: 1.7em; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 16px; text-align: justify; overflow-wrap: break-word !important;">Rồi đó, anh chàng đốn củi lấy được vợ như ý muốn. Với ba món bảo bối, chàng đi khắp thiên hạ giúp đỡ những người nghèo khổ và trị tội những bọn tham lam độc ác.</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (29, 1, N'Chương 1', CAST(N'2021-09-11T10:32:39.410' AS DateTime), N'135,136,137,138,139', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (29, 2, N'Chương 2', CAST(N'2021-09-11T10:33:15.060' AS DateTime), N'140,141,142,143,144,145,146,148,149,150,151', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (30, 1, N'Chương 1: Nam xứng pháo hôi tiền nhiệm', CAST(N'2021-09-11T10:37:49.687' AS DateTime), N'<p>Lần thứ N thân cận sau khi thất bại, Hướng Hàn thu được một phần phỏng vấn thông tri.</p><p>Nói thật, hắn nguyên bản cũng không muốn đi, bởi vì hắn căn bản là không đầu quá lý lịch sơ lược. Chủ động đưa tới cửa, khẳng định không phải cái gì công ty lớn, hơn nữa là lừa dối khả năng tính rất lớn.</p><p>Bất quá hắn ba bỗng nhiên tới video, nói người một nhà ở phi hạm thượng, lại đã quên tài khoản mật mã, 3000 tinh tệ tạm thời đánh không lại tới, làm hắn trước hết nghĩ biện pháp căng mấy ngày.</p><p>Lúc ấy hắn mới vừa làm xong gien ghép đôi, tiền dùng xong rồi không nói, bụng còn đói thầm thì thẳng kêu. Chợt nghe tin dữ, tức khắc há hốc mồm.</p><p>Nhìn mắt đầu cuối giao diện thượng còn không có đóng cửa phỏng vấn thông tri, hắn thực mau làm ra một cái gian nan quyết định.</p><p>Tinh Du khoa học kỹ thuật phỏng vấn chỗ, Hướng Hàn vẻ mặt khẩn trương ngồi. Hai vị phỏng vấn quan nhìn mắt hắn đệ thượng văn bản tư liệu, hai giây sau lại khép lại.</p><p>Hướng Hàn tâm tức khắc lạnh nửa thanh, nghĩ thầm, xem ra đây là không diễn.</p><p>Phỏng vấn quan A: “Hướng tiên sinh, nghe hôn nhân giới thiệu chỗ người ta nói, ngài tính cách thành thật, thực sẽ đau người, đáng giá dựa vào?”</p><p>Ân? Này chỉ là lời khách sáo đi? Hơn nữa cùng phỏng vấn công tác có quan hệ gì? Này không phải một nhà công ty game?</p><p>Phỏng vấn quan B: “Ngài nhiều lần đảm nhiệm thân cận đối tượng cũng nói ngài là người tốt, nhiệt tâm thiện lương, thích giúp đỡ mọi người?”</p><p>Này không phải thẻ người tốt sao? Không đúng, này đều điều tra ra tới? Hướng Hàn có chút ngốc.</p><p>Phỏng vấn quan A: “Chúc mừng ngài, ngài đã thành công bị bổn công ty tuyển dụng. Thỉnh ký hợp đồng đi, chúng ta chính yêu cầu ngài nhân tài như vậy.”</p><p>Phỏng vấn quan B: “Hôm nay liền có thể đi làm, đãi ngộ từ ưu, bao ăn bao ở còn bao đối tượng.”</p><p>Từ từ, vừa rồi đã xảy ra cái gì? Cái này ‘ bao đối tượng ’ là cái quỷ gì?</p><p>Hướng Hàn vẻ mặt hỗn độn, thật cẩn thận nói: “Xin hỏi, công tác của ta nội dung là……”</p><p>“A, rất đơn giản, chính là thời không lữ hành.” Phỏng vấn quan A, B đồng thời trả lời, ngữ mang chờ mong.</p><p>Hướng Hàn mạc danh run run một chút, bỗng nhiên có loại thượng tặc thuyền cảm giác.</p><p>Nhưng ở công ty tham quan một vòng, thuận tiện ở nhà ăn ăn no nê sau, Hướng Hàn dần dần lại buông cảnh giác, ký hợp đồng.</p><p>Đây là một nhà có quân đội bối cảnh công ty game, nghe nói gần nhất mới vừa khai phá một khoản tân trò chơi, nhu cầu cấp bách thí chơi nhân viên. Hướng Hàn chủ yếu nhiệm vụ là tiến vào trò chơi, thúc đẩy tình cảnh phát triển, cứu vớt mục tiêu nhân vật.</p><p>Đến nỗi vì cái gì muốn cứu vớt mục tiêu nhân vật, Hướng Hàn cũng không quan tâm. Hắn chỉ biết hoàn thành cái này công tác sau, là có thể được đến một trăm triệu tinh tệ thù lao.</p><p>Một trăm triệu tinh tệ, có thể ở Thủ Đô Tinh mua bộ biệt thự, cộng thêm vô số rương mì ăn liền. Đến nỗi vì cái gì sẽ có bầu trời rớt bánh có nhân loại chuyện tốt này, ngốc bạch ngọt là sẽ không đi tự hỏi.</p><p>Tiến vào dịch thương trước, phỏng vấn quan đại A tiên sinh dặn dò: “Cái thứ nhất thế giới nhiệm vụ rất đơn giản, cơ bản không cần làm cái gì. Mặt khác sẽ có một hệ thống đi theo phụ trợ, ta cùng Roy cũng sẽ chú ý tình huống, tùy thời cung cấp trợ giúp.”</p><p>“Roy?”</p><p>“Là ta.” Phỏng vấn quan tiểu B nhấc tay, thuận tiện giới thiệu một chút đại A: “Hắn là Dean · Lambert.”</p><p>“Các ngươi hảo.” Hướng Hàn gật gật đầu, cảm thấy vẫn là đại A, tiểu B tương đối thuận miệng.</p><p>Hoàn toàn tẩm nhập dịch thương sau, một trận không trọng cảm đánh úp lại, trước mắt tức khắc một mảnh hắc ám. Hướng Hàn có một tia khẩn trương, cũng may hệ thống thực mau xuất hiện.</p><p>“Hướng tiên sinh, ngài hảo. Ta là xuyên qua hệ thống 009, thật cao hứng vì ngài phục vụ.”</p><p>Hướng Hàn khẩn trương đáp lại: “Nga nga, 009 a, ta kêu ngươi Tiểu Cửu có thể chứ?”</p><p>Hệ thống: “Đương nhiên có thể, Hướng tiên sinh ^_^”</p><p>Hướng Hàn khẩn trương cảm tức khắc giảm bớt không ít, tiếp theo một trận ánh sáng đánh úp lại, trước mắt bỗng nhiên biến thành ngũ quang thập sắc.</p><p>Hướng Hàn bỗng nhiên cảm thấy chóng mặt nhức đầu, thân thể cũng không có gì sức lực, chung quanh một mảnh ồn ào.</p><p>Ở tới phía trước, hắn đã xem qua cái thứ nhất thế giới chuyện xưa, biết đây là một cái thế giới giả tưởng. Thời gian là cổ địa cầu thời kỳ, còn không có phi thuyền, phi hạm linh tinh đồ vật.</p><p>Nguyên chủ cũng kêu Hướng Hàn, là cái bần hàn xuất thân khổ hài tử, dựa vào chính mình nỗ lực phấn đấu thi đậu danh giáo. Sau lại ở một lần vườn trường quan hệ hữu nghị trung, thích thượng so với chính mình cao nhất niên cấp cùng hệ học trưởng Lục Trạch.</p><p>Lục Trạch xuất thân huân quý, tổ tiên vài đại đều đương quá quan, tới rồi gia gia kia bối trong nhà mới chuyển vì kinh thương, không chỉ có có tiền có nhan, hơn nữa học tập cũng hảo, thuộc về học bá cấp nam thần.</p><p>Lần nọ bạn cùng phòng sinh nhật bữa tiệc, nguyên chủ uống nhiều quá, hồi giáo trên đường vừa lúc đụng phải Lục Trạch. Lúc ấy ánh đèn vựng hoàng, bóng đêm mê ly, nguyên chủ tửu tráng túng nhân đảm, lắp bắp liền thông báo.</p><p>Lục Trạch lúc ấy ngẩn người, sau đó suy xét vài giây, cư nhiên liền đồng ý. Nói thật, hai người kết giao nửa tháng sau, nguyên chủ còn không dám tin tưởng đây là thật sự.</p><p>Nếu bọn họ là vai chính, chuyện xưa đến này liền có thể kết thúc. Nhưng đáng tiếc, nguyên chủ chỉ là câu chuyện này trung pháo hôi, vẫn là cái ngại bần ái phú, ở Lục Trạch nghèo túng sau, liền xoay người thông đồng mặt khác phú nhị đại, chờ Lục Trạch lại lần nữa phát đạt, lại muốn ăn hồi đầu thảo hám làm giàu pháo hôi tiền nhiệm. Đến nỗi Lục Trạch, hắn cũng không phải vai chính, chỉ là cái lưu luyến si mê vai chính chịu nam xứng.</p><p>Nguyên chủ cùng Lục Trạch ở bên nhau sau, thực mau liền nhận thức thế giới này chính quy công Triệu Hàn Đông. Triệu Hàn Đông nói là Lục Trạch phát tiểu, nhưng kỳ thật đối Lục Trạch đỉnh nhìn không thuận mắt, biết hai người bọn họ ở bên nhau sau, lập tức đem sự tiết lộ cho Lục gia. Lục Trạch không muốn chia tay, bởi vậy bị đuổi ra gia môn, quyết định tự chủ gây dựng sự nghiệp.</p><p>Nhưng ở Triệu Hàn Đông hướng dẫn hạ, nguyên chủ đã qua quán giấy say mê kim sinh hoạt, không bao giờ tưởng tễ ở nhỏ hẹp cho thuê trong phòng, ôn lại cái loại này một khối tiền bẻ thành hai nửa sử nhật tử. Tuy rằng vì ái kiên trì một đoạn thời gian, ở Triệu Hàn Đông mê hoặc hạ, hắn cuối cùng vẫn là lựa chọn cùng Lục Trạch chia tay, chuyển đầu Triệu Hàn Đông ôm ấp.</p><p>Nhưng nguyên chủ nào biết đâu rằng, Triệu Hàn Đông căn bản không thích hắn, làm như vậy thuần túy là vì ghê tởm Lục Trạch, làm Lục Trạch trong lòng không dễ chịu. Chờ Lục Trạch thích thượng vai chính chịu Tôn Thư Á, nguyên chủ cũng liền không có giá trị lợi dụng. Triệu Hàn Đông thực mau dời đi mục tiêu, lại theo dõi Tôn Thư Á, nguyên chủ bị vô tình vứt bỏ.</p><p>Tôn Thư Á cùng nguyên chủ không giống nhau, hắn nhất không quen nhìn Triệu Hàn Đông loại này nhàn rỗi không có việc gì, ỷ thế hiếp người nhị đại, đối này từ trước đến nay không giả sắc thái. Nhưng Triệu Hàn Đông ngược lại càng cản càng hăng, dần dần thật thích thượng hắn. Hai người phân phân hợp hợp nhiều lần, một phen ngược luyến tình thâm sau, cuối cùng cư nhiên HE.</p><p>Nguyên chủ tắc bởi vì muốn ăn hồi đầu thảo không thành, nhiều lần hãm hại Tôn Thư Á, cuối cùng bị Triệu Hàn Đông dụ dỗ nhiễm độc, bức điên tự sát.</p><p>Hướng Hàn xem xong tư liệu khi, nội tâm cũng là tất điện tử cẩu. Ở hắn xem ra, này Triệu Hàn Đông thuần túy chính là cái ngốc xoa. Đại khái là từ nhỏ đến lớn bị Lục Trạch nghiền áp quá quá nhiều lần, tâm lý vặn vẹo, nơi chốn tưởng cùng Lục Trạch đối nghịch.</p><p>Nhưng đối nghịch liền đối nghịch đi, có thể hay không chính diện giang? Nhân gia càng không, một hai phải từ Lục Trạch bên người người xuống tay, toàn bộ một tiểu nhân hành vi, nơi nào giống vai chính công?</p><p>Hướng Hàn xuyên tới thời gian không khéo, lúc này nguyên chủ đang ở quán bar uống vựng vựng hồ hồ, bị Triệu Hàn Đông ôm hôn một cái, sau đó vừa lúc bị Lục Trạch gặp được. Không thể không nói, này thật sự là quá xảo.</p><p>Nguyên thân đại khái uống có điểm nhiều, Hướng Hàn xuyên qua tới khi, chỉ cảm thấy đầu một trận choáng váng, bên tai một trận đánh trống reo hò.</p><p>Phát hiện có người triều chính mình đi tới, hắn theo bản năng đoán là Lục Trạch. Tuy rằng phản quang thấy không rõ đối phương khuôn mặt, nhưng cảm giác áp bách lại là thật đánh thật.</p><p>“Cái này…… Ta hiện tại nên có phản ứng gì?” Hướng Hàn ngày thường trạch ở nhà, không thế nào cùng người giao lưu, hơn nữa là vừa xuyên qua tới, nhất thời lại có chút vô thố.</p><p>Hệ thống: “Ấn nguyên cốt truyện hẳn là chia tay.”</p><p>Đại A: “Hảo hảo sám hối, cầu được tha thứ, cùng nhau gây dựng sự nghiệp, đi hướng hạnh phúc.”</p><p>Tiểu B: “Này cùng nguyên cốt truyện không đúng đi? Hướng tiên sinh, ngài vẫn là ấn chính mình yêu thích đến đây đi.”</p><p>Hướng Hàn: “……”</p><p>Hắn xem như đã nhìn ra, thời khắc mấu chốt, này ba cái gia hỏa một cái đều dựa vào không thượng. Ở trong đầu một đoàn hồ nhão dưới tình huống, Hướng Hàn cuối cùng quyết định, lấy bất biến ứng vạn biến, trước làm bộ trấn định.</p><p>Triệu Hàn Đông thấy Lục Trạch lại đây, ánh mắt lộ ra một tia khiêu khích cười, hừ nói: “Nha, này không phải A Trạch sao? Mấy ngày không gặp, thật là đại biến dạng, ta vừa rồi nhất thời cũng chưa dám nhận. Như thế nào, không ngồi xuống uống vài chén?”</p><p>“Không được.” Lục Trạch nhàn nhạt đáp lại, tầm mắt dừng lại ở Hướng Hàn trên người, xem cũng chưa xem Triệu Hàn Đông liếc mắt một cái.</p><p>Hướng Hàn đầu có chút vựng, nghịch quang, nỗ lực muốn nhìn thanh Lục Trạch bộ dáng, nhưng lại như thế nào cũng thấy không rõ.</p><p>Nhưng ở Lục Trạch xem ra, hắn lại là ánh mắt mê ly lại khiêu khích, chính khinh thường nhìn chính mình.</p><p>Hướng Hàn lớn lên rất đẹp, mặt mày thậm chí có chút quyến rũ, này Lục Trạch vẫn luôn đều biết. Lúc trước đối phương thông báo khi, hắn không cần nghĩ ngợi liền đồng ý, chưa chắc không có phương diện này duyên cớ. Nhưng lúc này, ở ái muội ánh đèn hạ, hắn thế nhưng cảm thấy đối phương so dĩ vãng lại mê người vài phần, tựa hồ càng thêm đẹp.</p><p>Rõ ràng là xuất quỹ bị trảo, lại còn không hoảng không loạn, làm ra như vậy không sao cả thái độ, thật cho rằng hắn cái gì đều sẽ tha thứ sao?</p><p>Lục Trạch ánh mắt trầm trầm, trong mắt mờ mịt gió lốc, hỏi: “Đây là ngươi lựa chọn?”</p><p>“Ân?” Hướng Hàn không nghe rõ, theo bản năng ngẩng đầu dò hỏi. Chỉ là hắn thanh âm lười biếng, ở người khác xem ra, lại thành khẽ nâng cằm khiêu khích.</p><p>Đặc biệt là Triệu Hàn Đông, nghe cẳng chân đều tô, đỉnh mày vừa nhấc, khiêu khích nhìn về phía Lục Trạch: “A Trạch, loại sự tình này vẫn là muốn chú ý ngươi tình ta nguyện. Tiểu Hàn đều đã quyết định chia tay, lại dây dưa đi xuống chỉ sợ khó coi đi?”</p><p>Lục Trạch lạnh lùng liếc hắn một cái, lại nhìn về phía dựa vào hắn Hướng Hàn, trong mắt xẹt qua kiên quyết, trầm giọng nói: “Hảo, vậy như ngươi mong muốn.”</p><p>Nói xong hắn trực tiếp xoay người rời đi, lưu lại một chúng xem náo nhiệt người.</p><p>Hướng Hàn lần này nghe rõ, thập phần giật mình: “Ta còn cái gì cũng chưa làm, liền phân?”</p><p>Hệ thống: “……”</p><p>“Xem ra đại A nói không sai, cốt truyện năng lực quả nhiên cường đại, không cần làm cái gì ta là có thể hoàn thành nhiệm vụ.”</p><p>Đại A: “Đại A là ai?”</p><p>Hướng Hàn: “Chính là…… Dean tiên sinh ngài……”</p><p>Đại A: “…… Xem ra tạm thời không có gì quan trọng cốt truyện, ngươi tiếp tục, chúng ta tan tầm ăn cơm.”</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (30, 2, N'Chương 2:', CAST(N'2021-09-11T10:39:50.267' AS DateTime), N'<p>Đối với Triệu Hàn Đông người này, Hướng Hàn căn bản không nghĩ để ý tới, thậm chí có điểm tưởng lộng chết hắn. Liền như vậy tên cặn bã, cuối cùng cư nhiên thành công tẩy trắng thượng vị, thành chính quy công. Cũng không biết thế giới này kịch bản gốc là ai viết, mắt mù a. Nếu là gác hắn gõ chữ cái kia tiểu trang web, sớm bị người đọc phun đã chết.</p><p>Tuy rằng rất muốn lộng chết trước mắt người này, nhưng Hướng Hàn còn nhớ rõ chính mình xuyên tới mục đích. Vạn nhất Triệu Hàn Đông chính là bị cứu vớt mục tiêu, đem hắn lộng chết, nhiệm vụ chẳng phải game over?</p><p>“Tiểu Cửu, lần này cần cứu vớt mục tiêu là ai?” Động thủ phía trước, Hướng Hàn quyết định trước dò hỏi một chút.</p><p>“Là Lục Trạch a, Hướng tiên sinh.” Hệ thống trả lời.</p><p>“Nga, này ta liền an tâm rồi.” Hướng Hàn nhẹ nhàng thở ra, còn hảo không phải này nhân tra. Không đúng, từ từ, là Lục Trạch?</p><p>“Tiểu Cửu, ngươi như thế nào không nói sớm? Ta vừa rồi có phải hay không đem người đắc tội?” Hướng Hàn lo lắng sốt ruột.</p><p>“Không tính đi, ngài không có tới thời điểm, nguyên thân liền đem người cấp đắc tội.” Hệ thống nói.</p><p>Hướng Hàn càng tâm tắc, này còn cái gì cũng chưa làm đâu, liền đem người cấp đắc tội, còn như thế nào cứu vớt?</p><p>“Không quan hệ, nhiệm vụ yêu cầu là giúp mục tiêu thu hoạch tình yêu, tránh cho ái mà không được, cô độc sống quãng đời còn lại kết cục. Dù sao ngài hiện tại đã cùng mục tiêu chia tay, không bằng tác hợp mục tiêu cùng vai chính chịu ở bên nhau, như vậy ngài chỉ cần không đi ăn hồi đầu thảo, cơ bản là có thể cứu vớt thành công.” Hệ thống an ủi nói.</p><p>“Có lý có lý.” Hướng Hàn liên tục tán đồng, nhưng thực mau lại không đồng ý: “Cũng không đúng, Triệu Hàn Đông vẫn là cái trở ngại.”</p><p>Triệu Hàn Đông thấy hắn còn ở thất thần, trong lòng càng thêm bất mãn, trực tiếp nắm hắn cằm, nhíu mày nói: “Ngươi suy nghĩ cái gì?”</p><p>Hướng Hàn tức khắc tới tinh thần, thầm nghĩ, chụp chết tên cặn bã này, không phải có thể giúp Lục Trạch dọn sạch cảm tình chướng ngại?</p><p>Hệ thống phát hiện tình huống không đúng, vội cấp hô: “Hướng tiên sinh bình tĩnh a, nơi này là quán bar, trước công chúng, đám đông nhìn chăm chú, cách biệt đã lâu, lâu…… Lâu không đối……”</p><p>“Yên tâm, ta có chừng mực.” Hướng Hàn hơi hơi mỉm cười, ánh mắt chuyển hướng Triệu Hàn Đông khi, âm thầm gây tinh thần ám chỉ. Lúc này hắn trong mắt ba quang lưu chuyển, thanh âm cũng mang theo mê hoặc: “Trước rời đi được không?”</p><p>Triệu Hàn Đông tâm thần hơi hoảng, theo bản năng liền nói: “Hảo.”</p><p>Hệ thống còn ở kia kêu: “Hướng tiên sinh, hắn là chủ tuyến nhân vật, ngài không thể lộng chết a ——”</p><p>“Như vậy sao?” Hướng Hàn có chút đáng tiếc, theo sau lại cường điệu: “Yên tâm, ta có chừng mực.”</p><p>Hệ thống hơi có chút yên tâm: “Kia, kia ngài một vừa hai phải a.”</p><p>Rời đi quán bar sau, một trận gió lạnh thổi tới, Triệu Hàn Đông nháy mắt thanh tỉnh. Lại nhìn về phía Hướng Hàn khi, ánh mắt bỗng nhiên tràn ngập cảnh giác: “Ngươi ——”</p><p>Triệu Hàn Đông hoàn toàn không rõ ràng lắm, chính mình vừa rồi vì cái gì sẽ nghe Hướng Hàn nói, thậm chí cùng đối phương cùng nhau đi đến cái này không có theo dõi góc chết, trong lòng không khỏi khiếp sợ.</p><p>Hướng Hàn cười cười, lộ ra hai viên tiểu bạch nha, nhấc chân chính là một chân. Triệu Hàn Đông không hề phòng bị, nháy mắt bị thẳng đánh yếu hại.</p><p>“Ngô!” Hắn rên một tiếng, lập tức khom lưng che lại nơi nào đó, đau cả người phát run, trạm đều đứng không vững.</p><p>“Hướng Hàn!” Hắn khóe mắt muốn nứt ra, cắn răng nói: “Ngươi TM có phải hay không chán sống?”</p><p>“Như thế nào sẽ? Ta rất sợ chết a.” Hướng Hàn biểu tình lạnh run, liền kém phát run.</p><p>Nhưng sấn đối phương khom lưng đỡ tường là lúc, hắn nhấc chân lại là một chân, thuận tiện cảnh cáo nói: “Về sau ít đi tìm Lục Trạch phiền toái, nếu không……” Nói hắn cười cười, trong mắt ba quang lưu chuyển, lại lần nữa gây tinh thần lực, ngữ mang uy hiếp nói: “Lần sau liền không phải đau một chút đơn giản như vậy.”</p><p>Mấu chốt là đừng lại đi cùng Lục Trạch đoạt vai chính chịu, đây mới là quan trọng nhất.</p><p>Triệu Hàn Đông cùng hắn ánh mắt đối thượng, thế nhưng mạc danh một trận run rẩy, nhưng đau ý thực mau liền đem thần trí kéo về.</p><p>Đem Hướng Hàn nói dư vị một phen, hắn cười lạnh một tiếng, châm chọc nói: “Như thế nào, muốn ăn hồi đầu thảo? Lão tử bất quá là sủng ngươi mấy ngày, ngươi thật đúng là đương chính mình là cái đồ vật? TM……”</p><p>“Thật dơ.” Hướng Hàn đào đào lỗ tai, thấy chân tường có cái bao nilon bị thổi qua tới, tức khắc ánh mắt sáng lên.</p><p>Triệu Hàn Đông chính mắng khởi hưng, bỗng nhiên bị một đoàn dơ hề hề đồ vật lấp kín miệng, tức khắc khí mặt đều tái rồi. Hướng Hàn thuận tiện đơn đầu gối chống lại hắn hạ thân, hứng thú bừng bừng đi giải dây lưng. Triệu Hàn Đông tức khắc đau thẳng run run, thiếu chút nữa liền phế đi, căn bản không có sức lực phản kháng.</p><p>Lục Trạch không biết đi khi nào đến đầu hẻm, thấy một màn này, đáy mắt một mảnh sâu thẳm.</p><p>Hệ thống vội vàng nhắc nhở: “Hướng tiên sinh, có người tới!”</p><p>Hướng Hàn căn bản không chú ý, cởi xuống Triệu Hàn Đông dây lưng sau, trực tiếp đem hắn tay cột vào phía sau. Nhưng ở Lục Trạch xem ra, lại là hắn cưỡi ở Triệu Hàn Đông trên người, duỗi tay đi giải dây lưng, sau đó lại cúi người áp xuống đi.</p><p>Lục Trạch sắc mặt có chút phát thanh, kỳ thật rời đi quán bar sau, hắn liền có chút hối hận. Cảm thấy Hướng Hàn dáng vẻ kia, lưu tại chỗ đó thật sự không an toàn. Đặc biệt là Triệu Hàn Đông, đây là cái nóng lạnh gì cũng ăn chủ nhân, chuyện gì đều làm được ra.</p><p>Hắn suy nghĩ trong chốc lát, cảm thấy chính mình cùng Hướng Hàn rốt cuộc hảo quá một hồi, liền tính chia tay, cũng không thể nhìn đối phương hướng hố lửa nhảy, vì thế ma xui quỷ khiến liền đã trở lại.</p><p>Nhưng sau khi trở về hắn liền hối hận, nhìn xem Hướng Hàn này gấp gáp kính nhi, lộ thiên lộ mà, còn ở bên ngoài liền……</p><p>MD, Triệu Hàn Đông chẳng lẽ liền khai phòng tiền đều không có? Lục Trạch khó được mắng dơ, khí xoay người liền đi.</p><p>Nhưng mà mới vừa đi hai bước, hắn liền nghe được ‘ bạch bạch ’ hai tiếng, sau đó là Hướng Hàn thanh âm truyền đến.</p><p>“Liền ngươi này nhân tra cũng xứng cùng Lục Trạch so? Ta bất quá là lợi dụng ngươi mà thôi, ngốc xoa.”</p><p>Hướng Hàn sở dĩ nói như vậy, là bởi vì Triệu Hàn Đông hận nhất người khác nói Lục Trạch so với hắn cường, làm như vậy nhất có thể khí đến hắn.</p><p>Quả nhiên, Triệu Hàn Đông nghe thế câu nói sau, khí cả người phát run, cả khuôn mặt đều vặn vẹo. Nhưng bởi vì miệng bị đổ, chỉ có thể phát ra một trận “Ô ô” thanh.</p><p>Lục Trạch lại bỗng nhiên dừng lại nện bước, trong lòng dâng lên nghi hoặc.</p><p>Hướng Hàn đứng dậy sau, vỗ vỗ tay, vừa lòng nói: “Lần này chỉ là cái tiểu giáo huấn, về sau nhớ kỹ, ít đi tìm Lục Trạch phiền toái.”</p><p>Triệu Hàn Đông hai mắt giận trừng, Hướng Hàn lười đi để ý, nhớ tới hệ thống vừa rồi giống như nói gì đó, vội hỏi: “Tiểu Cửu, ngươi vừa rồi có phải hay không nói cái gì?”</p><p>Hệ thống buồn bã nói: “Vừa rồi có người đã tới, liền ở đầu hẻm.”</p><p>“Cái gì?” Hướng Hàn vội cảnh giác nhìn thoáng qua phía sau, thấy không ai sau càng khẩn trương, thật cẩn thận hỏi: “Hiện tại đâu? Ta chính là lần đầu tiên làm loại sự tình này.”</p><p>“Đã đi rồi.” Hệ thống có chút bất đắc dĩ, nhịn không được nói: “Nói, Hướng tiên sinh lần đầu tiên làm loại sự tình này liền như vậy thuần thục a?”</p><p>“Kỳ thật ta thực sợ hãi.” Hướng Hàn có chút ngượng ngùng.</p><p>Hệ thống: “……” Ngài sẽ không cho rằng đây là ở khen ngài đi?</p><p>“Đúng rồi, hắn có thể hay không báo nguy a?” Nghĩ vậy loại khả năng, Hướng Hàn lại khẩn trương lên.</p><p>“Không thể nào, hắn hẳn là chỉ biết cho rằng các ngươi ở giao phối.” Hệ thống phân tích nói.</p><p>“Tiểu Cửu, ngươi hảo ô a.” Hướng Hàn che che lỗ tai.</p><p>Hệ thống thực mờ mịt, nó làm sao vậy? Nó chỉ là nói cái thuật ngữ mà thôi.</p><p>Vì để ngừa vạn nhất, Hướng Hàn quyết định chạy nhanh trước lưu. Cho nên đương Lục Trạch quay lại khi, chỉ nhìn đến đôi tay bị trói, một thân chật vật Triệu Hàn Đông.</p><p>Rời đi sau, hệ thống lo lắng sốt ruột: “Hướng tiên sinh, Triệu Hàn Đông ở đế đô rất có thế lực, ngươi liền như vậy đem hắn đánh, chỉ sợ sẽ bị trả thù.</p><p>“Không quan hệ, ta dùng tinh thần ám chỉ đe dọa quá hắn.” Hướng Hàn che lại dạ dày bộ, nơi đó chính hỏa liệu hỏa liệu đau.</p><p>Khẳng định là đói bụng! Hắn thập phần xác định, hai mắt bắt đầu ngắm khởi ven đường cửa hàng, biển quảng cáo.</p><p>Hệ thống tiếp tục lo lắng: “Nhưng Hướng tiên sinh tinh thần lực còn không đến F cấp, chỉ sợ hiệu quả không tốt.”</p><p>Hướng Hàn tức khắc cảm thấy ngực bị cắm một đao, sửa vì che lại trái tim, run run nói: “Ngươi, ngươi làm sao mà biết được?”</p><p>Hệ thống: “Hướng tiên sinh không phải đã làm gien ghép đôi sao?”</p><p>Hướng Hàn lập tức cả giận: “Kia gia bệnh viện quá ác liệt, một chút cũng không biết bảo hộ cá nhân riêng tư, ta muốn khiếu nại bọn họ.”</p><p>“Ách……” Hệ thống giải thích nói: “Tinh Du có quân đội bối cảnh, có quyền hạn điều lấy ngài sở hữu tư liệu.”</p><p>“Quân đội a?” Hướng Hàn nháy mắt héo, nói đúng ra, quân đội có quyền hạn điều lấy mọi người tư liệu, bao gồm tổng thống các hạ.</p><p>Sớm biết rằng hắn liền không nghe lão ba nói, đi làm cái gì gien ghép đôi. Hoa tiền không nói, riêng tư còn bị người đã biết. Phải biết rằng, toàn Liên Bang chỉ có 0.01‰ nhân tinh thần lực thấp hơn F cấp, bị đại gia trêu chọc vì phế sài.</p><p>Nghĩ vậy, hắn cảm giác rất khổ sở, hơn nữa càng đói bụng.</p><p>Hệ thống hảo tâm an ủi: “Hướng tiên sinh, này kỳ thật không có gì, tinh thần lực thấp chỉ thuyết minh không thích hợp điều khiển chiến hạm, cơ giáp. Hơn nữa, liền tính không đến F cấp, cũng so cổ địa cầu người cao rất nhiều.”</p><p>“Đúng vậy, Triệu Hàn Đông liền so với ta còn phế sài.” Hướng Hàn thất thần gật đầu, sau đó hỏi: “Ngươi phía trước không phải nói bên này có rất nhiều mỹ thực? Chúng ta đi đâu ăn?”</p><p>“…… Nhà ga thế nào?” Hệ thống tiểu tâm hỏi.</p><p>“Nhà ga?”</p><p>“Đúng vậy, ngươi đem Triệu Hàn Đông đánh, không suy xét đi địa phương khác tránh tránh sao?” Hệ thống kiến nghị.</p><p>“Nơi đó có ăn sao?” Hướng Hàn tương đối quan tâm cái này.</p><p>Hệ thống mặc mặc, nói: “Có.”</p><p>Hướng Hàn lập tức quyết định: “Kia hảo, liền đi nhà ga.”</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (31, 1, N'Xuyên về trung đại,tập làm phi', CAST(N'2021-09-11T19:28:34.987' AS DateTime), N'<p>Hôm nay mưa,từng hạt mưa li ti rớt không ngơi.Một tiểu tinh quái,cô nhóc lớp 4, 9 tuổi,tên Lâm Uyên Nan- biệt hiệu là Nan Nan- hôm nay tự đi bộ đến trường.Nan Nan cố chạy nhanh nếu không sẽ mưa to,vì cô bé quên mang ô.Dù cố gắng chạy thật cẩn thận nhưng vẫn tưởng chừng như sẽ ngã.Nan Nan bất chợt dừng lại,nhìn lên tán lá cao,một giọt mưa đọng trên đó.Bất chợt cô bé nhìn xuống,một chiếc xe tải to đang tiến tới rất nhanh,đằng trước là một đứa trẻ không phản ứng kịp để tránh.Nan Nan hốt hoảng,không chần chừ nhảy ra cứu đứa trẻ.Giọt mưa trên tán lá rớt xuống,Nan Nan không kịp cứu đứa trẻ,mà chỉ kịp đỡ người ra phía trước xe chắn cho đứa trẻ ấy.Trước khi bị đâm,giọt mưa đó rơi song song với mặt Nan Nan,và lúc đó,cô hình như đã thấy một hình ảnh một người con trai.Lúc đó mọi thứ bỗng chốc đen thui,Nan Nan cảm thấy đầu mình bị đụng mạnh,nhưng kì lạ là không đau.Sau đó,cô bé cảm thấy cơ thể mình bị một sức mạnh nào đó đẩy mình ra và cảm giác như một quả bóng bị ném lên trên trời với tốc độ không thể đếm.Nan Nan chìm vào giấc ngủ sâu,sau đó bị đánh thức bởi một thứ gì đó.Cô dần tỉnh,cô bé nhận ra ngay là mình đã bị hôn mê sau khi đỡ hộ cho cô bé ấy,cô bé nhìn xung quanh,có lẽ mình đang ở bệnh viện nhưng mà kỳ lạ thay,coi bệnh viện này kỳ lạ quá.Nan Nan vội vàng ngồi dậy,nhận thấy mình đang ở nơi kỳ lạ, bức xúc vô cùng rồi cô oà lên khóc</p><p>Một người đàn bà gần 40,hốt hoảng chạy vào</p><p>-Thái tử phi,người sao thế!?</p><p>-Huhu,cô là ai,làm ơn đưa con ra khỏi đây,con muốn gặp mẹ!</p><p>-Nương nương,ta là mẹ con đây mà!Con không nhận ra sao,Lăng Y?!</p><p>-Không!Cô không phải mẹ tôi,mẹ tôi xinh hơn cô nhiều!</p><p>-Trời!Nương nương nói gì vậy!</p><p>Người đàn bà đầy lo lắng,ngay lúc đó,có một người con trai rất trẻ,ăn mặc quý phái,dáng vẻ uy nghiêm bước vào.Nan Nan nhìn cậu ta thán phục:</p><p>-Eo ơi,anh đẹp trai quá,hơn cả bố em rồi!</p><p>Người đàn bà hoảng sợ,vội vàng quỳ xuống cầu xin:</p><p>-Thái tử,xin người tha thứ cho sự hỗn láo của con gái thần,nó...nó...</p><p>-Ta đã nghe thái y nói rồi,nàng ấy bị đập đầu .Hiện tại bị mất kí ức,hơn nữa ta thấy nàng ta có vẻ không bình thường</p><p>Nan Nan nhìn mấy người này ngẩn ngơ khó hiểu.Cách ăn mặc của họ giống thời trung đại,cả cách giao tiếp cũng kì quặc.Bỗng chợt,Nan Nan nhớ đến chương trình thực tế mà có kết hợp diễn xuất để lừa ai đó."Ôi thích quá,bao lâu nay mình đã ước được tham gia vào chương trình này.Được,phải diễn cho nhập,tí về khoe với mọi người"</p><p>Nghĩ rồi,Nan Nan cười hí hửng.Cô đang nghĩ rằng,đạo diẽn đầu tư vào tập này nhiều quá.Nan Nan nhớ lại trước đây,khi mà cô lén xem những bộ phim cổ trang ngôn tình,thâm cung.Sau đó,Nan Nan giả vờ:</p><p>-E hèm!Mẫu thân,con thấy ổn rồi.Để thái tử phải lo lắng,thần thiếp có tội</p><p>Lúc đó,thái tử và người đàn bà rất ngạc nhiên. Trước phản ứng đó,Nan Nan cười khuch khích. Sở dĩ nói được như vậy cũng là nhờ kinh nghiệm xem phim cổ trang của cô,mặc dù mẹ không cho xem. Nhưng kì lạ,sao đạo diễn vẫn chưa lộ diện nhỉ.Nan Nan nhớ có một tập,một nhân vật biết mình bị quay,cũng giả vờ diễn nhập theo.Sau đó,đạo diễn biết mình bị phát hiện,rồi cả đoàn phim ra vỗ tay và tặng rất nhièu quà cho nhân vật</p><p>"Sao hôm nay đạo diễn dai thế"Nan Nan sốt ruột.Bấy giờ,Nan Nan mới để ý là giọng mình rất khác.Và lúc đó,cô bé có cái cảm giác rất lạ,cô nhìn xuống ngực,không kìm được cảm xúc,cô hét lên:</p><p>-A!!Sao ngực tôi to vậy!!Mau lấy cho tôi cái gương!!</p><p>Một nữ tì lấy gương đưa cho Nan Nan.Cô bé soi gương,khuôn mặt hiện giờ trước mắt Nan Nan là một khuôn mặt của một cô gái rất trẻ, nét mày xinh đẹp chứ không phải khuôn mặt bầu bĩnh,dễ thương thường ngày.Nan Nan không hề ưa điều đó,cô khóc òa lên:</p><p>-Hhu,mặt mình bị làm sao thế này,tôi là ai huhu!!!</p><p>Nan Nan khóc nức nở,người đàn bà trông vậy vô cùng lo lắng</p><p>-Con à,con lại làm sao vậy?!</p><p>- Quách phu nhân,cũng muộn rồi,thái tử phi để ta lo,phu nhân cứ về nghỉ</p><p>Người đàn bà có vẻ rất rầu rĩ,nhưng cũng miễn cưỡng đi về.Sau đó người con trai lại gần phía Nan Nan,ngồi cạnh lề giường.Nan Nan lúc ấy cảm thấy hình như bắt gặp cái ánh mắt nhìn chăm chú của chàng trai.Người con trai lấy chiếc khăn vừa ngâm nước lạnh đem vắt,vừa chấm trán Nan Nan vừa nói:</p><p>-Mọi thứ nàng làm ta đều biết,đừng tự biến mình thành một loài sâu bọ,có làm có chịu</p><p>Nan Nan mở to mắt tỏ vẻ khó hiểu,người con trai tiếp tục:</p><p>-Ta đương nhiên không chấp loại sâu bọ,ta cho nàng một cơ hội thừa nhận,ta sẽ không phạt nặng</p><p>-Gì cơ?</p><p>Nan Nan không hiểu tên đó nói gì,cứ ngơ ngác.Và rồi,người con trai nói thẳng:</p><p>-Thôi đi,nàng không cần giả vờ nữa đâu</p><p>-Gỉa vờ! Chú đừng có vớ vẩn! Tôi đang sẵn ức chế đây!!!Huhu, tôi muốn mẹ</p><p>-Nàng có thể đi theo Quách phu nhân</p><p>-Bà già đó không phải mẹ tôi!</p><p>Nói xong Nan Nan tiếp tục khóc nức nở,anh ta vẫn nghi là cô đóng kịch:</p><p>-Ta luôn thấy được sự đố kỵ của ngươi đối với Lạc thị,vì ta luôn dành tình yêu cho cô ấy thay vì ngươi. Việc ngươi giở mọi thủ đoạn để loại bỏ nàng ấy,ta luôn nhìn thấy. Việc ngươi đã làm với nàng ấy lần trước,bị ta phát hiện,nên ngươi trả vờ để trốn tội đúng không?</p><p>-Ơ hay!Chú ơi,chú à!Bộ cứ tưởng mình đẹp trai mà cả thế giới này theo á! Bớt mộng đi đồ ngốc,tôi ý thà cưới thằng bờm còn hơn!!</p><p>Giọng điệu và biểu cảm của Nan Nan bỗng khiến anh ta nhăn mặt tỏ vẻ khó hiểu.Không lẽ,đầu óc bị mất trí thật.Hắn ta trầm ngâm một lúc có vẻ đang nghĩ gì đó.Nan Nan không còn khóc nức nở,nhưng vẫn còn sụt sịt.Bỗng dưng cô bắt gặp ánh mắt nhìn chăm chú của người con trai về phía Nan Nan,không biết tại sao nhưng điều đó làm cô nổi da gà.Hắn ta bắt đầu đưa mặt lại gần và đối diện với mặt Nan Nan.Bất đắc dĩ cô không cúi người về phía sau.Hai khuôn mặt đối nhau khoảng găng tay.Sau đó người con trai nói:</p><p>-Phong nguyện bất buông hoa, cổ thụ bất buông quả,sóng nguyện trôi dạt cùng mây( nghĩa là nguyện yêu người không buông bỏ,không tha, sống gắn chặt lâu dài cùng người).Nàng là phi tử đã đóng rất nhiều quyền lực cho ta,nàng biết ta nói câu này có nghĩa gì không?</p><p>Nan Nan chơm chớp mắt,nói rất tỉnh:</p><p>-Chú ơi,tôi dốt văn lắm,chú nói tôi chả hiểu cái gì cả.À,nhưng mà tôi tính toán được phết đó,cũng giỏi vài mẹo hay lắm,có...</p><p>Nan Nan nói chưa xong,người con trai đó ngồi dậy và đi ra khỏi cửa trước sự khó hiểu của Nan Nan.Cố bé lúc đó chả nghĩ được gì và cứ ngồi im đó nghiêng đầu</p><p>Lượng Cửu, cận vệ của thái tử,đang đứng ngoài chờ.Thấy thái tử ra ngoài vội tiến lên cúi đầu hành lễ và đồng thời hỏi:</p><p>-Thái tử điện hạ, thế nào rồi?</p><p>-Cô ta không sao,với lại ta không thấy cô ấy có gì giống đóng kịch.Chuyện tạm thời thế này đã, ngươi tìm ai đó phù hợp để dạy lại cho cô ta quy tắc,phép lễ trong cung đi,đừng để như vậy mất mặt</p><p>-Thần đã rõ</p><p>Lúc ấy Nan Nan đang nằm thờ ơ,nước mắt ròng ròng.Bỗng nhiên có một thiếu nữ chạy vào, quỳ xuống đập đầu xuống đất.</p><p>-Nương nương thứ tội,là nô tỳ bất cẩn,đã khiến người ra nông nỗi này!</p><p>-Cô lại là ai thế?</p><p>-Hic ...nô tỳ là A Thi,nữ hầu cận của người....</p><p>-Ờ...</p><p>Nan Nan cảm thấy vô lực,mệt mỏi và lạ lẫm như bị lưu lạc nơi nào đó.Hazzz,mình chắc là xuyên không mất tiêu rồi,sao giờ.Á!Vui quá,xuyên không rồi!Ước mơ bấy lâu nay của mình thành hiện thực rồi!Nhất định phải chơi cho đã! Nan Nan cười rạng rỡ,sau đó cô bật nhảy khỏi giường</p><p>-Nương nương,người đi đâu vậy</p><p>-À,ta muốn ra ngoài ngắm cảnh chút</p><p>-Vậy thì nương nương thay đồ đã,để nô tỳ giúp người a</p><p>-Được đó,đồ cổ trang chắc là rất đẹp cho mà xem! Hí hí</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (31, 2, N'Quá khứ ta là ai', CAST(N'2021-09-11T19:48:24.880' AS DateTime), N'<p>Nan Nan thay y phục xong,cô vội chạy ra ngoài,chạy từ đông sang tây không biết mệt.Là người mê phim,cô đã từng mơ tưởng đến cuộc hành trình xuyên không đầy lí thú,và giờ đã thành sự thật.Cô bé vừa chạy vừa nhảy chân sáo ngắm cảnh xung quanh,cười nhe hết cỡ sung sướng ."À,phải rồi,ta muốn ra ngự hoa viên chơi".Suốt chuyến đi,A Thi mệt mỏi vì phải dẫn Nan Nan đi từ chỗ này ra chỗ khác<br></p><p>-Thái tử phi nương nương,đợi nô tỳ...nô tỳ không đuổi kịp...</p><p>-Cháu đâu có đi nhanh,cô vừa đi vừa tạo dáng thì chả chậm.Đi phải tự nhiên như này nè</p><p>-Nương nương,xin người đừng xưng hô như vậy.Nếu ai đó nghe thấy,nô tỳ chết mất!</p><p>A Thi đã phải dạy Nan Nan hét cách xưng hô đối với từng người và hầu như cô bé không để ý.Việc này có vẻ khá khó đối với cô bé,vì cô không hoàn toàn để ý vẻ ngoài già hơn tuổi của mình,nhưng cũng đành bắt buộc phải tập dần cho quen .Ngự hoa viên ở đây không giống như trong phim,nhưng thực sự rất đẹp.Lúc này,Nan Nan đi chậm lại ngắm cảnh,vừa đi vừa tâm sự với A Thi</p><p>-Tên của ta là gì?.. Ngươi kể hết mọi sự việc cho ta đi</p><p>-Vậy cho phép nô tỳ nói thẳng,người tên Giang Lăng Y,con gái của một công thần.Thái hậu yêu quý người nên...</p><p>-Ờ,cái đó ta hiểu..</p><p>-Nương nương,người rất yêu thái tử.Nhưng ả nha đầu đó luôn xen vào,ả ta là kẻ hai mặt,nương nương phải luôn cẩn thận.Xuất thân của cô ta cũng tương tự người,nhưng rất nhiều người bao che cho sự giả tạo của ả.Và..ai cũng nghĩ nương nương là kẻ xấu,chỉ có mỗi thái hậu là tin tưởng người..hic hic</p><p>Nói đến đó A Thi khóc,vì thương chủ nó quá.Nan Nan thấy vậy,an ủi một chút và thực ra cô chẳng quan tâm đến mấy chuyện này.Hazzz,chốn nội cung là vậy,có gì tốt đẹp đâu.Không sao cả,mình có thể dùng kinh nghiệm mọt phim của mình hí,xem nhiều phim như vậy,chả lẽ không học được tí mánh khóe nào,như Võ Tắc Thiên,Vị Ương,Lục Trinh .Với cả dù mới có tiểu học thì đầu óc vẫn là người đi trước thời chứ sao.Nan Nan suy nghĩ rất tự nhiên,đột nhiên cô nhớ ra:</p><p>-À,ta nhớ ra rồi,lúc đó tên thái tử có nói ta đố kỵ với Lạc...</p><p>-Dạ,chính là cô ta thưa nương nương và là trắc phi của thái tử điện hạ.Cô ta đã rất nhiều lần giở trò với người..</p><p>-Lạc ...Lạc gì nhỉ-Nan Nan hầu như không để tâm đến lời A Thi nói</p><p>Thấy chủ nhân đang nghĩ ngợi,A Thi im lặng không dám làm phiền.Bỗng dưng Nan Nan thốt lên</p><p>-À!Phải rồi,cô ta tên "Lạc Sườn"</p><p>A Thi nghe không hiểu gì cả,nhưng cô đã suýt bật cười.Coi như là "hết thuốc" với Nan Nan.Hai người đi dạo xung quanh hoa viên.Ở phía gần hồ có một cái chòi,Nan Nan chạy ra ngồi đó và ngắm hồ xanh.</p><p>-À,phải rồi,ngươi đi lấy chút bánh cho ta nha,ta chờ ở đây</p><p>-Dạ,nô tỳ ra Nội vụ phủ lấy</p><p>Nan Nan hiện tại khá hí hửng ở nơi cổ đại này,và điều cô hiện đang muốn nhất là nếm thử những món ăn ở đây.Bỗng nhiêm để ý,cô nghe thấy tiếng nói chuyện của ai đó sau một bụi hồng to.Nan Nan từ từ đi nhẹ ra đó,ngó đầu ra xem.Cô thấy tên thái tử lần trước và hiện đang đứng cùng một cô gái rất đẹp.Ánh mắt tên đó nhìn cô gái khá tình cảm,Nan Nan đoán có thể đây là "Lạc Sườn".Quen thói tò mò,Nan Nan đứng đó ngó xem họ định tình tứ không,và cô cũng chưa thấy cảnh đó ngoài đời bao giờ.Đột nhiên trong đầu cô hiện lên câu nói của mẹ:</p><p>-"Lần sau mày mà còn ngó vớ ngó vẩn tao đảm bảo tối ông kẹ bắt mày!"</p><p>Nan Nan giật mình nhìn lại hiện tại.Thôi không ngó nữa,sợ lắm.Nan Nan từ từ quay lại rồi dần đi khỏi đó.Lúc đó không cẩn thận cô tạo ra một tiếng động,tên thái tử nghe thấy,nhảy ra tóm từ đằng sau như tóm một tên trộm</p><p>-A!Bỏ ra đau quá!Ngài làm gì vậy?!</p><p>-Thái tử phi,ngươi làm gì ở đây vậy?</p><p>-Ờ thì,chả lẽ không được ra ngoài chơi chắc,xí!</p><p>Nan Nan bấy giờ để ý người phụ nữ đứng phía sau,tên thái tử thấy vậy nói luôn:</p><p>-Không giấu gì ngươi,đây là trắc phi,tên..</p><p>-À!Cô đúng là Lạc Sườn,eo ơi xinh quá!</p><p>-Nàng ăn nói cẩn thận,đây là Lạc thị</p><p>-À,xin lỗi,rất vui được gặp cô,Lạc Thị Sườn híhí</p><p>Lạc thị- tên thật Lạc Tịnh Hy- nhìn Nan Nan với ánh mắt khá khó chịu.Tên thái tử không hề vừa lòng,nhưng không thể phủ nhận là hắn suýt cười trước lời nói của Nan Nan."Con nha đầu khốn nạn,đầu óc ngu đần mà còn dám xúc phạm ta.Ngươi cẩn thận,giờ ngươi đần độn như vậy,ta đối phó với ngươi là chuyện vô cùng nhỏ" Lạc Hy nghĩ</p><p>-Thái tử điện hạ,thần thiếp xin đi trước,không làm phiền hai người</p><p>-Được rồi,tối nay ta gặp lại ái phi</p><p>Nan Nan vẫn dán mắt theo Lạc Hy, cô bé rất hiếm khi gặp một mỹ nữ ngoài đời</p><p>-Xinh thật đó!Chẳng trách ngài thích cô ấy,mà cô ý mấy tuổi rồi?</p><p>-Nàng thực sự không nhớ gì về Lạc thị,người mà nàng ghét nhất</p><p>-Ầy!Ta cũng biết thương hoa tiếc ngọc.Ngài đừng lo lắng làm gì,ta không biết mình trước đây là người thế nào,nhưng mà giờ ta hoàn toàn là một con người khác.Nên là cho dù như nào thì mong ngài đừng đối xử với ta giống thái độ trước,ok!</p><p>-Ô-ke?Thái tử nhắc lại từ khó hiểu của Nan Nan</p><p>Nói đến đó,Nan Nan cười, vỗ vào vai thái tử.Liếc sang thấy A Thi đã mang bánh tới</p><p>-Ê!Ta đây nà!</p><p>Nan Nan vội vàng chạy ra chỗ nhà chòi.Nan Nan thích thú với món bánh cổ này và ngồi xuống ăn "ngấu nghiến",vừa ăn vừa khen ngon.Lúc đó nghĩ chắc là thái tử đã đi,nhưng hắn lại ở phía sau nhìn cô bé."Nàng ấy thực sự đã thay đổi?Hay vẫn vì sợ tội giả quên?"Có lẽ mối nghi của anh vẫn vương vấn chưa dứt.Cuối cùng,tên thái tử đó đã nghĩ đến việc thử Nan Nan</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (31, 3, N'Một con người mới', CAST(N'2021-09-11T20:23:55.783' AS DateTime), N'<p>Trưa hôm đó,thái tử mời Lạc thị đến dùng bữa và nói về kế hoạch để thử Nan Nan.</p><p>-Về kế hoạch này,phải khổ nàng rồi.Ta muốn làm Giang thị tin là nàng đang tư thông với Thái lý Đô đốc.Miếng ngọc bội ta tặng nàng,chắc chắn Giang thị biết hình thù của nó..Chúng ta để miếng ngọc đó ở phủ Thái lý Đô đốc,làm bằng chứng cho việc nàng tư thông với ông ta,nếu Giang thị đang giả vờ,cô ta nhất định sẽ lấy nó để lật đổ nàng,nàng cũng biết cô ta rất ghét nàng mà.</p><p>-Vậy thái tử định dụ tỉ tỉ đến phủ Thái lý Đô đốc và cố tình để tỉ ấy thấy miếng ngọc bội</p><p>-Đúng vậy</p><p>-Thái tử anh minh,nhưng tỉ ấy không.ngốc.Nhỡ tỉ tỉ nghi ngờ thì sao?</p><p>-Chuyện đó không khó,chúng ta sẽ dùng sức mạnh của lời đồn</p><p>-Ý thái tử là....</p><p>Thái tử gật đầu,Lạc thị cảm thấy đây là việc vô cùng có lợi cho cô ta,nếu thái tử phi giả quên,sau khi bị bại lộ thì nhất định sẽ lãnh hậu quả,còn dù mất trí thật,nhìn cô ta ngu xuẩn như vậy,y sẽ hành hạ cô cho tới chết,để trả thù.</p><p>Sáng đó,Nan Nan dậy sớm,cô ra ngoài vặn người,uốn dẻo.A Thi vội vàng chạy ra chỗ Nan Nan</p><p>-Nương nương,người đi nhanh quá.Dạo này nhìn người thật hiếu kì</p><p>-Không có gì,vận động cho khỏe chứ.Không như mấy cô chỉ biết làm duyên làm dáng,chân tay ẻo lả</p><p>-Dạ,nương nương,hôm nay thái tử mời người đến dùng bữa sáng.Mời người vào thay đồ</p><p>-Ok</p><p>Nan Nan vào phòng,những tì nữ mang trang phục cho cô,toàn mấy loại áo gấm,phượng.Màu vàng,đen,đỏ quý phái,sặc sỡ,quyền quý.Nhưng Nan Nan ko ưa</p><p>-Cái gì nè,đâu phải đi dự tiệc,các cô đưa cho ta mấy bộ lòa xòa thế này,chưa mặc đã thấy ngứa à</p><p>-Ơ...trước đây người rất thích mặc...</p><p>-Ta trước khác,giờ khác.Mau lấy mấy bộ mà trẻ trung,dễ thương cho ta nha</p><p>A Thi lấy cho Nan Nan một bộ màu hồng nhạt.Tuy đối Nan Nan bình thường nhưng đối với bọn họ,đây là lần đầu tiên chủ mình ăn mặc khác.Nan Nan thay xong,ai cũng trố mắt kinh ngạc.Nhìn thái tử phi như là một người hoàn toàn khác,trước đây nhìn cô trang trọng,đẹp quý phái,giờ nhìn cô ăn mặc màu đơn giản,trang điểm nhẹ nhàng,nhìn khác trước vô cùng,trông vô cùng dễ thương.</p><p>-Nương nương,người xinh quá</p><p>-Chuyện thường,ta giỏi mà!</p><p>Nan Nan nhảy sáo đến cung thái tử,đi một lúc thì nghe đám nữ tì đồn rất nhiều,đi đến đâu cung thấy một đám xúm xụm lại</p><p>-A Thi,ngươi ra xem bọn họ lèo xèo gì thế?</p><p>A Thi ra nghe ngóng,rồi ra chạy lại,nói thầm vào tai Nan Nan:</p><p>-Nương nương,nô tỳ nghe bọn họ nói,Lạc thị đang tư thông với Thái lý Đô đốc.Ko thể tin được!</p><p>-Tư thông!Là cái gì vậy</p><p>-Là...kiểu là ngoại tình ý thưa nương nương</p><p>-Hả!Đùa chắc,đường đường mang tiếng yêu nhau,mà cô ta lại ngoại tình sao.</p><p>Nan Nan nghĩ đi nghĩ lại.Hazz,dựa vào kinh nghiệm xem phim cổ trang của mình,Lạc Sườn nhìn là phi của thái tử,cớ gì lại đi...Với cả,mình nhìn bọn họ cũng thân thiết mà,sao lại thế được.Nan Nan nghĩ ,rồi cô nói:</p><p>-Thôi!Mấy người đó chắc nói bừa thôi,việc ko có bằng chứng,chúng ta ko bàn luận linh tinh.</p><p>-Dạ</p><p>Nan Nan đi dạo tiếp,đột nhiên có một cô gái chạy đến,quỳ xuống khóc lóc trước mặt Nan Nan:</p><p>-Thái tử phi xin giúp thần thiếp,thiếp là Thái lý phu nhân.Việc chàng tư thông với người khác,xin người làm chủ.</p><p>-Ây da.Nhờ ta,sao lại nhờ ta?</p><p>-Vì...có lẽ chỉ có người mới trị được ả tiện nhân kia.</p><p>-Lạc.../Dạ,đúng vậy.</p><p>-Thôi được rồi,ta cũng không muốn trơ mắt nhìn ngơ,đừng lo,ta sẽ giúp.</p><p>-Đa tạ,đa tạ thái tử phi!</p><p>Lúc đó thái tử đang trong thư phòng,Lượng Cửu vào,hành lễ, bẩm báo</p><p>-Thái tử,Thái lý phu nhân đã thuyết phục xong thái tử phi rồi.</p><p>-Rất tốt,đi!Ta muốn xem kịch hay rồi</p><p>Nan Nan cùng A Thi đến phủ Thái lý Đô đốc,không tìm đâu xa,Nan Nan nhặt được ngay một miếng ngọc bội trắng rất đẹp.A Thi hốt hoảng nói:</p><p>-Đây chính là miếng ngọc bội thái tử tặng cho Lạc thị,thái tử phi,tốt quá,chúng ta có thể trả thù ả rồi</p><p>-Này này,thù oán gì ở đây.Ta nói lần cuối cùng,ta giờ Khác,nhớ chưa!!!</p><p>A Thi cúi gằm mặt:</p><p>-Dạ</p><p>-Với cả,ngươì nghĩ xem,lần đầu thấy bọn họ,ta thấy họ nhìn nhau ân ái vô cùng,Lạc thị không thể có chuyện qua lại với người khác được,hơn nữa,cô ta là phi,cô ta qua lại với kẻ tiểu nhân,cô ta được lợi gì.Ta thấy trong vụ này,cô ấy bị hại rồi.</p><p>-Nương nương,người phân tích thật có lý-A Thi cười vỗ tay</p><p>-Đương nhiên,ta ý,ngươi biết ta học khôn ở đâu không,chính là ở phim cổ trang đấy.Mẹ ta không cho xem,ta vẫn cứ xem.Há há</p><p>-Vậy,chuyện này phải giải quyết thế nào thưa nương nương?</p><p>-Ta thấy tốt nhất,là cứ thông báo cho thái tử đã</p><p>Thái tử và Lượng Cửu nghe hết cuộc trò chuyện đó,chính thái tử cũng ngạc nhiên,nhưng cũng cười:</p><p>-Lượng Cửu,xem ra,là ta nghĩ nhiều rồi.</p><p>-Thái tử,chính thần cũng khá kinh ngạc.Vậy,về chuyện trước đây....</p><p>-Nàng ta giờ đã vậy rồi,ta cũng không truy đến cùng nữa.Cứ coi như là cho cô ta một cơ hội sống lại</p><p>Hiện giờ thái tử đã hoàn toàn bỏ hoài nghi đối với Nan Nan,nhưng mà cảm xúc đối với Giang thị vẫn chưa dứt...</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (32, 1, N'Chương 1: Trọng sinh ngộ tứ gia', CAST(N'2021-09-12T08:19:32.853' AS DateTime), N'<p>Đầu hảo vựng, ngày hôm qua tra tư liệu đến hai điểm mới ngủ, phòng ngủ người đều đi ra ngoài sao? Như thế nào như vậy an tĩnh? Đây là nơi nào? Rất quen thuộc a, hồng nhạt tiểu giường, hồng nhạt án thư, như thế nào giống như ta giờ hầu phòng, này cổ xưa gương, oa dựa, nima ta đây là nằm mơ sao? Véo véo chính mình mặt, đau quá, chẳng lẽ ta cẩu huyết trọng sinh? Một lần nữa trở lại ta khi còn nhỏ? Nhìn trong gương ngây ngốc cột lấy hai cái bím tóc, thế nhưng còn có tuyệt tích thật lâu đầu lĩnh, ăn mặc thổ rớt tra tiểu váy, khuôn mặt cũng phấn nộn nộn, còn mang khăn quàng đỏ, trên váy đừng ba đạo côn, oa nga, ta hoa lệ lệ hôn mê.</p><p>Ở tỉnh lại, mép giường ngồi Liễu a di, sờ sờ ta đầu “Nhưng tính hạ sốt, Lâm Lâm có đói bụng không, a di cho ngươi nấu rau dưa cháo, ngươi đứa nhỏ này nhưng làm ta sợ muốn chết, ngươi nói như thế nào đi học liền hôn mê, phát sốt như thế nào không cùng a di nói đi, ngươi nhị ca bối ngươi trở về thời điểm nhưng đem ta sợ hãi.” Đã lâu không có người như vậy quan tâm ta, không khỏi đỏ vành mắt.</p><p>Ta lúc còn rất nhỏ mụ mụ liền qua đời, chỉ nhớ rõ mụ mụ thực ôn nhu xinh đẹp, ba ba từ bộ đội chuyển nghề sau bị phân đến Công Thương Cục đi, cả ngày vội không thấy được bóng người, ta có thể nhớ tới sơ trung dừng chân trước cơ bản đều là ở Liễu a di gia trụ, Liễu a di là mụ mụ bạn tốt, mụ mụ qua đời trước là danh biên tập, Liễu a di là cái tác gia, hai người tốt cùng một người dường như, ta ba cùng tiền thúc thúc cũng coi như bạn cũ, tiền thúc thúc so với ta ba đại hai cấp, vẫn luôn lưu tại bộ đội, phát triển cũng không tệ lắm, ta cùng ba ba đi Thượng Hải sau liền mất đi liên hệ, tiền thúc thúc cùng Liễu a di thực ân ái, ta ở nhà hắn ở thật nhiều năm, cũng chưa thấy bọn họ hồng quá mặt, nhà bọn họ tổng cộng có bốn cái nhi tử, hai đối song bào thai, ta khi còn nhỏ lão cũng làm không rõ ai là ai, đại ca nhị ca siêu giống, thân cao thể trọng đều giống nhau, có đủ bt, tam ca tứ ca còn tốt một chút, ít nhất tứ ca sau lại vóc dáng so tam ca cao một đầu, kỳ thật bọn họ hai cùng ta cùng tuổi, bất quá so với ta lớn mấy tháng.</p><p>Cùng Liễu a di đi nhà ăn, Liễu a di gia rất lớn, không phải bộ đội phân phòng ở, chính mình mua độc đống nhà lầu hai tầng, Liễu a di nhà mẹ đẻ siêu có tiền, ta khi còn nhỏ gặp qua nhất có tiền chính là bọn họ gia, ta khi còn nhỏ cùng tam ca tứ ca quan hệ thực hảo, vừa thấy bọn họ đều ở nhà ăn, liền chạy tới chào hỏi “Tam ca, tứ ca các ngươi đã trở lại” tam ca tiểu đại nhân dường như vỗ vỗ ta đầu “Lâm Lâm, hảo? Ta đem ngươi cặp sách lấy về tới, một hồi cơm nước xong nói cho ngươi lão sư lưu tác nghiệp.” Còn cùng khi còn nhỏ giống nhau, thích lên mặt dạy đời tiểu bao tử, trước kia tứ ca liền hoạt bát nhiều, cùng ta quan hệ cũng tốt nhất, liền tính sau lại đi Bắc Kinh đọc tiến sĩ sinh tái ngộ đến đều một chút cũng không mới lạ, nhưng tứ ca chỉ là ngẩng đầu nhìn ta liếc mắt một cái, ánh mắt kia không đúng, thực lạnh nhạt, hơn nữa mặt vô biểu tình, tứ ca tuyệt đối không phải như thế, ta sát sẽ không gặp được đồng loại đi, ta trọng sinh, chẳng lẽ tứ ca cũng là cái xuyên qua, xem người khác đều không cảm thấy kỳ quái bộ dáng, xem ra hắn tới có một đoạn thời gian, tò mò đã chết, thật vất vả đều ăn cơm, ta túm tứ ca đi ta phòng, nói làm hắn nói cho ta tác nghiệp</p><p>“Ngươi không phải tiền dục, ngươi là ai?” “Ngươi sốt mơ hồ? Ta không phải tiền dục ta có thể là ai?” “Thiếu xả, ta không biết ngươi như thế nào đã lừa gạt thúc thúc a di, tìm cái gì lý do, ta sẽ không tin tưởng ngươi, ta đối tiền dục rất quen thuộc, chúng ta cộng đồng sinh sống 6 năm, sau khi lớn lên ở Bắc Kinh cũng lui tới chặt chẽ, tiền dục ánh mắt trong trẻo, tâm tư đơn thuần, hoạt bát hiếu động, vẫn luôn như thế, sao có thể sẽ là ngươi bộ dáng này, ngươi hiện tại vừa thấy liền không phải mười tuổi tiểu hài tử, lừa ai đâu?” Hắn rất có hứng thú nhìn ta “Xem ra, ngươi mới là không bình thường cái kia, cái gì sau khi lớn lên Bắc Kinh, ý của ngươi là ngươi đến từ chính tương lai?” Ai! Ta thật bổn, lời nói không bộ ra tới, như thế nào chính mình trước chiêu, ta nhận định hắn là đồng loại, cũng không giấu giếm, đem ta đến từ với 2012 năm sự đều nói cho hắn, hắn nhìn ta như suy tư gì bộ dáng, xem ra thật đúng là cẩn thận đâu, lại đa nghi như vậy, tiến vào sau lập tức phất rớt ta túm hắn tay động tác, thối lui đến ly ta 1 mét xa khoảng cách, ta lớn mật suy đoán “Ngươi không phải hiện đại người? Ngươi cái gì triều đại? Phản xuyên? Ta dựa, mới mẻ!” Hắn nhíu nhíu mày “Nữ hài tử nói chuyện như thế thô tục, thật kỳ cục.” Hắn nói càng thêm chứng thực ý nghĩ của ta, nếu hỏi không ra tới, lựa chọn công tâm vì tốt nhất.</p><p>“Ta cũng sẽ không hại ngươi, ta cũng là khủng hoảng a, không nghĩ tới chính mình hồi trọng sinh, thật vất vả biết có cùng ta giống nhau người, thật giống như ở xa lạ trong đám người tìm được rồi bạn tốt giống nhau, có thể không hưng phấn sao, nói cho ta đi, ta tuyệt đối sẽ không cùng người khác nói, ta chính mình cũng tình huống này, ngươi còn chưa tin ta?” Túm hắn tay một trận làm nũng, phất rớt tay của ta, thối lui đến an toàn khoảng cách, “Kỳ thật nói cho ngươi cũng không sao, mặc dù ngươi nói ra đi cũng sẽ không có người tin, ta tới có một năm, dần dần thích ứng nơi này sinh hoạt, ta nhớ rõ ta tới trước là Khang Hi 56 năm, Tây Bắc quân toàn quân huỷ diệt, hãn a mã tức giận, chuẩn bị phái binh tiêu diệt Cát Nhĩ Đan, ta cũng không biết ta vì cái gì sẽ xuyên qua đến thời đại này, vừa đến khi ta tra xét rất nhiều sách sử, biết Thanh triều sớm đã diệt vong, biết chính mình làm ngắn ngủi mười mấy năm hoàng đế, tới lâu rồi, tiền sinh càng như là tràng mộng.”</p><p>Ta kinh ngạc nhìn hắn, hôn mê, ta muốn hôn mê “Ngươi chẳng lẽ là Ái Tân Giác La Dận Chân, tứ gia?”</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (32, 2, N'Chương 2: ', CAST(N'2021-09-12T08:20:11.267' AS DateTime), N'<p>Hắn cau mày, không vui nhìn ta, “A, sorry, không nên trực tiếp xưng hô ngài tên huý, ngài đừng để ý a?” Nhìn kia đông chết người ánh mắt, lập tức lui ra phía sau một đi nhanh, thượng đế nha, ngươi vẫn là làm ta trở về đi, cùng như vậy lạnh băng uy nghiêm chủ nhân cùng nhau sinh hoạt, còn không bằng giết ta đâu, ta còn là càng muốn trở về hoàn thành ta tiến sĩ luận văn. Hắn nhìn ta vẻ mặt kinh sợ thần sắc, càng vì không vui, cả người tản ra khí lạnh “Ngươi tựa hồ thực sợ hãi ta? Bởi vì là trong lịch sử xét nhà hoàng đế? Động bất động liền chém người?” Ta lập tức chân chó nói “Sao có thể a, kia đều là không hiểu biết ngài người loạn viết, liền tính là có, ngài này không phải Khang Hi 56 năm liền xuyên tới sao, kia sẽ ngài còn không phải Ung Chính đâu, ngài khả năng không biết, ở hai mươi năm sau ngài có bao nhiêu thu kính yêu, lão nhiều trạch nam trạch nữ manh ngài, liền ngài trong phủ chư vị phu nhân đều bị đại gia ghen ghét đã chết, hận không thể xuyên thành các nàng.” Xem hắn cái hiểu cái không, nhưng là cuối cùng không bỏ khí lạnh, trộm thở phào.</p><p>Xem hắn vẻ mặt trầm tư thần sắc, phỏng chừng là nghĩ đến trước kia sinh hoạt, hoặc là hắn những cái đó kiều thê mỹ thiếp, ta cũng không dám ra tiếng, phạt trạm dường như cách hắn rất xa, tam ca tiến vào khi ta đang cúi đầu chơi chính mình ngón tay đâu, tam ca nghi hoặc nhìn xem ta, lại nhìn nhìn thần sắc khôi phục như thường tứ gia, “Lâm Lâm làm sao vậy, vừa vặn điểm, liền tại đây phạt trạm a? Tác nghiệp lão tứ nói cho ngươi sao?” “Còn không có, tam ca ngươi nói cho ta đi” chạy nhanh chạy trốn mới là thật sự, tứ gia từ ta cặp sách lấy ra sách giáo khoa, lạnh lùng nói “Ta cùng nàng nhất ban, vẫn là ta nói cho nàng đi, lại đây” tứ gia nói nào dám không nghe a, nhìn thấu càng người ai không biết tứ gia rất hẹp hòi a, quay đầu lại đáng thương hề hề nhìn mắt tam ca, chầm chậm dịch đến án thư, tứ gia ở sách giáo khoa thượng cắt vài đạo đề, liền cùng tam ca đi ra ngoài “Nhanh lên viết, một hồi ta lại đây kiểm tra” nima, ta đều mau tiến sĩ tốt nghiệp, hiện tại còn muốn học lại tiểu học, tưởng tượng đến còn muốn lại tham gia một lần trung khảo, thi đại học, thi lên thạc sĩ, khảo bác ta liền các loại trứng đau, tiểu học năm 3 chương trình học còn dùng ngươi kiểm tra, tuy nói tứ gia rất mạnh, thực am hiểu thuật số, bao nhiêu, nhưng là có thể mạnh hơn tỷ? Tốt xấu ta còn là tiến sĩ đâu, hơn nữa vẫn luôn là khoa học tự nhiên.</p><p>Thành thật làm xong tác nghiệp, ngẫm lại về sau làm sao bây giờ, không cần ở Liễu a di gia ở, về nhà chính mình một người hẳn là cũng có thể, bất quá khẳng định không bị cho phép, ly trung học còn có ba năm đâu, ta khi còn nhỏ kém một phân chưa tiến vào tỉnh trọng điểm, tiến thị trọng điểm, lần này nhất định phải thi được tỉnh trọng điểm, ly a di gia rất xa, có thể không cần trở về, rời xa tứ gia, chính miên man suy nghĩ đâu, không biết khi nào tiến vào tứ gia cầm lấy ta sách bài tập nghiêm túc kiểm tra khởi ta tác nghiệp tới, ta chạy nhanh nhường ra chỗ ngồi, thối lui đến một bên đứng, “Ân, đều làm đúng rồi, ngươi này tự như thế nào khó coi như vậy? Từ hôm nay trở đi cho ta luyện tự?” A? Luyện tự? Ta thiệt tình cảm thấy luyện tự không có gì dùng nói, tuy rằng ta tự vẫn luôn rất khó coi, nhưng là cũng rất ít viết, thuần một sắc máy tính đánh chữ, ai! Tứ gia nói không dám làm trái a, tuy rằng đầy bụng bực tức, vẫn là ngoan ngoãn ân thanh. Xem ta như vậy nghe lời, tựa hồ vị này gia thực vừa lòng, gật gật đầu “Ngươi nói ngươi đến từ 2012 năm? Khi đó ngươi đang làm cái gì? Cho phép nhân gia sao?”</p><p>“Ta tới này phía trước, đang ở viết ta tiến sĩ luận văn, ta nghiên cứu phương hướng là ngẫu hợp tràng, 28 tuổi, nói qua vài lần luyến ái, còn không có kết hôn, a cũng chính là không thành thân.” Lại nhíu mày, thật khó hầu hạ a “Nói qua vài lần luyến ái? Thân là một nữ tử, như thế nào như thế không bị kiềm chế, xem ra làm ngươi sống lại một lần là cần thiết. Hừ! Hảo hảo luyện tự” vung môn đi ra ngoài, nima, chính là tứ gia ta cũng muốn mắng, ngươi là đồ cổ ta không phải hảo không, ngươi đến từ cổ đại ta chính là đến từ tương lai hảo không? Cái gì kêu không bị kiềm chế a, giống ta 28 tuổi vẫn là cái chỗ nhi, ngươi đương rất nhiều a? Ta yêu đương làm sao vậy, e ngại ngài chuyện gì, thật là cùng hắn câu thông vô năng, lấy tới bổn tân hoa bảng chữ mẫu thở phì phì bắt đầu luyện tự.</p><p>Ta tiểu học khi, vẫn luôn làm 6 năm lớp trưởng, ba năm đại đội trưởng, lão sư đều thực thích ta, bởi vì vóc dáng không cao, bụ bẫm thực đáng yêu, học tập lại hảo, thường xuyên tham gia các loại thi đua, này không mới vừa đi học đã bị các lão sư cấp vây quanh, mồm năm miệng mười hỏi ta hảo không hảo, cần không cần nghỉ ngơi gì đó, thấy chúng ta lão ban tâm lý còn rất cảm khái, ta thượng sơ nhị thời điểm, chúng ta lão ban liền qua đời, lúc ấy khóc thực thương tâm, ta tiểu học khi vóc dáng vẫn luôn thực lùn, đều ngồi ở tiền tam bài, chúng ta đều là đại trường điều cái bàn, giống sau lại hội trường bậc thang cái loại này, cho nên trung gian bài đều là bốn người một bàn, bên cạnh hai bài mới là hai người bàn, ta vẫn luôn ngồi ở trung gian đệ tam bài, ta cảm thấy vị trí này đối thị lực tốt nhất, ngồi cùng bàn là hầu dũng, Lý lượng, trương lệ, hầu dũng hiện tại còn tỏa cùng tiểu khoai tây dường như, sau lại ta thượng sơ tam khi gặp được hắn, tiểu tử này lẻn đến 190, cùng hắn nói chuyện kia kêu một cái mệt, Lý lượng lớn lên thật xinh đẹp, giống cái tiểu cô nương dường như, ca hát rất êm tai, tiểu học thời điểm thường xuyên tham gia ca xướng thi đấu, trương lệ là chúng ta ban học tập uỷ viên, chính là các bạn học ghét nhất cái loại này thường xuyên cáo lão sư loại hình, ta cũng vẫn luôn không thích nàng, thẳng đến cao trung khi nàng cùng chúng ta ban heo ở bên nhau mới đối nàng đổi mới, cùng ta tốt vài người xem ta ngồi vào trên chỗ ngồi đều lại đây cùng ta chào hỏi, tiểu học khi thật không có gì nam nữ chi phân, khi đó người đều đặc đơn thuần, không giống hiện tại bọn nhỏ, cho nên kề vai sát cánh cũng không có gì ghê gớm. “Lâm lâm lại đây” vừa nghe tứ gia động tĩnh ta liền da đầu tê rần, vẫn là thoát khỏi đồng học đi đến mặt sau đệ nhị bài, cúi đầu trạm hảo.</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (32, 3, N'Chương 3: ', CAST(N'2021-09-12T08:20:45.027' AS DateTime), N'<p>“Tứ gia, ngài cấp điểm mặt mũi biết không? Tốt xấu ta hiện tại là lớp trưởng, vẫn là đại đội trưởng, ngươi muốn huấn về nhà ở huấn thành sao?”</p><p>“Một nữ hài tử cùng nam sinh kề vai sát cánh, thành bộ dáng gì? Ngươi còn sĩ diện? Sĩ diện còn như vậy? Hôm nay tan học cùng ta cùng đi mua giấy Tuyên Thành cùng mực nước, hảo hảo luyện tự, ma ma tính tình của ngươi.”</p><p>Mới vừa lên lớp 3 chúng ta liền có chữ to khóa, ta thực chán ghét mực nước hương vị, trước kia chữ to khóa tác nghiệp đều là tứ ca giúp ta viết, hảo hoài niệm tứ ca a, cũng không biết linh hồn của hắn đã chạy đi đâu, ta hiện tại tình nguyện luôn là bắt lấy ta học tập tam ca cùng ta nhất ban, ta chán ghét viết chữ to, bút máy tự ta đều không yêu luyện, ủy ủy khuất khuất nhìn hắn, nhân gia gia căn bản không ăn này bộ, đành phải hậm hực hồi chính mình chỗ ngồi.</p><p>“Đầu nhi, ta phát hiện tiền dục này một năm biến rất quái lạ, không yêu cùng chúng ta chơi, cũng vẫn luôn không phản ứng ngươi, nay cái làm sao vậy? Hắn vì cái gì nói ngươi a? Ngươi là lớp trưởng, hẳn là ngươi quản hắn mới đúng.” Hầu dũng tức giận bất bình nói, “Ai, các ngươi không hiểu, ta quản ai đều được, vị này gia ta nhưng quản không được, chỉ có ta ai huấn phân, hiện tại buộc ta luyện chữ to, sầu chết ta.”</p><p>Cũng may khóa gian tứ gia chính mình đọc sách, cũng hoàn toàn không phản ứng ta, ta cùng tiểu học khi tốt nhất bằng hữu vương diễm chạy tới trường học tiểu siêu thị mua 5 mao tiền nước có ga đường, thật hoài niệm a, tiểu học khi yêu nhất, sau lại không biết như thế nào tuyệt tích, một phân tiền một cái, siêu tiện nghi, ngọt ngào trung gian còn có một chút nước có ga.</p><p>Giữa trưa ăn cơm, tam ca sẽ tìm đến ta cùng tứ ca cùng nhau ăn, chúng ta trường học không có nhà ăn, đều phải chính mình mang cơm, tứ gia đối ăn đồ vật thật đúng là không chọn, nhưng là cần thiết vệ sinh, chán ghét đồ ăn đặt ở một cái hộp cơm, hắn đều là mang hai cái hộp cơm, một cái trang đồ ăn, một cái trang cơm, sức ăn rất nhỏ, ta cũng siêu không yêu ăn cơm hộp, tái hảo đồ ăn ở hộp phóng thượng một buổi sáng đều làm ta ghê tởm, ta trên cơ bản là như thế nào mang đến, như thế nào mang về, mua đồ ăn vặt đương bữa ăn chính, nguyên lai tam ca sẽ lải nhải vài câu, hiện tại tứ gia mới mặc kệ cái này đâu, buộc ta cùng hắn cùng nhau ăn cơm, “Về sau đem ngươi sinh hoạt phí nộp lên trên, cả ngày ăn này đó lung tung rối loạn, cơm cũng không đứng đắn ăn, ngươi tưởng vóc dáng vẫn luôn trường không cao?” Tam ca còn rất là đồng ý dường như gật đầu, vui sướng khi người gặp họa dường như nói “Lâm Lâm, trước kia nói ngươi đều không nghe, hiện tại lão tứ cũng không quen ngươi, xem ngươi làm sao bây giờ?” “Tứ gia, có thể hay không cho ta chừa chút tiêu vặt a?” “Không được, về sau muốn mua cái gì xin chỉ thị xong lại nói” ta buồn bực không nghĩ nói chuyện, quả nhiên cùng này quy mao người ở bên nhau tuyệt đối không ngày lành quá. Tam ca hỏi ta vì cái gì kêu tứ gia, ta trộm cùng tam ca nói “Ngươi không thấy tứ ca ngày càng uy nghiêm, giống tiểu lão đầu dường như sao?” Tam ca thế nhưng cực kỳ nghiêm túc gật gật đầu, đem ta nhạc quá sức, không xong tứ gia một cái xem thường.</p><p>Tan học sau ngoan ngoãn cùng tứ gia đi mua mực nước, bút lông, giấy Tuyên Thành, về nhà nộp lên trên sinh hoạt phí, làm xong tác nghiệp, liền bắt đầu luyện tự, thật là quá chán ghét mực nước xú vị, tứ gia đối loại này giản dị hình mực nước cũng rất là không kiên nhẫn, nhưng là tìm không thấy tốt, cũng chỉ có thể chắp vá, vẫn luôn biết Ung Chính tự đó là tương đương có trình độ, có cảnh giới, tuy rằng ta không lớn sẽ thưởng thức này đó, chính là vẫn là nhìn ra được tứ gia tự là thật là đẹp mắt, cho ta viết thiên sử ký Ngô quá bá thế gia kêu ta vẽ lại, còn không cho ta ngồi, chỉ có thể đứng viết, không biết trạm lâu rồi sẽ giãn tĩnh mạch a?</p><p>Thư pháp thứ này cùng hội họa giống nhau đều là phải có nghị lực cùng kiên nhẫn, mười năm mài một kiếm loại hình, mặc dù ngươi là thiên tài cũng muốn hạ làm việc cực nhọc, ta người này chính là ba phút nhiệt độ, từ trước đến nay không có gì nghị lực, nguyên lai tuyển chuyên nghiệp cũng là vì hứng thú nơi, vẽ lại một nửa liền có điểm không kiên nhẫn, nhìn đông nhìn tây muốn tìm lấy cớ khai lưu, người tứ gia đầu đều không nâng, “Ngươi nếu là lâm không xong, nay cái cơm chiều liền không cần ăn, ở thêm một thiên bản kỷ” ai! Tứ gia quả thực quá không phúc hậu, ta tự viết khó coi lại làm sao vậy, ta liền luyện cả đời cũng không đuổi kịp ngươi, luyện tới có ích lợi gì a, ta hiện tại thật là không chỉ có tự do thân thể không có, kinh tế cũng độc lập không được, hiện tại hảo tưởng ta ba sớm một chút lãnh ta về nhà a.</p><p>Khó khăn nhẫn nại tính tình vẽ lại xong, rốt cuộc có thể ăn cơm chiều, hiện tại đại ca nhị ca đều mới vừa thượng mùng một, ở trường học dừng chân, tiền thúc thúc cũng chỉ có thể ở nghỉ khi trở về, trong nhà liền Liễu a di, tam ca, tứ gia cùng ta, “Lâm Lâm, ngươi tứ ca thư pháp được cả nước thanh thiếu niên thư pháp đại tái quán quân, có 3000 khối tiền thưởng đâu, còn bị trứ danh thư pháp gia cung lão sư thu làm đệ tử đâu, làm hắn minh cái thỉnh chúng ta nương mấy cái ăn cơm được không?” Ta xem tứ gia khóe miệng trừu trừu, cũng là liền tứ gia này trình độ hẳn là khinh thường làm người đồ đệ đi, đến nỗi cùng giống nhau tiểu thí hài thi đấu liền tính thắng cũng thắng chi không võ, không có gì hảo đáng giá chúc mừng, chính là 3000 đồng tiền ở chín mấy năm cũng không tính thiếu, khi đó vạn nguyên hộ vẫn là cái rất quang vinh từ đâu, bất quá hướng tứ gia muốn đồ vật ta nhưng không kia gan “Ta không dám nói, a di vẫn là ngươi nói đi” “Lâm Lâm, ta phát hiện mấy ngày nay ngươi như thế nào như vậy sợ hãi ngươi tứ ca a, tiểu tử này này đã hơn một năm là thay đổi tính tình, không thích nói chuyện, tính tình cũng lãnh, một chút đều không có trước kia hoạt bát, cũng không phải là rất thương ngươi sao, đừng sợ, ta còn trông cậy vào ngươi tương lai gả nhà của chúng ta cho ta làm con dâu đâu.”</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (33, 1, N'Chương 1', CAST(N'2021-09-12T08:27:13.110' AS DateTime), N'<p class="MsoNormal">8 nguyệt 15 hào, giang thành một trung cao tam tân giáo khu.<o:p></o:p></p><p class="MsoNormal">Nghỉ hè kết thúc, lại là quen thuộc khai giảng quý, ước chừng
là thời gian quá dài chơi điên rồi, sở hữu học sinh nhìn đều là uể oải ỉu xìu.<o:p></o:p></p><p class="MsoNormal">Nện bước đau kịch liệt, phảng phất mất đi mộng tưởng cùng
linh hồn.<o:p></o:p></p><p class="MsoNormal">“A, hảo phiền, ta tổng cảm thấy hôm qua mới nghỉ, như thế
nào hôm nay liền khai giảng đâu?!” Không biết là ai, nói ra mọi người tiếng
lòng.<o:p></o:p></p><p class="MsoNormal">Nhưng là thực mau, cổng trường tụ tập mặt khác một đám học
sinh, rõ ràng cùng người khác bất đồng.<o:p></o:p></p><p class="MsoNormal">Nhắc tới đi học, bọn họ thật cũng không phải không kháng cự,
nhưng là ngẫm lại hôm nay có thể nhìn thấy ai, nguyên bản không tình nguyện tâm
tức khắc liền có an ủi.<o:p></o:p></p><p class="MsoNormal">Hết thảy phảng phất thoạt nhìn tựa hồ không có gì vấn đề, chỉ
trừ bỏ ——<o:p></o:p></p><p class="MsoNormal">“Ba, ngươi tới làm cái gì?” Đều là cao tam học sinh, trong
nhà lại trụ nội thành, gia trưởng sớm 800 năm không đón đưa quá hắn đi học, hôm
nay, hôm nay đây là làm sao vậy?<o:p></o:p></p><p class="MsoNormal">Nam sinh vẻ mặt dấu chấm hỏi.<o:p></o:p></p><p class="MsoNormal">Từ mấy ngày trước bắt đầu, hắn ba mẹ liền thần thần bí bí, tổng
cảm thấy có việc gạt hắn, kết quả chờ hắn đi hỏi, hai người cũng không nói, thật
sự phi thường khả nghi.<o:p></o:p></p><p class="MsoNormal">“Con nít con nôi, không nên hỏi thăm không cần hạt hỏi thăm,
đi đi đi, một bên nhi mát mẻ đi.” Hắn hôm nay một hai phải làm rõ ràng, bị
chính mình nhi tử treo ở bên miệng, cái kia kêu Lục Tinh Tuyết nữ sinh đến tột
cùng là ai!<o:p></o:p></p><p class="MsoNormal">Này đại Hoa Hạ quốc, không có mấy cái gia trưởng đang nghe
nói chính mình hài tử ở cao tam cái này mấu chốt giai đoạn, kết quả biểu hiện
ra đối khác phái có đặc thù hảo cảm lúc sau, còn có thể ngồi trụ.<o:p></o:p></p><p class="MsoNormal">Kỳ thật từ cao nhị văn lý phân ban lúc sau, nam sinh cũng
không phải không đề qua tên này, nhưng là khi đó, hắn gia trưởng cũng không có
để ở trong lòng.<o:p></o:p></p><p class="MsoNormal">Vốn dĩ cho rằng tiểu hài tử sao, trong lòng kia cổ xúc động
cởi thì tốt rồi, ai biết qua một năm vẫn là như vậy, này như thế nào có thể
không xúc động gia trưởng trong lòng kia căn mẫn cảm thần kinh?<o:p></o:p></p><p class="MsoNormal">Dù sao vô luận nữ hài tử là ai, yêu sớm khẳng định là không
đúng, hôm nay chính mình nhất định phải đem nảy sinh bóp chết ở trong nôi!<o:p></o:p></p><p class="MsoNormal">“Di? Này không phải Hiên Hiên gia trưởng sao?” Liền ở nam
sinh ba ba trong lòng âm thầm nảy sinh ác độc thời điểm, một đạo giọng nữ từ
bên cạnh vang lên.<o:p></o:p></p><p class="MsoNormal">Nhìn chăm chú một nhìn, ân, là nhi tử bạn bè tốt mụ mụ.<o:p></o:p></p><p class="MsoNormal">Bởi vì hai cái nam sinh đi gần, hai bên gia trưởng tự nhiên
cũng gặp qua như vậy một hai lần.<o:p></o:p></p><p class="MsoNormal">“Như vậy xảo, ngươi cũng tới đưa hài tử a?” Nữ nhân vừa nói,
một bên đem héo bẹp nhi tử bắt được tới, làm hắn cùng nam nhân vấn an.<o:p></o:p></p><p class="MsoNormal">“…… Thúc thúc hảo.” Ma lưu nói xong lúc sau, này nam sinh thấy
chính mình bạn bè tốt cũng ở, tức khắc không rảnh lo mặt khác, bắt lấy bạn bè tốt
liền hướng vừa đi. Hợp hoan thụ sau, hai cái nam hài lẩm nhẩm lầm nhầm.<o:p></o:p></p><p class="MsoNormal">“Sao lại thế này? Ngươi ba như thế nào cũng tới?”<o:p></o:p></p><p class="MsoNormal">“Ta không biết a!”<o:p></o:p></p><p class="MsoNormal">Hai cái nam sinh nhìn nhau liếc mắt một cái, trên mặt mang
theo không có sai biệt mờ mịt.<o:p></o:p></p><p class="MsoNormal">Bên kia.<o:p></o:p></p><p class="MsoNormal">“Đứa nhỏ này.” Thấy chính mình nhi tử như vậy không lễ phép,
nữ nhân quả thực giận sôi máu.<o:p></o:p></p><p class="MsoNormal">Quay đầu lại lại tìm hắn tính toán sổ sách!<o:p></o:p></p><p class="MsoNormal">Trước mắt cũng không phải là nói cái này thời điểm.<o:p></o:p></p><p class="MsoNormal">“Đúng rồi Hiên Hiên gia trưởng, ngươi nhi tử cùng nhà ta
Hiên Hiên đi gần, ngươi có hay không nghe nói, ta nhi tử gần nhất có cái gì
không thích hợp?” Xem ra tới, nữ nhân cũng là phi thường sốt ruột.<o:p></o:p></p><p class="MsoNormal">“Làm sao vậy?” Hiên Hiên ba ba theo bản năng hỏi ra tới.<o:p></o:p></p><p class="MsoNormal">“Còn không phải đứa nhỏ này có vấn đề!” Nữ nhân sắc mặt đầu
tiên là một khổ, tiếp theo đè thấp thanh âm: “Ta hoài nghi nhà ta rõ ràng thích
bọn họ ban một người nữ sinh.”<o:p></o:p></p><p class="MsoNormal">Hiên Hiên ba ba đại kinh thất sắc: “Nhà ngươi hài tử cũng
yêu sớm?!”<o:p></o:p></p><p class="MsoNormal">Cái này “Cũng” tự dùng hảo.<o:p></o:p></p><p class="MsoNormal">“Không phải đâu, Hiên Hiên hắn thế nhưng cũng ở ngay lúc này
——” rõ ràng mụ mụ nghe vậy, tức khắc mở to hai mắt nhìn.<o:p></o:p></p><p class="MsoNormal">“Còn không phải sao.” Hiên Hiên ba ba mặt mang sầu khổ: “Ai,
ta nhi tử hiện tại tam câu nói đều không rời đi cái kia nữ sinh, ta cùng mẹ nó
đều phải sầu đã chết, ngươi nói vậy phải làm sao bây giờ đi.”<o:p></o:p></p><p class="MsoNormal">Luôn là nói nữ hài kia nhiều lợi hại nhiều lợi hại, này
không phải trúng độc đây là cái gì!<o:p></o:p></p><p class="MsoNormal">“Nhà ai không phải đâu…… Suốt một cái nghỉ hè, nhà của chúng
ta liền không ngừng nghỉ quá……” Rõ ràng mụ mụ biểu tình cũng suy sụp.<o:p></o:p></p><p class="MsoNormal">Hai cái đồng dạng nhọc lòng chính mình nhi tử gia trưởng giờ
khắc này chỉ cảm thấy đồng bệnh tương liên, phun tào lên cũng không có xong.<o:p></o:p></p><p class="MsoNormal">“Đúng rồi, ngươi nhi tử thích cái kia nữ sinh gọi là gì? Thật
sự không được, chúng ta chuyên môn trừu cái không, tìm một chỗ cùng nhau thảo
luận thảo luận đi?” Thực mau, điều chỉnh tốt tâm thái lúc sau, rõ ràng mụ mụ
nhanh chóng tỉnh lại lên.<o:p></o:p></p><p class="MsoNormal">Giờ khắc này, nàng liền thảo luận tổ tên đều nghĩ kỹ rồi, đã
kêu “Phòng tiểu hài tử yêu sớm đại tác chiến”.<o:p></o:p></p><p class="MsoNormal">Nhưng mà giây tiếp theo, Hiên Hiên ba ba nói trực tiếp liền
đem rõ ràng mụ mụ cấp trấn trụ.<o:p></o:p></p><p class="MsoNormal">“Lục Tinh Tuyết, ta nhi tử thích đối tượng kêu Lục Tinh Tuyết.”<o:p></o:p></p><p class="MsoNormal">Rõ ràng mụ mụ: “!!!”<o:p></o:p></p><p class="MsoNormal">“Ta nhi tử trong miệng nữ sinh, cũng kêu Lục Tinh Tuyết……”<o:p></o:p></p><p class="MsoNormal">Hai giây sau, rõ ràng mụ mụ lẩm bẩm, đại não một mảnh choáng
váng, giọng nói rơi xuống, Hiên Hiên ba ba hô hấp cũng đi theo buộc chặt: “Này,
này……”<o:p></o:p></p><p class="MsoNormal">Chính mình nhi tử cùng đối phương nhi tử, chính là từ cao một
liền nhận thức hảo huynh đệ a!!!<o:p></o:p></p><p class="MsoNormal">Nói cách khác, nói cách khác, không chỉ là yêu sớm vấn đề,
còn đề cập đến hai nam tranh một nữ tiết mục.<o:p></o:p></p><p class="MsoNormal">Thật lớn tin tức lượng, trong lúc nhất thời làm hai vị gia
trưởng gặp tới rồi bị thương nặng.<o:p></o:p></p><p class="MsoNormal">Bọn họ như thế nào cũng không nghĩ tới, loại này chỉ tồn tại
với phim truyền hình cẩu huyết cốt truyện, thế nhưng sẽ sống sờ sờ ở hiện thực
trình diễn, vẫn là ở chính bọn họ hài tử trên người!<o:p></o:p></p><p class="MsoNormal">“…… Nhà ngươi Hiên Hiên biết chuyện này sao?”<o:p></o:p></p><p class="MsoNormal">Trầm mặc một cái chớp mắt sau, Hiên Hiên ba ba ngữ khí phá lệ
gian nan: “Phỏng chừng…… Không biết đi……”<o:p></o:p></p><p class="MsoNormal">Liền ở hai vị gia trưởng chi gian không khí cũng dần dần trở
nên vi diệu thời điểm, cái thứ ba gia trưởng cũng tới rồi.<o:p></o:p></p><p class="MsoNormal">Nhìn đến bọn họ, bước đi vội vàng nam nhân bước chân lập tức
dừng lại, cứ việc trong mắt mang theo rõ ràng nôn nóng, nhưng đối phương thái độ
cũng còn xem như nho nhã lễ độ: “Các ngươi hảo, xin hỏi một chút, đây là cao
tam nhất ban phòng học, các ngươi là nhất ban học sinh gia trưởng sao?”<o:p></o:p></p><p class="MsoNormal">Hiên Hiên ba ba cùng rõ ràng mụ mụ nhìn nhau liếc mắt một
cái, gật gật đầu.<o:p></o:p></p><p class="MsoNormal">Có vừa mới giáo huấn, không biết vì cái gì, nhìn đến đối
phương cùng bọn họ không có sai biệt vội vàng biểu tình, hai người trong lòng tức
khắc có dự cảm bất hảo.<o:p></o:p></p><p class="MsoNormal">Giây tiếp theo, dự cảm trở thành sự thật.<o:p></o:p></p><p class="MsoNormal">“Là cái dạng này, ta tưởng hướng các ngươi hỏi thăm chuyện
này nhi, các ngươi biết trong ban một cái họ Lục, kêu Lục Tinh Tuyết đồng học
sao?” Nhìn, này hạ giọng, phảng phất làm tặc dường như biểu tình, cũng cùng vừa
mới chính mình giống nhau như đúc.<o:p></o:p></p><p class="MsoNormal">Hiên Hiên ba ba: “……”<o:p></o:p></p><p class="MsoNormal">Rõ ràng mụ mụ: “……”<o:p></o:p></p><p class="MsoNormal">“…… Các ngươi nên sẽ không, cũng là vì cái này tới đi???” Ước
chừng là hai người biểu hiện quá mức rõ ràng, nam nhân cơ hồ buột miệng thốt
ra.<o:p></o:p></p><p class="MsoNormal">Ngay sau đó, liền thấy Hiên Hiên ba ba cùng rõ ràng mụ mụ biểu
tình đau kịch liệt gật đầu.<o:p></o:p></p><p class="MsoNormal">Ba người trầm mặc, thật lâu sau lúc sau, không hẹn mà cùng
hít ngược một hơi khí lạnh.<o:p></o:p></p><p class="MsoNormal">Thảo!<o:p></o:p></p><p class="MsoNormal">Lúc này việc vui lớn!<o:p></o:p></p><p class="MsoNormal">*<o:p></o:p></p><p class="MsoNormal">“Không được, tuyệt đối không được!” Năm phút sau, vị này cuối
cùng tới rồi gia trưởng phản ứng lại đây, tức khắc nổi trận lôi đình: “Lúc này
ta liền tính là đánh bạc thể diện không cần, cũng muốn làm giáo phương đem vị
này Lục Tinh Tuyết đồng học đá ra nhất ban!”<o:p></o:p></p><p class="MsoNormal">Xem ra tới, bởi vì kích thích quá mức lợi hại, vị này gia
trưởng đã bắt đầu hồ ngôn loạn ngữ.<o:p></o:p></p><p class="MsoNormal">“Tuỳ tiện! Thật sự là quá tuỳ tiện!” Một cái hai cái còn có
thể nói là ngoài ý muốn, còn có thể nói là chính mình hài tử vấn đề, nhưng là
nhiều người như vậy tổng không thể vẫn là bọn họ hài tử vấn đề đi?<o:p></o:p></p><p class="MsoNormal">Vấn đề nhất định xuất hiện ở cái kia kêu Lục Tinh Tuyết nữ
hài trên người.<o:p></o:p></p><p class="MsoNormal">“Một trung không phải tỉnh trọng điểm sao? Bọn họ như thế
nào làm, như thế nào cái gì học sinh đều dám hướng trong chiêu!” Nam nhân khí
nha đều mau cắn.<o:p></o:p></p><p class="MsoNormal">“…… Lời nói đảo cũng không thể nói như vậy.”<o:p></o:p></p><p class="MsoNormal">Thấy đối phương cảm xúc kích động như vậy, biết hắn có ý tứ
gì rõ ràng mụ mụ không khỏi nhíu mày: “Rốt cuộc đến bây giờ mới thôi, chúng ta
còn không có gặp qua kia nữ sinh cái dạng gì đâu, vạn nhất, vạn nhất không phải
chúng ta tưởng như vậy đâu?”<o:p></o:p></p><p class="MsoNormal">“Huynh đệ, không cần quá cực đoan sao.” Nguyên bản Hiên Hiên
ba ba còn rất tức giận, hiện tại nhưng thật ra ngược lại bị đối phương vượt mức
bình thường bạo nộ cấp hoảng sợ, đầu óc cũng dần dần bình tĩnh xuống dưới.<o:p></o:p></p><p class="MsoNormal">“Nói không chừng…… Là chúng ta nhi tử vấn đề?” Lời này nói
ra, thật là không có gì tự tin.<o:p></o:p></p><p class="MsoNormal">“Cái gì?!”<o:p></o:p></p><p class="MsoNormal">“Các ngươi hai nhà đều là nhi tử?!”<o:p></o:p></p><p class="MsoNormal">Hiên Hiên ba ba cùng rõ ràng mụ mụ không những không có thể
khuyên lại hắn, ngược lại lửa cháy đổ thêm dầu, nghe xong hai người nói, nam
nhân hô hấp cứng lại, sau đó nháy mắt lệ ròng chạy đi: “Nhưng nhà của chúng ta
là nữ nhi a!”<o:p></o:p></p><p class="MsoNormal">Trách không được bọn họ không biết sốt ruột đâu!<o:p></o:p></p><p class="MsoNormal">Nam nhân rống tiếng hô qua đi, liền chung quanh phong đều
yên lặng.<o:p></o:p></p><p class="MsoNormal">Hiên Hiên ba ba: “……”<o:p></o:p></p><p class="MsoNormal">Rõ ràng mụ mụ: “……”<o:p></o:p></p><p class="MsoNormal">emmmmm…… Đột nhiên có điểm bị an ủi tới rồi là chuyện như thế
nào?<o:p></o:p></p><p class="MsoNormal">Trách không được hắn từ đầu chí cuối đều một bức kề bên hỏng
mất bộ dáng.<o:p></o:p></p><p class="MsoNormal">Vốn dĩ cảm thấy chính mình thực thảm thời điểm, đột nhiên tới
cái thảm hại hơn người, cảm giác này là thật sự…… Ách, khó có thể hình dung.<o:p></o:p></p><p class="MsoNormal">“Suốt một cái nghỉ hè, nữ nhi của ta ôm di động lại là nhíu
mày lại là bật cười, đôi khi còn mặt đỏ đổ mồ hôi.” Cái này làm cho một bên nam
nhân như thế nào có thể ổn được tâm thái? Lại trầm ổn người thời gian dài cũng
đến nổ mạnh.<o:p></o:p></p><p class="MsoNormal">Thật là nam nhân nghe xong sẽ trầm mặc, nữ nhân nghe xong sẽ
rơi lệ.<o:p></o:p></p><p class="MsoNormal">“…… Huynh đệ, vất vả ngươi.” Thở dài, trong mắt đồng tình
chi sắc chợt lóe mà qua, Hiên Hiên ba ba nhịn không được vỗ vỗ bờ vai của hắn.<o:p></o:p></p><p class="MsoNormal">Lúc này, vài vị gia trưởng càng là hạ quyết tâm, nhất định
phải tận mắt nhìn thấy xem, cái này kêu Lục Tinh Tuyết nữ sinh đến tột cùng là
thần thánh phương nào.<o:p></o:p></p><p class="MsoNormal">Đơn giản cũng không có làm cho bọn họ chờ bao lâu, hôm nay
dù sao cũng là khai giảng nhật tử, hơn nữa thời gian đã đã khuya.<o:p></o:p></p><p class="MsoNormal">Đại khái hơn mười phút sau, ba vị gia trưởng trơ mắt nhìn
chính mình nhi tử / nữ nhi trên người cùng trang radar dường như, nữ sinh thân ảnh
mới vừa vừa xuất hiện ở cổng trường, bọn họ đầu nháy mắt liền xoay qua đi.<o:p></o:p></p><p class="MsoNormal">“Lớp trưởng, nơi này!” Nhìn ánh mắt bạo lượng, gương mặt hồng
hồng chính mình nữ nhi, một bên nam nhân nha đều mau cắn, cùng lúc đó, hắn chân
cũng không chịu khống chế tiến lên.<o:p></o:p></p><p class="MsoNormal">“Bình tĩnh! Huynh đệ bình tĩnh a!” Hiên Hiên ba ba cùng rõ
ràng mụ mụ vội vàng đi kéo hắn.<o:p></o:p></p><p class="MsoNormal">Lục Tinh Tuyết mới vừa vừa đi tiến vườn trường, liền nghe được
quen thuộc kêu gọi, chẳng qua bởi vì thân thể duyên cớ, nàng cũng không thể
dùng đồng dạng lớn giọng đáp lại bọn họ.<o:p></o:p></p><p class="MsoNormal">“Tới, tới.”<o:p></o:p></p><p class="MsoNormal">Nữ hài tử thanh âm rất nhỏ thực nhẹ, ánh mắt mềm mại giống
mùa xuân ba tháng mặt hồ.<o:p></o:p></p><p class="MsoNormal">Cơ hồ là nhìn đến nàng trong nháy mắt, chung quanh một chúng
học sinh trên người mùa hạ khô nóng cũng đi theo biến mất không ít, tâm tình thậm
chí đều trở nên bình thản cùng vui sướng.<o:p></o:p></p><p class="MsoNormal">“Ngươi chính là Lục Tinh Tuyết?” Vài vị gia trưởng nổi giận
đùng đùng tiến lên, đầu tiên nhìn đến chính là một phen màu đen ô che nắng.<o:p></o:p></p><p class="MsoNormal">Ô che nắng giấu đi nàng mặt, duy dư lại giơ cán dù tay, cùng
với một đoạn giống như chạm ngọc giống nhau cổ tay trắng nõn.<o:p></o:p></p><p class="MsoNormal">Xinh đẹp, phảng phất là trên thế giới mấy cái trứ danh nghệ
thuật điện phủ bên trong triển lãm danh tác, chỉ là lại đỉnh lại xảo đoạt thiên
công danh tác, tại đây chỉ tay làm nổi bật hạ, cũng thành nhạt nhẽo vô vị vật
chết, hoàn toàn không có đơn độc nhìn lên chờ bức người linh khí.<o:p></o:p></p><p class="MsoNormal">Chất vấn thanh âm tức khắc dừng lại.<o:p></o:p></p><p class="MsoNormal">Gần chỉ là một đạo thanh âm, bung dù một bàn tay, khiến cho
vài vị gia trưởng trên người khí thế lập tức tan cái thất thất bát bát.<o:p></o:p></p><p>







































































































































































































</p><p class="MsoNormal">Cuối cùng Lục Tinh Tuyết buông ô che nắng sau, nhìn đến
chính là chau mày, như là lâm vào suy nghĩ sâu xa ba cái đại nhân.<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (33, 2, N'Chương 2', CAST(N'2021-09-12T08:27:45.353' AS DateTime), N'<p class="MsoNormal"><span lang="FR">“Ta là Lục Tinh
Tuyết.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lục Tinh Tuyết sửng
sốt một chút, sau đó nhỏ giọng hỏi: “Xin hỏi, các ngươi là?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đơn nghe thanh
âm, chỉ nhìn một cách đơn thuần cái tay kia, vài vị gia trưởng cũng đã biết này
tuyệt đối là cái thập phần xinh đẹp cô nương.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nhưng bọn hắn như
thế nào cũng không thể tưởng được, thế nhưng có thể xinh đẹp đến loại trình độ
này.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Liền giống như
tên nàng giống nhau, giống như bầu trời tinh, dường như đỉnh núi tuyết, chỉ là
so đầy sao càng rực rỡ, so tân tuyết càng trầm tĩnh.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nàng chỉ là đứng ở
nơi đó, cũng đã làm chung quanh sở hữu hết thảy, vô luận là người cũng hảo, vẫn
là hoa cỏ cây cối cũng hảo, đều đi theo rút đi ba phần nhan sắc.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lại hoa lệ từ ngữ
trau chuốt, dùng ở trên người nàng đều hơi hiện nhạt nhẽo cùng nhạt nhẽo.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Này, này thật là
nhân loại chính mình có thể mọc ra tới bộ dáng???<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Suốt mười giây,
vài vị gia trưởng không một người nói chuyện, bọn họ phảng phất là đột nhiên bị
mạc danh lực lượng tạp trụ cổ giống nhau, nửa điểm thanh âm đều phát không ra.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chỉ là kẻ hèn một
cái đối mặt, mấy người liền xin nghỉ tới trường học mục đích đều cấp đã quên.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cuối cùng vẫn là
Lục Tinh Tuyết cảm thấy kỳ quái, vì thế lại hỏi một lần: “Các ngươi tìm ta là
có chuyện gì sao?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bọn họ lúc này mới
miễn cưỡng ở vừa mới đánh sâu vào hạ, phục hồi tinh thần lại.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngay từ đầu là có
việc, bất quá hiện tại sao…… Đã hoàn toàn không có.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ở nhìn đến nữ
sinh gương mặt kia kia một khắc, vài vị gia trưởng lại nhiều nghi ngờ cũng đều ở
trong khoảnh khắc tiêu tán.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cái gì yêu sớm? Sớm
cái gì luyến? Ai luyến?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nói giỡn, trưởng
thành như vậy cô nương, có thể coi trọng chính mình nhi tử / nữ nhi sao?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đơn phương một đầu
nhiệt sao có thể luyến lên!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vài vị gia trưởng
ngày thường đều là cái loại này cảm thấy chính mình hài tử ngàn hảo vạn hảo, liền
tính là ngoài miệng khiêm tốn, trong lòng cũng cảm thấy bọn họ không có một
đinh điểm sai lầm người, đều cảm thấy chính mình hài tử là tốt nhất cái kia.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chính là hiện tại……
Liền tính bọn họ lại bất công, cũng không có biện pháp che lại lương tâm đem nồi
ném ở Lục Tinh Tuyết trên người.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đương mỹ đã vượt
qua cực hạn thời điểm, cũng đã không hề là tội nghiệt, mà là trời cao một loại
ban ân.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Chúng ta…… Chúng
ta tới đưa hài tử đi học.” Nam nhân liều mạng, chính là đem chuẩn bị suốt một
đêm nghĩ sẵn trong đầu toàn nghẹn trở về.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cùng lúc đó, Hiên
Hiên ba ba cùng rõ ràng mụ mụ cũng yên lặng buông lỏng ra bắt lấy hắn tay.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Chính là, ta rõ
ràng……” Nàng rõ ràng nghe được bọn họ ở kêu chính mình tới……<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ngươi nghe lầm!”
Không đợi Lục Tinh Tuyết nói xong, nam nhân quyết đoán đánh gãy, ở nhìn đến
nàng trong mắt ngạc nhiên sau, nam nhân không khỏi chậm lại ngữ khí: “Chuyện
này cùng ngươi không quan hệ.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Quay đầu tới, ba
người không hẹn mà cùng nhìn về phía chính mình hài tử ——<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Hiên Hiên.”, “Rõ
ràng.”, “Dao Dao.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Hôm nay buổi tối
sớm một chút trở về, ba ba / mụ mụ có việc nhi cùng các ngươi nói.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Có chút vấn đề,
khả năng thật sự phải hảo hảo nói nói chuyện.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lục Tinh Tuyết
còn muốn hỏi, nhưng là hảo xảo bất xảo, nam nhân di động vang lên, vì thế liền
không có thể thành công, ba người rời đi thời điểm, có thể so tới khi tốc độ muốn
mau nhiều, ẩn ẩn, còn có thể nghe được linh tinh mấy chữ mắt ——<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Hảo hảo, đã kết
thúc, không cần lại thúc giục……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Đúng vậy, gặp
qua, không phải ngươi tưởng như vậy, không phải cái loại này thực mở ra thực
thành thục loại hình…… Còn có ta cảm thấy, cùng với quan tâm hài tử học tập,
không bằng quan tâm quan tâm hài tử tâm lý……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Lại như vậy tiếp
tục đi xuống, ta sợ hài tử không phải nghẹn mắc lỗi, chính là cô độc sống quãng
đời còn lại……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Điện thoại kia đầu,
chờ chính mình bạn lữ thắng lợi tin tức, kết quả liền đợi cái này gia trưởng:
“???”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cái quỷ gì!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bọn họ…… Đến tột
cùng đang nói cái gì?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lục Tinh Tuyết đứng
ở tại chỗ, đồng dạng không hiểu ra sao. Bất quá thực mau, nàng liền không rảnh ở
miệt mài theo đuổi cái này.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cổng trường nơi
đó lại lần nữa truyền đến ầm ĩ thanh, chẳng qua lần này không giống như là hoan
nghênh, mà là kiêng kị còn có bài xích.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lục Tinh Tuyết
thanh mai trúc mã, Cố Lễ Thiệu tới.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thấy chỉ thấy
17-18 tuổi thiếu niên lạnh như băng một khuôn mặt thượng tràn đầy không kiên nhẫn,
vừa thấy chính là tâm tình thiếu giai, hắn phía sau còn đi theo hai cái tiểu tuỳ
tùng dường như học sinh, xem giáo phục hình thức, xác định là một trung không chạy.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ba người cứ như vậy
nghênh ngang đi vào cổng trường, khiến cho một bên phiên trực các lão sư giận
mà không dám nói gì.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nhìn đến hình
bóng quen thuộc, một chúng học sinh sôi nổi rời xa, rốt cuộc, vị này chính là
ma tinh giống nhau nhân vật a……<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đối phương bởi vì
đánh nhau ẩu đả còn có chống đối lão sư, không biết bị trường học nhớ vài lần lớn
hơn, nhưng bởi vì gia đình bối cảnh nguyên nhân, hiệu trưởng chính là không dám
khai trừ, người như vậy ai dám chọc a!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nhớ tới đối
phương trên người kia cổ điên lên không muốn sống sức mạnh, một đám học sinh
không khỏi run lập cập.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bất quá Cố Lễ Thiệu
thật cũng không phải mỗi ngày nổi điên, ít nhất ở Lục Tinh Tuyết trước mặt, hắn
luôn luôn biểu hiện nhẫn nại lực mười phần, làm người cảm giác Lục Tinh Tuyết
giống như là hắn an ủi tề giống nhau, chỉ cần nàng ở đây, Cố Lễ Thiệu liền rất
ít có mất khống chế thời điểm.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nếu nói dưới bầu
trời này ai là Cố Lễ Thiệu khắc tinh, vậy phi Lục Tinh Tuyết mạc chúc.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ước chừng là Lục
Tinh Tuyết thân thể không tốt, sợ dọa đến nàng đi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Liền giống như hiện
tại, trăm triệu không nghĩ tới tiểu thanh mai tới trường học về sau không có
trước tiên tiến phòng học đợi, mà là đứng ở bên ngoài, Cố Lễ Thiệu biểu tình cứng
đờ, nguyên bản gác ở sau đầu tay cũng nhanh chóng buông xuống.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Không xong, bị
nàng thấy được, hiện tại nên làm cái gì bây giờ!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Không biết vì cái
gì, đối mặt những người khác thời điểm, vô luận đối phương là cỡ nào cường
tráng, Cố Lễ Thiệu đều có tin tưởng ở chính mình ngã xuống đất trước đem người
nọ làm nằm sấp xuống, cô đơn đối mặt tiểu thanh mai thời điểm, mấy thứ này liền
đều không hảo sử.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Rõ ràng là yếu đuối
mong manh, chính mình một ngón tay đều hận không thể có thể chọc đảo người, cố
tình nàng thoáng túc một nhíu mày, chính mình liền hoảng không được.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Liền giống như hiện
tại.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ngươi sao lại thế
này?” Nhìn đến Cố Lễ Thiệu trong nháy mắt, Lục Tinh Tuyết quả nhiên liền nhíu
mày, mà một bên lão sư thấy như vậy một màn, trên mặt tuy rằng không hiện,
nhưng trong lòng lại là ám sảng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Làm ngươi khoe
khoang, nên!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chúng ta trị
không được ngươi, người khác còn trị không được sao?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đặc biệt là thường
xuyên bị Cố Lễ Thiệu thường xuyên sặc thanh kia vài vị, càng là ôm bả vai, chói
lọi xem khởi diễn tới.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cố Lễ Thiệu: “……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Mẹ nó, những người
này bọn họ đều có bệnh đi!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bất quá lúc này,
Cố Lễ Thiệu rõ ràng đã không rảnh lo những cái đó xem náo nhiệt không chê chuyện
này đại ăn dưa quần chúng, hắn há miệng thở dốc, tựa hồ là muốn giải thích cái
gì, nhưng là còn không đợi hắn ra tiếng, Lục Tinh Tuyết cũng đã đem hắn lỏng lẻo
đáp trên vai ngắn tay áo sơmi lấy xuống dưới: “Như thế nào lại không hảo hảo
xuyên giáo phục?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngắn ngủn mấy chữ,
phảng phất lực du ngàn cân, nam sinh là tưởng giữ gìn một chút chính mình uy
nghiêm, ai biết vừa ra khỏi miệng, thanh âm không tự giác liền yếu đi xuống dưới:
“Này… Này không phải thiên nhi nhiệt sao?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lục Tinh Tuyết quả
thực muốn phục chính mình cái này thanh mai trúc mã: “Học sinh nên có cái học
sinh bộ dáng, ngươi không cần hình tượng, một trung còn muốn đâu.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nếu hiệu trưởng
nghe được lời này, chỉ sợ sẽ kích động khóc ra tới, rốt cuộc có người nói ra hắn
vẫn luôn tưởng nói, nhưng lại vô pháp lời nói!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chiêu như vậy cái
Hỗn Thế Ma Vương tiến vào, một trung chỗ nào còn có cái gì thể diện a! Lúc trước
quả nhiên liền không nên tham kia đống thư viện!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nói xong, cũng mặc
kệ hắn vui hay không, Lục Tinh Tuyết cưỡng chế tính đem áo sơmi cho hắn tròng
lên, “Còn có ngươi này tóc, như thế nào cũng là lộn xộn?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">May mắn hai người
là từ nhà trẻ liền nhận thức, sau đó đến tiểu học, sơ trung, cao trung, một đường
nâng đỡ lại đây hữu nghị, bằng không sợ là cái kia nữ sinh cũng chịu đựng không
được.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Trên thực tế, hiện
tại Cố Lễ Thiệu ở cái tay kia xoa chính mình đỉnh đầu thời điểm, cũng đã nghe
không được nàng đang nói cái gì.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đều nói nam sinh
đầu cùng lão hổ mông giống nhau, dễ dàng sờ không được, nhưng rõ ràng này tựa hồ
cũng không áp dụng ở Cố Lễ Thiệu trên người.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Sắp thành niên
nam sinh đã có 1 mễ 88 như vậy cao, vì phối hợp nữ hài động tác, hắn thậm chí
chủ động cúi đầu tới.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Một phút sau, miễn
cưỡng đem đối phương một đầu con nhím dường như tóc rối đùa nghịch chính tề, Lục
Tinh Tuyết nhịn không được thở phào nhẹ nhõm: “Hảo.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cố Lễ Thiệu như ở
trong mộng mới tỉnh, nhìn thái dương chảy ra điểm điểm mồ hôi mỏng nữ sinh, hắn
lúc này mới nhớ tới khóe môi phản kích: “Ngươi còn nói ta đâu, ngươi nhìn xem
ngươi.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nói xong, hắn hoảng
hoảng loạn loạn xô đẩy chạm đất tinh tuyết hướng trong phòng học đi: “Thân thể
không hảo còn ở thái dương phía dưới đứng, liền dù cũng không đánh, vạn nhất xảy
ra chuyện gì nhưng làm sao bây giờ?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vừa đi, hắn một
bên tự nhiên mà vậy dắt lấy nữ hài tay.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Còn có các
ngươi, liền ngu như vậy đứng, cũng không khuyên nhủ nàng?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bị chất vấn ba
người căn bản không dám nói lời nào, nếu là làm Cố Lễ Thiệu biết bọn họ cha mẹ
chính là đầu sỏ gây tội nói, kia còn không được ăn sống rồi bọn họ?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lục Tinh Tuyết
cũng chưa nói kẻ hèn vài phút thời gian mà thôi, rốt cuộc chính mình thân thể
là cái dạng gì tình huống nàng trong lòng hiểu rõ: “Theo chân bọn họ không quan
hệ lạp, ai ai ai, chậm một chút chậm một chút, ta đuổi không kịp.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cố Lễ Thiệu quả
nhiên thả chậm bước chân, trong lúc nhất thời, chung quanh thổn thức thanh
không ngừng, mọi người vừa thấy chính là đã thói quen như vậy cảnh tượng, sớm
đã thấy nhiều không trách.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngay cả lão sư, đều
không có ai nói cái gì.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lúc này cũng
không có ai chú ý tới, có một đôi mắt đem Lục Tinh Tuyết đã đến lúc sau toàn bộ
quá trình đều thu hết đáy mắt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đây là cốt truyện
bắt đầu trước nam chủ, còn có nam chủ bạch nguyệt quang mối tình đầu sao?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đúng vậy, cốt
truyện.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nói đến không thể
tưởng tượng, giấu ở đám người bên trong, yên lặng chú ý này hết thảy nữ sinh kỳ
thật là cái người xuyên việt, nàng vừa mới tốt nghiệp đại học, thực tập thời điểm
bởi vì xí nghiệp quá mức không làm người, thế cho nên mệt nhọc chết đột ngột.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vốn dĩ cho rằng đời
này liền tính là hoàn toàn chơi xong nữ sinh một lần nữa mở mắt ra, ai biết liền
như vậy biến thành một cái tuổi dậy thì tìm đường chết, kết quả thật sự một
không cẩn thận được như ý nguyện cao trung học sinh trên người.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nhất quan trọng
nhất chính là, nữ sinh hoảng sợ phát hiện, chính mình kỳ thật là xuyên qua vào
một quyển xem qua cẩu huyết ngôn tình trong tiểu thuyết.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Quyển sách này
tên gọi </span><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">《</span><span lang="FR"> quấn quýt si mê </span><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">》</span><span lang="FR">, vừa nghe liền đặc biệt ngược, đến nỗi nội
dung sao, cũng không phụ tiểu thuyết tên, đọc lên làm người thẳng gan đau.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">In và phát hành
thời điểm, nhà xuất bản đem </span><span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">《</span><span lang="FR"> quấn quýt si mê </span><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">》</span><span lang="FR"> tổng cộng chia
làm trên dưới hai bộ phận, trước nửa bộ phận là thuần túy vườn trường cốt truyện,
giảng nam nữ chủ là như thế nào tương ngộ, sau đó tách ra, phần sau bộ phận
chính là nữ chủ chịu tình thương, mang thai xuất ngoại, cuối cùng mang theo hài
tử về nước, trải qua một loạt dây dưa, cuối cùng hai người HE chuyện xưa.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Mà nữ sinh hiện tại
thân phận, chính là cốt truyện hậu kỳ, nữ chủ về nước lúc sau gặp được một cái
nữ pháo hôi, cũng là đẩy mạnh nam nữ chủ cảm tình công cụ người chi nhất.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Trong sách nguyên
chủ thân là nhà giàu nữ, hắc lịch sử một đống còn chưa tính, chỉ số thông minh
còn đặc biệt thấp, chuyên môn cùng nữ chủ không qua được, cuối cùng bởi vì quá
mức hoa si, ý đồ đối nam chủ hạ dược, kết quả bị nam chủ làm cho thân bại danh
liệt, thuận tiện thành tựu nam nữ chủ chuyện tốt lúc sau trực tiếp thuận lợi
offline, hưởng thọ 26 tuổi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lúc trước nhìn đến
tình tiết này thời điểm có bao nhiêu đã ghiền, hiện tại nữ sinh liền có bao
nhiêu hoảng sợ.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bất quá đơn giản
hiện tại thời gian còn sớm, ly chân chính cốt truyện bắt đầu còn có đã nhiều
năm công phu, từ phát hiện chính mình là xuyên đến trong sách lúc sau, nữ sinh
mã bất đình đề làm trong nhà giúp chính mình xoay trường học.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nhớ tới sớm định
ra trong cốt truyện chính mình kia thảm thiết vô cùng kết cục, nữ chủ âm thầm
quyết định, nhất định phải ở nữ chủ xuất hiện phía trước đem nam chủ hảo cảm độ
xoát đủ!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nếu nhớ không lầm
nói, thành niên phía trước trong khoảng thời gian này, hẳn là nam chủ trong cuộc
đời nhất tối tăm thời khắc, cho nên hắn mới có thể đối làm bạn chính mình bạch
nguyệt quang nhớ mãi không quên như vậy nhiều năm.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chính mình nhất định
phải lợi dụng hảo điểm này.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nếu chính mình
không có thể ở nữ chủ xuất hiện phía trước thu phục nam chủ, vậy hoàn toàn xong
đời.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cái gì? Ngươi nói
trực tiếp làm nàng trốn đến rất xa, không phải chuyện gì nhi đều không có?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vui đùa cái gì vậy!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nga, đã quên nói,
thân thể này còn có mặt khác một tầng thân phận, đó chính là nữ chủ cùng phụ dị
phụ thân tỷ tỷ, bởi vì phát hiện trượng phu xuất quỹ, còn cùng nữ nhân khác có
tư sinh nữ, nguyên chủ thân mụ dưới sự giận dữ đem nữ chủ mụ mụ làm tiểu tam
chuyện này tuyên dương đi ra ngoài.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nữ chủ mụ mụ bất
kham chịu đựng chung quanh hàng xóm chỉ chỉ trỏ trỏ, đã tự sát, hiện tại thi thể
đều đã lãnh thấu, vị thành niên nữ chủ cũng bởi vậy vòng đi vòng lại, đi tới
nam chủ gia.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Loại này đại thù,
đổi ai ai có thể nhẫn?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Như vậy bế tắc là
không có khả năng cởi bỏ, tiếp nhận như vậy một cái cục diện rối rắm nữ sinh
cũng chỉ có thể một con đường đi tới cuối.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chỉ cần đem nam
chủ công lược, chính mình liền có thể kê cao gối mà ngủ.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngắn ngủn vài
phút công phu, nữ sinh liền suy nghĩ rất nhiều, chẳng qua sở hữu thiết tưởng, đều
chưa bao giờ xuất hiện quá “Lục Tinh Tuyết” tên này.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Không phải nàng
tính sót, thật sự là không cái này tất yếu.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nếu là bạch nguyệt
quang, như vậy chung quy là phải bị kẻ tới sau thay thế được, chưa từng nghe
qua câu nói kia sao, thanh mai trúc mã không địch lại trời giáng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nữ sinh rõ ràng
nhớ rõ, cốt truyện, miêu tả bạch nguyệt quang độ dài quá ngắn, cuối cùng xuống
sân khấu thời điểm càng là qua loa ——<o:p></o:p></span></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span><span lang="FR"> bởi vì bệnh
tim phát không thể kịp thời đưa hướng bệnh viện, Lục Tinh Tuyết chết vào 18 tuổi
thành nhân lễ đêm trước. </span><span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><span lang="FR"><o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Như vậy một cái nữ
hài, vĩnh viễn lưu tại 17 tuổi cuối cùng một ngày.<o:p></o:p></span></p><p class="MsoNormal">

















































































































































































































</p><p class="MsoNormal"><span lang="FR">Mà nay hoa đoàn cẩm
thốc dưới, cũng bất quá là sắp xướng vang tang ca.<o:p></o:p></span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (33, 3, N'Chương 3', CAST(N'2021-09-12T08:29:26.790' AS DateTime), N'<p class="MsoNormal">Bên kia.<o:p></o:p></p><p class="MsoNormal">Không biết chính mình đã bị người phán tử hình, Lục Tinh Tuyết
thực mau liền tới tới rồi tân giáo thất cửa.<o:p></o:p></p><p class="MsoNormal">Nguyên bản dựa theo Cố Lễ Thiệu thói quen, khẳng định là
không chút nghĩ ngợi, trực tiếp một chân đá đi lên, nhưng nghĩ đến có Lục Tinh
Tuyết ở bên cạnh, hắn chính là nhịn xuống.<o:p></o:p></p><p class="MsoNormal">Bay nhanh thu hồi chính mình chân, hắn “Kẽo kẹt” một tiếng,
tướng môn đẩy ra.<o:p></o:p></p><p class="MsoNormal">Liền tính đã đổi mới giáo khu, người vẫn là những người đó,
không có gì mới mẻ.<o:p></o:p></p><p class="MsoNormal">Trải qua dài dòng một cái nghỉ hè lúc sau, lại nhìn đến quen
thuộc gương mặt, cho dù là đã chịu đựng quá một năm lễ rửa tội, mọi người hô hấp
vẫn là nhịn không được dừng lại.<o:p></o:p></p><p class="MsoNormal">Lại sau đó, toàn bộ lớp bên trong một mảnh an tĩnh.<o:p></o:p></p><p class="MsoNormal">Cũng không thèm nhìn tới một bên sắc mặt nháy mắt một mảnh
đen nhánh cố đại ma vương, mọi người tầm mắt liền kém không dính vào Lục Tinh
Tuyết trên người.<o:p></o:p></p><p class="MsoNormal">Phản ứng một hồi lâu, mọi người mới lục tục mở miệng, phòng
học thực mau lại khôi phục náo nhiệt.<o:p></o:p></p><p class="MsoNormal">“Lớp trưởng, ngồi ta bên này, ta cho ngươi để lại vị trí.”<o:p></o:p></p><p class="MsoNormal">“Phi, ngươi chỗ đó có cái gì hảo, lớp trưởng tới ta nơi
này.”<o:p></o:p></p><p class="MsoNormal">“Lớp trưởng! Lớp trưởng!”<o:p></o:p></p><p class="MsoNormal">Sở hữu khẩn trương kích động cùng với vui sướng, đều giấu ở
này từng tiếng kêu gọi, các bạn học càng nhiệt tình, Cố Lễ Thiệu mặt liền càng
hắc: “Đừng để ý đến bọn họ, theo ta đi.”<o:p></o:p></p><p class="MsoNormal">Không khỏi phân trần, Cố Lễ Thiệu mang theo nàng đi tới
phòng học chân lạc một vị trí, bởi vì cố nàng còn muốn học tập, Cố Lễ Thiệu tốt
xấu không tuyển cuối cùng một loạt.<o:p></o:p></p><p class="MsoNormal">Đem tân sách giáo khoa còn có bài tập sách hướng trên bàn một
phóng, Cố Lễ Thiệu lại hướng nàng bên cạnh ngồi xuống, cao lớn thân hình liền
ánh mặt trời đều có thể che khuất, càng không nói đến nữ hài điên đảo tuyệt sắc
dung nhan.<o:p></o:p></p><p class="MsoNormal">Nếu có khả năng, Cố Lễ Thiệu thật muốn đem nàng giấu đi, chỉ
cho phép chính mình một người nhìn, bên đều không cho xem.<o:p></o:p></p><p class="MsoNormal">Liên can đồng học hô hấp dừng lại, biểu tình cứng đờ, sau đó
bắt đầu hùng hùng hổ hổ.<o:p></o:p></p><p class="MsoNormal">Mẹ nó, trên thế giới như thế nào sẽ có Cố Lễ Thiệu loại người
này!<o:p></o:p></p><p class="MsoNormal">Thứ tốt chẳng lẽ không nên đại gia cùng nhau chia sẻ sao?!<o:p></o:p></p><p class="MsoNormal">Chưa bao giờ biết chia sẻ là vật gì Cố Lễ Thiệu lần này đã hấp
thụ phía trước giáo huấn, vô luận như thế nào cũng không thể làm chính mình tiểu
thanh mai ngồi ở bên ngoài, đặc biệt là dựa cửa sổ vị trí!<o:p></o:p></p><p class="MsoNormal">Nói cách khác, ngươi sẽ kinh hỉ phát hiện, mỗi đến khóa gian
thời điểm, tới tới lui lui thượng WC người liền sẽ phá lệ nhiều.<o:p></o:p></p><p class="MsoNormal">Bọn họ đó là thật sự mắc tiểu sao? Cố Lễ Thiệu đều ngượng
ngùng vạch trần bọn họ!<o:p></o:p></p><p class="MsoNormal">Nhìn hồn nhiên bất giác, đã sớm đã thói quen như vậy cảnh tượng
Lục Tinh Tuyết, Cố Lễ Thiệu âm thầm thề, nhất định không thể làm tiểu thanh mai
bị tùy tiện cái nào người quải chạy.<o:p></o:p></p><p class="MsoNormal">Chờ tiểu thanh mai lớn lên, chính mình nhất định giúp nàng
chọn một cái tốt nhất trượng phu.<o:p></o:p></p><p class="MsoNormal">Nỗ lực xem nhẹ trong lòng chua xót còn có độn đau, lúc này
còn không biết tình yêu là vật gì Cố Lễ Thiệu đang ở đắc ý với chính mình anh
minh, lúc này chỗ ngồi như vậy dựa vô trong mặt, xem bọn họ còn như thế nào ——<o:p></o:p></p><p class="MsoNormal">Thiếu niên lại là đã quên, lại nghiêm mật phòng hộ, cũng
ngăn không được như hổ rình mồi bầy sói.<o:p></o:p></p><p class="MsoNormal">“Thiệu ca!” Hai người mới vừa ngồi xuống không bao lâu, đã bị
người gọi lại.<o:p></o:p></p><p class="MsoNormal">Trừ bỏ Cố Lễ Thiệu, toàn giáo tàn nhẫn người phảng phất đều
tập trung đến bọn họ ban.<o:p></o:p></p><p class="MsoNormal">Nhìn mang kim loại khung mắt kính bốn mắt tử, cùng với đối
phương kia tuy rằng ôn hòa, nhưng ngầm có ý cường thế biểu tình, mới vừa bị thật
lớn kinh hỉ tạp trung Lục Tinh Tuyết sau bàn, hít sâu một hơi, chỉ có thể ôm hận
tránh ra chỗ ngồi.<o:p></o:p></p><p class="MsoNormal">Ô ô ô ô, vốn dĩ cho rằng năm nay có thể giữ được……<o:p></o:p></p><p class="MsoNormal">Này đàn hỗn đản!<o:p></o:p></p><p class="MsoNormal">“Thiệu ca hảo.” Lục Tinh Tuyết vị trí xác định xuống dưới
lúc sau, không trong chốc lát công phu, chung quanh đều thay đổi người ngồi.<o:p></o:p></p><p class="MsoNormal">“Tẩu tử hảo.” Không chút do dự, lấy bốn mắt tử cầm đầu, dư lại
mấy người nhìn Lục Tinh Tuyết, câu chữ rõ ràng kêu ra cái này danh hiệu, tựa hồ
không có một chút miễn cưỡng, đến nỗi bọn họ trong lòng nghĩ như thế nào, đó
chính là mặt khác một chuyện.<o:p></o:p></p><p class="MsoNormal">Dù sao từ nhìn thấy ngày ngày đi theo Cố Lễ Thiệu phía sau Lục
Tinh Tuyết về sau, này thanh đại ca bọn họ đã kêu định rồi!<o:p></o:p></p><p class="MsoNormal">“……”<o:p></o:p></p><p class="MsoNormal">Lục Tinh Tuyết mở ra sách giáo khoa tay một đốn, biểu tình bất
đắc dĩ cực kỳ: “Nói bao nhiêu lần, không cần kêu ta đại tẩu, ta cùng a Thiệu
không phải như vậy quan hệ.”<o:p></o:p></p><p class="MsoNormal">Kỳ thật, bọn họ cũng không nghĩ kêu.<o:p></o:p></p><p class="MsoNormal">Chỉ là nghĩ, chờ cái gì thời điểm đại ca thay đổi người,
huynh vô đệ cập, này không phải càng thuận lý thành chương một ít sao?<o:p></o:p></p><p class="MsoNormal">Đẩy đẩy kính giá, nam sinh nói: “Đúng vậy đại tẩu, tốt đại tẩu.”<o:p></o:p></p><p class="MsoNormal">Lục Tinh Tuyết đã vô lực phản bác.<o:p></o:p></p><p class="MsoNormal">Cố Lễ Thiệu sắc mặt xanh mét nhìn này đàn ăn thịt người
không nhả xương sói con: “Tôn Lộ Viễn, Bạch Nhất dương, Triệu kính trác, ta mẹ
nó còn chưa có chết đâu!”<o:p></o:p></p><p class="MsoNormal">Luận võ lực, bọn họ ba cột vào cùng nhau cũng không phải Cố
Lễ Thiệu đối thủ, năm trước kia một trận, Tôn Lộ Viễn hai cái đùi đều phải bị Cố
Lễ Thiệu đánh gãy.<o:p></o:p></p><p class="MsoNormal">Nhưng có người, đáng giá càng nghiêm trọng đòn hiểm.<o:p></o:p></p><p class="MsoNormal">Huống chi, làm trò Lục Tinh Tuyết mặt, Thiệu ca dám động thủ
mới là lạ.<o:p></o:p></p><p class="MsoNormal">“Đại tẩu, ta này đề sẽ không, có thể hay không xem ở Thiệu
ca mặt mũi thượng, cho ta nói một chút a?” Mắt kính tử, cũng chính là Tôn Lộ Viễn
căn bản không đi xem một bên Cố Lễ Thiệu sắc mặt, hắn cầm bài tập sách, vẻ mặt
khó xử.<o:p></o:p></p><p class="MsoNormal">Quang từ bề ngoài xem, ai cũng không biết như vậy văn nhã bề
ngoài hạ, trang chính là một viên xao động bất an, không có lúc nào là không
nghĩ muốn hướng tẩu tâm.<o:p></o:p></p><p class="MsoNormal"><span lang="FR">“Còn có ta, còn
có ta!” Phản ứng lại đây sau, Bạch Nhất dương theo sát sau đó, chỉ có Triệu
kính trác, thoáng nhìn Cố Lễ Thiệu cái trán bạo đột gân xanh lúc sau, đem nóng
lòng muốn thử tay nhỏ thả đi xuống.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thân là lớp trưởng,
Lục Tinh Tuyết là rất vui lòng trợ giúp đồng học, hơn nữa Tôn Lộ Viễn thành
tích không kém, nàng càng nguyện ý tin tưởng hắn là thiệt tình tới thỉnh giáo.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Đề nào?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Nơi này……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nhìn dần dần tiến
đến cùng nhau hai người, Cố Lễ Thiệu ở một bên đem bàn học niết kẽo kẹt kẽo kẹt
vang.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tuy rằng Bạch Nhất
dương căn bản nghe không hiểu, nhưng hắn thường thường phụ họa vài câu, một bức
thụ giáo bộ dáng xem người răng đau.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lục Tinh Tuyết giảng
đề thời điểm là thật sự mỹ a.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nguyên bản tùy
tay trát khởi đầu tóc dần dần buông xuống xuống dưới, đen nhánh nhan sắc phủ
kín gồ ghề lồi lõm bàn học, nàng làn da thực bạch, như là mùa đông rơi xuống một
phủng tuyết.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cũng chỉ có lúc
này, mới có thể rõ ràng nhìn đến nàng bên gáy nơi đó một quả nho nhỏ chí……<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Thật phiêu ——”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Bang!” Không thể
nhịn được nữa, Cố Lễ Thiệu cầm ngữ văn thư trực tiếp hướng Bạch Nhất dương trên
đầu chụp: “Hướng chỗ nào xem đâu! Lại loạn ngắm tiểu tâm ta đem ngươi tròng mắt
moi ra tới ngươi tin hay không?!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bạch Nhất dương mắt
đầy sao xẹt, càng vì hàm súc, may mắn tránh được một kiếp Tôn Lộ Viễn cầm bài tập
sách tay cứng đờ, rốt cuộc vẫn là ly Lục Tinh Tuyết xa một ít.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“…… Như vậy như vậy,
còn có như vậy.” Năm sáu phút sau, Lục Tinh Tuyết rốt cuộc đem đề này nói xong:
“Ngươi hiện tại đã biết rõ sao?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Như vậy gần khoảng
cách hạ, Tôn Lộ Viễn chỗ nào có thể phân biệt nàng vừa mới đến tột cùng nói gì
đó?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“…… Không có.”
Hai giây sau, ở Lục Tinh Tuyết nhìn chăm chú hạ, Tôn Lộ Viễn không được tự
nhiên lắc đầu.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Một bên Cố Lễ Thiệu
nhịn không được châm biếm, giây tiếp theo, tiếng cười đột nhiên im bặt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Tính, ta nói tiếp
một lần đi.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cố Lễ Thiệu mở to
hai mắt nhìn: “Ngọa tào! Dựa vào cái gì!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Đừng nháo.” Đem
chợt để sát vào đầu đẩy ra, Lục Tinh Tuyết nói: “Cuối cùng một lần, thật sự
nghe không hiểu liền tính.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tôn Lộ Viễn vội
không gật đầu.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nhưng là loại sự
tình này đi, sao có thể có cái đầu?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Liên tiếp ba lần,
nam sinh vẫn là như vậy, vẻ mặt mờ mịt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Buông trong tay
luyện tập sách, mặc dù là Lục Tinh Tuyết cũng nhịn không được nhíu mày, hơn nữa,
nàng kỳ thật cũng không thể tính một cái tính tình thập phần người tốt, chẳng
qua trên người ốm đau làm nàng không có biện pháp thật sự tức giận mà thôi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cho nên ngay cả mắng
chửi người thời điểm cũng là khinh thanh tế ngữ: “Tôn Lộ Viễn, ngươi là ngu ngốc
sao?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Giọng nói rơi xuống,
Tôn Lộ Viễn không những không có bất luận cái gì bị mắng phẫn nộ, hắn biểu tình
cứng đờ, trên mặt thế nhưng mạn thượng một tầng quỷ dị màu đỏ.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“…… Ngươi cái này
ngu ngốc!” Lúc này, Cố Lễ Thiệu cũng bất chấp nàng có thể hay không không cao hứng,
nhẫn nại tới cực hạn sau, hắn hung hăng đem bài tập sách ném đến nam sinh trên
người, không màng nam sinh dạ dày bộ gặp đòn nghiêm trọng chợt tái nhợt mặt, hắn
không khỏi phân trần đem nữ hài thân thể bãi chính.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Một bên ấn nàng
không cho nàng động, Cố Lễ Thiệu một bên hung tợn dặn dò: “Về sau không chuẩn đối
người khác nói nói như vậy, nghe được sao?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đặc biệt là phối
hợp thượng cặp kia hàm chứa mờ mịt giống nhau đôi mắt, mặc cho là ai, đều chống
đỡ không được.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ai? Vì cái gì?”
Cũng không hiểu biết nam sinh Lục Tinh Tuyết theo bản năng hỏi ra tới.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Không có vì cái
gì.” Cố Lễ Thiệu ngữ khí ngạnh bang bang: “Còn có, về sau cũng không chuẩn như
vậy nhìn người khác.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Chính là……” Lục
Tinh Tuyết vẫn là không hiểu.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lúc này, chủ nhiệm
lớp lâm lão sư đẩy cửa đi đến, thân là lớp trưởng, Lục Tinh Tuyết đương nhiên
muốn duy trì lớp trật tự.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Đều an tĩnh.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nữ sinh thanh âm
không lớn, nhưng lại liền nhất lảm nhảm học sinh nghe được lúc sau đều thập phần
tự giác ngậm miệng lại.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lâm lão sư thấy
thế, tâm tình miễn bàn có bao nhiêu phức tạp, này giúp tiểu tể tử nhưng cho tới
bây giờ không có như vậy cho hắn mặt mũi quá!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đem Lục Tinh Tuyết
nhắc tới lớp trưởng vị trí thượng có tốt có xấu, chỗ hỏng là nàng thường xuyên ở
phòng học cùng lão sư văn phòng đi lại, làm đến chỉnh tầng lầu đồng học cũng
chưa tâm tư học tập, chỗ tốt chính là nhất ban lớp học kỷ luật không bao giờ là
cái gì vấn đề.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chỉ cần nàng có
yêu cầu, tùy ý ai đều sẽ không tự giác đi thỏa mãn.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngay cả lâm lão
sư chính mình, đều xem cũng không dám xem chính mình học sinh liếc mắt một cái:
“Khụ, đều ngừng tay đầu sự tình, ta có một việc muốn tuyên bố.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tất cả mọi người
nhìn lão sư, bao gồm Lục Tinh Tuyết, chỉ có Cố Lễ Thiệu ghé vào trên bàn, phảng
phất là điếc giống nhau.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Hôm nay chúng ta
ban mới tới cái chuyển giáo sinh, đại gia hoan nghênh!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nữ sinh chậm rãi
từ cửa đi vào tới, trên mặt nàng mang theo tươi cười, thoạt nhìn thập phần hoạt
bát bộ dáng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Không có biện
pháp, ai kêu nam chủ hắn liền thích như vậy đâu?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Chào mọi người,
ta là Nguyễn kiều kiều, về sau chính là nhất ban học sinh, còn nhẹ đại gia chiếu
cố nhiều hơn.” Thiếu nữ thanh âm thanh thúy lại dễ nghe, lộ ra tinh thần phấn
chấn bồng bột tư vị.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cảm giác là cái
thực hướng ngoại nữ hài tử.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vì khiến cho nam
chủ chú ý, Nguyễn kiều kiều càng là thoải mái hào phóng đem chính mình mặt cấp
lộ ra tới.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lúc này nhưng thọc
tổ ong vò vẽ.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Mới đến Nguyễn kiều
kiều hoàn toàn đã quên, nguyên thân cũng không phải là cái gì hảo cô nương, hắc
lịch sử nhiều có thể tha địa cầu một vòng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Tê ——” bục giảng
hạ đã có người bắt đầu mãnh trừu khí lạnh: “Này không phải thánh đức cao trung
vị kia sao?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đầu năm nay
internet như vậy phát đạt, chỉ cần bị bắt lấy nhược điểm, một chút không hảo đều
sẽ bị vô hạn phóng đại, huống chi Nguyễn kiều kiều loại này hắc lịch sử quấn
thân người.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Nếu ta nhớ không
lầm nói, nửa năm trước, nàng giống như đem cùng năm cấp một người nữ sinh bức
nhảy lầu đi……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Mặc dù là chưa ra
vườn trường hài tử, cũng đã dần dần đã biết sinh mệnh trầm trọng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Như vậy một người,
trường học thế nhưng cũng dám thu? Điên rồi sao!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Trong phòng học
nghị luận thanh dần dần biến đại, mặc dù là có được hai đời ký ức Nguyễn kiều
kiều trong lúc nhất thời cũng có chút không biết theo ai, nàng xấu hổ lại dày
vò đứng ở nơi đó, vẫn luôn không ngừng tự cấp chính mình cổ vũ.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Không quan hệ
không quan hệ, cùng lắm thì đi nghịch tập lưu sao.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cái nào mới đến nữ
chính không cần trải qua này một chuyến đâu?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Liền ở Nguyễn kiều
kiều chuẩn bị yên lặng thừa nhận này hết thảy thời điểm, một đạo mỏng manh, cơ
hồ nghe không được tiếng vỗ tay vang lên: “Hoan nghênh tân đồng học.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lục Tinh Tuyết cảm
thấy, sẽ bởi vì đồng học nghị luận mà cảm thấy bất an cùng quẫn bách nữ sinh,
như thế nào cũng không giống như là cái người xấu.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đương nhiên, nếu
lúc sau chứng thực lời đồn đãi phi hư, vậy lại là mặt khác một phen quang cảnh.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Do dự trong chốc
lát, Lục Tinh Tuyết cuối cùng vẫn là đi đầu vỗ tay.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thấy nàng động
tác, Tôn Lộ Viễn bọn họ tự nhiên là theo sát sau đó, mặt khác đồng học trên mặt
không cấm hiện lên rối rắm, một hồi lâu, không ít người không tình nguyện vươn
tay tới.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vỗ tay đầu tiên
là thưa thớt, nửa phút sau miễn cưỡng biến nhiệt liệt lên, không khí cũng không
có ngay từ đầu như vậy xấu hổ.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thế nhưng là
nàng!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nguyễn kiều kiều
như thế nào cũng không nghĩ tới, cuối cùng sẽ là nam chủ bạch nguyệt quang giúp
chính mình giải vây, trong sách rõ ràng nói nàng yếu ớt, kiêu căng, càn quấy, bởi
vì trời sinh ốm yếu, vô pháp giống khỏe mạnh hài tử giống nhau chạy nhảy, tính
cách càng là cổ quái, một lời không hợp liền cấp nam chủ sắc mặt xem, chưa bao
giờ bận tâm trường hợp, như thế nào hiện tại……<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thấy nữ sinh cắn
môi dưới gắt gao nhìn chằm chằm chính mình, Lục Tinh Tuyết cho rằng nàng khẩn
trương, sau đó không khỏi mang theo trấn an, triều nàng cười cười.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Này nhẹ nhàng mở
ra nhan, hãy còn thắng phồn hoa nở rộ, thẳng gọi người thần hồn điên đảo.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Mặc dù là tâm lý
tuổi hơn hai mươi tuổi Nguyễn kiều kiều, trái tim cũng không chịu khống chế đập
lỡ một nhịp, ước chừng nửa phút mới từ kinh hãi trung phục hồi tinh thần lại.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cũng chỉ có trong
sách giả thuyết nhân vật, mới có thể trưởng thành này phó dùng bút mực đều hình
dung không được bộ dáng đi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đáng tiếc, trời
cao tuy rằng cho nàng không gì sánh kịp dung nhan, lại cũng không tình cướp đi
nàng tánh mạng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tưởng tượng đến đối
phương so với chính mình còn muốn bi thảm kết cục, Nguyễn kiều kiều không khống
chế được, trong mắt không tự giác toát ra thật sâu tiếc nuối còn có thương hại
tới.<o:p></o:p></span></p><p>





































































































































































































































</p><p class="MsoNormal"><span lang="FR">An ủi người không
thành, phản bị đồng tình Lục Tinh Tuyết: “?”<o:p></o:p></span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (34, 1, N'Chương 1', CAST(N'2021-09-12T08:30:45.103' AS DateTime), N'<p class="MsoNormal">Thiên hoang đại lục, nam bộ châu.<o:p></o:p></p><p class="MsoNormal">Nam Quốc, Giang Bắc Thành.<o:p></o:p></p><p class="MsoNormal">Khương gia tây sườn tiểu viện.<o:p></o:p></p><p class="MsoNormal">Lộc cộc, lộc cộc.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần ngồi ở trên giường, nàng cầm chén dược uống
xong, mày liễu hơi hơi giơ lên, tinh xảo mặt đẹp mang theo nghi hoặc, nỉ non
nói: “Tiểu Lan, này dược hảo ngọt.”<o:p></o:p></p><p class="MsoNormal">Nhỏ xinh nha hoàn che miệng ngây ngô cười, “Tiểu thư, dược
là cô gia ra cửa trước ngao.”<o:p></o:p></p><p class="MsoNormal">“Tần Mục?”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần mặt đẹp hơi kinh.<o:p></o:p></p><p class="MsoNormal">Hai người tuy là phu thê, lại không nhiều ít cảm tình,
Khương Lạc Thần ngày thường đối Tần Mục thái độ lãnh đạm, hắn cư nhiên sẽ cho
chính mình ngao dược.<o:p></o:p></p><p class="MsoNormal">Tần Mục từ nhỏ gởi nuôi ở Khương gia, bởi vì hắn gia gia đối
Khương gia có ân, liền ở rể Khương gia.<o:p></o:p></p><p class="MsoNormal">Thành hôn hơn nửa năm.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần như cũ không hiểu biết Tần Mục.<o:p></o:p></p><p class="MsoNormal">Hắn thường xuyên nói chút không thể hiểu được nói, tư duy độc
đáo, còn quản chính mình kêu lão bà.<o:p></o:p></p><p class="MsoNormal">Tần Mục không có linh căn, là vô pháp tu hành người thường,
sáng sớm ở trong phòng viết chữ vẽ tranh, buổi chiều sẽ đi trong thành Tiêu Dao
Lâu nghe thư, buổi tối nghỉ ngơi rất sớm, sinh hoạt nhàn nhã thả tự hạn chế.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần sinh ra ở tu tiên thế gia, gia gia là Khương
gia tam trưởng lão, lão tổ tông là Giang Bắc Thành duy nhất Kim Đan cường giả,
trên vai gánh nặng thực trọng.<o:p></o:p></p><p class="MsoNormal">Làm Khương gia dòng chính hậu duệ, nàng chỉ có thứ phẩm Hỏa
linh căn, đem mãn mười tám, mới Ngưng Khí hai tầng.<o:p></o:p></p><p class="MsoNormal">Khương gia là đại gia tộc, mười sáu tuổi tới Ngưng Khí bốn tầng
tính tư chất trung đẳng, hai mươi tuổi trước đạt tới Ngưng Khí bảy tầng mới có
cơ hội lưu tại trong tộc tiếp tục tu luyện.<o:p></o:p></p><p class="MsoNormal">“Ai!”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần ngồi ở trên giường than nhẹ.<o:p></o:p></p><p class="MsoNormal">Tinh xảo trứng ngỗng mặt, quỳnh mũi cái miệng nhỏ, da như
ngưng chi, mạo nếu thiên tiên, 3000 tóc đen rối tung trên vai, luận dung mạo
toàn bộ Giang Bắc Thành không người có thể cập.<o:p></o:p></p><p class="MsoNormal">Lớn lên mỹ, bị ghen ghét.<o:p></o:p></p><p class="MsoNormal">Thiên phú kém, bị trào phúng.<o:p></o:p></p><p class="MsoNormal">Ngày hôm trước, ở Diễn Võ Trường tu luyện, Khương Lạc Thần lọt
vào Khương gia dòng bên Khương Linh khiêu khích, nàng không thể nhịn được nữa,
hai người ở lôi đài giao thủ, kết quả không cần nói cũng biết.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần bại bởi mười lăm tuổi Khương Linh, không chỉ
có chính mình thật mất mặt, còn cấp dòng chính trên mặt bôi đen, hoàn toàn trở
thành mọi người trong mắt chê cười.<o:p></o:p></p><p class="MsoNormal">“Tiểu thư, cô gia làm ta chuyển cáo ngài, về sau không cần cậy
mạnh, làm người muốn điệu thấp.”<o:p></o:p></p><p class="MsoNormal">Tiểu Lan nhược nhược nói.<o:p></o:p></p><p class="MsoNormal">“Muốn hắn quản?”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần bĩu môi.<o:p></o:p></p><p class="MsoNormal">Lần này thù, sớm hay muộn muốn báo.<o:p></o:p></p><p class="MsoNormal">Tiểu Lan không dám lắm miệng, nàng biết cô gia là quan tâm
tiểu thư, bất quá tiểu thư đồng dạng đáng thương, rõ ràng là Khương gia dòng
chính, lại cùng người thường thành hôn.<o:p></o:p></p><p class="MsoNormal">Nếu là gả cho Giang Châu thiên kiêu, còn có ai dám khi dễ tiểu
thư?<o:p></o:p></p><p class="MsoNormal">Tiêu Dao Lâu.<o:p></o:p></p><p class="MsoNormal">Lầu hai quán trà.<o:p></o:p></p><p class="MsoNormal">Tần Mục ngồi ở dựa trước vị trí, thân xuyên màu trắng cẩm y,
tướng mạo anh tuấn, mọi người đối hắn hâm mộ không thôi, có thể ở rể Khương
gia, cưới đến da bạch mạo mỹ lão bà, đây là đã tu luyện mấy đời phúc phận.<o:p></o:p></p><p class="MsoNormal">“Sở Vương triều, mười vạn đại quân binh bên sông bắc, kia
trường hợp biển người tấp nập, tinh kỳ che lấp mặt trời, chỉ thấy hổ đại tướng
quân nhất kiếm ngang trời.”<o:p></o:p></p><p class="MsoNormal">“Kia nhất kiếm, đoạn lãng khai sơn.”<o:p></o:p></p><p class="MsoNormal">“Hổ đại tướng quân ở vạn quân tùng trung lấy địch đem thủ cấp,
sợ tới mức mười vạn đại quân bị đánh cho tơi bời, làm điểu thú tán, một trận
chiến vang danh thanh sử.”<o:p></o:p></p><p class="MsoNormal">“Hảo!”<o:p></o:p></p><p class="MsoNormal">Quán trà mọi người vỗ tay trầm trồ khen ngợi.<o:p></o:p></p><p class="MsoNormal">Tần Mục ánh mắt lửa nóng, nhất kiếm đoạn giang, đây là vương
hầu khanh tướng thực lực, những cái đó tiên sơn thánh trong đất thế ngoại cao
nhân chỉ biết càng cường.<o:p></o:p></p><p class="MsoNormal">Sắc trời không còn sớm, Tần Mục thưởng thuyết thư tiên sinh
hai quả tiền đồng, mang theo bên cạnh hai bao dược về nhà.<o:p></o:p></p><p class="MsoNormal">“Tần gia đi thong thả.”<o:p></o:p></p><p class="MsoNormal">“Tần gia ngày mai thấy.”<o:p></o:p></p><p class="MsoNormal">Thuyết thư tiên sinh cùng chưởng quầy cung tiễn Tần Mục.<o:p></o:p></p><p class="MsoNormal">Về đến nhà.<o:p></o:p></p><p class="MsoNormal">Tần Mục thấy Khương Lạc Thần ngồi ở trong đình, cười mở miệng:
“Lão bà, hảo sao?”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần mặt đẹp băng hàn, nghiêng đầu làm lơ Tần Mục
quan tâm, không có trả lời hắn.<o:p></o:p></p><p class="MsoNormal">Nàng đều không phải là chán ghét Tần Mục.<o:p></o:p></p><p class="MsoNormal">Mà là kháng cự cuộc hôn nhân này.<o:p></o:p></p><p class="MsoNormal">Tần Mục đã thói quen nàng cao lãnh.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần cũng liền ở trước mặt hắn ngạo kiều, ở bên
ngoài không thể thiếu châm chọc mỉa mai, Tần Mục ngày thường nhường nàng.<o:p></o:p></p><p class="MsoNormal">Sau bếp.<o:p></o:p></p><p class="MsoNormal">Tiểu Lan ở chuẩn bị bữa tối.<o:p></o:p></p><p class="MsoNormal">“Cô gia, ngươi tới rồi.”<o:p></o:p></p><p class="MsoNormal">Tiểu Lan tươi cười thực ngọt, sinh kiều tiếu, là trong nhà
chỉ có nha hoàn, phụ trách hầu hạ Khương Lạc Thần.<o:p></o:p></p><p class="MsoNormal">Tần Mục làm cô gia, cũng không khi dễ tiểu Lan, còn thường
xuyên giúp nàng làm việc nhà.<o:p></o:p></p><p class="MsoNormal">Trọng sinh sau.<o:p></o:p></p><p class="MsoNormal">Tần Mục xa so bạn cùng lứa tuổi trầm ổn.<o:p></o:p></p><p class="MsoNormal">Trọng sinh trước, hắn là Yến Kinh đại học lịch sử hệ sinh
viên tốt nghiệp, cha mẹ khoẻ mạnh, không có muội muội, đi theo khảo cổ đội ngũ ở
Tây Bắc khu vực khai quật văn vật.<o:p></o:p></p><p class="MsoNormal">Ra ngoài khảo cổ trên đường, Tần Mục gặp được bão cát cùng đội
ngũ tách ra.<o:p></o:p></p><p class="MsoNormal">Sau lại lại tao ngộ sương mù tím hôn mê, tỉnh lại khi, đã là
trong tã lót trẻ con, đi theo gia gia khắp nơi phiêu bạc mấy năm, sau lại bị
gia gia gởi nuôi ở Khương gia.<o:p></o:p></p><p class="MsoNormal">Khương gia là Giang Bắc Thành lớn nhất gia tộc.<o:p></o:p></p><p class="MsoNormal">Tần Mục ở Khương gia quá điệu thấp sinh hoạt.<o:p></o:p></p><p class="MsoNormal">Nửa năm trước, ở Khương gia lão tộc trưởng yêu cầu hạ, Tần Mục
ở rể Khương gia.<o:p></o:p></p><p class="MsoNormal">Có Khương gia che chở, hắn ở Giang Bắc Thành sinh hoạt quá đến
có tư có vị.<o:p></o:p></p><p class="MsoNormal">Tần Mục ngồi ở tiểu bếp lò trước ngao dược.<o:p></o:p></p><p class="MsoNormal">Này đó dược cũng không tiện nghi, tuy rằng là chút không vào
phẩm linh dược, nhưng giá cả sang quý.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần mỗi tháng lãnh tiền hữu hạn, này đó đều là Tần
Mục chính mình kiếm tiền.<o:p></o:p></p><p class="MsoNormal">Ngao dược khi.<o:p></o:p></p><p class="MsoNormal">Tần Mục nhắm mắt tu luyện <span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">《</span> ngưng thần quyết <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">》</span>.<o:p></o:p></p><p class="MsoNormal">Hắn ý thức xuất hiện ở kim sắc thức hải trung.<o:p></o:p></p><p class="MsoNormal">Thức hải trung có cây màu tím cây nhỏ.<o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> Thiên Đạo thụ <span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> cấp bậc: LV7<span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> kinh nghiệm: 698700<span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> đồng vàng: 11028<span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal">Hai cái canh giờ qua đi.<o:p></o:p></p><p class="MsoNormal">Tần Mục thông qua tu luyện ngưng thần quyết, đạt được hai điểm
kinh nghiệm cùng hai quả đồng vàng.<o:p></o:p></p><p class="MsoNormal">Đinh!<o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> Thiên Đạo thụ <span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> cấp bậc: LV8<span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> kinh nghiệm: 0800<span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> đồng vàng: 11030<span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> thăng cấp khen thưởng: Miễn phí mua sắm một vạn đồng vàng
dưới thương phẩm một kiện <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal">“Này khen thưởng không tồi.”<o:p></o:p></p><p class="MsoNormal">Hắn vốn dĩ liền ở tích cóp đồng vàng, chuẩn bị mua sắm hồn kỹ,
hiện tại có thể tiết kiệm được rất nhiều đồng vàng.<o:p></o:p></p><p class="MsoNormal">Hắn dùng ý niệm mở ra thương thành, bên trong thương phẩm
linh lang trước mắt, công pháp, võ kỹ, thần binh, thiên trân địa bảo, việc lạ
gì cũng có.<o:p></o:p></p><p class="MsoNormal">Tần Mục lựa chọn <span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">《</span> Thiên Cương kiếm trận <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">》</span>.<o:p></o:p></p><p class="MsoNormal">Này bổn hồn kỹ hắn rất sớm phía trước đã nhìn trúng.<o:p></o:p></p><p class="MsoNormal">Thần hồn võ kỹ cực kỳ hi hữu, huống chi là huyền giai trung
cấp hồn kỹ.<o:p></o:p></p><p class="MsoNormal">Tần Mục không có linh căn, vô pháp hấp thu linh khí biến cường,
trải qua nhiều năm nếm thử, hắn tìm được hai loại không thường thấy tu tiên
phương pháp.<o:p></o:p></p><p class="MsoNormal">Luyện thể võ giả cùng tu thần phù sư.<o:p></o:p></p><p class="MsoNormal">Tu luyện thần hồn người tu tiên rất ít, Tần Mục còn không có
ở Giang Bắc Thành đụng tới quá; luyện thể tu sĩ không ít, nhưng mà đa số người
thành tựu cũng không cao.<o:p></o:p></p><p class="MsoNormal">Hắn lựa chọn <span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">《</span> Thiên Cương kiếm trận <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">》</span>.<o:p></o:p></p><p class="MsoNormal">Hồn kỹ dấu vết ở thức hải nội.<o:p></o:p></p><p class="MsoNormal">Không cần học tập là có thể nắm giữ yếu lĩnh.<o:p></o:p></p><p class="MsoNormal">Cấu thành kiếm trận muốn ngưng tụ đại lượng phù văn.<o:p></o:p></p><p class="MsoNormal">Kiếm trận nhập môn yêu cầu ngưng tụ 36 nói Thiên Cương phù
văn kiếm, chút thành tựu là ngưng tụ 72 nói Thiên Cương phù văn kiếm, đại thành
là ngưng tụ 360 nói Thiên Cương phù văn kiếm, viên mãn là 3000 nói Thiên Cương
phù văn kiếm.<o:p></o:p></p><p class="MsoNormal">Này bổn hồn kỹ uy lực cường đại.<o:p></o:p></p><p class="MsoNormal">“Đem này bộ hồn kỹ phát huy đến mức tận cùng, chém giết Kim
Đan cường giả cũng không phải việc khó.”<o:p></o:p></p><p class="MsoNormal">Thiên Đạo thụ mỗi lần thăng cấp, Tần Mục đều có thể đạt được
không ít chỗ tốt, chỉ gian nhẫn không gian, tăng cường thân thể long huyết đan,
chém sắt như chém bùn linh kiếm chờ.<o:p></o:p></p><p class="MsoNormal">Ngưng Khí hai tầng tu sĩ, đơn lực cánh tay lượng đại khái
hai trăm cân, Tần Mục đơn cánh tay lại có 5000 cân.<o:p></o:p></p><p class="MsoNormal">Đương nhiên đây là thuần thân thể lực lượng.<o:p></o:p></p><p class="MsoNormal">Ngưng Khí bốn tầng trở lên, linh khí có thể ngoại phóng,
cũng có thể thêm vào mình thân, lực lượng cũng sẽ tăng lên.<o:p></o:p></p><p class="MsoNormal">Ngưng Khí bảy tầng trở lên, linh khí có thể ngưng tụ thành
thất luyện, dùng linh khí tiến hành cự ly xa công kích.<o:p></o:p></p><p class="MsoNormal">Ngưng Khí chín tầng trở lên, linh khí ngưng tụ thành càng
tinh thuần linh lực, lực công kích thành tăng gấp bội thêm.<o:p></o:p></p><p class="MsoNormal">Tần Mục đơn thuần dùng thân thể lực lượng đều có thể nghiền
áp Ngưng Khí cảnh tu sĩ.<o:p></o:p></p><p class="MsoNormal">Ngưng Khí, Trúc Cơ, kết đan, đây là thế tục thường thấy ba
cái cảnh giới, càng cường đại người tu tiên rời xa thế tục, ở tiên sơn động
thiên trung.<o:p></o:p></p><p class="MsoNormal">Tu luyện thần hồn nhất thường thấy chính là phù sư.<o:p></o:p></p><p class="MsoNormal">Phù sư phân cửu phẩm.<o:p></o:p></p><p class="MsoNormal">Nhất phẩm phù sư, nhị phẩm đại phù sư, tam phẩm Phù Tông, tứ
phẩm đại Phù Tông.<o:p></o:p></p><p class="MsoNormal">Tần Mục hiện tại là nhị phẩm đỉnh đại phù sư, có thể nhẹ
nhàng xây dựng ra nhị phẩm linh trận, tương đương với Trúc Cơ kỳ người tu hành.<o:p></o:p></p><p class="MsoNormal">Cận chiến đấu có lẽ không phải Trúc Cơ kỳ tu sĩ đối thủ,
nhưng nếu trước tiên bày trận, lại cường Trúc Cơ kỳ cũng có thể dễ dàng mạt
sát.<o:p></o:p></p><p class="MsoNormal">Toàn bộ Giang Bắc Thành, bao gồm Khương Lạc Thần, không ai
biết Tần Mục chân thật tu vi.<o:p></o:p></p><p class="MsoNormal">Trong nồi dược hảo.<o:p></o:p></p><p class="MsoNormal">Tần Mục đem dược đảo ra tới phóng lạnh.<o:p></o:p></p><p class="MsoNormal">Thuận tiện thả chút đường phèn ở bên trong.<o:p></o:p></p><p class="MsoNormal">Tiểu Lan không ở phòng bếp, hắn đành phải đem phóng lạnh sau
dược mang sang phòng bếp.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần ngồi ở trong đình.<o:p></o:p></p><p class="MsoNormal">“Lão bà, dược không năng, sấn nhiệt uống.”<o:p></o:p></p><p class="MsoNormal">Tần Mục cười cầm chén thuốc đưa cho Khương Lạc Thần.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần người mặc váy trắng, bàn tay mềm chống cằm,
băng da tuyết nhan, biểu tình cao lãnh.<o:p></o:p></p><p class="MsoNormal">Tần Mục đều cầm chén đưa tới trước mặt, Khương Lạc Thần cũng
không hảo cự tuyệt, uống xong dược về sau, thanh lãnh nói: “Cảm ơn, ngày mai
không cần lại ngao.”<o:p></o:p></p><p class="MsoNormal">Trải qua hai ngày tu dưỡng, nàng đã khỏi hẳn.<o:p></o:p></p><p class="MsoNormal">Tần Mục cười gật đầu, cũng không nói gì thêm, Khương Lạc Thần
bị khi dễ, hắn cũng rất đau lòng, bất quá Khương Linh cũng là nha đầu, cũng liền
không để ý.<o:p></o:p></p><p class="MsoNormal">“Này dược như thế nào là ngọt?”<o:p></o:p></p><p class="MsoNormal">“Không nghĩ ngươi chịu khổ, cho nên thả đường.”<o:p></o:p></p><p class="MsoNormal">Tần Mục bưng không chén rời đi.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần nhìn Tần Mục rời đi, tâm tình phức tạp, ta
không thể mắc mưu, nam nhân đều là kẻ lừa đảo.<o:p></o:p></p><p class="MsoNormal">Đêm khuya.<o:p></o:p></p><p class="MsoNormal">Tần Mục nghe được trong viện huy kiếm thanh âm, không nghĩ tới
Khương Lạc Thần còn ở tu luyện.<o:p></o:p></p><p class="MsoNormal">“Vô dụng.”<o:p></o:p></p><p class="MsoNormal">Liền tính lại nỗ lực, không có ngoại quải, đều là phí công,
Tần Mục lắc lắc đầu.<o:p></o:p></p><p class="MsoNormal">Như có như không kim quang dừng ở đình viện, đó là mắt thường
khó có thể phát hiện phù văn, tương đối đơn sơ Tụ Linh Trận thành hình, chung
quanh linh khí hướng đình viện vọt tới.<o:p></o:p></p><p class="MsoNormal"><span lang="FR">Ai làm ngươi là
lão bà của ta.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Sáng sớm.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đình viện vang
lên dễ nghe tiếng cười.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Ngưng Khí
ba tầng!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
hưng phấn đẩy ra cửa phòng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tần Mục ở án thư
vẽ tranh.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Này du mộc
đầu.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cho hắn nói, cũng
sẽ không minh bạch.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
khôi phục bình tĩnh, Ngưng Khí ba tầng thực bình thường, còn cần càng thêm nỗ lực,
thức đêm tu tiên có chút vất vả, nàng chui vào ổ chăn nghỉ ngơi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ổ chăn so ngày
thường ấm áp, nàng ngủ thật sự hương, trên mặt treo mê người tươi cười.<o:p></o:p></span></p><p class="MsoNormal">































































































































































































































































































</p><p class="MsoNormal">Quảng Cáo<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (34, 2, N'Chương 2', CAST(N'2021-09-12T08:31:14.757' AS DateTime), N'<p class="MsoNormal">Tần Mục buông trong tay bút lông sói bút.<o:p></o:p></p><p class="MsoNormal">Họa trung là dưới ánh trăng múa kiếm Khương Lạc Thần, bạch y
tố váy, tóc đen phất phới, bạc phong táp đạp, mạn diệu dáng người, giống như
thiên tiên.<o:p></o:p></p><p class="MsoNormal">So chân nhân còn muốn xinh đẹp vài phần.<o:p></o:p></p><p class="MsoNormal">“Hại, họa thật là đẹp mắt.”<o:p></o:p></p><p class="MsoNormal">Mỗi ngày sáng sớm, Tần Mục đều sẽ luyện tập phù văn cùng vẽ
tranh, hắn phát hiện chuyên chú dùng thần, có thể đạt được kinh nghiệm cùng đồng
vàng, này đó đều rất hao tâm tốn sức, cho nên Tần Mục buổi chiều đều sẽ ra cửa
thả lỏng.<o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> Thiên Đạo thụ <span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> cấp bậc: lv8<span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> kinh nghiệm: 16800<span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> đồng vàng: 11046<span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal">Sáng sớm đạt được 8 giờ kinh nghiệm giá trị, ngày hôm qua
ban đêm vận chuyển <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">《</span> ngưng thần quyết <span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">》</span> bốn phía thiên, cũng đạt được 8 giờ
kinh nghiệm, tháng này nỗ điểm lực, có lẽ có thể thăng cấp.<o:p></o:p></p><p class="MsoNormal">Thiên Đạo thụ lại thăng cấp, hồn lực tăng lên, ta phỏng chừng
cũng có thể trở thành tam phẩm Phù Tông.<o:p></o:p></p><p class="MsoNormal">Phù Tông phóng nhãn Giang Châu đều là đại nhân vật.<o:p></o:p></p><p class="MsoNormal">Theo Tần Mục biết, Nam Quốc chỉ có vị tứ phẩm đại Phù Tông,
vị kia tọa trấn hoàng thành, bảo hộ hoàng thành đại trận, thân phận tôn sùng, bị
tôn vì quốc sư.<o:p></o:p></p><p class="MsoNormal">Có thể thấy được phù sư địa vị có bao nhiêu cao.<o:p></o:p></p><p class="MsoNormal">Tần Mục đem họa thu vào ngăn kéo.<o:p></o:p></p><p class="MsoNormal">Hắn nhìn ngủ say Khương Lạc Thần, thật vất vả nghe được nàng
tiếng cười, tâm tình đặc biệt thoải mái.<o:p></o:p></p><p class="MsoNormal">Tần Mục chuẩn bị ra phủ đi dạo, gặp được tiểu Lan, người sau
cung kính nói: “Cô gia, lão gia làm tiểu thư cùng ngài đi tam trưởng lão trong
nhà cơm trưa.”<o:p></o:p></p><p class="MsoNormal">Lão bà mỗi lần đi ăn cơm đều sẽ bị khinh bỉ, vẫn là làm tiểu
Lan ở nhà lộng điểm ăn.<o:p></o:p></p><p class="MsoNormal">“Tiểu Lan, giữa trưa làm điểm trứng vịt Bắc Thảo thịt nạc
cháo, tiểu thư trở về có lẽ sẽ ăn.”<o:p></o:p></p><p class="MsoNormal">“Tốt, cô gia.”<o:p></o:p></p><p class="MsoNormal">Tiểu Lan ngoan ngoãn gật đầu.<o:p></o:p></p><p class="MsoNormal">Tần Mục giáo hội tiểu Lan làm các loại thức ăn, Khương Lạc
Thần rất là thích.<o:p></o:p></p><p class="MsoNormal">Tam trưởng lão là Khương Lạc Thần gia gia, thuộc về Khương
gia dòng chính, lão tộc trưởng hậu nhân.<o:p></o:p></p><p class="MsoNormal">Dòng chính chưởng quản Khương gia trang viên cùng tửu lầu,
chiếm cứ Khương gia tuyệt đại bộ phận nguồn thu nhập.<o:p></o:p></p><p class="MsoNormal">Tới gần giữa trưa.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần mỹ mỹ tỉnh lại.<o:p></o:p></p><p class="MsoNormal">Nghe nói gia yến.<o:p></o:p></p><p class="MsoNormal">Nàng vội vã ra cửa.<o:p></o:p></p><p class="MsoNormal">Tần Mục không nhanh không chậm theo ở phía sau, nghĩ thầm đi
cũng là bị khinh bỉ, cái gì cấp.<o:p></o:p></p><p class="MsoNormal">Tam trưởng lão sân ở Khương gia trung tâm khu vực, sân cổ
xưa rộng lớn, hắn có ba cái nhi tử, ba cái tôn tử cùng ba cái cháu gái.<o:p></o:p></p><p class="MsoNormal">Đại nhi tử khương núi xa chưởng quản tửu lầu.<o:p></o:p></p><p class="MsoNormal">Con thứ hai khương xa xuyên chưởng quản trang viên.<o:p></o:p></p><p class="MsoNormal">Con thứ ba Khương Viễn Thành phụ trách nội vụ.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần ở tiểu bối bài đệ tam.<o:p></o:p></p><p class="MsoNormal">Đại ca khương tử phàm, cùng thế hệ trung người xuất sắc,
Thanh Sơn Tông ngoại môn đệ tử, sớm đã tiến vào Trúc Cơ kỳ.<o:p></o:p></p><p class="MsoNormal">Nhị tỷ khương Lạc nguyệt, mười chín tuổi, Ngưng Khí tám tầng,
tiến vào Thanh Sơn Tông hy vọng xa vời.<o:p></o:p></p><p class="MsoNormal">Tứ đệ khương tử sơ, 17 tuổi, Ngưng Khí sáu tầng, ở Khương
gia trung quy trung củ.<o:p></o:p></p><p class="MsoNormal">Ngũ muội Khương Lạc Âm, mười lăm tuổi, Ngưng Khí bảy tầng,
là Khương gia chỉ ở sau đại ca thiên kiêu, Khương Lạc Thần thân muội muội,
trong tộc trọng điểm bồi dưỡng đối tượng.<o:p></o:p></p><p class="MsoNormal">Lục đệ Khương Tử Bảo, mười bốn tuổi, Ngưng Khí ba tầng,
trung quy trung củ.<o:p></o:p></p><p class="MsoNormal">Đại ca ở Thanh Sơn Tông tu luyện.<o:p></o:p></p><p class="MsoNormal">Còn lại tiểu bối đều ở đình viện nói chuyện phiếm.<o:p></o:p></p><p class="MsoNormal">“Tỷ.”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Âm nhiệt tình chạy tới.<o:p></o:p></p><p class="MsoNormal">Nàng dáng người nhỏ xinh, da thịt tuyết nộn, đơn đuôi ngựa,
nhìn thực đáng yêu.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần cười gật đầu.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Âm hờ hững nhìn mắt Tần Mục.<o:p></o:p></p><p class="MsoNormal">Nguyên bản cùng Tần Mục thành hôn hẳn là Khương Lạc Âm, đây
là tộc trưởng mệnh lệnh.<o:p></o:p></p><p class="MsoNormal">Ỷ vào chính mình thiên phú dị bẩm, Khương Lạc Âm chết sống
không đáp ứng, cuối cùng chỉ có thể ủy khuất Khương Lạc Thần.<o:p></o:p></p><p class="MsoNormal">Tần Mục không thích Khương Lạc Âm, tính cách kiêu ngạo, tuổi
nhỏ lại, chính yếu là không Khương Lạc Thần xinh đẹp, cũng liền không ý kiến.<o:p></o:p></p><p class="MsoNormal">Lục đệ Khương Tử Bảo thò qua tới, tiểu béo trên mặt tràn ngập
tò mò: “Tam tỷ, nghe nói ngươi bị Khương Linh đánh bại, có phải hay không thật
sự?”<o:p></o:p></p><p class="MsoNormal">“Ha hả, Tam muội, không bản lĩnh cũng đừng cậy mạnh, bại bởi
dòng bên Khương Linh, quả thực là cho chúng ta dòng chính mất mặt.” Nhị tỷ
khương Lạc nguyệt đứng ra, không lưu tình chút nào răn dạy Khương Lạc Thần.<o:p></o:p></p><p class="MsoNormal">Tần Mục khẽ nhíu mày.<o:p></o:p></p><p class="MsoNormal">Khương tử mới nhìn bầu không khí không đúng, ra tới giảng
hòa, cười nói: “Nhị tỷ, ngươi đừng nói như vậy, Tam tỷ cái gì thực lực ngươi lại
không phải không biết.”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần vẻ mặt đau khổ không nói lời nào.<o:p></o:p></p><p class="MsoNormal">Khương Lạc nguyệt khinh thường nói: “Thiết.”<o:p></o:p></p><p class="MsoNormal">“Mặc kệ là ai, chỉ cần cho chúng ta dòng chính mất mặt, ta đều
sẽ mắng.”<o:p></o:p></p><p class="MsoNormal">Bọn tiểu bối không dám phản bác.<o:p></o:p></p><p class="MsoNormal">Đại ca không ở, nhị tỷ chính là lão đại.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Âm lập tức nói sang chuyện khác, phồng lên khuôn mặt
nhỏ nói: “Tỷ, ta vốn dĩ tưởng cho ngươi báo thù, nhưng Khương Linh trốn tránh
ta, chờ đến họp thường niên, xem ta như thế nào thu thập nàng.”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần vui mừng xoa xoa muội muội, “Tỷ tỷ sẽ chính
mình báo thù.”<o:p></o:p></p><p class="MsoNormal">Nàng là hiếu thắng nữ nhân.<o:p></o:p></p><p class="MsoNormal">Ăn qua mệt tuyệt đối muốn tìm về bãi.<o:p></o:p></p><p class="MsoNormal">“Ha hả.”<o:p></o:p></p><p class="MsoNormal">Khương Lạc nguyệt nghe vậy cười lạnh.<o:p></o:p></p><p class="MsoNormal">“Tu luyện mười mấy năm vẫn là Ngưng Khí hai tầng, ngươi chẳng
lẽ tưởng đem chúng ta dòng chính mặt đều ném quang?”<o:p></o:p></p><p class="MsoNormal">Tần Mục nghe vậy có chút sinh khí, này nhị tỷ nói chuyện thật
khắc nghiệt, đều là người một nhà, Khương Lạc Thần trừ bỏ so nàng xinh đẹp, tựa
hồ cũng không có địa phương khác so nàng cường, nói chuyện thật quá đáng.<o:p></o:p></p><p class="MsoNormal">Đổi thành những người khác, Tần Mục bảo đảm đi lên trừu
nàng, thật không đem ta để vào mắt.<o:p></o:p></p><p class="MsoNormal">Ghen ghét lão bà của ta lớn lên đẹp?<o:p></o:p></p><p class="MsoNormal">Ở Tần Mục chuẩn bị phản bác thời điểm, có trung niên nam tử
từ đại đường đi ra.<o:p></o:p></p><p class="MsoNormal">Trung niên bộ mặt kiên nghị, dáng người gầy.<o:p></o:p></p><p class="MsoNormal">“Phụ thân.”<o:p></o:p></p><p class="MsoNormal">“Tam bá.”<o:p></o:p></p><p class="MsoNormal">“Nhạc phụ.”<o:p></o:p></p><p class="MsoNormal">Khương Viễn Thành nhìn về phía Khương Lạc Thần cùng Tần Mục.<o:p></o:p></p><p class="MsoNormal">“Các ngươi cùng ta tới.”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần bĩu môi, phụ thân từ trước đến nay bất công,
phỏng chừng lại muốn tìm lý do răn dạy chính mình.<o:p></o:p></p><p class="MsoNormal">Muội muội thiên phú hảo, tài nguyên đều là muội muội, còn
làm nàng thế muội muội cùng Tần Mục thành hôn.<o:p></o:p></p><p class="MsoNormal">Khương Viễn Thành mang hai người đi vào đình viện góc, trầm
giọng nói: “Lạc Thần, ngươi hiện tại không phải hài tử, đã thành hôn, làm việc
không thể xúc động.”<o:p></o:p></p><p class="MsoNormal">“<span lang="FR">Ta sai rồi,
phụ thân.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
cúi đầu, trong lòng cũng không chịu phục.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tần Mục an tĩnh đứng
ở phụ cận.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Ngươi cùng
Tần Mục sớm hay muộn muốn đi phụ trách gia tộc sản nghiệp, ta cùng ngươi Đại bá
Nhị bá thương lượng quá, có thể cho các ngươi trước tiên qua đi.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Tửu lầu
cùng trang viên tùy các ngươi tuyển.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
không có trả lời.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nàng nắm nắm tay,
đi gia tộc sản nghiệp, liền ý nghĩa không có bồi dưỡng giá trị, mất đi tu luyện
cơ hội, nửa đời sau quá người thường sinh hoạt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Viễn Thành
nhìn về phía Tần Mục.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Tiểu mục,
ngươi xem thế nào?”<o:p></o:p></span></p><p class="MsoNormal">“Đều nghe nhạc phụ an bài.”<o:p></o:p></p><p class="MsoNormal">Tần Mục cười trả lời.<o:p></o:p></p><p class="MsoNormal">Hắn không thèm để ý đi nơi nào, dù sao có Thiên Đạo thụ cùng
Thiên Đạo thương thành, ở nơi nào đều là tu luyện.<o:p></o:p></p><p class="MsoNormal">Khương Viễn Thành đối hắn trả lời thực vừa lòng, Tần Mục là
tộc trưởng nhìn trúng hài tử, cho nên Khương Viễn Thành càng nguyện ý nghe hắn
ý kiến, không nghĩ đắc tội hắn.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần không cam lòng, nàng ngẩng đầu, ánh mắt kiên
định, “Phụ thân, chờ họp thường niên kết thúc, ta sẽ nghe theo trong tộc an
bài.”<o:p></o:p></p><p class="MsoNormal">“Không được.”<o:p></o:p></p><p class="MsoNormal">Khương Viễn Thành thái độ không dung phản bác.<o:p></o:p></p><p class="MsoNormal">Tần Mục nhìn Khương Lạc Thần, không biết nàng hôm nay sẽ lựa
chọn như thế nào, nếu nàng tiếp thu an bài, có lẽ về sau chỉ có thể đương lão bản
nương, như vậy cũng hảo, không cần giống như bây giờ vất vả.<o:p></o:p></p><p class="MsoNormal">“Phụ thân, ta từ nhỏ đem tài nguyên nhường cho muội muội, thế
nàng thành thân, ta chưa bao giờ yêu cầu quá ngài cái gì, hiện tại ta chỉ nghĩ
quá xong họp thường niên.”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần trong giọng nói mang theo khóc nức nở.<o:p></o:p></p><p class="MsoNormal">Ngay cả Tần Mục đều bội phục nàng chấp nhất.<o:p></o:p></p><p class="MsoNormal">Khương Viễn Thành có chút áy náy, bất đắc dĩ than nhẹ: “Ta
làm như vậy đều là vì các ngươi hảo, chờ họp thường niên kết thúc, liền không
phải do các ngươi, đến lúc đó tộc nhân đều nhìn, các ngươi có lẽ sẽ bị phân phối
đến xa xôi thôn trấn.”<o:p></o:p></p><p class="MsoNormal">“Không quan hệ, ta nguyện ý tiếp thu.” Khương Lạc Thần ngữ
khí cường ngạnh, nàng không cam lòng bình thường, đây là nàng cuối cùng cơ hội,
không muốn dễ dàng từ bỏ.<o:p></o:p></p><p class="MsoNormal">“Đa tạ nhạc phụ.”<o:p></o:p></p><p class="MsoNormal">Tần Mục cười chắp tay.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần lại trừng mắt nhìn hắn liếc mắt một cái.<o:p></o:p></p><p class="MsoNormal">Gia yến thượng.<o:p></o:p></p><p class="MsoNormal">Mọi người đều quy củ ngồi.<o:p></o:p></p><p class="MsoNormal">Tam trưởng lão vội tranh thủ thời gian tổ chức gia yến, khẳng
định có chuyện quan trọng muốn tuyên bố.<o:p></o:p></p><p class="MsoNormal">“Họp thường niên buông xuống, năm nay có chút đặc biệt,
Thanh Sơn Tông chấp sự sẽ đến Khương gia, các ngươi nếu là biểu hiện xuất sắc,
có lẽ có thể miễn quá môn thí, trực tiếp tiến vào Thanh Sơn Tông.” Tam trưởng
lão cười nói.<o:p></o:p></p><p class="MsoNormal">Nghe vậy, bọn tiểu bối ánh mắt lửa nóng.<o:p></o:p></p><p class="MsoNormal">Thanh Sơn Tông là Nam Quốc tam đại tông môn chi nhất, thực lực
hùng hậu, có được đại lượng tu luyện tài nguyên, tiến vào Thanh Sơn Tông liền ý
nghĩa cá chép nhảy Long Môn.<o:p></o:p></p><p class="MsoNormal">Toàn bộ Khương gia, cũng liền ba cái tiểu bối ở Thanh Sơn
Tông tu luyện, lại còn có đều là ngoại môn đệ tử, hai mươi năm nội không có kết
đan, nhất định phải xuống núi.<o:p></o:p></p><p class="MsoNormal">“Này ba tháng, các ngươi muốn nỗ lực tu luyện, tranh thủ
trong buổi họp thường niên lấy được hảo thành tích, ta sẽ cho các ngươi cung cấp
càng nhiều tu luyện tài nguyên.”<o:p></o:p></p><p class="MsoNormal">Bọn tiểu bối hưng phấn gật đầu.<o:p></o:p></p><p class="MsoNormal">Tần Mục cùng Khương Lạc Thần đối này không dám hứng thú.<o:p></o:p></p><p class="MsoNormal">Tần Mục là cảm thấy không thú vị.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần là tự biết tu vi không đủ.<o:p></o:p></p><p class="MsoNormal">Nhị bá khương xa xuyên trầm giọng nói: “Lão tứ, ngươi muốn
tranh thủ ở họp thường niên trước đạt tới Ngưng Khí bảy tầng.”<o:p></o:p></p><p class="MsoNormal">“<span lang="FR">Phụ thân,
ta sẽ nỗ lực.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương tử sơ tin
tưởng tràn đầy.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Còn có
ngươi tiểu bảo, nếu là kéo chân sau, xem lão tử như thế nào thu thập ngươi.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Tử Bảo cúi
đầu không dám nói lời nào.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc nguyệt
lại lắm miệng: “Ta kiến nghị tu vi không đủ vẫn là không cần tham gia họp thường
niên, miễn cho cấp dòng chính mất mặt, lão tổ tông thấy cũng sẽ không cao hứng.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
ngẩng đầu nhìn chằm chằm khương Lạc nguyệt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thực rõ ràng, nàng
là ám chỉ chính mình.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đại bá khương núi
xa tỏ vẻ tán đồng: “Lạc nguyệt nói không sai, lần này họp thường niên sự tình
quan trọng đại, lão tam cùng lão lục có thể không cần tham gia.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
nhăn mày liễu.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Tử Bảo
nhưng thật ra không sao cả, hắn cũng không hiếm lạ tham gia, thành tích kém còn
muốn ai phạt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tần Mục cũng cảm
thấy không tham gia tương đối hảo, miễn cho Khương Lạc Thần lên đài bị đánh.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tam trưởng lão
tươi cười hòa ái, “Họp thường niên sao, tiểu gia hỏa nhóm đều tham gia mới náo
nhiệt.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc nguyệt
vẫn là nhịn không được mở miệng: “Gia gia, Tam muội vẫn là Ngưng Khí hai tầng,
nàng năm trước sẽ, không phải cho chúng ta dòng chính mất mặt?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tam trưởng lão
lúc này chú ý tới Khương Lạc Thần, có chút kinh ngạc, “Ngưng Khí ba tầng, Lạc
Thần gần nhất tiến bộ cũng là rất lớn, đều tham gia, nếu là lão tổ tông vui vẻ,
bảo không chuẩn ban các ngươi cái gì cơ duyên.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngưng Khí cảnh,
thường nhân nhìn không ra khác biệt, tam trưởng lão dù sao cũng là thực lực
thâm hậu hạ vị kết đan cường giả.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thứ phẩm Hỏa linh
căn có thể tu luyện đến loại này cảnh giới, vẫn là rất không dễ dàng.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Cảm ơn gia
gia.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
trên mặt hiện ra tươi cười, Tần Mục cũng đi theo vui vẻ, rốt cuộc không hề mặt ủ
mày ê, như vậy đẹp lão bà, làm gì cả ngày vẻ mặt đau khổ.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc nguyệt
như cũ khinh thường.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngưng Khí ba tầng,
không phải là phế vật.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Tỷ tỷ,
chúc mừng ngươi.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Âm dẫn
đầu chúc mừng nàng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần đột
phá bất quá là là kiện hạt mè đậu đại việc nhỏ, thực mau liền không ai để ý.<o:p></o:p></span></p><p class="MsoNormal">Gia yến sau khi kết thúc.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần vội vàng rời đi.<o:p></o:p></p><p class="MsoNormal">Tần Mục cùng nàng sóng vai mà đi.<o:p></o:p></p><p class="MsoNormal">“Họp thường niên còn sớm, không cần sốt ruột.” Tần Mục làm
Khương Lạc Thần không cần lo âu.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần trầm mặc không nói.<o:p></o:p></p><p class="MsoNormal">Họp thường niên kết thúc, không có giá trị tiểu bối liền sẽ
phân phối đi gia tộc sản nghiệp, nàng có thể nào không nóng nảy.<o:p></o:p></p><p class="MsoNormal">Đây là nàng cuối cùng cơ hội.<o:p></o:p></p><p class="MsoNormal">“Họp thường niên kết thúc không nhất định phải lập tức rời
đi, nghe nói sinh hài tử có thể ở trong tộc nhiều đãi hai năm?”<o:p></o:p></p><p class="MsoNormal">“Ngươi nằm mơ.”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần quát nhẹ, mắt đẹp trừng mắt Tần Mục, còn tưởng
rằng hắn là an ủi chính mình, sau khi nghe xong muốn đánh người, nâng lên tiểu
nắm tay ngừng ở không trung, nghĩ đến Tần Mục cho chính mình chịu đựng dược,
cũng không hạ thủ được.<o:p></o:p></p><p class="MsoNormal">Trở lại nhà mình sân.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần uống lên hai chén cháo thịt.<o:p></o:p></p><p class="MsoNormal">Nhị tỷ trào phúng.<o:p></o:p></p><p class="MsoNormal">Phụ thân bất công.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần càng nghĩ càng giận.<o:p></o:p></p><p class="MsoNormal">“Sớm hay muộn muốn cho đại gia đối ta lau mắt mà nhìn.”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần ở trong đình tu luyện.<o:p></o:p></p><p class="MsoNormal">Còn có ba tháng chính là họp thường niên.<o:p></o:p></p><p class="MsoNormal">Tưởng trong buổi họp thường niên chứng minh chính mình, liền
tính nàng không biết ngày đêm tu luyện, hy vọng như cũ xa vời.<o:p></o:p></p><p class="MsoNormal">Hiện tại có thể giúp nàng chỉ có Tần Mục.<o:p></o:p></p><p class="MsoNormal">





























































































































































































































































































































</p><p class="MsoNormal">Rõ ràng có thể dựa mặt ăn cơm, phế tài lão bà lại tưởng biến
cường, thật là làm người đau đầu.<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (34, 3, N'Chương 3', CAST(N'2021-09-12T08:31:40.330' AS DateTime), N'<p class="MsoNormal">Tần Mục nhắm mắt tiến vào Thiên Đạo thương thành.<o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> Nghịch Mệnh Đan: Nghịch thiên sửa mệnh <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal">“Mười vạn tám? Quấy rầy.”<o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> lột phàm đan: Thoát thai hoán cốt <span style="font-family:
&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal">“9000 tám! Như vậy quý?”<o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> Tẩy Tủy Đan: Cải thiện thể chất, bài trừ dơ bẩn, linh khí
tôi thể <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal">“Cư nhiên có nhiều như vậy chỗ tốt, Tẩy Tủy Đan giống như
không tồi, tuy rằng muốn 3000 đồng vàng, ai làm ngươi là lão bà của ta.” Tần Mục
lựa chọn Tẩy Tủy Đan.<o:p></o:p></p><p class="MsoNormal">Điểm đánh đổi.<o:p></o:p></p><p class="MsoNormal">Tẩy Tủy Đan xuất hiện ở nhẫn không gian.<o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> kinh nghiệm: 46800<span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span> đồng vàng: 8046<span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><o:p></o:p></p><p class="MsoNormal">Mỗi tiêu hao một trăm đồng vàng đều sẽ đạt được một chút
kinh nghiệm giá trị, Tần Mục tiền cũng không tính bạch hoa.<o:p></o:p></p><p class="MsoNormal">Vừa vặn phòng bếp có phó dược không ngao.<o:p></o:p></p><p class="MsoNormal">Hắn đi vào phòng bếp.<o:p></o:p></p><p class="MsoNormal">Đem Tẩy Tủy Đan bỏ vào dược.<o:p></o:p></p><p class="MsoNormal">Chạng vạng.<o:p></o:p></p><p class="MsoNormal">Hắn bưng dược tìm được Khương Lạc Thần, nơi này chính là Tẩy
Tủy Đan, đến tận mắt nhìn thấy nàng uống xong đi.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần tu luyện mệt mỏi ở trong đình nghỉ ngơi.<o:p></o:p></p><p class="MsoNormal">“Lão bà, nên uống dược.”<o:p></o:p></p><p class="MsoNormal">“Không uống.”<o:p></o:p></p><p class="MsoNormal">“Cuối cùng một chén, tổng không thể lãng phí.”<o:p></o:p></p><p class="MsoNormal">“<span lang="FR">Ta và
ngươi nói qua, ta hảo.”<o:p></o:p></span></p><p class="MsoNormal">Khương Lạc Thần thanh âm thanh lãnh.<o:p></o:p></p><p class="MsoNormal">Tần Mục bổn không nghĩ quán nàng, hắn dùng quá long huyết
đan, ăn qua các loại thiên trân địa bảo, Tẩy Tủy Đan đối hắn tác dụng cũng
không lớn.<o:p></o:p></p><p class="MsoNormal">Hắn đem chén đặt ở Khương Lạc Thần trước mặt.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần quay đầu đi, không đáng để ý tới.<o:p></o:p></p><p class="MsoNormal">Tần Mục nghĩ đến thiện ý nói dối, trầm giọng nói: “Nơi này
có linh dược.”<o:p></o:p></p><p class="MsoNormal">“Linh dược?”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần trong mắt hiện lên hồ nghi.<o:p></o:p></p><p class="MsoNormal">Tần Mục trịnh trọng gật đầu, lại lần nữa cường điệu: “Là nhị
phẩm linh chi.”<o:p></o:p></p><p class="MsoNormal">“Nhị phẩm linh chi?” Khương Lạc Thần càng thêm nghi hoặc, nhị
phẩm linh dược liền tính Khương gia đều hiếm thấy, họp thường niên quán quân
khen thưởng cũng bất quá là cây bình thường tam phẩm linh dược.<o:p></o:p></p><p class="MsoNormal">“Không sai.”<o:p></o:p></p><p class="MsoNormal">Tần Mục trịnh trọng gật đầu.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần cùng Tần Mục ở chung hồi lâu, biết hắn thiện
lương, sẽ không hại chính mình.<o:p></o:p></p><p class="MsoNormal">“Ngươi như thế nào được đến nhị phẩm linh chi?”<o:p></o:p></p><p class="MsoNormal">“Ta thấy ngươi bị thương thực lo lắng, hy vọng ngươi có thể
sớm một chút khôi phục, nghe nói trong núi có các loại thiên trân địa bảo, có lẽ
là ta vận khí tốt.”<o:p></o:p></p><p class="MsoNormal">Tần Mục mặt không đỏ, tim không đập, nói dối thời điểm còn
thanh âm và tình cảm phong phú.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần lòng bàn tay nhéo đem hãn.<o:p></o:p></p><p class="MsoNormal">“Hắc Sơn vùng cấm?”<o:p></o:p></p><p class="MsoNormal">“Ân.”<o:p></o:p></p><p class="MsoNormal">Tần Mục gật đầu.<o:p></o:p></p><p class="MsoNormal">“Ngươi điên rồi!”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần sợ tới mức đứng lên.<o:p></o:p></p><p class="MsoNormal">Nàng nhấp miệng, mặt đẹp tràn đầy khiếp sợ, Hắc Sơn là Nhân
tộc cấm địa, nghe đồn có Ma tộc cầm tù ở trong núi, trong núi biến là hung thú.<o:p></o:p></p><p class="MsoNormal">Bên trong có thiên trân địa bảo không giả, nhưng cho dù là
người tu tiên cũng là có đi mà không có về.<o:p></o:p></p><p class="MsoNormal">Tần Mục tự nhiên không có đi Hắc Sơn.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần tâm tình phức tạp, hắn cư nhiên có thể vì ta
lấy thân phạm hiểm, dược thật là linh chi?<o:p></o:p></p><p class="MsoNormal">Nàng vô pháp xác định.<o:p></o:p></p><p class="MsoNormal">“Về sau không chuẩn vì ta mạo hiểm.”<o:p></o:p></p><p class="MsoNormal">“Lão bà, ngươi đây là đau lòng ta?”<o:p></o:p></p><p class="MsoNormal">Tần Mục hắc hắc cười không ngừng.<o:p></o:p></p><p class="MsoNormal">“Ta không nghĩ áy náy.”<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần không dám nhìn Tần Mục.<o:p></o:p></p><p class="MsoNormal">Nàng nhìn kia chén dược, cái mũi có điểm toan, nhẹ giọng
nói: “Ngươi yên tâm, ta sẽ nỗ lực biến cường, không bao giờ sẽ làm ngươi vì ta
lo lắng.”<o:p></o:p></p><p class="MsoNormal">Từ nhỏ đến lớn, trừ bỏ muội muội cùng tiểu Lan, Tần Mục đối
nàng tốt nhất, Khương Lạc Thần lại như thế nào cảm giác không ra, chỉ là nàng
không dám đem ái nói ra.<o:p></o:p></p><p class="MsoNormal">Nàng sợ hãi Tần Mục là tra nam.<o:p></o:p></p><p class="MsoNormal">Lớp người già thường nói, nữ nhân càng dễ dàng được đến, nam
nhân liền càng sẽ không hảo hảo quý trọng.<o:p></o:p></p><p class="MsoNormal">Tần Mục cười khẽ, Khương Lạc Thần thái độ rõ ràng chuyển biến,
3000 đồng vàng cuối cùng không uổng phí.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần đem Tẩy Tủy Đan uống xong đi, dược hiệu thực
rõ ràng, thực mau liền cảm giác toàn thân nóng rực.<o:p></o:p></p><p class="MsoNormal">“Như thế nào có cổ mùi lạ?”<o:p></o:p></p><p class="MsoNormal">Tiểu Lan quét tước xong phòng ra tới.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần đỏ mặt.<o:p></o:p></p><p class="MsoNormal">Thân thể của nàng đang ở bài trừ tạp chất.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần chạy đến phòng xôn xao súc rửa thân mình, thẳng
đến đêm khuya, mùi lạ mới biến mất.<o:p></o:p></p><p class="MsoNormal">Nàng sức cùng lực kiệt.<o:p></o:p></p><p class="MsoNormal">Hôn mê ở thau tắm.<o:p></o:p></p><p class="MsoNormal">Tần Mục sợ nàng cảm lạnh, mạo bị đánh nguy hiểm đem nàng ôm
ra tới, cho nàng thay áo ngủ.<o:p></o:p></p><p class="MsoNormal">Trên giường có hai giường chăn tử, Tần Mục là màu đỏ, Khương
Lạc Thần là màu trắng.<o:p></o:p></p><p class="MsoNormal">Ánh trăng xuyên thấu qua cửa sổ chiếu tiến vào, ngân huy dừng
ở Khương Lạc Thần mặt đẹp thượng, có lẽ là Tẩy Tủy Đan duyên cớ, nàng da thịt
so với phía trước còn muốn trắng nõn.<o:p></o:p></p><p class="MsoNormal">Tần Mục nhân cơ hội nhéo nhéo.<o:p></o:p></p><p class="MsoNormal">Xúc cảm rất thoải mái.<o:p></o:p></p><p class="MsoNormal">Nếu là Khương Lạc Thần còn tỉnh, phỏng chừng sẽ nổi trận lôi
đình, đau bẹp Tần Mục.<o:p></o:p></p><p class="MsoNormal">Tần Mục để sát vào Khương Lạc Thần, hôn nàng một chút, Tẩy Tủy
Đan cũng không phải tặng không, trước thu điểm lợi tức.<o:p></o:p></p><p class="MsoNormal">Tần Mục vận chuyển ngưng thần quyết bình tĩnh tâm thần.<o:p></o:p></p><p class="MsoNormal">Trong lòng tà niệm bị hắn áp chế.<o:p></o:p></p><p class="MsoNormal">Hôm sau.<o:p></o:p></p><p class="MsoNormal">Khương Lạc Thần tỉnh lại.<o:p></o:p></p><p class="MsoNormal">Tối hôm qua nàng ngủ rất say sưa, thế cho nên không có đề
phòng Tần Mục, bỗng nhiên nhớ tới chính mình hình như là ngủ ở thau tắm, hiện tại
như thế nào ở trên giường?<o:p></o:p></p><p class="MsoNormal"><span lang="FR">Nàng ôm hai vai.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Xong rồi!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bị hắn xem hết.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
nhìn án thư Tần Mục, vốn định khiển trách, lượng hắn cũng không có can đảm xằng
bậy.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Mạo sinh mệnh
nguy hiểm vì ta vào núi hái thuốc, liền tha thứ ngươi lần này.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Di?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần đầu
ngón tay lượn lờ hồng quang.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Linh khí
ngoại phóng!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
không thể tin được hai mắt của mình.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ta cư nhiên đột
phá đến Ngưng Khí bốn tầng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cách đó không xa,
Tần Mục khóe miệng hơi hơi giơ lên, Tẩy Tủy Đan ẩn chứa đại lượng linh khí, trợ
giúp nàng đột phá tự nhiên là thực nhẹ nhàng sự.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nếu không có thể
chất quá kém, giúp nàng tăng lên hai ba tầng tu vi cũng không phải việc khó, mệt
nàng còn như vậy cao hứng.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Thật là nhị
phẩm linh chi.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
nhìn về phía Tần Mục, ánh mắt trở nên ôn nhu rất nhiều, mặt đẹp thượng tràn đầy
cảm kích.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Tần Mục, cảm
ơn ngươi.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Ngươi là
lão bà của ta sao.” Tần Mục như cũ ở cúi đầu vẽ tranh, Khương Lạc Thần cười thực
vui vẻ, lão bà hai chữ nghe nhiều, vẫn là rất dễ nghe.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Trước kia không
nên đối hắn như vậy lãnh đạm.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
quyết định về sau đối hắn ôn nhu điểm.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nàng đi vào trong
viện thi triển quyền cước, lực lượng so mấy ngày trước đây cường quá nhiều, hiện
giờ còn có thể đem linh khí thêm vào ở trên nắm tay, lực lượng trên diện rộng
tăng lên.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Khó trách
đều nói Ngưng Khí bốn tầng cùng Ngưng Khí ba tầng có nói hồng câu, lực lượng
cách xa quá lớn.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
trên mặt vui sướng bộc lộ ra ngoài.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tiểu Lan không gặp
tiểu thư như vậy vui vẻ quá.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
khôi phục bình tĩnh, nàng trở lại phòng, ôn nhu nói: “Tần Mục, ngươi nghĩ muốn
cái gì?”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Cái gì?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tần Mục có chút
hoang mang.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Ngươi cho
ta nhị phẩm linh chi, nghĩ muốn cái gì? Ta tận lực thỏa mãn ngươi.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Ngươi là
lão bà của ta, khách khí cái gì.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tần Mục bình tĩnh
sửa sang lại giấy vẽ, trong lòng kỳ thật rất vui vẻ, rốt cuộc hai người là phu
thê.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
kiên trì nói: “Mau nói, chỉ cần không phải quá phận yêu cầu, ta đều thỏa mãn
ngươi.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tần Mục nghe vậy
mất đi hơn phân nửa hứng thú.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Bồi ta đi
dạo phố đi, tu luyện muốn làm việc và nghỉ ngơi kết hợp, ta xem ngươi gần nhất
cũng chưa như thế nào nghỉ ngơi, đi ra ngoài thả lỏng đi một chút.” Tần Mục cười
đề nghị.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần mặt
đẹp ửng đỏ, nàng rất ít rời đi Khương gia, đối bên ngoài thế giới có điểm xa lạ,
bất quá Tần Mục yêu cầu rất đơn giản, nàng hơi hơi gật đầu: “Hành, chúng ta đi
trước võ đường.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Hảo.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tần Mục đứng dậy
duỗi người.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần tới
Ngưng Khí bốn tầng, có thể tiến vào Diễn Võ Đường tuyển võ kỹ.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Có được võ kỹ
sau, còn có thể tăng lên thực lực.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Diễn Võ Trường.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Váy xanh nữ tử ở
trượng cao bảy màu linh thạch trước.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nàng một quyền
oanh ra bốn 38 số liệu.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Tê, Ngưng
Khí bốn tầng.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Khương
Linh tại bàng chi trung xem như rất có tiềm lực tiểu bối, mười lăm tuổi, Ngưng
Khí bốn tầng, so với kia cái Khương gia dòng chính cường quá nhiều.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Đúng vậy,
nếu có dòng chính tài nguyên, phỏng chừng không thể so Khương Lạc Âm kém.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Nói được
không sai.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nghe thế sao nhiều
khích lệ thanh âm, Khương Linh khuôn mặt nhỏ thượng tràn ngập kiêu ngạo, đắc ý
nói: “Khương Lạc Thần bất quá là phế vật, không cần lấy nàng cùng ta so.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Chính là.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Linh tỷ
nói đúng.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Mọi người sôi nổi
vuốt mông ngựa.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Khương
Linh, đừng tự cho là đúng.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Quạnh quẽ thanh
âm truyền tiến đám người, Khương Lạc Thần cùng Tần Mục đi vào Diễn Võ Trường,
hai người vốn dĩ muốn đi võ đường, chỉ là đi ngang qua Diễn Võ Trường.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
hôm nay vốn dĩ không muốn cùng Khương Linh khởi xung đột, nhưng Tần Mục ở, làm
trò Tần Mục mặt bị nhục nhã, nàng chịu không nổi cái này khí.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Linh thấy
Khương Lạc Thần, không chỉ có không có thu liễm thái độ, ngược lại càng thêm ngạo
mạn: “Ha hả, ta tưởng ai, nguyên lai là thủ hạ của ta bại tướng.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Bổn tiểu
thư hôm nay tâm tình hảo, chỉ cần ngươi cho ta xin lỗi, ta có thể chuyện cũ sẽ
bỏ qua.” Khương Lạc Thần cấp Khương Linh để lại dưới bậc thang.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tần Mục đỡ trán,
mới ra môn liền chọc phiền toái, quả nhiên là hồng nhan họa thủy.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Ngươi cho
rằng mang cái tiểu bạch kiểm tới, ta liền sợ ngươi? Các ngươi cùng nhau thượng,
ta đều không sợ.” Khương Linh thái độ cao ngạo, không biết sống chết khiêu
khích.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Ha ha ha
ha.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chung quanh tiểu
bối đều đang cười.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Lão bà, nhẫn
nhất thời gió êm sóng lặng.” Tần Mục không nghĩ chọc phiền toái.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần bổn
không nghĩ gây chuyện, nhưng Khương Linh khiêu khích nàng không nói, còn nói Tần
Mục tiểu bạch kiểm.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Không được,
lui một bước càng nghĩ càng giận.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Khương
Linh, chúng ta trên lôi đài nói chuyện.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
chủ động ước chiến Khương Linh.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Linh đầy mặt
khinh thường biểu tình: “Ha hả, đây là ngươi yêu cầu, vừa lúc làm tiểu bạch kiểm
biết ngươi là như thế nào phế vật.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tần Mục hắc mặt,
ta rất tuấn tú là sự thật, khá vậy không thể kêu ta tiểu bạch kiểm, chẳng lẽ ta
giống ăn cơm mềm?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hắn ở Khương Lạc
Thần bên tai nhẹ giọng nói: “Lão bà, nàng còn nhỏ, đánh gần chết mới thôi, đừng
nương tay.”<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Phụt.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Khương Lạc Thần
nghe vậy cười lên tiếng.<o:p></o:p></span></p><p class="MsoNormal">“<span lang="FR">Ha hả, đợi
chút ta xem các ngươi còn có thể hay không cười ra tới.” Khương Linh cười lạnh
nói.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Các nàng đi vào
Diễn Võ Trường trung ương trên lôi đài.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chung quanh càng
ngày càng nhiều Khương gia tiểu bối.<o:p></o:p></span></p><p class="MsoNormal">





































































































































































































































































































</p><p class="MsoNormal"><span lang="FR">Thậm chí còn có
dòng chính tiểu bối ở đây.<o:p></o:p></span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (35, 1, N'Chương 1', CAST(N'2021-09-12T08:34:06.153' AS DateTime), N'<p class="MsoNormal">Quan tâm cưỡng bách chứng, là chỉ ỷ lại người khác đối chính
mình ỷ lại, thích quan tâm người khác, không đi quan tâm người khác chính mình
liền khó chịu.<o:p></o:p></p><p class="MsoNormal">Cố Y Hàn liền hoạn có loại này chứng bệnh, hắn cảm thấy
chính mình sinh ra chính là muốn đi ái người nào đó.<o:p></o:p></p><p class="MsoNormal">Mà Hạ Hành chính là hắn sở lựa chọn ái nhân, cũng là hắn diễm
| ngộ đối tượng —— một cái ưu tú, cường đại Alpha.<o:p></o:p></p><p class="MsoNormal">Hắn cùng hắn làm cái “Giao dịch”, hắn cấp trận này giao dịch
mệnh danh là —— tình yêu.<o:p></o:p></p><p class="MsoNormal">-<o:p></o:p></p><p class="MsoNormal">Bờ biển, lều trại.<o:p></o:p></p><p class="MsoNormal">Nhân loại ở nhắm mắt lại lúc sau, mặt khác cảm quan sẽ bị vô
hạn phóng đại, bởi vậy cố Y Hàn tuy rằng không trợn mắt, nhưng là có thể cảm
giác được Hạ Hành giống như ở dần dần tiếp cận hắn.<o:p></o:p></p><p class="MsoNormal">Hắn hô hấp cơ hồ ngừng lại rồi, tiếp theo trên môi bỗng
nhiên mềm nhũn ——<o:p></o:p></p><p class="MsoNormal">Kia mềm mại xúc cảm là như thế rõ ràng, động tác mềm nhẹ mà
như là ở hôn môi một đóa mang theo giọt sương cánh hoa.<o:p></o:p></p><p class="MsoNormal">Cố Y Hàn cảm thấy hắn trái tim nơi nào đó ở nóng lên.<o:p></o:p></p><p class="MsoNormal">Hắn không có thể bảo trì giả bộ ngủ tư thế, nhẹ nhàng mím một
chút môi.<o:p></o:p></p><p class="MsoNormal">“Ngươi giả bộ ngủ đâu?” Hạ Hành rời đi một chút, buồn cười hỏi.<o:p></o:p></p><p class="MsoNormal">“Ngươi...”<o:p></o:p></p><p class="MsoNormal">Hạ Hành hô hấp rất gần, hắn vẫn như cũ ở dùng khí vừa nói lời
nói: “Ngủ ngon hôn, đây chính là lần đầu tiên, về sau có thể đem hôm nay trở
thành ngày kỷ niệm.”<o:p></o:p></p><p class="MsoNormal">Cố Y Hàn có thể cảm nhận được Hạ Hành lồng ngực ở nhẹ nhàng
chấn động, tựa hồ tâm tình rất là sung sướng.<o:p></o:p></p><p class="MsoNormal">Hạ Hành thanh âm so gió đêm còn muốn ôn nhu: “Ngủ ngon, cố Y
Hàn.”<o:p></o:p></p><p class="MsoNormal">Đọc tips:<o:p></o:p></p><p class="MsoNormal">1. Một chút năm thượng ( đều đem gần 30 tuổi ), tin tức tố
là tùng hương × hoa hồng hương<o:p></o:p></p><p class="MsoNormal">2. Công thụ đều có tiền nhiệm ( nhưng số tuổi lớn các ngươi
đều hiểu ), nhưng là hai người bọn họ tình huống giống nhau, không tồn tại ai
thiếu ai, ái đều là công bằng, cho nên cực đoan khống ta nơi này đại khái không
thích hợp ngươi, lôi tạ lỗi ( khom lưng<o:p></o:p></p><p class="MsoNormal">3. Ta lưu ABO, giả thiết sẽ ở văn giải thích<o:p></o:p></p><p class="MsoNormal">4. Ngày càng, toàn văn tồn cảo xong, xin yên tâm dùng ăn<o:p></o:p></p><p class="MsoNormal">.<o:p></o:p></p><p class="MsoNormal">Tiếp theo bổn <span style="font-family:&quot;MS Gothic&quot;;
mso-bidi-font-family:&quot;MS Gothic&quot;">《</span> nhặt được một con bổn hồ ly <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">》</span><o:p></o:p></p><p class="MsoNormal">Văn án:<o:p></o:p></p><p class="MsoNormal">Thực sẽ nấu cơm “Nhân loại” × thực có thể ăn hồ ly<o:p></o:p></p><p class="MsoNormal">“Mây trắng sơn ngoại thế giới có đi mà không có về, bởi vì
nhân loại là nhất tham lam sinh vật.<o:p></o:p></p><p class="MsoNormal">Cố li từ nhỏ nghe những lời này lớn lên, bất quá hắn vốn dĩ
cũng đối dưới chân núi hết thảy không có hứng thú.<o:p></o:p></p><p class="MsoNormal">Nhưng mà nhân yêu hai tộc ký kết tân hoà bình hiệp nghị, quy
định Yêu tộc cần thiết giống nhân loại giống nhau có được thân phận chứng minh,
mới có thể ở thế giới này hợp pháp sinh tồn.<o:p></o:p></p><p class="MsoNormal">Cố li thân là mây trắng sơn nhan giá trị đảm đương, liền
quang vinh mà trở thành chúng yêu đại biểu, đi trước “Yêu tinh quản lý cục”
lĩnh bọn họ thân phận chứng.<o:p></o:p></p><p class="MsoNormal">Nhưng mà hắn không nghĩ tới, xuống núi lúc sau cư nhiên khí
hậu không phục, mất pháp lực biến không thành người hình, thậm chí ở đống rác
bên bị một đám chó hoang khi dễ!<o:p></o:p></p><p class="MsoNormal">Há có này... Ai tới cứu cứu hắn a QAQ<o:p></o:p></p><p class="MsoNormal">Sau đó hắn đã bị người nhặt về gia.<o:p></o:p></p><p class="MsoNormal">Cố li: Bà ngoại nói được cũng không chính xác sao, này nhân
loại ít nhất nấu cơm đặc biệt ăn ngon.<o:p></o:p></p><p class="MsoNormal">Chính là thân là hồ ly lại muốn giả trang sủng vật cẩu có điểm
khó.<o:p></o:p></p><p class="MsoNormal">Vì cơm khô, liều mạng!<o:p></o:p></p><p class="MsoNormal">.<o:p></o:p></p><p class="MsoNormal">* tiểu kịch trường:<o:p></o:p></p><p class="MsoNormal">“Nếu ngươi thu lưu ta, ta liền phải báo ân.”<o:p></o:p></p><p class="MsoNormal">“…Ngươi báo ân phương thức chính là ở nhà ta ăn vạ phàm ăn?”<o:p></o:p></p><p class="MsoNormal">“Kia, kia nếu không đổi cái phương thức,” cố li lời nói còn
chưa nói xong, khuôn mặt trước đỏ cái hoàn toàn: “Ta có thể lấy thân báo đáp…”<o:p></o:p></p><p class="MsoNormal">Thương ngăn nhìn trước mắt ăn đến viên cổ rét đậm bổn hồ ly,
đau đầu mà tưởng, chẳng lẽ Hồ tộc đã suy sụp đến tận đây sao?<o:p></o:p></p><p class="MsoNormal">Thấy thương ngăn sắc mặt thâm trầm mà nhìn chằm chằm hắn,
hơn nửa ngày không nói lời nào, cố li lăn một cái, biến thành hình người, lấy
lòng mà ôm thương ngăn cổ làm nũng: “Thật sự không được sao?”<o:p></o:p></p><p class="MsoNormal">Thương ngăn bất đắc dĩ mà xoa cố li sau cổ, bại hạ trận tới:
“Hành…”<o:p></o:p></p><p class="MsoNormal">Đọc trước thuyết minh: Quyển thư tịch từ người dùng kịch bản
gốc novelDownloader chế tác<o:p></o:p></p><p class="MsoNormal">Nơi phát ra địa chỉ: http://
jjwxc.net/onebook.php?novelid=6024704<o:p></o:p></p><p class="MsoNormal">Hoang vu hoa hồng<o:p></o:p></p><p class="MsoNormal">Hạ Hành luôn luôn cho rằng chính mình nhẫn nại lực thực hảo,
là Alpha trung người xuất sắc.<o:p></o:p></p><p class="MsoNormal">Nhưng mà hiện tại trạng huống không chấp nhận được hắn lại
khoe ra chính mình tự chủ, rốt cuộc hắn lúc này đang theo một cái giả tính phát
tình Omega cùng chỗ một thất.<o:p></o:p></p><p class="MsoNormal">Cho nên dưới tình huống như vậy, hắn cũng không biết chính
mình rốt cuộc sẽ như thế nào —— cái rắm.<o:p></o:p></p><p class="MsoNormal">Trong không khí tràn đầy hoa hồng hương, nùng liệt mùi thơm
ngào ngạt mùi hương hướng đến Hạ Hành suýt nữa đứng không vững.<o:p></o:p></p><p class="MsoNormal">Hạ Hành một tay đỡ tường, sốt ruột mà tưởng, hắn rốt cuộc là
đời trước tạo cái gì nghiệp chướng, đời này trời cao mới có thể phạt hắn tới chịu
loại này tội.<o:p></o:p></p><p class="MsoNormal">Hắn thái dương gân xanh tất hiện, lên núi đao xuống biển lửa
đại để cũng bất quá như thế.<o:p></o:p></p><p class="MsoNormal">Nga không đúng, không phải ông trời xem hắn không vừa mắt muốn
trừng phạt hắn ——<o:p></o:p></p><p class="MsoNormal">Hạ Hành từng bước một đi phía trước, hướng tới ngồi ở trên mặt
đất cái kia yếu ớt, tản ra trí mạng mùi hoa Omega đi đến.<o:p></o:p></p><p class="MsoNormal">Nhất định là Ôn Vân Dật khắc hắn.<o:p></o:p></p><p class="MsoNormal">Tám giờ trước.<o:p></o:p></p><p class="MsoNormal">Lúc đó Hạ Hành chính nhân mô cẩu dạng mà đưa nhà mình cháu
ngoại trai đi phòng vẽ tranh đi học, cố ý phun hắn thích nhất một khoản tên là
“Đại địa” nước hoa.<o:p></o:p></p><p class="MsoNormal">Đế đô giữa hè sau giờ ngọ tựa hồ chỉ có nhiệt, nhựa đường mặt
đường bị nhiệt khí vặn vẹo, ô tô nội trí điều hòa đem hết toàn lực mà công tác,
mới khó khăn lắm đem thời tiết nóng ngăn cách ở thùng xe này một phương thiên địa
ở ngoài.<o:p></o:p></p><p class="MsoNormal">Hạ Hành cháu ngoại trai Hoắc Hiểu Hải đang ở toàn phương vị
nhiều góc độ trình bày hắn mỹ thuật lão sư rốt cuộc có bao nhiêu đẹp, tiểu hài
nhi biểu tình tràn đầy sùng bái.<o:p></o:p></p><p class="MsoNormal">“Như vậy đẹp a? Giới tính đâu?” Hạ Hành không chút để ý cấp
Hoắc Hiểu Hải cổ động.<o:p></o:p></p><p class="MsoNormal">“Omega.”<o:p></o:p></p><p class="MsoNormal">“Nga, Omega...” Hạ Hành làm như có thật gật gật đầu, nghiêng
đầu liếc liếc mắt một cái tiểu hài nhi biểu tình, tiếp tục nói: “Xem ngươi như
vậy thích hắn, không bằng làm hắn đương ngươi mợ đi?”<o:p></o:p></p><p class="MsoNormal">Hoắc Hiểu Hải nhíu nhíu mày cái mũi, nghiêm túc nói: “Cữu cữu,
ngươi đây là tính | quấy rầy.” Hắn còn có chưa hết chi ngôn, tỷ như “Mệt ngươi
vẫn là nghiên cứu đệ nhị tính chinh bác sĩ”.<o:p></o:p></p><p class="MsoNormal">“Ha ha ha ha, hảo, không náo loạn.” Hạ Hành thu ý cười, vốn
dĩ chính là vì đậu Hoắc Hiểu Hải chơi, này tiểu hài tử tổng ái xụ mặt, nói chuyện
luôn nghiêm trang, một chút tinh thần phấn chấn đều không có.<o:p></o:p></p><p class="MsoNormal">“Tóm lại, cố lão sư không chỉ có người đẹp, vẽ tranh cũng đặc
biệt lợi hại.”<o:p></o:p></p><p class="MsoNormal">“Hảo hảo hảo, ngươi ‘ cố lão sư ’ đặc biệt ưu tú, ta đây
trong chốc lát nhất định hảo hảo bái kiến một chút hắn.”<o:p></o:p></p><p class="MsoNormal">Hạ Hành không chút để ý mà đáp lời, hoàn toàn không đem tiểu
hài nhi nói phóng tới trong lòng.<o:p></o:p></p><p class="MsoNormal">Bất quá là cháu ngoại trai hứng thú ban lão sư, mà hắn hôm
nay cũng chỉ là trùng hợp giúp thân tỷ tỷ đưa hài tử đi học.<o:p></o:p></p><p class="MsoNormal">Cùng kia trong lời đồn mỹ thuật lão sư là mười phần người xa
lạ, cần gì nói đến.<o:p></o:p></p><p class="MsoNormal">------<o:p></o:p></p><p class="MsoNormal">Kết quả Hạ Hành cũng không có thể nhìn thấy vị kia trong lời
đồn, “Đặc biệt đẹp” mỹ thuật lão sư.<o:p></o:p></p><p class="MsoNormal">Nguyên nhân là hắn hôm nay có việc xin nghỉ không có tới,
khóa vẫn là từ lớp bên cạnh giáo màu nước lão sư đại thượng, nhân tiện nhắc tới,
Hoắc Hiểu Hải học tranh sơn dầu.<o:p></o:p></p><p class="MsoNormal">Mới đầu Hoắc Hiểu Hải nói cho Hạ Hành hắn học chính là tranh
sơn dầu thời điểm, Hạ Hành ngốc nửa ngày, không phải hắn có thành kiến, hắn là
thật sự không nghĩ tới Hạ Xu có thể có như vậy cao nhã ý tưởng, như vậy cực hạn
theo đuổi.<o:p></o:p></p><p class="MsoNormal">Học cái bút sáp họa hoặc là màu nước linh tinh không phải được
rồi, như thế nào càng muốn tuyển cái như vậy không hảo nắm chắc phong cách học
đâu?<o:p></o:p></p><p class="MsoNormal">Hoắc Hiểu Hải bắt đầu đi học, Hạ Hành không đi vội vã, phòng
vẽ tranh phòng học bên ngoài trên hành lang treo một ít họa tác, đại bộ phận đều
là học sinh họa, cũng có một bộ phận nhỏ là lão sư họa, tỷ như lúc này Hạ Hành
trước mặt này một bức tranh sơn dầu.<o:p></o:p></p><p class="MsoNormal">Này bức họa bị treo ở hành lang tận cùng bên trong, ánh mặt
trời chiếu không tới địa phương, vẽ một bụi hoa hồng, hoặc là tường vi, Hạ Hành
phân biệt không ra.<o:p></o:p></p><p class="MsoNormal">Chỉnh bức họa sắc điệu thực ám, cùng cửa hàng bán hoa kiều
diễm ướt át hoa hồng không quá giống nhau, nơi này hoa hồng tựa hồ có chút khô
bại, cánh hoa nhi uể oải ỉu xìu mà đánh cuốn.<o:p></o:p></p><p class="MsoNormal">Họa tác góc phải bên dưới có này bức họa tên cùng với tác giả,
này bức họa đã kêu <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">《</span> hoa hồng <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">》</span>.<o:p></o:p></p><p class="MsoNormal">“Cố, Y, hàn...” Ba chữ ở Hạ Hành môi răng gian bị nhai một lần,
sở dĩ Hạ Hành cho rằng này bức họa là một cái người trưởng thành họa, là bởi vì
căn cứ phía trước treo những cái đó họa tác tới xem, tiểu hài tử hẳn là họa
không ra như vậy tiêu điều một bức họa tới.<o:p></o:p></p><p class="MsoNormal">Rốt cuộc phía trước họa đến đều là hoa hướng dương hoặc là
cúc non, họa kỹ cũng hiển nhiên không có này bức họa cao siêu.<o:p></o:p></p><p class="MsoNormal">Túi quần di động chấn động lên, Hạ Hành lấy ra di động, điện
báo biểu hiện là “Ôn Vân Dật” —— hắn bạn bè tốt chi nhất.<o:p></o:p></p><p class="MsoNormal">“Uy?” Hạ Hành hạ giọng.<o:p></o:p></p><p class="MsoNormal">“Lão hạ, gần nhất không sao?” Đối diện giọng nam nghe đi lên
có điểm hưng phấn.<o:p></o:p></p><p class="MsoNormal">“Như thế nào, tìm ta có việc a?” Hạ Hành cuối cùng liếc liếc
mắt một cái kia phúc <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">《</span> hoa hồng <span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">》</span>, xoay người hướng phòng vẽ tranh cửa đi.<o:p></o:p></p><p class="MsoNormal">“Ai, ngươi cả ngày vội công tác, thật vất vả không đi làm,”
ôn đại thiếu gia xác thật tâm tình không tồi, nhiệt tình mời nói: “Buổi tối đi
‘ vô niệm ’ uống hai ly a?”<o:p></o:p></p><p class="MsoNormal">“U, nhà ngươi lão nhân không buộc ngươi quản công ty, còn có
thời gian đi quán bar đâu?”<o:p></o:p></p><p class="MsoNormal">“Hại, lão mã kéo xe không còn phải nghỉ một lát nhi sao, ta
đây liền ra tới thả lỏng một chút, nói nữa, ta một học ngành kỹ thuật, hắn một
hai phải ta quản giải trí công ty, ta chẳng lẽ muốn đi giải trí công ty cho
nhân gia tu máy tính sao.”<o:p></o:p></p><p class="MsoNormal">Hạ Hành nghe xong hắn lời này cười ra tiếng, Ôn Vân Dật ở
kia đầu ô hô ai tai, lại hỏi hắn rốt cuộc muốn hay không đi.<o:p></o:p></p><p class="MsoNormal">Hạ Hành kéo ra cửa xe ngồi trên xe, xe tái Bluetooth tự động
liên tiếp di động trò chuyện, hắn đưa điện thoại di động thu hồi tới, suy nghĩ
chính mình làm liên tục gần một tháng, phóng túng một chút cũng không có gì
không thể, lại nói Hoắc Hiểu Hải tan học lúc sau cũng không cần hắn tiếp, vì thế
liền nhả ra đáp ứng rồi.<o:p></o:p></p><p class="MsoNormal">“8 giờ a, không gặp không về.”<o:p></o:p></p><p class="MsoNormal">“Vô niệm” là một nhà khai có 5 năm quán bar, cách điệu tương
đối cao, chủ quán danh dự cũng hảo, quán bar hoàn cảnh không dơ loạn, tới nơi
này uống rượu hơn phân nửa đều là chút tinh anh nhân sĩ.<o:p></o:p></p><p class="MsoNormal">Cùng ban ngày không giống nhau, Hạ Hành mặc một cái màu đen
áo sơmi, tay áo bị vãn tới tay khuỷu tay, lộ ra đường cong lưu loát đẹp cánh
tay, một cặp chân dài bao vây ở màu đen quần tây, cả người muốn có vẻ lạnh lùng
đứng đắn không ít.<o:p></o:p></p><p class="MsoNormal">Hắn là một cái ưu tú, tuấn mỹ Alpha, trên người có vô số đủ
để hấp dẫn bất luận cái gì Omega mê người tính chất đặc biệt, cảnh này khiến hắn
phủ vừa xuất hiện ở “Vô niệm”, liền thu hoạch không nhỏ chú ý.<o:p></o:p></p><p class="MsoNormal">“Lão hạ a, ngươi như thế nào có thể như vậy phong | tao.” Ôn
Vân Dật hoảng chén rượu, ánh mắt mê ly.<o:p></o:p></p><p class="MsoNormal">Hạ Hành khí cười.<o:p></o:p></p><p class="MsoNormal">Vì cái gì hắn tùy tiện xuyên cái áo sơmi quần tây cũng có thể
kêu “Phong | tao”?<o:p></o:p></p><p class="MsoNormal">Hắn nhìn Ôn Vân Dật trên người kia kiện cổ áo đều phải chạy
đến rốn thâm V áo sơmi, vô ngữ nói: “Đúng vậy, ta phong | tao, ngươi là thanh
thuần tiểu bạch hoa.”<o:p></o:p></p><p class="MsoNormal">Hắn không hề để ý tới phát bệnh Ôn Vân Dật, bưng lên trước mặt
pha lê ly nhấp một ngụm rượu, khối băng nhi cùng ly vách tường va chạm, phát ra
dễ nghe giòn vang.<o:p></o:p></p><p class="MsoNormal">Hắn tới hướng này chỉ uống này một loại rượu, là nhà này
quán bar đặc điều chi nhất —— hoang vu hoa hồng, số độ không cao, nhưng hương
khí mùi thơm ngào ngạt.<o:p></o:p></p><p class="MsoNormal">Ôn Vân Dật gần nhất nhật tử quá đến giống như xác thật không
như ý, hắn ôm chén rượu một phen nước mũi một phen nước mắt mà lên án hắn ba rốt
cuộc có bao nhiêu ngang ngược vô lý, còn nói nếu không phải hắn chạy trốn mau,
liền thiếu chút nữa bị hắn ba đóng gói gả chồng.<o:p></o:p></p><p class="MsoNormal">“Như thế nào, ngươi muốn cùng nhà ai Alpha liên hôn?” Hạ
Hành đem Ôn Vân Dật càng thấu càng gần đầu chó đẩy ra.<o:p></o:p></p><p class="MsoNormal">“Thí, hắn phi làm ta cưới Trương gia tiểu nữ nhi, nói ta đều
già đầu rồi, chạy nhanh kết hôn sinh cái hài tử. Ta mẹ nó liền kia nữ nhân mặt
cũng chưa gặp qua, khiến cho ta cưới nàng? Hiện tại đều 21 thế kỷ, cư nhiên còn
có ép duyên này vừa nói sao?”<o:p></o:p></p><p class="MsoNormal">Tiếp theo Ôn Vân Dật lại từ Trương gia tiểu nữ nhi nói đến hắn
giải trí công ty, nói có mấy cái lão nhân mỗi ngày cầm các loại tiểu minh tinh ảnh
chụp tới tìm hắn, làm hắn chọn mấy cái tiềm quy tắc một chút.<o:p></o:p></p><p class="MsoNormal">“<span lang="FR">Trời ạ, ta
chẳng lẽ là đi tuyển phi sao? A —— ta mệnh hảo khổ a!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hạ Hành nhẫn cười
nhẫn đến đau đầu, cũng có thể là bị Ôn Vân Dật gào, hắn quyết định đi thượng
tranh WC rửa cái mặt, vì thế gọi tới phục vụ sinh làm hắn chăm sóc một chút Ôn
Vân Dật, hắn cũng không biết vị thiếu gia này hiện tại say đến cái nào nông nỗi,
đừng không đợi hắn từ WC ra tới liền nghe được Ôn Vân Dật bởi vì quá mức bi phẫn
một đầu đâm chết ở chỗ này.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hạ Hành ngồi ở
trên nắp bồn cầu trừu điếu thuốc, hắn không thường trừu, chỉ là vẫn luôn mang
theo mấy chi, ngẫu nhiên tưởng trừu, lại lấy ra tới tống cổ thời gian.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Kỳ thật Ôn Vân Dật
nói đến rất hiện thực, đừng nhìn Hạ Hành không có Ôn thiếu gia những cái đó kế
thừa gia nghiệp phiền não, nhưng là ở “Thúc giục hôn” vấn đề thượng, trên người
hắn áp lực nhưng một chút đều không nhỏ.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hắn là Hạ gia vợ
chồng con lúc tuổi già, cả nhà tâm đầu nhục, hai vợ chồng tuổi lớn, lo lắng nhất
chính là tiểu nhi tử cảm tình vấn đề.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hai vợ chồng già
liền hy vọng Hạ Hành có thể chạy nhanh tìm cái vừa lòng beta hoặc là Omega
thành cái gia, làm cho bọn họ yên tâm.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hạ Hành thật cũng
không phải có nghịch phản tâm lý, hai mươi mấy người, chức danh đều đến phó chủ
nhiệm y sư, không đến mức giống cái mao đầu tiểu tử dường như chuyên môn cùng
cha mẹ đối nghịch.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hắn là thật sự
không có thời gian.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Trách không được
mọi người đều nói đương bác sĩ dễ dàng sớm già, là thật sự dễ dàng tâm thần và
thể xác đều mệt mỏi.<o:p></o:p></span></p><p>































































































































































































































</p><p class="MsoNormal"><span lang="FR">Hắn trừu xong yên
ra tới, lại rửa mặt, cảm thấy hơi chút nhẹ nhàng một chút, vừa muốn xoay người
từ WC đi ra ngoài, túi quần di động điên cuồng chấn động, hắn móc ra tới vừa thấy
là Ôn Vân Dật, Hạ Hành nghĩ thầm người này cái gì tật xấu, còn muốn mặt đối mặt
gọi điện thoại?<o:p></o:p></span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (35, 2, N'Chương 2', CAST(N'2021-09-12T08:34:38.450' AS DateTime), N'<p class="MsoNormal">“Hello? Ngươi là luẩn quẩn trong lòng muốn đâm tường, trước
tiên cho ta gọi điện thoại phó thác ngươi di sản sao?”<o:p></o:p></p><p class="MsoNormal">“Lão hạ, ngươi trước đừng ra tới, quán bar có cái Omega đột
nhiên phát tình, ngươi phải đi cũng từ cửa sau đi, ngàn vạn cẩn thận!” Ôn Vân Dật
thanh âm thực vội vàng, Hạ Hành ngốc một cái chớp mắt.<o:p></o:p></p><p class="MsoNormal">“Lão hạ ngươi nghe thấy được sao, lão hạ ——”<o:p></o:p></p><p class="MsoNormal">“Kẽo kẹt” một tiếng, đẩy cửa thanh âm cùng ống nghe Ôn Vân Dật
thanh âm điệp ở bên nhau, Hạ Hành theo bản năng xem qua đi ——<o:p></o:p></p><p class="MsoNormal">Tiến vào chính là một người tuổi trẻ nam nhân, hẳn là một
cái Omega, trong không khí mùi thơm ngào ngạt hoa hồng hương tin tức tố nói cho
hắn, đó là một cái bị hướng dẫn thành giả tính phát tình Omega.<o:p></o:p></p><p class="MsoNormal">Thất tự tùng hương<o:p></o:p></p><p class="MsoNormal">Di thiên cái mà tin tức tố lôi cuốn hướng Hạ Hành, hắn cơ hồ
là ở trong nháy mắt liền nổi lên phản ứng.<o:p></o:p></p><p class="MsoNormal">Không có biện pháp, Alpha sinh lý phản ứng chi phối hắn, hắn
bản nhân cũng là muốn làm Liễu Hạ Huệ, rốt cuộc cũng là người trong sạch nam
hài.<o:p></o:p></p><p class="MsoNormal">Hạ Hành lần nữa khống chế chính mình, nhưng mà đều là phí
công, vĩ đại y học nói cho hắn, muốn đột phá Omega đối Alpha trí mạng hấp dẫn
sinh lý cực hạn quả thực quá khó khăn.<o:p></o:p></p><p class="MsoNormal">Hắn tin tức tố cơ hồ là trong nháy mắt liền phá tan trên người
nước hoa vị, cực nhanh mà bao bọc lấy kia cổ xông thẳng hắn đại não mùi thơm
ngào ngạt hoa hồng hương.<o:p></o:p></p><p class="MsoNormal">Tùng hương cùng hoa hồng hương giao hòa, liền không khí đều
dần dần thăng ôn, ngo ngoe rục rịch.<o:p></o:p></p><p class="MsoNormal">Hạ Hành bị câu da đầu tê dại, hắn tận lực đem thân thể sau
này dựa, đôi tay về phía sau chống ở bồn rửa tay thượng, tranh thủ làm chính
mình cách này cái Omega xa một chút, hắn ở kiệt lực khắc chế chính mình, liền sợ
gây thành vô pháp vãn hồi hậu quả.<o:p></o:p></p><p class="MsoNormal">“Ngươi, có khỏe không?” Hạ Hành thanh âm có điểm run, hỏi
xong lúc sau mới phát hiện chính mình hỏi cái xuẩn vấn đề, là cá nhân đều có thể
nhìn ra người này tình huống một chút đều không tốt.<o:p></o:p></p><p class="MsoNormal">Người nọ không nói chuyện, chỉ dựa WC môn không được thở dốc,
hắn có lẽ cũng không nghĩ tới nơi này cư nhiên sẽ có cái Alpha.<o:p></o:p></p><p class="MsoNormal">Hạ Hành đè nặng trong cơ thể kia cổ tà | hỏa, dời đi chính
mình lực chú ý, nghĩ thầm quán bar nội Alpha hẳn là đều bị khẩn cấp sơ tán rồi,
sở hữu Omega hẳn là đều bị lưu tại quán bar, người này lại đây khả năng chỉ
nghĩ đi WC, lại không nghĩ rằng cư nhiên còn có hắn này cá lọt lưới.<o:p></o:p></p><p class="MsoNormal">“Ngươi, ta... Ngươi đừng khẩn trương, mang ức chế tề sao?”<o:p></o:p></p><p class="MsoNormal">Hảo, lại là cái xuẩn vấn đề, Hạ Hành phỉ nhổ chính mình, nếu
hắn có ức chế tề hiện tại còn sẽ như vậy?<o:p></o:p></p><p class="MsoNormal">Bọn họ cứ như vậy ngốc đi xuống không phải biện pháp, hắn đến
chạy nhanh đi ra ngoài, nhưng là vấn đề lại tới nữa, này cúi đầu thấy không rõ
mặt Omega chặt chẽ chiếm cứ cạnh cửa vị trí, hắn nếu là nghĩ ra đi, nhất định
phải đi môn, nếu người nọ không động một chút, hai người bọn họ thế tất muốn đụng
tới cùng nhau ——<o:p></o:p></p><p class="MsoNormal">Hạ Hành không dám đi xuống suy nghĩ, hắn đột nhiên đối chính
mình tự chủ không có tin tưởng.<o:p></o:p></p><p class="MsoNormal">Hạ Hành thử thăm dò đi phía trước đi rồi một bước, thả chậm
thanh âm cùng hắn đánh thương lượng: “Ta phải đi ra ngoài, cho nên có thể hay
không thỉnh ngươi tiến cách gian, ta sợ ta... Này đối lẫn nhau đều hảo.”<o:p></o:p></p><p class="MsoNormal">Giọng nói rơi xuống, cửa người thật sự bắt đầu động, Hạ Hành
nhẹ nhàng thở dài nhẹ nhõm một hơi, phía sau lưng thượng hãn đều xuống dưới.<o:p></o:p></p><p class="MsoNormal">Kết quả Hạ Hành này một hơi tùng sớm, người nọ cư nhiên
“Bùm” một tiếng ngã ngồi trên mặt đất, Hạ Hành ngốc, nghĩ tới đi dìu hắn một
phen, lại sinh sôi nhịn xuống.<o:p></o:p></p><p class="MsoNormal">“Tiên sinh, ngươi không sao chứ? Tiên sinh?”<o:p></o:p></p><p class="MsoNormal">Kêu hắn hai tiếng cũng không thấy có đáp lại, Hạ Hành mày
nhăn chặt muốn chết, trong lòng có điểm hoảng.<o:p></o:p></p><p class="MsoNormal">Từ y học góc độ tới giảng, giả tính phát tình có nhất định
tính nguy hiểm, bởi vì thuộc về hướng dẫn phát tình, trong cơ thể kích thích tố
trình độ mất cân đối, khả năng sẽ khiến cho tin tức tố ứng kích chứng, nghiêm
trọng giả thậm chí yêu cầu gỡ xuống tuyến thể.<o:p></o:p></p><p class="MsoNormal">Hạ Hành do dự một chút, vẫn là không đành lòng nhìn trước mặt
người này xảy ra chuyện, vì thế cắn răng tới gần hắn ngồi xổm xuống, tưởng xem
xét một chút tình huống của hắn.<o:p></o:p></p><p class="MsoNormal">Ai ngờ hắn này một tới gần, người nọ đột nhiên duỗi tay hoàn
thượng hắn cổ, khoảng cách đột nhiên kéo gần, chóp mũi hoa hồng thơm nồng đến
làm người choáng váng.<o:p></o:p></p><p class="MsoNormal">Hạ Hành trái tim hung hăng nhảy dựng, trên trán gân xanh đều
cổ ra tới, hắn là trăm triệu không nghĩ tới tình huống càng ngày càng mất khống
chế.<o:p></o:p></p><p class="MsoNormal">Mặc hắn từ trước lại như thế nào giữ mình trong sạch, nhưng
hắn cũng là hàng thật giá thật cao bình xét cấp bậc Alpha, liền tính lại như thế
nào khắc chế, cũng không có khả năng ở Omega nhào vào trong ngực dưới tình huống
còn có thể nhịn xuống.<o:p></o:p></p><p class="MsoNormal">Trong lòng ngực Omega trắng nõn sau cổ gần trong gang tấc,
nơi đó có một tiểu khối nhô lên đang ở nóng lên, nơi đó là hoa hồng hương nơi
khởi nguyên.<o:p></o:p></p><p class="MsoNormal">Hạ Hành trong thân thể mỗi một tế bào đều ở điên cuồng kêu
gào, làm hắn hung hăng cắn đi xuống ——<o:p></o:p></p><p class="MsoNormal">Răng nanh xuyên thấu hắn tuyến thể, hung hăng mà ngăn chặn hắn,
đem chính mình tin tức tố rót vào đi vào, cái này Omega chính là hắn.<o:p></o:p></p><p class="MsoNormal">Đây là Alpha trời sinh chiếm hữu dục, là nguyên tự huyết mạch
bạo ngược.<o:p></o:p></p><p class="MsoNormal">Hạ Hành bi thương lại tuyệt vọng mà nhắm mắt.<o:p></o:p></p><p class="MsoNormal">Ôn Vân Dật tuẫn hắn!<o:p></o:p></p><p class="MsoNormal">Nếu không có nhất thời mềm lòng đáp ứng hắn mời, có phải hay
không liền sẽ không có hiện giờ này vừa ra?<o:p></o:p></p><p class="MsoNormal">Hạ Hành nhẫn nại cơ hồ đã tới rồi cực hạn, bởi vậy kế tiếp sẽ
phát sinh cái gì, hắn đã khống chế không được.<o:p></o:p></p><p class="MsoNormal">Hắn hồng con mắt, cơ hồ là kiềm chế giống nhau mà bế lên
Omega.<o:p></o:p></p><p class="MsoNormal">Trong lòng ngực nhân thân lượng nhìn không tính lùn, bế lên
tới lại rất nhẹ, hắn đem Omega mặt ấn ở chính mình cổ chỗ, dùng nhanh nhất tốc
độ từ quán bar cửa sau vòng ra “Vô niệm”.<o:p></o:p></p><p class="MsoNormal">Quán bar cửa sau dựa gần một cái hẻm nhỏ, ngõ nhỏ không có
đèn, mọi nơi một mảnh hắc ám.<o:p></o:p></p><p class="MsoNormal">Ban đêm cũng không như ban ngày nóng bức, ngõ nhỏ ngẫu nhiên
còn có vài sợi như có như không phong đi ngang qua, này phong sử Hạ Hành hơi
chút thanh tỉnh vài giây.<o:p></o:p></p><p class="MsoNormal">Hắn cắn chặt răng, cùng Alpha gien làm cuối cùng hấp hối chống
cự, lại lần nữa tuyên cáo thất bại.<o:p></o:p></p><p class="MsoNormal">Liền ở Hạ Hành này ngắn ngủi dừng lại vài giây do dự thời
gian, kia Omega đột nhiên liếm một chút hắn cổ, động tác cực nhẹ cực mềm, giống
tiểu miêu nhi dường như, bên gáy xúc cảm khiến cho hắn đầu quả tim nhi phát
run.<o:p></o:p></p><p class="MsoNormal">Mấy năm lúc sau Hạ Hành ngẫu nhiên nhớ tới một màn này, cẩn
thận mà hồi tưởng một chút, phát giác ở cái loại này dưới tình huống, là không
có một cái Alpha có thể chạy thoát mà.<o:p></o:p></p><p class="MsoNormal">Nhưng mà hiện tại không dung Hạ Hành để tay lên ngực tự hỏi,
hắn răng hàm sau cắn đến kẽo kẹt rung động, cuối cùng một chút thanh minh thần
trí cũng bị mùi hoa câu không có, lập tức quải đi quán bar đối diện “Tình lữ
khách sạn”, ném xuống thân phận chứng, cầm chìa khóa liền hướng trên lầu đi.<o:p></o:p></p><p class="MsoNormal">Khách sạn trước đài là cái beta tiểu muội, nhìn thấy trường
hợp này đồ xinh đẹp son môi cái miệng nhỏ bởi vì kinh ngạc bãi thành một cái o
hình, nhưng nàng rốt cuộc cũng ở chỗ này làm có chút nhật tử, cho nên đối “Loại
tình huống này” hiển nhiên thấy nhiều không trách.<o:p></o:p></p><p class="MsoNormal">Bất quá nàng vẫn là ở hai vị khách nhân đi lên thang lầu
thân ảnh biến mất lúc sau, lặng lẽ che miệng lại cảm thán một chút Alpha soái
khí.<o:p></o:p></p><p class="MsoNormal">Hạ Hành là trực tiếp dùng chân đem khách sạn môn đá văng ra,
kia môn bị như thế tàn nhẫn mà đối đãi, chỉ là khái một chút huyền quan vách tường,
sau đó bắn ngược trở về, nhẹ nhàng khóa lại.<o:p></o:p></p><p class="MsoNormal">Hai người song song ngã tiến khách sạn chính giữa tâm hình
giường lớn, còn bởi vì nệm quá mềm, cùng nhau trên dưới búng búng.<o:p></o:p></p><p class="MsoNormal">Hạ Hành môi răng gian còn lưu có “Hoang vu hoa hồng” rượu
hương, nhưng mà chóp mũi là một loại khác càng say lòng người hương khí, kia
tin tức tố phảng phất dây đằng, gắt gao mà quấn quanh trụ Hạ Hành mỗi một lần
hô hấp.<o:p></o:p></p><p class="MsoNormal">Nếu cổ ướt ngân là hoảng loạn bắt đầu, kế tiếp hết thảy cũng
liền đều không chịu khống chế.<o:p></o:p></p><p class="MsoNormal">Hạ Hành chỉ nhớ rõ chính mình đặc biệt táo bạo mà xả hỏng rồi
Omega tơ lụa áo sơmi, hoạt mềm vải dệt ôm lấy một bộ xinh đẹp trắng nõn thân thể,
hắn không chút do dự hôn lên đi.<o:p></o:p></p><p class="MsoNormal">Ngày thường trên người hắn từ trước đến nay thanh nhã tùng
hương tin tức tố phảng phất bị bậc lửa, càng thêm nùng liệt ôn thuần.<o:p></o:p></p><p class="MsoNormal">Hoa hồng leo lên tùng bách, khai đến càng thêm diễm lệ.<o:p></o:p></p><p class="MsoNormal">···<o:p></o:p></p><p class="MsoNormal">···<o:p></o:p></p><p class="MsoNormal">Hạ Hành ngồi ở trên giường, cả người đều là ngốc, hắn thượng
thân trần trụi, hình dáng xinh đẹp cơ bắp thượng còn có vài đạo nhợt nhạt vết
trảo, hạ thân ——<o:p></o:p></p><p class="MsoNormal">Hắn che lại mặt, thật sâu mà thở dài một hơi.<o:p></o:p></p><p class="MsoNormal">Nhưng hắn không thể không đối mặt sự thật này, hắn, Hạ Hành,
tự xưng là thân sĩ 15 năm ( trước 13 năm vẫn là cái chó má không hiểu tiểu tử
thúi ), giữ mình trong sạch, liền tính yêu đương, đối với loại chuyện này cũng
là phát chăng tình, tuyệt không tham nhiều hoặc là bức bách.<o:p></o:p></p><p class="MsoNormal">Nhưng mà như vậy hắn, liền ở tối hôm qua, hắn cư nhiên cùng
một cái xa lạ Omega, ngủ.<o:p></o:p></p><p class="MsoNormal">Quả thật, hắn không tính có hại, thậm chí một chút đều không
có hại, càng có hại chính là cái kia Omega, hơn nữa hắn tối hôm qua giống như,
còn lâm thời đem nhân gia cấp đánh dấu...<o:p></o:p></p><p class="MsoNormal">Hảo hảo hảo, chuyện xấu thành đôi.<o:p></o:p></p><p class="MsoNormal">Hạ Hành đỡ đầu tự hỏi vài phút, cuối cùng cảm thấy chính
mình liền tính đem người ngủ, cũng quyết định không thể làm tra nam.<o:p></o:p></p><p class="MsoNormal">Hắn đem tay cầm xuống dưới, quay đầu nhìn bên người nằm
nghiêng đang ngủ say Omega, sau một lúc lâu lúc sau, đột nhiên ma xui quỷ khiến
mà duỗi tay đẩy ra rồi hắn trên trán tóc mái.<o:p></o:p></p><p class="MsoNormal">Nói như vậy, hắn thẩm mỹ là cao hơn đại chúng trục hoành,
cho nên tuy là hắn hỏi khám như vậy nhiều Omega, cũng chưa thấy qua có cái nào
so trước mắt cái này càng xuất sắc ——<o:p></o:p></p><p class="MsoNormal">Làn da thực bạch, nhưng không tái nhợt, mặt mày nhu hòa,
lông mi như cánh bướm, theo chủ nhân hô hấp nhẹ nhàng rung động, mũi thẳng thắn,
mũi mượt mà, môi dày mỏng vừa phải, đại khái bởi vì nằm nghiêng tư thế, hơi hơi
chu, trơn bóng xinh đẹp, chẳng qua hiện tại có chút sưng, khóe môi còn phá một
tiểu khối, Hạ Hành nhớ rõ kia đều là chính mình cắn đến.<o:p></o:p></p><p class="MsoNormal">Vị đặc biệt hảo.<o:p></o:p></p><p class="MsoNormal">Đương nhiên này môi sưng thành như vậy cũng không được đầy đủ
là bởi vì hắn cắn đến, người này chịu không nổi chính mình cũng muốn cắn...
Hành đi, vẫn là đến trách hắn.<o:p></o:p></p><p class="MsoNormal">Bất quá nói như thế nào đâu, Hạ Hành thình lình nhớ tới
chính mình đại cháu ngoại trai hình dung người diện mạo khi dùng cái kia từ ——
đặc biệt đẹp.<o:p></o:p></p><p class="MsoNormal">Trước mặt cái này Omega liền thật sự, đặc biệt đẹp.<o:p></o:p></p><p class="MsoNormal">Tơ lụa áo sơmi<o:p></o:p></p><p class="MsoNormal">Hạ Hành lại yên lặng tự hỏi trong chốc lát nhân sinh, cảm thấy
không thể liền như vậy chờ đợi, sớm muộn gì đều đến đối mặt, còn không bằng trước
thời gian nói khai.<o:p></o:p></p><p class="MsoNormal">Hạ quyết tâm, Hạ Hành liền phải cúi người đem người đánh thức,
coi như hắn tay khoảng cách Omega trắng nõn đầu vai chỉ có như vậy một centimet
khoảng cách thời điểm, hắn đột nhiên nhớ tới chính mình còn trần trụi, vì thế
bay nhanh thu hồi tay, xuống giường thu thập một chút chính mình, sau đó đem quần
áo mặc xong rồi.<o:p></o:p></p><p class="MsoNormal">Trên quần áo đều là mùi rượu, Hạ Hành cau mày phóng nhẹ hô hấp,
sau đó chuẩn bị vòng đến giường bên kia gọi người rời giường.<o:p></o:p></p><p class="MsoNormal">Này khách sạn tuy rằng là khai ở quán bar bên cạnh “Tình lữ
khách sạn”, bất quá vệ sinh hoàn cảnh so với hắn trong tưởng tượng muốn hơi hảo
một chút, chỉ là này đầy đất quần áo thật sự là có ngại bộ mặt.<o:p></o:p></p><p class="MsoNormal">Hạ Hành một cúi đầu liền nhìn đến mấy cái dùng quá giác quan
thứ sáu chính tứ tung ngang dọc mà nằm trên mặt đất, tỏ rõ tối hôm qua tình
hình chiến đấu rốt cuộc có bao nhiêu kịch liệt.<o:p></o:p></p><p class="MsoNormal">Hạ Hành: “...”<o:p></o:p></p><p class="MsoNormal">Hắn cũng không biết chính mình vì cái gì muốn xấu hổ, tóm lại
là có điểm ngượng ngùng.<o:p></o:p></p><p class="MsoNormal">Rốt cuộc hắn cũng là người trong sạch nam hài, không trải
qua quá cái này.<o:p></o:p></p><p class="MsoNormal">Hạ Hành định định tâm thần, trước nhẹ nhàng hô cái này không
biết tên Omega một tiếng, gặp người ngủ thật sự thục không có phản ứng, liền
quyết định thượng thủ đẩy đẩy.<o:p></o:p></p><p class="MsoNormal">“Cái kia, tuy rằng chúng ta đêm qua đã xảy ra thân mật tiếp
xúc, nhưng ta hiện tại cũng không phải tưởng chơi lưu manh...”<o:p></o:p></p><p class="MsoNormal">Hạ Hành nhỏ giọng toái toái niệm, tay vừa muốn xúc thượng
Omega cánh tay, một cái tay khác cầm di động đột nhiên điên cuồng chấn động
lên.<o:p></o:p></p><p class="MsoNormal">“Thảo ——” Hạ Hành bị khiếp sợ, thiếu chút nữa không rời tay
đem điện thoại vứt ra đi, trải qua ngày hôm qua kia sự kiện, hắn cơ hồ đối thủ
cơ chấn động sinh ra bóng ma tâm lý, tổng cảm thấy di động chấn động động chuẩn
không chuyện tốt.<o:p></o:p></p><p class="MsoNormal">Quả nhiên, hắn một chút đánh chuyển được, cùng phòng Tiểu
Triệu bác sĩ vội vàng thanh âm tự điện thoại kia đầu vang lên: “Hạ ca, ngươi
mau tới bệnh viện, có khám gấp!”<o:p></o:p></p><p class="MsoNormal">Hạ Hành trong lòng nhảy dựng, thanh âm thực trầm: “Tình huống
như thế nào?”<o:p></o:p></p><p class="MsoNormal">“Có cái người bệnh phải làm giải phẫu, tình huống thật không
tốt, chủ nhiệm mới vừa thượng phi cơ, nói cho chúng ta biết làm ngươi phụ
trách, chúng ta chỉ có thể dựa ngươi, mau chóng lại đây!”<o:p></o:p></p><p class="MsoNormal">“Hảo, ta lập tức đến.”<o:p></o:p></p><p class="MsoNormal">Hạ Hành làm cái hít sâu, loại này đột phát | tình huống hắn
trước kia cũng không phải không trải qua quá, đại khái là ngoại khoa bên kia lại
nhận được khó giải quyết người bệnh, yêu cầu nội khoa đi hội chẩn hạ chẩn bệnh.<o:p></o:p></p><p class="MsoNormal">Hắn nhìn thoáng qua mộng đẹp chính hàm Omega, nói thanh thực
xin lỗi, nghĩ nghĩ không thể liền như vậy đi luôn, kia hắn cũng quá không phải
đồ vật.<o:p></o:p></p><p class="MsoNormal">Không kịp tìm giấy, Hạ Hành đem tối hôm qua dùng quá đồ dùng
tránh thai hộp xé mở, ở phản diện giấy trắng bộ phận dùng khách sạn trên bàn
bút bi cực nhanh mà viết xuống chính mình liên hệ phương thức, ở cuối cùng lại
bỏ thêm một câu “Thỉnh nhất định liên hệ ta, ta sẽ làm ra tương ứng bồi thường!”<o:p></o:p></p><p class="MsoNormal">Hạ Hành đem trang giấy đặt ở trên tủ đầu giường thấy được vị
trí, xoay người ra cửa.<o:p></o:p></p><p class="MsoNormal">Hắn lái xe dùng tốc độ nhanh nhất tới rồi bệnh viện, Tiểu
Triệu phát hiện hắn này râu ria xồm xoàm bộ dáng, trên người còn có chút như có
như không mùi rượu, không nhịn xuống hỏi một miệng: “Hạ ca, ngươi đây là, uống
rượu đi lạp?”<o:p></o:p></p><p class="MsoNormal">Hạ Hành thay áo blouse trắng, không trực tiếp đáp lời, hắn
cũng biết chính mình này hình tượng không tốt lắm, nhưng là không còn kịp rồi,
hắn cho chính mình trên tay cùng với mặt khác có thể tiêu độc địa phương đơn giản
tiêu một chút độc, sau đó tiếp đón Tiểu Triệu chạy nhanh đi phòng họp.<o:p></o:p></p><p class="MsoNormal">“Rốt cuộc tình huống như thế nào?”<o:p></o:p></p><p class="MsoNormal">



























































































































































































</p><p class="MsoNormal">Hạ Hành chân trường, đi đường dưới chân sinh phong, Tiểu Triệu
dáng người hơi béo, đành phải điên tiểu bước chân, tận lực cùng trụ Hạ Hành, loạn
hô hấp đáp: “Nam tính Omega, 17 tuổi, giả tính phát tình ứng kích, phỏng chừng
muốn cắt bỏ tuyến thể.”<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (35, 3, N'Chương 3', CAST(N'2021-09-12T08:35:05.570' AS DateTime), N'<p class="MsoNormal">Nghe thế Hạ Hành mày nhăn đến càng khẩn, hỏi lại hắn: “Nào
đưa tới? Quán bar?”<o:p></o:p></p><p class="MsoNormal">“Không phải, tĩnh lâm trung học, có cái học sinh tới gần
phát tình kỳ không mang ức chế tề, ở sân bóng rổ đột nhiên phát tình, đưa tới đứa
nhỏ này nghe nói lúc ấy bị... Mấy cái hỗn tiểu tử nhốt ở thiết bị trong phòng,
chờ phát hiện thời điểm, đã không còn kịp rồi...”<o:p></o:p></p><p class="MsoNormal">Bạo lực học đường.<o:p></o:p></p><p class="MsoNormal">Hạ Hành “Sách” một tiếng, cánh tay phát lực kéo ra phòng họp
môn, ngoại khoa bác sĩ nhóm quả nhiên đều biểu tình ngưng trọng, nhìn đến hắn tới
liền chạy nhanh lôi kéo hắn thương lượng trị liệu phương án.<o:p></o:p></p><p class="MsoNormal">-----<o:p></o:p></p><p class="MsoNormal">Hạ Hành đôi tay giao nắm, chống lại cái trán, hắn trong đầu
suy nghĩ phân loạn, một hồi là bệnh lịch thượng 17 tuổi thiếu niên ngây ngô tú
khí mặt, một hồi là khách sạn trên giường ngủ say xa lạ thanh niên.<o:p></o:p></p><p class="MsoNormal">Hắn thở dài một hơi, duỗi tay nhéo một chút giữa mày, liền
tính hắn là làm bằng sắt thể trạng, cũng nhịn không được túng dục lúc sau, lại
tới bệnh viện xử lý khám gấp.<o:p></o:p></p><p class="MsoNormal">Tiểu Triệu đi theo ngoại khoa người đi ra ngoài, bên kia phải
làm giải phẫu, kế tiếp trị liệu phương án cũng đến bọn họ nội khoa ra.<o:p></o:p></p><p class="MsoNormal">Hạ Hành tự giễu mà cười một chút, là hắn nghĩ sai rồi, nhất
thời sốt ruột, còn tưởng rằng là hoa hồng hương chủ nhân đã xảy ra chuyện.<o:p></o:p></p><p class="MsoNormal">Nói vậy hắn hiện tại hẳn là còn ở mỹ mỹ mà ngủ đi.<o:p></o:p></p><p class="MsoNormal">Hắn sẽ mơ thấy cái gì đâu?<o:p></o:p></p><p class="MsoNormal">-----<o:p></o:p></p><p class="MsoNormal">Cố Y Hàn giãy giụa tỉnh lại, hắn lại nằm mơ, không phải cái
gì mộng đẹp, hắn cũng không nghĩ hồi ức.<o:p></o:p></p><p class="MsoNormal">Hắn giật giật tứ chi, sau đó liền cứng lại rồi, hắn nhíu lại
mi, nhẹ nhàng nâng tay xoa nhẹ một chút đôi mắt.<o:p></o:p></p><p class="MsoNormal">Như thế nào sẽ toàn thân đều đau đâu.<o:p></o:p></p><p class="MsoNormal">Hắn tư duy trì trệ mà đánh giá một chút bốn phía, muốn dùng
cánh tay chống thân mình ngồi dậy, cư nhiên một chốc một lát không có thể ngồi
dậy.<o:p></o:p></p><p class="MsoNormal">Chờ hắn thật vất vả ngồi dậy, mới phát hiện chính mình đang ở
một gian khách sạn trong phòng.<o:p></o:p></p><p class="MsoNormal">Nguyên lai tối hôm qua không phải mộng a.<o:p></o:p></p><p class="MsoNormal">Cố Y Hàn có điểm đau đầu, nhưng mà nửa người dưới càng đau,
hắn vừa mới xốc lên chăn mỏng nhìn thoáng qua, quả thực là thảm không nỡ nhìn,
kỳ thật hắn nửa người trên cũng thực thảm không nỡ nhìn, hắn làn da bạch, bởi vậy
có chút dấu vết lưu lại dấu vết phá lệ rõ ràng, có địa phương đều đỏ đến phát
tím.<o:p></o:p></p><p class="MsoNormal">Hắn hồi tưởng một chút tối hôm qua phát sinh sự, chỉ nhớ rõ
cái kia Alpha sức lực rất lớn, rõ ràng tin tức tố hương vị như vậy ôn trầm, như
thế nào làm chuyện đó thời điểm lại giống người điên, vô luận hắn như thế nào
xin tha đều không ngừng, phảng phất muốn tới địa lão thiên hoang.<o:p></o:p></p><p class="MsoNormal">Trên tường đồng hồ treo tường nói cho hắn hiện tại đã 11 giờ,
hắn nhỏ giọng hút khí xuống giường, mũi chân giống như đụng phải cái gì lạnh lẽo
đồ vật, hắn cúi đầu vừa thấy, trên mặt đất ước chừng nằm năm cái dùng quá bi dựng
bộ.<o:p></o:p></p><p class="MsoNormal">Cố Y Hàn: “....” Người này chẳng lẽ là súc sinh sao?<o:p></o:p></p><p class="MsoNormal">Cố Y Hàn đỡ eo hoài nghi nhân sinh, sau đó phát hiện quần áo
của mình bị điệp hảo đặt ở đầu giường.<o:p></o:p></p><p class="MsoNormal">Hắn duỗi tay cầm lấy hắn tơ lụa áo sơmi, nghĩ thầm người này
còn tính có điểm lương tâm, đảo đỡ phải hắn đỡ eo đi trên mặt đất nhặt quần áo.<o:p></o:p></p><p class="MsoNormal">Nhưng mà chờ hắn mặc vào áo sơmi, đang muốn hệ nút thắt thời
điểm, phát hiện căn bản không đến hệ, nguyên lai là cúc áo địa phương nút thắt
tất cả đều không cánh mà bay, chỉ có mấy cái ngoan cường đầu sợi chi sững sờ ở
kia, phảng phất ở không tiếng động mà cười nhạo hắn.<o:p></o:p></p><p class="MsoNormal">Cố Y Hàn nhắm mắt lại, ở trong lòng một lần một lần nói cho
chính mình “Không cần sinh khí”, hắn nếu như bị tức chết rồi, liền càng mệt.<o:p></o:p></p><p class="MsoNormal">Tuy là hắn ngày thường tính cách lại hảo, giờ phút này cũng
có chút nén giận.<o:p></o:p></p><p class="MsoNormal">Hắn sưởng quần áo, ở trong phòng nhìn chung quanh một vòng,
hắn muốn tìm di động gọi điện thoại, liền hắn hiện tại này phó quỷ bộ dáng, lớn
như vậy đĩnh đạc mà đi ra ngoài, không được bởi vì thiệp hoàng bị trảo đi vào.<o:p></o:p></p><p class="MsoNormal">Di động cũng bị hảo hảo phóng tới trên tủ đầu giường, cố Y
Hàn đi qua đi cầm lấy tới, tầm mắt thoáng nhìn, thấy một trương viết tự trang
giấy.<o:p></o:p></p><p class="MsoNormal">Hắn cầm lấy tới đánh giá một chút, đem trang giấy lật qua
đi, phát hiện là “Giác quan thứ sáu” đóng gói hộp lúc sau, lại hết chỗ nói rồi
sau một lúc lâu, cảm thấy có thể nghĩ đến tại đây mặt trên viết chữ người, nhất
định là một nhân tài, sau đó hắn mới lại đem trang giấy quay cuồng trở về, đi
xem mặt trên tự.<o:p></o:p></p><p class="MsoNormal">Kia tự viết đến rồng bay phượng múa, đẹp là đẹp, chính là biết
chữ có điểm phí đôi mắt.<o:p></o:p></p><p class="MsoNormal">“Hạ, hành... Ân...” Cố Y Hàn dừng một chút, phát hiện trừ bỏ
liên hệ phương thức, cuối cùng còn thêm vào bỏ thêm một hàng tự: “Thỉnh nhất định
liên hệ ta, ta sẽ làm ra tương ứng bồi thường...”<o:p></o:p></p><p class="MsoNormal">Cố Y Hàn mím môi, tưởng đem này tờ giấy phiến ném xuống, bất
quá là một hồi tin tức tố sử dụng hạ không thanh tỉnh một đêm | tình mà thôi,
không cần thiết như vậy thượng cương thượng tuyến.<o:p></o:p></p><p class="MsoNormal">Bồi thường? Loại sự tình này muốn như thế nào bồi đâu, đem hắn
cưới về nhà sao?<o:p></o:p></p><p class="MsoNormal">Còn không bằng bồi ta một kiện áo sơmi tới thật sự.<o:p></o:p></p><p class="MsoNormal">Đây chính là hắn thích nhất một kiện áo sơmi, kết quả liền
như vậy bị hủy.<o:p></o:p></p><p class="MsoNormal">“Bồi áo sơmi... Hạ Hành...”<o:p></o:p></p><p class="MsoNormal">Cố Y Hàn hai ngón tay nhéo trang giấy, lương bạc mà cong
cong khóe môi, đem tấm card nhét vào quần túi.<o:p></o:p></p><p class="MsoNormal">Cá nhân lựa chọn<o:p></o:p></p><p class="MsoNormal">Hạ Hành này lên xuống phập phồng hai ngày kỳ nghỉ rốt cuộc
đi qua.<o:p></o:p></p><p class="MsoNormal">Thứ hai sáng sớm, Hạ Hành trang điểm chỉnh tề đi làm, tiến
văn phòng, liền thấy cùng phòng một vị khác phó chủ nhiệm Tiêu Dương đang ở cắt
plastic bình nước, trong tầm tay phóng một bó hoa hồng.<o:p></o:p></p><p class="MsoNormal">“Sớm a.” Hạ Hành cùng hắn chào hỏi, lại hỏi hắn đang làm gì.<o:p></o:p></p><p class="MsoNormal">“Sớm,” Tiêu Dương mang một bộ bạc biên mắt kính, có vẻ cả
người hào hoa phong nhã: “Khu nằm viện một cái tiểu cô nương đưa, nàng mụ mụ muốn
xuất viện.”<o:p></o:p></p><p class="MsoNormal">“Hoắc.”<o:p></o:p></p><p class="MsoNormal">Hạ Hành ngạc nhiên thượng hạ đánh giá một chút vị này đồng
liêu, phảng phất ngày đầu tiên nhận thức hắn dường như: “Ngươi tình huống như
thế nào, nhân gia thân nhân xuất viện cho ngươi tặng hoa hồng?”<o:p></o:p></p><p class="MsoNormal">“Đây là nhân gia một mảnh tâm ý.” Tiêu Dương trong tay kéo tựa
hồ không tốt lắm dùng, cắt khởi chai nhựa tới đặc biệt lao lực.<o:p></o:p></p><p class="MsoNormal">Hạ Hành xem kia chai nhựa bị hắn cắt đến thảm không nỡ nhìn,
hảo tâm từ phòng nghỉ cầm cái vô dụng pha lê ly đưa cho hắn: “Ngươi vẫn là dùng
cái này đi... Không phải, ngươi liền không ngẫm lại đưa đến này hoa không đúng
sao? Người khác xuất viện đều đưa hoa hướng dương tiểu cúc non, đến ngươi này
liền thành hoa hồng?”<o:p></o:p></p><p class="MsoNormal">Tiêu Dương đẩy một chút trên mũi mắt kính, ngẩng đầu lên
nhìn ỷ ở hắn bên cạnh bàn Hạ Hành, nghi hoặc nói: “Cho nên đâu?”<o:p></o:p></p><p class="MsoNormal">Hạ Hành bất đắc dĩ mà thở dài, nghĩ thầm người này rốt cuộc
là sủy minh bạch giả bộ hồ đồ vẫn là xác thật không biết nhân gia tâm tư.<o:p></o:p></p><p class="MsoNormal">Hắn biết cái kia tiểu cô nương, là 3 giường người bệnh người
nhà. Tiểu cô nương mới vừa thi đại học xong, gia cảnh không tính giàu có, mẫu
thân thân thể vốn dĩ liền không được tốt lắm, còn muốn đồng thời đánh vài phân
công, kết quả có thiên đột nhiên ở công vị thượng té xỉu, đưa đến bệnh viện lúc
sau phát hiện là tuyến thể nhiễm trùng dẫn tới tin tức tố dị ứng chứng, mà Tiêu
Dương chính là nàng mụ mụ chủ trị y sư.<o:p></o:p></p><p class="MsoNormal">Tiêu Dương người này làm việc có nề nếp, phi thường nghiêm
túc, đối thủ hạ mỗi một cái người bệnh đều cơ hồ làm được 200% phụ trách, phỏng
chừng cũng là vì cái này, thường xuyên qua lại, tiểu cô nương liền đối hắn động
tâm.<o:p></o:p></p><p class="MsoNormal">Nói như thế nào Tiêu Dương cũng phi thường ưu tú, ở Alpha
trung cũng là số một số hai, tuy rằng người là chất phác một ít, nhưng thắng ở ổn
trọng.<o:p></o:p></p><p class="MsoNormal">Hạ Hành không thích khua môi múa mép, Tiêu Dương sự hắn thân
là một ngoại nhân cũng không hảo quản.<o:p></o:p></p><p class="MsoNormal">Tiêu Dương không lại miệt mài theo đuổi hắn ý tứ trong lời
nói, mà là đứng dậy hướng pha lê trong ly tiếp chút nước trong, sau đó đem hoa
hồng cắm đi vào, hợp với cái ly cùng nhau phóng tới văn phòng cửa sổ thượng.<o:p></o:p></p><p class="MsoNormal">Kia vài cọng hoa hồng vừa thấy chính là vội từ cửa hàng bán
hoa mua tới, hoa diệp giãn ra, nhìn kỹ mặt trên còn có một tầng giọt sương, hoa
mỹ màu đỏ cánh hoa tắm gội sáng sớm dương quang, cất giấu thiếu nữ bí ẩn ngây
ngô tâm sự.<o:p></o:p></p><p class="MsoNormal">Hạ Hành nhìn chằm chằm kia hoa hồng nhìn trong chốc lát, sau
đó theo bản năng nhìn thoáng qua di động.<o:p></o:p></p><p class="MsoNormal">Khoảng cách ngày hôm qua buổi sáng đã qua đi mau một ngày, lại
vẫn là không ai liên hệ hắn.<o:p></o:p></p><p class="MsoNormal">Chẳng lẽ không nhìn thấy?<o:p></o:p></p><p class="MsoNormal">Hạ Hành một bên thay quần áo một bên tưởng, hắn còn cố ý đem
người nọ di động đặt ở trang giấy bên cạnh, chính là nghĩ đến hắn rời giường
lúc sau khẳng định sẽ trước tìm di động, làm như vậy lớn nhất trình độ bảo đảm
hắn có thể nhìn đến kia tờ giấy.<o:p></o:p></p><p class="MsoNormal">Cho nên thấy được vì cái gì không liên hệ hắn đâu?<o:p></o:p></p><p class="MsoNormal">Rõ ràng đều bị lâm thời đánh dấu.<o:p></o:p></p><p class="MsoNormal">Này đối với Omega tới nói có thể xem như thiên đại sự.<o:p></o:p></p><p class="MsoNormal">-----<o:p></o:p></p><p class="MsoNormal">Hạ Hành hôm nay muốn đến khám bệnh tại nhà, vừa mới đến
phòng khám bệnh, hộ sĩ liền nói cho hắn hôm nay hào lại đầy, này ý nghĩa Hạ
Hành lại muốn ở phòng khám bệnh đãi cả ngày, gặp được khó giải quyết bệnh hoạn
khả năng liền cơm trưa đều ăn không được.<o:p></o:p></p><p class="MsoNormal">Hạ Hành không nói gì sau một lúc lâu, cuối cùng vẫn là không
nhịn xuống phun tào một câu “Vì người nào nhóm không thể nhiều chú ý một chút
thân thể của mình khỏe mạnh đâu.”<o:p></o:p></p><p class="MsoNormal">Tiểu hộ sĩ che miệng cười trộm, an ủi Hạ Hành nói hắn đây là
“Người tài giỏi thường nhiều việc”.<o:p></o:p></p><p class="MsoNormal">Hạ Hành bất đắc dĩ mà xua xua tay làm nàng bắt đầu kêu hào,
bận rộn một ngày liền chính thức bắt đầu rồi.<o:p></o:p></p><p class="MsoNormal">Cùng thường lui tới giống nhau, tới nhìn cái gì bệnh đều có,
trong đó cũng không khỏi có mấy cái khó chơi người bệnh, nhưng là Hạ Hành đối
đãi người bệnh luôn là càng thêm bao dung một ít, hắn cảm thấy này đó người bệnh
sinh bệnh đã thực không dễ dàng, đảo cũng không thể xa cầu bọn họ xem bệnh cũng
muốn hoan thiên hỉ địa, tươi cười đầy mặt.<o:p></o:p></p><p class="MsoNormal">“Cuối cùng một cái hào, hạ bác sĩ.” Thời gian quá đến còn
tính mau, đảo mắt liền đến cuối cùng nhất hào.<o:p></o:p></p><p class="MsoNormal">Hạ Hành gật gật đầu, duỗi người, làm tiểu hộ sĩ gọi người tiến
vào.<o:p></o:p></p><p class="MsoNormal">Người tới là một đôi ao tình lữ, nam tính Alpha đại mùa hè
cũng che thật sự kín mít, mũ khẩu trang đầy đủ mọi thứ, Omega là cái thanh tú gầy
yếu thanh niên, thoạt nhìn tuổi không lớn, tinh thần cũng không tốt lắm, sau cổ
tuyến thể chỗ còn dán một trương ức chế dán.<o:p></o:p></p><p class="MsoNormal">Hạ Hành bất động thanh sắc mà nhìn Alpha đỡ Omega ở trước mặt
hắn ngồi xuống, sau đó kia Alpha mới đề đề khẩu trang, ngồi xuống Omega bên cạnh.<o:p></o:p></p><p class="MsoNormal">Hạ Hành ngầm hiểu, này Alpha đại khái là cái công chúng nhân
vật, có lẽ là cái tiểu minh tinh linh tinh, bí mật luyến ái lúc sau, chính mình
bạn lữ sinh bệnh, lãnh người tới xem bác sĩ.<o:p></o:p></p><p class="MsoNormal">Loại sự tình này hắn thấy được không ít, hắn cũng sẽ không cố
ý đi tìm tòi nghiên cứu cái gì.<o:p></o:p></p><p class="MsoNormal">“Thân thể có cái gì không thoải mái sao?” Hạ Hành nhìn về
phía cái kia Omega, việc công xử theo phép công hỏi.<o:p></o:p></p><p class="MsoNormal">Omega ngập ngừng vài cái, sắc mặt tựa hồ càng trắng vài phần,
lắp bắp mà nhìn về phía bên cạnh Alpha, kia Alpha thấy hắn này phó nhìn thấy mà
thương bộ dáng, thanh thanh giọng nói, đối Hạ Hành nói: “Ta ái nhân hắn, phía
trước ngoài ý muốn sinh non, này nửa năm qua thân thể càng ngày càng kém, đối
ta tin tức tố nại chịu lực cũng biến kém...”<o:p></o:p></p><p class="MsoNormal">“Ân, các ngươi ở bên nhau thời gian dài bao lâu? Là, cố định
bạn lữ sao?” Hạ Hành lời này chỉ là thân là cái này phòng bác sĩ bình thường lời
nói thuật, hắn muốn nói trước này hai người quan hệ, mới có thể tiến thêm một
bước phán định rốt cuộc có phải hay không đệ nhị tính chinh phương diện xảy ra
vấn đề.<o:p></o:p></p><p class="MsoNormal">Nhưng kia Alpha phản ứng lại rất có ý tứ, hắn tựa hồ có điểm
thất thần, chờ Hạ Hành lại lặp lại một lần vấn đề lúc sau, hắn mới hàm hồ nói:
“... Là cố định bạn lữ, ở bên nhau có, đại khái đã hơn một năm đi...”<o:p></o:p></p><p class="MsoNormal">Hắn nói xong lúc sau, hắn Omega cũng nhẹ nhàng gật gật đầu.<o:p></o:p></p><p class="MsoNormal">Hạ Hành gật đầu, trong lòng có so đo, nghĩ thầm chỉ sợ sự thật
không đơn giản như vậy. Nhưng là việc này cùng hắn cũng không có gì quan hệ, hắn
chỉ là cái bác sĩ, phụ trách xem bệnh mà thôi.<o:p></o:p></p><p class="MsoNormal">Hắn ký lục một chút bệnh tình, châm chước một chút, nói: “Ta
xem ngươi dán ức chế dán, tuyến thể sẽ đau?”<o:p></o:p></p><p class="MsoNormal">“Ân, ngẫu nhiên sẽ giống kim đâm giống nhau đau một lát.” Lần
này đổi Omega nói chuyện, hắn thanh âm thực mềm mại, nghe tới thực nhu nhược bộ
dáng.<o:p></o:p></p><p class="MsoNormal">“Cuối cùng một lần hành phòng là khi nào?”<o:p></o:p></p><p class="MsoNormal">“... Thứ tư tuần trước.”<o:p></o:p></p><p class="MsoNormal">“Thành công sao? Ngươi có hay không cái gì phản ứng?”<o:p></o:p></p><p class="MsoNormal">“... Không, không có vào, ta vừa tiếp xúc hắn tin tức tố liền
toàn thân đều đau, đặc biệt là tuyến thể...”<o:p></o:p></p><p class="MsoNormal">Hạ Hành trầm ngâm một chút, giải thích nói: “Hoài nghi là ứng
kích chứng, sinh non lúc sau đi sinh dục khoa xem qua sao?”<o:p></o:p></p><p class="MsoNormal">“... Đi, lúc ấy còn ở viện,” Omega vành mắt có điểm đỏ lên,
thanh âm cũng bắt đầu run: “Cái kia bác sĩ nói ta... Nói ta không bao giờ có thể
mang thai.”<o:p></o:p></p><p class="MsoNormal">Hạ Hành biết chuyện này, bệnh viện hồ sơ vị này Omega bệnh lịch
thượng, chói lọi viết cái này chẩn bệnh kết quả.<o:p></o:p></p><p class="MsoNormal">“Bác sĩ, tiểu miên hắn, hắn nhất định không có việc gì đúng
hay không? Chúng ta nhất định còn có thể có hài tử đúng hay không?” Alpha ngữ
khí kích động, Hạ Hành làm hắn trước bình tĩnh một chút.<o:p></o:p></p><p class="MsoNormal">“Nói như vậy, chẩn bệnh là sẽ không làm lỗi, nhưng có thể
trước làm kiểm tra, chúng ta nhìn xem kết quả, lại quyết định trị liệu phương
án.”<o:p></o:p></p><p class="MsoNormal">“Hảo, tốt, thỉnh ngài nhất định phải chữa khỏi tiểu miên!”<o:p></o:p></p><p class="MsoNormal">Hạ Hành khai kiểm tra đơn, thiêm hảo tự đưa cho Alpha, không
ứng hắn lời này, chỉ là nói một chút làm kiểm tra địa điểm.<o:p></o:p></p><p class="MsoNormal">Kia Alpha gắt gao nhéo kiểm tra đơn, đỡ Omega đi ra ngoài
làm kiểm tra rồi.<o:p></o:p></p><p class="MsoNormal">Hạ Hành sửa sang lại một chút bệnh lịch, canh giữ ở cửa tiểu
hộ sĩ thở dài một hơi, nhỏ giọng nói: “Hiện tại này đó... Ai.”<o:p></o:p></p><p class="MsoNormal">Hạ Hành không nói chuyện, cũng không có gì dư thừa biểu tình,
chuyện này trong đó quan khiếu hắn không hiểu biết, cũng không có hứng thú, hắn
chỉ có thể cấp ra một giấy chẩn bệnh.<o:p></o:p></p><p class="MsoNormal">Nói trắng ra là, đều là cá nhân lựa chọn thôi.<o:p></o:p></p><p class="MsoNormal">Ái phi thỏa hiệp<o:p></o:p></p><p class="MsoNormal">



































































































































































































</p><p class="MsoNormal">Cái kia kêu tiểu miên Omega kiểm tra kết quả cùng Hạ Hành
suy nghĩ xuất nhập không lớn, ứng kích chứng là có thể chữa khỏi, hắn khai một
ít dược, dặn dò Omega muốn đúng hạn ăn.<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (36, 1, N'Chương 1', CAST(N'2021-09-12T08:37:11.077' AS DateTime), N'<p class="MsoNormal">1990 năm nông lịch 15 tháng 7, quỷ tiết, lại là đêm trăng
tròn, hoàng lịch thượng là như thế này viết: Tham Lang vào nhà, âm khí cực thịnh,
mọi việc không nên, vưu kỵ động thổ. Baidu tìm tòi trung<o:p></o:p></p><p class="MsoNormal">Dự Châu Hoài Thượng Huyện, một cái tên là “Diệp gia” hẻo
lánh sơn. Dựa theo tập tục, lúc chạng vạng, từng nhà đều ở trước cửa thiêu thật
dày hai trát tiền giấy, một trát tế tổ, một khác trát là cho qua đường cô hồn
dã quỷ, cầm gia nhân này tiền, liền sẽ vội vàng lên đường, sẽ không cùng gia
nhân này khó xử.<o:p></o:p></p><p class="MsoNormal">Thiêu xong tiền giấy, từng nhà quan trọng cửa sổ, sớm nghỉ
ngơi, tin phật tin đạo còn muốn cầu khẩn một phen, khẩn cầu này một đêm bình an
vượt qua.<o:p></o:p></p><p class="MsoNormal">Đêm khuya, hạ vũ, đánh vào lá cây thượng, tất tất tác tác,
như cô quỷ đêm hành, tiếng gió nức nở, như tố như khóc, càng là vì cái này
không tầm thường ban đêm gia tăng rồi một mạt quỷ dị không khí.<o:p></o:p></p><p class="MsoNormal">Đầu đường nhỏ thượng, một đạo mơ hồ thân ảnh ở mưa gió trung
như ẩn như hiện, đi ra tử, lập tức thượng sau núi, đi vào một mảnh mồ.<o:p></o:p></p><p class="MsoNormal">Này phiến mồ nãi Diệp gia phần mộ tổ tiên, chôn chính là Diệp
gia mấy trăm năm tới ma quỷ. Hắc ảnh cuối cùng đi vào một tòa không có lập bia
trước mộ, một phen chiêu hồn cờ cắm ở mộ phần, quỷ thủ giống nhau ở trong gió
rêu rao.<o:p></o:p></p><p class="MsoNormal">Mồ thượng tân thổ, cùng không đảo chiêu hồn cờ, thuyết minh
đây là một tòa mộ mới.<o:p></o:p></p><p class="MsoNormal">“Nhị tẩu, hôm nay là ngươi đầu thất, chính đuổi kịp lại là
quỷ tiết, ta tới thăm ngươi.” Tiếng nói khàn khàn, nghe không vượt qua 40 tuổi.<o:p></o:p></p><p class="MsoNormal">Ở trước mộ lặng im một lát, nam nhân từ trên lưng cởi xuống
một phen lụa đỏ dù, mở ra cắm ở trước mộ, ngăn trở dạ vũ, thật cẩn thận lấy ra
ba nén hương, bậc lửa sau cắm ở dưới dù bùn đất trung, không màng lầy lội, quỳ
xuống dập đầu lạy ba cái, đứng dậy lấy ra một cái gấp bẹp sạn, bắt đầu quật mồ.<o:p></o:p></p><p class="MsoNormal">Mồ thượng vốn là tân thổ, lại trải qua nước mưa ngâm, thập
phần mềm xốp, không đến hai mươi phút liền quật ra một cái trường khẩu tử, hủy
diệt một tầng bùn đất, một khối đỏ tươi quan tài bản lộ ra tới, như máu tươi ướt
át. &lt; Baidu tìm tòi trung &gt;<o:p></o:p></p><p class="MsoNormal">Hết thảy quan tài, đều sơn thành màu đỏ sậm, sơn thành màu đỏ
tươi đều là đột tử người, oán khí quá nặng, màu đỏ càng dày đặc, trấn tà tác dụng
càng giai.<o:p></o:p></p><p class="MsoNormal">Không chỉ có như thế, ở quan tài thượng, còn quấn lấy 33 căn
màu đỏ thô tuyến, ngang dọc đan xen, giống như một trương, đem quan tài toàn bộ
chặt chẽ bao lấy, tựa hồ sợ trong quan tài người bò ra tới.<o:p></o:p></p><p class="MsoNormal">Nam nhân đối với quan tài nhất bái rốt cuộc, trong miệng
nói: “Nhị tẩu, ta giúp ngươi tới.” Lấy ra chủy thủ, đem tơ hồng từng cây cắt đứt,
tiếp theo dùng cạy côn sinh sôi gõ khai bảy căn bảy tấc quan tài đinh, hít sâu
một hơi, xốc lên quan tài ——<o:p></o:p></p><p class="MsoNormal">Một khối thân xuyên màu trắng áo liệm nữ thi, rất nằm ở quan
đế.<o:p></o:p></p><p class="MsoNormal">Hương khói mỏng manh ánh sáng dưới, nhưng thấy nữ thi sắc mặt
trắng bệch, một đôi vẩn đục đôi mắt lại là tròn tròn trợn to, giống như cá chết,
biểu tình dữ tợn đáng sợ, toàn thân tản ra một cổ âm lãnh đến cực điểm hơi thở.
Tử khí.<o:p></o:p></p><p class="MsoNormal">“Ti……”<o:p></o:p></p><p class="MsoNormal">Nam nhân hít hà một hơi, tuy là hắn có điều chuẩn bị, chợt
nhìn đến trường hợp này, cũng là bắp chân nhũn ra, vội vàng quỳ xuống, đối với
nữ thi lại dập đầu lạy ba cái, run giọng nói:<o:p></o:p></p><p class="MsoNormal">“Nhị tẩu, ngươi chết ở sản trên giường, một thi hai mệnh,
kia bang nhân lại luôn mồm tổ tông quy củ, không màng nhân luân, sinh sôi đem
ngươi cùng hài tử mở ra, phân chôn hai mà. Hôm nay là ngươi hồi hồn chi dạ, ta
Diệp Đại Bảo mạo hiểm đào ra ngươi kia đáng thương hài nhi, đưa còn cấp nhị tẩu
ngươi……”<o:p></o:p></p><p class="MsoNormal">Nói, từ trong lòng lấy ra một cái bố bao, cởi bỏ tới, lại là
một khối trẻ con thi thể!<o:p></o:p></p><p class="MsoNormal">Đem thi thể đặt ở nữ xác chết thượng, Diệp Đại Bảo khom người
lui về phía sau, quỳ trên mặt đất, thấp thỏm chờ đợi. Trong giây lát, một tiếng
nữ tử gào khóc thanh, ở mưa gió trung vang vọng.<o:p></o:p></p><p class="MsoNormal">Nữ thi “Đằng” một chút từ trong quan tài ngồi dậy, hai tay
buộc chặt, mười căn khô khốc ngón tay, gắt gao moi ở trẻ con phía sau lưng, đối
mặt Diệp Đại Bảo, trên mặt tràn ra một cái quỷ dị đến cực điểm tươi cười.<o:p></o:p></p><p class="MsoNormal">Diệp Đại Bảo hai đầu gối quỳ xuống đất, lại bái nói: “Nhị tẩu,
ta hoàn thành ngươi tâm nguyện, sau đó còn đem giúp ngươi cái quan điền mồ, lệnh
người nhìn không ra tới, thỉnh nhị tẩu xem ta lao khổ, cũng thỏa mãn ta tâm
nguyện!”<o:p></o:p></p><p class="MsoNormal">Nói xong, từ dưới chân rút khởi kia ba nén hương, tiến đến nữ
thi mặt hạ, dùng khói huân nướng khởi nữ thi cằm, một cái tay khác đã sớm chuẩn
bị tốt một con thau đồng, ở dưới tiếp theo.<o:p></o:p></p><p class="MsoNormal">Kia nữ thi thế nhưng về phía trước duỗi cổ, vẫn không nhúc
nhích, phối hợp Diệp Đại Bảo.<o:p></o:p></p><p class="MsoNormal">Thi du từng giọt dừng ở thau đồng trung, mười phút sau, đáy
bồn tích tràn đầy một tầng. Nữ thi mày một chút nhăn lại tới, mặt lộ vẻ đáng sợ
thái độ.<o:p></o:p></p><p class="MsoNormal">Diệp Đại Bảo vội vàng triệt rớt hương khói cùng thau đồng,
đem thau đồng dùng plastic bộ hảo, cất vào trong lòng ngực, mắt thấy nữ thi chậm
rãi nằm trở lại trong quan tài, trong lòng ngực ôm trẻ con, mặt mang vừa lòng
chi sắc, trong lòng cũng là đại thở dài nhẹ nhõm một hơi.<o:p></o:p></p><p class="MsoNormal">“Nhị tẩu, ngươi có trẻ con, bảy bảy bốn mươi chín thiên lúc
sau tất thành mẫu tử thi sát, có thù báo thù. Đại bảo này liền vì ngươi cái
quan, ngươi hảo sinh tĩnh dưỡng tu luyện……”<o:p></o:p></p><p class="MsoNormal">Mười phút sau, Diệp Đại Bảo nhìn bị chính mình một lần nữa
vùi lấp nấm mồ, từ bề ngoài nhìn không ra một tia sơ hở, lúc này mới xá một
cái, xoay người vội vàng xuống núi.<o:p></o:p></p><p class="MsoNormal">……<o:p></o:p></p><p class="MsoNormal">Một tháng lúc sau, Diệp gia trường Diệp Đại Công gia.<o:p></o:p></p><p class="MsoNormal">Tám tháng lưu hỏa, đúng là một năm trung nhất nhiệt thời điểm,
nhà người khác đều mở cửa thông gió, sử dụng quạt điện, Diệp Đại Công gia sau lại
là cửa phòng nhắm chặt, bên trong điểm ba cái lò than tử.<o:p></o:p></p><p class="MsoNormal">Trên giường, một cái năm sáu tuổi hài đồng, trên người bọc
thật dày chăn bông, vẫn cứ bị đông lạnh đến môi phát tím, cả người run bần bật,
trong miệng không được kêu lãnh.<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công ở trong phòng đứng đó một lúc lâu, đó là đầy
người đổ mồ hôi, thở dài đi ra ngoài cửa, dùng sức đem trên mặt mồ hôi cùng nước
mắt cùng nhau lau sạch.<o:p></o:p></p><p class="MsoNormal">“Cha, Thiếu Dương hắn……” Một cái hai mươi mấy tuổi thiếu phụ
tiến lên đây, mở to một đôi khóc sưng đôi mắt nhìn Diệp Đại Công, nàng là Diệp
Đại Công con dâu, cũng chính là đứa bé kia nương.<o:p></o:p></p><p class="MsoNormal">“Đệ tiểu binh trở về rồi nói sau.”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công bất đắc dĩ lắc lắc đầu, đương vài thập niên thầy
lang hắn, đối tôn tử bệnh cũng là một chút biện pháp không có, nửa tháng tới, hắn
cõng tôn tử chạy biến huyện thành cùng thành phố bệnh viện, tỉnh thành đại bệnh
viện cũng đi, kết quả chính là cái gì cũng không điều tra ra, Diệp Đại Công bắt
đầu hoài nghi tôn tử căn bản là không bệnh, mà là trêu chọc nào đó tà uế, phía
trước mời đến bà cốt làm tràng pháp sự, cũng không hiệu quả, vì thế hôm nay
sáng sớm đem nhi tử tống cổ đi trong thành thỉnh cao nhân trở về.<o:p></o:p></p><p class="MsoNormal">Đang nói, nhi tử Diệp Binh đã trở lại, mang về một cái đạo
sĩ trang điểm lão giả.<o:p></o:p></p><p class="MsoNormal">“Vị này chính là……”<o:p></o:p></p><p class="MsoNormal">“Là yêm từ trong thành mời đến đạo trưởng, hắn nghe nói nhà
ta Thiếu Dương tình huống, nguyện ý tới cấp nhìn xem.”<o:p></o:p></p><p class="MsoNormal">“Làm phiền đạo trưởng.” Diệp Đại Công biên chắp tay hành lễ,
biên dùng một đôi mắt nhìn từ trên xuống dưới người tới.<o:p></o:p></p><p class="MsoNormal">Này lão đạo nhìn qua 60 tới tuổi, người thực gầy, mỏ chuột
tai khỉ, bát tự mi, tam giác mắt, trên người đạo bào cũ không thể lại cũ, bối một
cái túi vải buồm, tiến, đôi mắt liền quay tròn nơi nơi loạn chuyển, không có một
chút tiên phong đạo cốt cảm giác.<o:p></o:p></p><p class="MsoNormal">

















































































</p><p class="MsoNormal">Diệp Đại Công mày ám nhăn, đầu năm nay bọn bịp bợm giang hồ
quá nhiều, đạo sĩ hòa thượng cũng có giả, hắn dù sao xem này lão đạo sĩ đều
không giống có năng lực bộ dáng, bất quá với cái gì cũng có thể thử khi tuyệt vọng,
người nếu mời tới, tổng muốn thử thử một lần, lập tức thực khách khí thỉnh lão
đạo sĩ đi sau xem tôn tử.<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (36, 2, N'Chương 2', CAST(N'2021-09-12T08:38:23.663' AS DateTime), N'<p class="MsoNormal">Ai ngờ này lão đạo sĩ khoát tay, chính mình kéo một cái trường
ghế, ở trong sân ngồi xuống, nói: “Vô Lượng Thiên Tôn, bần đạo cơm chiều còn
không có ăn, trước cấp lộng điểm ăn. ) ( trung &amp;.”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công ngẩn ra, lệnh con dâu chạy nhanh đi nấu cơm,
chính mình cũng lấy cớ trợ thủ, đem nhi tử gọi vào phòng bếp, dò hỏi hắn này
lão đạo sĩ lai lịch.<o:p></o:p></p><p class="MsoNormal">“Yêm dựa theo cha ý tứ, vốn là đi huyện thành tìm Trương Đại
Tiên, ở huyện thành ăn bánh bao thời điểm, vừa lúc cùng này lão đạo sĩ một bàn,
hắn liếc mắt một cái liền nhìn ra yêm trên người có thi khí, nghe yêm đem tình
huống vừa nói, lập tức tỏ vẻ nguyện ý hỗ trợ, yêm liền đem hắn mang về tới.”
Nói đến này hạ giọng, “Cha, này lão đạo sĩ…… Không phải là kẻ lừa đảo đi?”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công không trả lời, hỏi: “Hắn muốn hay không tiền?”<o:p></o:p></p><p class="MsoNormal">“Muốn a, nói sự thành lúc sau, cho hắn 5000. Yêm tưởng tượng
cứu mạng quan trọng, liền đáp ứng rồi.”<o:p></o:p></p><p class="MsoNormal">5000…… Ở cái kia niên đại, đặc biệt đối một cái nông gia
đình tới nói, thật không phải số lượng nhỏ. Bất quá chỉ cần có thể cứu tôn tử,
đừng nói 5000, chính là muốn hắn Diệp Đại Công mệnh, Diệp Đại Công cũng mày
không nhăn một chút, chỉ là, nếu là kẻ lừa đảo, tiêu tiền không nói, còn chậm
trễ thời gian, tôn tử tình huống hiện tại chính là một ngày không bằng một ngày
a.<o:p></o:p></p><p class="MsoNormal">Hoài phức tạp tâm tình, Diệp Đại Công trở lại trong sân, pha
hai ly trà, ngồi ở lão đạo đối diện, cùng nhau uống trà nói chuyện phiếm, muốn
bộ một bộ này lão đạo chi tiết, kết quả lão đạo căn bản không nghĩ phản ứng hắn,
chỉ nói chính mình đạo hào kêu Thanh Vân Tử, đến từ Mao Sơn, còn lại đủ loại
không muốn nhiều lời.<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công trong lòng càng là hoài nghi, nhưng là chuyện
tới hiện giờ, cũng chỉ chết tử tế mã trở thành ngựa sống y.<o:p></o:p></p><p class="MsoNormal">Đồ ăn làm tốt, Thanh Vân Tử nhưng thật ra không khách khí,
làm Diệp Binh đi cửa hàng mua một lọ tốt nhất rượu, một mình một người vui vẻ
thoải mái ăn uống mau một giờ, lúc này mới lau miệng, duỗi người, mang theo vài
phần cảm giác say, bước chân tập tễnh hướng đi sau. Baidu tìm tòi trung<o:p></o:p></p><p class="MsoNormal">Nhìn hắn xiêu xiêu vẹo vẹo bước chân, Diệp Đại Công âm thầm
thở dài.<o:p></o:p></p><p class="MsoNormal">Đi vào sau, Thanh Vân Tử xa xa đánh giá trên giường hài tử
liếc mắt một cái, nhìn đến hắn đỏ bừng hai mắt cùng đen nhánh sắc mặt, kết hợp
Diệp Binh phía trước tự thuật, trong lòng đó là có tám phần quyết đoán.<o:p></o:p></p><p class="MsoNormal">Đi ra phía trước, một con bàn tay to che lại hài tử đỉnh đầu,
lấy cương khí kiểm tra hắn ngũ tạng lục phủ, đột nhiên toàn thân run lên, đứa
nhỏ này, cư nhiên là hiếm thấy bẩm sinh linh thể!<o:p></o:p></p><p class="MsoNormal">Lại nhìn kỹ đứa nhỏ này, ngũ quan no đủ, mệnh cách kiên quyết,
đạo văn thon dài, lại là cái tuyệt hảo tu đạo chi tài! Trong lòng mừng như
điên, nghĩ thầm chính mình tâm huyết dâng trào, xuống núi du lịch, vừa vặn tại
đây tiểu huyện thành gặp gỡ hài tử phụ thân, nguyên lai vận mệnh chú định là vì
tìm kiếm đứa nhỏ này!<o:p></o:p></p><p class="MsoNormal">“Vô Lượng Thiên Tôn, cảm tạ Tam Thanh chúc phúc, Mao Sơn có
hậu, hắc hắc, hắc hắc.”<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử cười ngây ngô một hồi lâu, mới ngăn chặn mừng
như điên chi tình, vì hài tử kiểm tra toàn thân, phát hiện hắn tứ chi lạnh lẽo
đến xương, thân thể mặt khác bộ vị lại bàn ủi nóng bỏng, quỷ dị thực. Đem hài tử
đôi tay mở ra, quả nhiên lòng bàn tay đen nhánh, làn da đã chất sừng hóa, sờ
lên rất là thô ráp, hơn nữa kia một bôi đen sắc rất có triều thủ đoạn lan tràn
chi thế.<o:p></o:p></p><p class="MsoNormal">“Thật là lợi hại thi độc!”<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử thầm than một tiếng, từ trong bao móc ra một
phen gạo nếp, ấn ở hài tử trên tay, chỉ nghe “Tê” một tiếng, một cổ khói nhẹ đằng
khởi, một phen gạo nếp toàn biến thành màu đen.<o:p></o:p></p><p class="MsoNormal">“Đạo trưởng, đây là……” Diệp Đại Công phụ tử kinh ngạc đến
ngây người, nơm nớp lo sợ hỏi, phía trước một màn làm cho bọn họ đánh mất một
chút hoài nghi, cảm thấy lão đạo sĩ là thực sự có pháp lực, trong lòng cũng là
dâng lên một sợi hy vọng.<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử không đáp, lệnh Diệp Binh lấy tới một ngụm bát
to, lấy ra một lá bùa, dùng chu sa ở mặt trên vẽ mấy, nhẹ nhàng lay động, lá
bùa tự cháy, đem giấy hôi để vào bát to, lấy thủy hóa chi, uy hài tử uống xong
đi.<o:p></o:p></p><p class="MsoNormal">Nguyên bản hôn mê hài tử rên rỉ một tiếng, tỉnh lại, khóc
lóc kêu lãnh, Thanh Vân Tử lệnh Diệp Binh lại cầm một giường chăn bông cấp hài
tử cái hảo, hống hắn ngủ, tiếp theo lấy ra một ngụm la bàn, trong miệng niệm một
đạo chú ngữ, la bàn kim đồng hồ bay lộn lên, chỉ hướng đầu giường phương hướng.<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử bước nhanh đi qua đi, duỗi tay ở đệm chăn phía
dưới sờ soạng một lần, không sờ đến đồ vật, liền không màng tro bụi chui vào dưới
giường, lại sờ soạng một hồi, ra tới thời điểm, thần sắc nhất phái ngưng trọng.
Giống biến ma thuật dường như lấy ra một viên màu đỏ thuốc viên, giao cho Diệp
Binh. “Lấy nhị cân rượu vàng, xứng lấy tam tiền hùng hoàng, một hai chu sa, trộn
lẫn này cái xích luyện đan, dùng nhị cân nước ấm hóa khai, mỗi nửa canh giờ uy
hài tử hai lượng, nhưng trừ thi độc.”<o:p></o:p></p><p class="MsoNormal">Diệp Binh bái tạ, vội vàng đi làm.<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử trở lại trong sân, như cũ ngồi ở trường ghế thượng,
bưng lên phía trước không uống xong rượu trắng, chậm rì rì uống, cau mày, tựa hồ
tâm sự nặng nề.<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công thấu đi lên, đối với Thanh Vân Tử vái chào tới
mặt đất —— mới vừa rồi Thanh Vân Tử ở kia liên tiếp lệnh người hoa cả mắt bố
trí, hoàn toàn đánh mất hắn trong lòng nghi ngờ, xác định này Thanh Vân Tử là
cái đắc đạo cao nhân.<o:p></o:p></p><p class="MsoNormal">“Đạo trưởng, yêm này tôn nhi…… Còn có thể cứu chữa sao?”<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử buông bát rượu, ngẩng đầu, đôi mắt mị thành một
cái phùng đánh giá hắn. “Nhà ngươi có hay không cái gì kẻ thù?”<o:p></o:p></p><p class="MsoNormal">“Kẻ thù?” Diệp Đại Công cả kinh, lắc lắc đầu. “Ta đương trường
ba mươi năm, đắc tội với người không ít, nhưng là kẻ thù…… Thật đúng là không
có.”<o:p></o:p></p><p class="MsoNormal">“Cẩn thận ngẫm lại, còn không phải giống nhau thù, muốn trí
ngươi cả nhà vào chỗ chết cái loại này!”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công hít hà một hơi, trong đầu bay nhanh hiện lên một
trường xuyến tên, lại một đám lọc rớt, lắc đầu nói: “Thật sự không có, đạo trưởng
minh giám, yêm một nhà chính là tú tài lúc sau, biết đạt lý không dám nhận,
chuyện xấu tuyệt chưa làm qua, càng sẽ không kết hạ như vậy thâm cừu đại hận. Đến
tột cùng sao hồi sự, còn thỉnh đạo trưởng nói rõ.”<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử khẽ gật đầu, “Xem ngươi ấn đường minh quang,
cũng coi như là có chút chính khí người.” Lập tức mở ra tay trái, Diệp Đại Công
liếc mắt một cái nhìn đến hắn lòng bàn tay cái kia bóng bàn lớn nhỏ hình cầu, đỏ
bừng, có chút ướt át, phảng phất một cái dính đầy huyết tiểu cầu.<o:p></o:p></p><p class="MsoNormal">“Đây là ta từ ván giường thượng moi xuống dưới, chính là nó
đem ngươi tôn tử hại thành như vậy.”<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử lắc lắc đầu, net “Đây là thi du cao, bị người
dùng bí pháp hạ quá chú, ly người năm thước trong vòng, sẽ không ngừng phóng
thích thi độc, bị người hấp thu. Nếu không một tháng, người này liền sẽ biến
thành hành thi, mất đi lý trí, chủ động công kích người khác, bị cắn thương
cùng trảo thương người, đều sẽ biến thành hành thi. Nhà ngươi tôn tử đã thi độc
công tâm, bắt đầu hướng ra phía ngoài lan tràn, ngươi cũng nhìn đến nhà ngươi
tôn tử đôi tay, kia đó là thi hóa đặc thù.”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công rốt cuộc không đứng được, chân mềm nhũn ngã ngồi
trên mặt đất, lão lệ tung hoành, ngã vào ở Thanh Vân Tử dưới chân, “Đạo trưởng
cầu ngươi cứu cứu nhà yêm tôn tử, nhà yêm tam đại đơn truyền, liền này một cái
độc đinh……”<o:p></o:p></p><p class="MsoNormal">“Ngươi trước lên. Việc này tuy rằng khó giải quyết, nhưng nếu
làm bần đạo gặp được, tự sẽ không mặc kệ.”<o:p></o:p></p><p class="MsoNormal">Chờ Diệp Đại Công lên, Thanh Vân Tử tiếp theo nói: “Thi độc
công tâm, nguyên bản tất không thể sống, cũng là nhà ngươi tôn tử là……” Đột
nhiên nghĩ vậy sự kiện vẫn là bảo mật hảo, miễn cho truyền ra đi.<o:p></o:p></p><p class="MsoNormal">“Nhà ngươi tôn tử thể chế đặc thù, thi độc cực âm, nhập thể
sau kích phát rồi trong thân thể hắn dương khí, cho nên thân thể mới lãnh nhiệt
tương tạp, nếu là giống nhau thi hạ độc được cũng không làm gì được hắn……”<o:p></o:p></p><p class="MsoNormal">







































































</p><p class="MsoNormal">Thanh Vân Tử nhíu mày triều lòng bàn tay kia đoàn thi du cao
nhìn lại, “Thi du cũng có bất đồng, này thi du chính là đột tử người sở hữu,
oán khí sâu đậm, cùng thi độc cùng nhau xâm lấn nhân thể, mới tạo thành ngươi
tôn tử hẳn phải chết cục diện.”<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (36, 3, N'Chương 3', CAST(N'2021-09-12T08:38:55.280' AS DateTime), N'<p class="MsoNormal">Nói đến này, đột nhiên một sửa nghiêm túc bộ dáng, hướng về
phía Diệp Đại Công cười hắc hắc: “Lão nhân, ta như vậy cùng ngươi nói, thế gian
này có thể cứu sống ngươi tôn tử, không vượt qua năm người, may mắn ngươi gặp
được bần đạo, đây cũng là ngươi tôn tử cùng ta duyên phận, hắc hắc, duyên phận
a. Đạt nha sáp e vựng bài tư ) ( trung &amp;.”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công không rõ này ý, đang ở phỏng đoán, Thanh Vân Tử
chuyện vừa chuyển: “Ngươi tôn tử thi độc tạm thời khắc chế, hiện tại nhất quan
trọng chính là đem thi du cao chủ nhân tìm ra, sâu như vậy oán khí, này chủ
nhân tất là lệ quỷ, lưu nó không được. Ngươi cẩn thận ngẫm lại, gần nhất nửa
năm, vùng này có hay không đột tử người?”<o:p></o:p></p><p class="MsoNormal">Diệp gia chỉ có mấy chục hộ người, phàm là hồng bạch đại sự,
trường không có khả năng không biết, Diệp Đại Công lập tức nói: “Có, một tháng
trước, bọn yêm có cái bà nương, sinh hài tử thời điểm khó sinh mà chết, một thi
hai mệnh, nhưng xem như đột tử?”<o:p></o:p></p><p class="MsoNormal">“Vô nghĩa, nàng chết ở ngày mấy?”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công nghĩ nghĩ: “Không quá nhớ rõ, giống như…… Nga
đúng rồi, ta nhớ rõ nàng đầu thất cùng ngày, chính đuổi kịp bảy tháng mười bốn
quỷ tiết cùng ngày!”<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử trong lòng một giật mình, vội vàng nói: “Mau
mang ta đi trước mộ nhìn xem!”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công không dám chậm trễ, lãnh Thanh Vân Tử dọc theo
đường đi sơn, mười lăm phút sau, đi vào trương quả phụ trước mộ. Thanh Vân Tử lấy
tự thân cương khí trắc một chút, nói thầm nói: “Này mồ không thích hợp, như thế
nào bên trong có hai cổ quỷ khí, trong đó một cái vẫn là trẻ con! Ai nha không
tốt! Mau, quật mồ khai quan, ta muốn xem cái đến tột cùng!”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công mặt lộ vẻ khó xử, “Này…… Trương quả phụ nam
nhân nửa năm trước đã chết, sinh chính là con mồ côi từ trong bụng mẹ, trong
nhà lại không quen người, nhưng thật ra không ai tới nháo, chính là vọng tự quật
mồ…… Việc này nếu làm người biết, không hảo công đạo.”<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử cả giận nói: “Không khai quan, chờ này thi sát
thành hình, các ngươi toàn người đều phải chết hết!”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công ngẩn ra, mới vừa rồi ý thức được sự tình quan
trọng đại, thỉnh Thanh Vân Tử sau đó, chính mình chạy như bay xuống núi, kêu mấy
cái hậu sinh, mỗi người khiêng xẻng, cùng nhau đi vào mồ. &lt; Baidu tìm tòi
trung &gt; trên đường mấy cái hậu sinh đã từ Diệp Đại Công trong miệng hiểu biết
đến sự tình đại khái, hơn nữa Diệp Đại Công hứa hẹn chỗ tốt cùng một mình gánh
vác trách nhiệm bảo đảm, lập tức không chút do dự động thủ đào mồ.<o:p></o:p></p><p class="MsoNormal">Tại đây đoạn thời gian nội, Thanh Vân Tử lấy ra năm đem tiểu
kỳ, nhan sắc phân biệt là kim, lục, nâu, bạch, hồng, đối ứng ngũ hành chi vị,
vây quanh trương quả phụ mồ cắm một vòng, lại ở Càn vị cùng Khôn vị các điểm
thượng một chú nhiếp hồn hương, lúc này mồ cũng đào khai, mấy cái tiểu tử nhìn
đến đỏ tươi quan tài bản, đều có điểm lùi bước.<o:p></o:p></p><p class="MsoNormal">“Các ngươi tránh ra, thối lui đến ngũ hành kỳ bên ngoài đi,
nhớ lấy không thể tiến vào.” Thanh Vân Tử đi đến trước mộ, cảm giác được từng
luồng âm sát khí ập vào trước mặt, trong lòng cũng là giật mình không nhỏ: Cách
quan tài bản, cư nhiên còn có như vậy cường sát khí thẩm thấu ra tới, trong
quan tài vị kia chính là đủ tà môn.<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử liếc mắt một cái nhìn ra quan tài bản không có
đinh, lập tức chấn hưng tinh thần, dùng chu sa bên phải lòng bàn tay vẽ ra một
cái “Sắc” tự, mặc niệm chú, hữu chưởng chụp ở quan bản thượng, la lên một tiếng:
“Khởi!”<o:p></o:p></p><p class="MsoNormal">Mấy chục cân trọng quan tài bản, cư nhiên bị hắn một bàn tay
nhắc tới tới, ném tại một bên.<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công cùng mấy cái tiểu tử tò mò mà duỗi đầu nhìn
xung quanh, chỉ nhìn thoáng qua, đương trường thạch hóa, sửng sốt mười mấy
giây, mới có một cái hậu sinh thất thanh kêu sợ hãi: “Trời ạ, nàng cư nhiên mọc
ra nha!”<o:p></o:p></p><p class="MsoNormal">Nữ thi trong miệng, hai bài cài răng lược —— không phải hai
chỉ, là hai bài! Dưới ánh mặt trời phiếm lành lạnh lãnh quang.<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử ánh mắt như điện, ở nữ xác chết thượng đảo qua,
dừng ở nàng phình phình trên bụng, thần sắc đại biến, quay đầu trừng mắt Diệp Đại
Công, lạnh giọng trách mắng: “Đây là cái thai phụ?”<o:p></o:p></p><p class="MsoNormal">“Không đúng a, là khó sinh chết,” Diệp Đại Công giật mình
nói, “Bởi vì nàng chết hung, chúng ta tìm đại tiên hỏi qua, đại tiên nói mẫu tử
cần thiết tách ra vùi lấp, bằng không liền phải nháo quỷ, cho nên chúng ta đem
hài tử chôn đến Sơn Tây đầu loạn phần cương.”<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử gật gật đầu, than thở nói: “Người nọ nhưng thật
ra chưa nói sai, khó sinh mà chết, mẫu tử không thể tụ, để tránh cho nhau không
muốn xa rời, quỷ hồn từng người không tiêu tan, phong bế ở thi thể trung, dần
dà, hấp thu âm khí trở thành mẫu tử thi sát, hơn nữa đôi mẹ con này đầu thất đuổi
kịp quỷ tiết, sát khí càng trọng.”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công nhìn nữ thi hai bài đáng sợ răng nanh, run rẩy
nói: “Kia này thi thể……”<o:p></o:p></p><p class="MsoNormal">“Bảy bảy bốn mươi chín thiên đã qua, mẫu tử thi sát đã
thành, cũng không là giống nhau quỷ vật.” Thanh Vân Tử ngón tay nữ thi bụng, “,
liền ở nàng trong bụng!”<o:p></o:p></p><p class="MsoNormal">“A!” Diệp Đại Công đám người cùng nhau kêu sợ hãi ra tiếng.
“Như, như thế nào sẽ như vậy?”<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử thở dài, “Hiển nhiên là có người đem mang tới,
mẫu tử hợp táng, cũng chỉ có như vậy, mới có thể thuận lợi gỡ xuống nữ thi thi
du, này vốn là Miêu Cương cổ thuật tà pháp, không nghĩ tới thực sự có người làm
như vậy. Lão đầu nhi, nhà ngươi đắc tội người này, không đơn giản nào!” Bỗng
nhiên ngẩng đầu nhìn trời, đã là năm sáu giờ quang cảnh, mặt trời sắp lặn, một
ngày liền phải đi qua.<o:p></o:p></p><p class="MsoNormal">“Hôm nay khai quan kinh động thi sát, cần thiết ở trời tối
phía trước xử lý, bằng không hậu hoạn vô cùng, các ngươi mau đi chuẩn bị chút
xăng cùng củi gỗ, còn có chu sa, càng nhanh càng tốt!”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công mệnh lệnh dưới, mấy cái tiểu tử chạy như bay
xuống núi, đều tự tìm đồ vật đi. Diệp Đại Công run chấn hưng tẩu hỏi Thanh Vân
Tử: “Đạo trưởng, ngươi nói này mẫu tử đã thành…… Cái gì thi sát, vì cái gì vẫn
không nhúc nhích?”<o:p></o:p></p><p class="MsoNormal">“Lại cường thi sát, cũng là sợ hãi ánh mặt trời, tới rồi buổi
tối, kia nhưng khó lường, ta cũng khó có thể thu phục.”<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử đem Diệp Đại Công đuổi tới một bên đi, chính
mình cởi xuống ba lô, từ giữa lấy ra liên can hàng yêu bắt quỷ dụng cụ, bắt đầu
bố trí linh đàn.<o:p></o:p></p><p class="MsoNormal">Mới vừa bố trí xong, mấy cái hậu sinh đã trở lại, nâng một đại
sọt củi gỗ cùng mấy thùng xăng, phía sau đi theo một đại sóng tiến đến xem náo
nhiệt dân. Diệp Binh phu thê cũng ở trong đó, vừa thấy mặt Diệp Binh liền hướng
phụ thân hội báo: “Thiếu Dương hắn ăn vào đạo trưởng xứng nước thuốc, khá hơn
nhiều, ta nương trở về ở hầu hạ, chúng ta đến xem có hay không cái gì có thể hỗ
trợ.”<o:p></o:p></p><p class="MsoNormal">Diệp Đại Công nghe nói Thiếu Dương hảo chút, w<span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">ｗ</span>w<span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">．</span>.net
trong lòng an tâm một chút, đối với kia mấy cái hậu sinh quở mắng: “Ai cho các
ngươi gióng trống khua chiêng tuyên truyền, đem đoàn người đều gọi tới!”<o:p></o:p></p><p class="MsoNormal">“Không sao, người càng nhiều càng tốt.” Thanh Vân Tử trong
ánh mắt lộ ra một tia giảo hoạt, từ mọi người trên người xẹt qua.<o:p></o:p></p><p class="MsoNormal">Việc này không nên chậm trễ, hắn mệnh lệnh mấy cái gan lớn
tiến lên, đem củi gỗ đôi ở quan tài bốn phía, rót hai thùng xăng ở mặt trên,
sau đó trải lên một tầng chu sa, chính mình bậc lửa một đạo lá bùa, mặc niệm một
lần chú ngữ, ném đi lên.<o:p></o:p></p><p class="MsoNormal">Lửa lớn đằng một chút thiêu lên.<o:p></o:p></p><p class="MsoNormal">Thanh Vân Tử khoanh chân ngồi định rồi ở linh đàn trước,
trong miệng cao giọng thì thầm: “Mao Sơn 38 đời truyền nhân Thanh Vân Tử phụng
tổ sư sắc lệnh, thượng đảo Tam Thanh, hạ cáo âm minh, cùng trời cuối đất, chứng
ngô đạo tâm, dẹp yên yêu tà, thiên địa thanh minh, Lục Đinh Lục Giáp, trước trận
nghe lệnh, huyền đàn hắc hổ, thiên sư cho mời, hôm nay khai đàn, trừ yêu vụ tẫn!”<o:p></o:p></p><p class="MsoNormal">Một bên tác pháp, vì lửa lớn gây một cổ Đạo gia thuần dương
cương khí, lấy trợ thi sát luyện hóa.<o:p></o:p></p><p class="MsoNormal">



































































</p><p class="MsoNormal">Mười phút qua đi, quan tài đã đốt thành một đống than củi,
bên trong nữ thi lại là dung nhan không thay đổi, liền quần áo cũng chưa thiêu,
một tia màu trắng âm hàn chi khí từ trên người nàng không ngừng tràn ra tới,
ngăn cách ngọn lửa.<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (37, 1, N'Chương 1', CAST(N'2021-09-12T08:41:30.110' AS DateTime), N'<p class="MsoNormal">......a.... Chương 1 công đức hệ thống!<o:p></o:p></p><p class="MsoNormal"><span lang="FR">“Chu sa, gà trống,
gỗ đào……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hứa Nham cầm danh
sách nhất nhất xem xét chính mình còn có cái gì đồ vật không có mua.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Không nghĩ tới
làm một hồi pháp sự yêu cầu nhiều như vậy đồ vật, đều nói thỉnh đạo nhân làm
pháp sự giá cả không thấp, liền này phí tổn, nếu là tiền thu thiếu, hoặc là
không thu tiền, tuyệt đối có thể mệt đến bà ngoại gia đi.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Hứa Nham, hôm
nay Cửu Thúc không có tới?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Muốn hay không tới
hai con cá, sáng sớm ở trong sông vớt, tuyệt đối mới mẻ, ngươi xem, nhiều có sức
sống.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bán cá lão bản vẻ
mặt khoe khoang cầm một con cá, bãi bãi, nhiệt tình nói, làm Hứa Nham cảm giác
Alexander, chỉ có thể liên tục xua tay.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Không được,
vương đại thúc, trong nhà còn có vài con cá đâu, không thể mua, sư phó ở nhà
nghỉ ngơi, ta tới bổ sung một chút đồ vật.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đẩy xe đạp, Hứa
Nham bước nhanh rời đi, phía sau còn truyền đến vương đại thúc cùng người khác
trêu ghẹo thanh âm.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Vương lão nhân,
không phải ta nói ngươi, nhìn xem đem chúng ta Nhậm Gia Trấn đại tài tử đều dọa
chạy.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Lý lão nhân
ngươi đương đánh rắm!! Ta thực dọa người sao? Bất quá là muốn cho hắn nhiều mua
điểm cá mà thôi.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Đánh đổ đi
ngươi.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Các hương thân nhiệt
tình làm Hứa Nham chống đỡ không được, mấy ngày trước hắn lần đầu tiên tiến đến
mua đồ ăn, vương đại thúc bán cá mua một đưa tam, với nhị thẩm bán đồ ăn, mua một
phen đưa một cái sọt……<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tuy rằng có điểm
không thói quen, bất quá thời đại này người thật sự thực thuần phác.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Kiểm tra rồi một
chút đồ vật, xác định không thiếu mua, Hứa Nham lúc này mới cưỡi xe đạp về nhà,
chuẩn xác mà nói là hồi nghĩa trang.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nghĩa trang ở Nhậm
Gia Trấn vùng ngoại thành, thực trống trải dân cư thưa thớt, lộ diện gập ghềnh,
hơn nữa phương tiện giao thông là xe đạp, điên Hứa Nham mông đau, thói quen ra
cửa chính là xe hơi hắn còn không có thích ứng lại đây.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Sư phó, sư đệ đã
trở lại.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nghĩa trang cửa,
ăn không ngồi rồi dựa vào cạnh cửa phơi nắng Văn Tài nhìn đến Hứa Nham trở về,
cao hứng kêu gọi một tiếng, đi lên trước giúp Hứa Nham dỡ hàng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Lần này mua đồ vật
thật đúng là nhiều, sư đệ, thị trấn thực náo nhiệt đi, cùng Tây Dương tương đối
lên thế nào?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hứa Nham mới vừa
xuyên qua không lâu, xuyên qua cùng ngày đã bị sư phó Cửu Thúc cấp nhặt trở về,
mà thân phận của hắn bị định nghĩa vì hải ngoại trở về phần tử trí thức, bởi vì
người nhà tao ngộ bất trắc, người cô đơn hắn bị Cửu Thúc thu lưu, cũng trở
thành Cửu Thúc đệ tử.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Không thể hiểu được
bị cái cái gì công đức hệ thống mang theo xuyên qua liền tính, còn trực tiếp
xuyên qua đến chết người đôi đôi, Hứa Nham thiếu chút nữa không dọa nước tiểu,
cũng may này đó người chết cũng giúp hắn giải quyết thân phận vấn đề.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hải ngoại trở về
phần tử trí thức, cả nhà lọt vào mã tặc hãm hại, toàn bộ chết sạch, liền dư lại
hắn một cái, bằng không chính mình là ai, đến từ nơi nào thật đúng là không hảo
giải thích.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cũng may thời đại
này không có thân phận chứng gì, hơn nữa tổ quốc địa vực rộng lớn, hộ khẩu kiểm
tra thực phiền toái, cấp Hứa Nham giải quyết không ít tiềm tàng phiền toái.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Nhị sư huynh,
ngươi này đều hỏi mười chín lần, thị trấn tự nhiên cùng Tây Dương không giống
nhau, ít nhất không có đầy đất đi tóc vàng mắt xanh người nước ngoài.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hứa Nham đem xe đạp
thượng hàng hóa bắt lấy tới, đặt ở trên mặt đất, vẻ mặt bất đắc dĩ giải thích.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cầm lấy hàng hóa,
Văn Tài tặc lưu lưu hỏi: “Sư đệ, nghe nói dương bà đều là trước đột sau kiều,
có phải hay không thật sự?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hứa Nham dở khóc
dở cười.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Cũng không thể
nói như vậy, nơi nào đều có đại, cũng có tiểu nhân, chỉ là người nước ngoài phổ
biến lớn hơn một chút.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Có đôi khi Hứa
Nham thật muốn đưa điện thoại di động nào đó phiến tử nhảy ra tới cấp Văn Tài
cùng Thu Sinh hai người nhìn xem, làm cho bọn họ minh bạch cái gì là người nước
ngoài đại chiến!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Tỉnh thành người
nước ngoài không ít, có cơ hội sư huynh có thể đi nhìn xem.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Liêu cái gì đâu,
Thu Sinh đi trong tiệm?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ăn mặc áo ngủ Cửu
Thúc thấu xuất đầu tới, nhìn hai người, rất nhiều thời điểm Hứa Nham có điểm
phân không rõ cái này niên đại áo ngủ cùng chính trang, bởi vì thoạt nhìn đều
thực tương tự.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Đại sư huynh đã
đi trong tiệm, nhị sư huynh tò mò dương nữu có phải hay không thực kiều, cho
nên hàn huyên vài câu.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hứa Nham chớp mắt
đem Văn Tài cấp bán đi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cửu Thúc vừa nghe
không vui nhíu nhíu mày, “Ngươi đối dương bà rất có hứng thú?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Không có, không
có, sư phó ngươi đừng nghe sư đệ nói bậy.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Văn Tài vội vàng
lắc đầu phủ nhận, nâng trong tay đồ vật liền chạy tiến nghĩa trang, làm Cửu
Thúc không cấm thở dài, quay đầu lại trắng Hứa Nham liếc mắt một cái, nói:
“Ngươi cũng là, biết rõ ngươi nhị sư huynh tính tình hàm hậu còn đậu hắn, đồ vật
không thiếu đi.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hứa Nham cười gật
gật đầu, nói: “Không thiếu, đều mua tề.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chỉ đùa một chút
mà thôi, không ảnh hưởng toàn cục, đúng là biết sư phụ Cửu Thúc sẽ không bởi vì
loại sự tình này sinh khí, Hứa Nham mới có thể lấy Văn Tài nói giỡn, ai làm hắn
tò mò tới, một ngày không biết hỏi bao nhiêu lần.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Vậy là tốt rồi,
ngươi luyện quyền sau hảo hảo nghỉ ngơi, buổi tối tùy vi sư ta đi một chuyến,
Văn Tài trông coi nghĩa trang.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Gật gật đầu, Cửu
Thúc liền xoay người đi vào sân, hồn nhiên không chú ý tới ngoài cửa Hứa Nham
thân thể ở liền cương.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tuy rằng biết
ngày này sớm hay muộn sẽ đến, Hứa Nham như cũ thực khẩn trương, cũng không biết
này quỷ có thể hay không thực dọa người.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Đúng rồi, dương
bà thật sự rất lớn?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bỗng nhiên, đã đi
vào trong viện Cửu Thúc, quay đầu lại hỏi một câu, Hứa Nham há hốc mồm, ngạc
nhiên gật gật đầu, tựa hồ thật sự đại, ít nhất phương diện này quốc nội nữ nhân
cùng Âu Mỹ so sánh với có chênh lệch.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Nga”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cửu Thúc gật gật
đầu, “Đã biết.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Này đều tình huống
như thế nào!!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hứa Nham vô ngữ,
đem xe đạp khóa kỹ, dẫn theo dư lại đồ vật đi vào trong viện phóng hảo, sau đó
bắt đầu luyện quyền, quyền pháp là Cửu Thúc giáo, nói có thể cường thân kiện thể,
thân là Mao Sơn đệ tử quang có pháp lực không thể được, còn cần thiết phải có một
bộ hảo thân thể.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đánh một bộ dưỡng
sinh quyền, ra một thân mồ hôi nóng, Hứa Nham cẩn thận rửa sạch một chút thân
thể, lúc này mới trở lại phòng nghỉ ngơi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Hệ thống.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nằm ở trên giường,
Hứa Nham thở ra hệ thống.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hứa Nham: Nam<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Mao Sơn thứ hai
mươi đời truyền nhân: ( phàm nhân )<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Công pháp: ( vô )<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Luyện thể: ( vô )<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Phù chú: ( vô )<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Còn thừa công đức
số lượng: Linh<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Liên tiếp vô,
công đức số lượng tắc linh.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Công đức kia
không phải Hồng Hoang trong thế giới mới có đồ vật sao? Vì điện ảnh trong thế
giới cũng có này ngoạn ý, Hứa Nham lộng không rõ, chỉ biết hiện tại chính mình
một nghèo hai trắng, gì đều không có, gì đều sẽ không.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bởi vì mới vừa
bái sư không bao lâu, Cửu Thúc còn chưa dạy hắn bất luận cái gì đạo pháp, hoặc
là phù chú, chỉ có một bộ dưỡng sinh quyền, liền luyện thể trình độ đều không đạt
được quyền pháp.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngủ, ngủ, buổi tối
còn muốn đi trảo quỷ, nga không đúng, là bị quỷ trảo!!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tưởng tượng đến
buổi tối muốn đi theo sư phó đi làm pháp sự, Hứa Nham trong lòng liền có vài phần
thấp thỏm, đại sư huynh Thu Sinh vội vàng giúp cô mẫu xem cửa hàng, nhị sư
huynh Văn Tài xuẩn manh xuẩn manh, hơn nữa nghĩa trang yêu cầu người trông coi,
Hứa Nham là tân đệ tử, Cửu Thúc liền tính toán nhiều dẫn hắn được thêm kiến thức,
sau đó lại truyền hắn đạo pháp.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lấy trước mắt Hứa
Nham thực lực, làm pháp sự xác thật thuộc về bị quỷ trảo một loại, mà không phải
đi trảo quỷ, nếu không phải đi theo sư phó Cửu Thúc đi, Hứa Nham đánh chết cũng
không dám sang bên.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Có lẽ chính mình
bàn tay vàng cùng làm đạo sĩ trảo quỷ bắt yêu có liên hệ, buổi tối là có thể biết
kết quả, hiện tại ngủ!</span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (37, 2, N'Chương 2', CAST(N'2021-09-12T08:42:41.787' AS DateTime), N'<p class="MsoNormal">Hy vọng đứa nhỏ này có thể thừa nhận đi.<o:p></o:p></p><p class="MsoNormal">Trong viện, nằm ở ghế mây thượng phơi nắng Cửu Thúc, trong
tay cầm Hứa Nham từ trong trấn mua tới gỗ đào, trong lòng tính toán đem gỗ đào
phân giải mở ra, sau đó chế tác mấy chi bình thường kiếm gỗ đào cấp ba cái đệ tử
luyện tập.<o:p></o:p></p><p class="MsoNormal">Quay đầu lại nhìn thoáng qua Hứa Nham phòng, Cửu Thúc ở
trong lòng thở dài.<o:p></o:p></p><p class="MsoNormal">Tuy rằng đã có hai cái đệ tử, nhưng hắn như cũ hy vọng Hứa
Nham có thể kế thừa chính mình y bát, hai cái đệ tử trung thu sinh tâm không an
ổn, thời gian lâu rồi chắc chắn rời đi; Văn Tài thần kinh đại điều, tính cách
hàm hậu, loại người này trông coi nghĩa trang thích hợp, nhưng học tập đạo pháp
tốc độ chậm lệnh người giận sôi.<o:p></o:p></p><p class="MsoNormal">Hứa Nham nghe lời hiểu chuyện, làm việc trầm ổn, không có
Thu Sinh hấp tấp học tập đồ vật ngộ tính cao, hơn nữa có thể chịu khổ nhọc.<o:p></o:p></p><p class="MsoNormal">Từ học tập quyền pháp sau, mỗi ngày lôi đả bất động, liền
tính là trời mưa cũng ở kiên trì luyện, đây là Thu Sinh cùng Văn Tài không cụ bị.<o:p></o:p></p><p class="MsoNormal">Thu Sinh tuy rằng ở luyện võ phương diện thành tựu cao,
nhưng làm đạo sĩ, pháp thuật mới là đệ nhất căn bản, đến nỗi Văn Tài……<o:p></o:p></p><p class="MsoNormal">Cửu Thúc không nghĩ bình luận, đi theo hắn đã thật nhiều
năm, cho tới bây giờ liền cái đơn giản nhất phù đều họa không tốt.<o:p></o:p></p><p class="MsoNormal">Chờ ngày mai lại dạy dỗ Hứa Nham học tập chế phù, hạ quyết
tâm, Cửu Thúc tiếp tục nghiên cứu trong tay gỗ đào.<o:p></o:p></p><p class="MsoNormal">Buổi chiều bốn điểm, Văn Tài đem Hứa Nham đánh thức, bởi vì
muốn đi trước mười dặm ngoại Lý gia thôn làm việc, cơm chiều trước tiên ăn, ăn
cơm xong, nghỉ ngơi một trận, Cửu Thúc đem chuẩn bị tốt đồ vật đặt ở trong túi,
mang theo Hứa Nham rời đi nghĩa trang, đi trước Lý gia trang.<o:p></o:p></p><p class="MsoNormal">“Sư phó, Lý gia trang xuất hiện chính là quỷ quái vẫn là
yêu?!”<o:p></o:p></p><p class="MsoNormal">Trên đường Hứa Nham phát huy không hiểu liền hỏi thiên phú,
hướng Cửu Thúc dò hỏi.<o:p></o:p></p><p class="MsoNormal">Thân là phần tử trí thức, lại không có cùng khác hải về giống
nhau đem đạo môn pháp thuật coi như phong kiến mê tín, không hiểu liền hỏi,
chăm chỉ hiếu học, cái này làm cho Cửu Thúc xem Hứa Nham kia kêu càng xem càng
vừa lòng.<o:p></o:p></p><p class="MsoNormal">Chỉ cần Hứa Nham mở miệng dò hỏi, hắn đều sẽ nhất nhất truyền
thụ.<o:p></o:p></p><p class="MsoNormal">Đầu năm nay tùy tiện phát sinh điểm chuyện gì, đều sẽ bị
truyền ồn ào huyên náo, hơn nữa khẩu hiệu đều thực thống nhất, nháo quỷ!<o:p></o:p></p><p class="MsoNormal">Lý gia trang nháo quỷ sự kiện vai chính khả năng thật là quỷ,
cũng có khả năng là yêu, thậm chí là cương thi.<o:p></o:p></p><p class="MsoNormal">“Nghe nói là nháo quỷ, còn cần tự mình đi xem xét mới được.”<o:p></o:p></p><p class="MsoNormal">Cửu Thúc nói: “Nhớ kỹ, thân là Mao Sơn đệ tử, bất luận cái
gì thời điểm đều không thể quá mức tin vào phiến diện nói đến, nếu không sẽ lầm
đại sự.”<o:p></o:p></p><p class="MsoNormal">“Sư phó, quỷ, yêu, cương thi thứ gì lợi hại nhất? Khó đối
phó nhất?”<o:p></o:p></p><p class="MsoNormal">Rất nhiều người đều sẽ tò mò vấn đề này, liền tính biết này
đó quỷ quái cùng tự thân tu luyện thoát ly không được quan hệ, cũng sẽ suy
đoán, quỷ, yêu, cương thi ba người đến tột cùng nào một loại khó đối phó nhất.<o:p></o:p></p><p class="MsoNormal">Cửu Thúc nghe vậy vô ngữ, lời nói thấm thía giáo dục nói:<o:p></o:p></p><p class="MsoNormal">“Hết thảy cùng quỷ quái tự thân tu vi có quan hệ, bất quá tầm
thường dưới, yêu tốt nhất đối phó.”<o:p></o:p></p><p class="MsoNormal">Đem quỷ, yêu, cương thi tương đối một chút, Cửu Thúc cho một
cái tương đối đúng trọng tâm đáp án.<o:p></o:p></p><p class="MsoNormal">“Vì cái gì?!”<o:p></o:p></p><p class="MsoNormal">So với quỷ cùng cương thi, yêu tựa hồ càng khó tu hành cùng
hình thành mới đúng, kết quả là tốt nhất đối phó?<o:p></o:p></p><p class="MsoNormal">“Bởi vì thiên địa linh khí dần dần tiêu tán, yêu tu hành
gian nan, đạo hạnh thông thường đều sẽ không quá cao, mà quỷ cùng cương thi bất
đồng, đặc biệt là nào đó âm sát nơi xuất hiện quỷ, cương thi pháp lực cực cường.”<o:p></o:p></p><p class="MsoNormal">Nói đến thiên địa linh khí, Cửu Thúc thở dài, đâu chỉ là yêu
tu hành khó khăn, đạo sĩ cũng giống nhau, một thế hệ không bằng một thế hệ, nếu
không phải đạo sĩ trảo quỷ bắt yêu có công đức, tu hành sẽ càng thêm gian nan.<o:p></o:p></p><p class="MsoNormal">Một đường giải thích, thực mau hai thầy trò ở trời tối khi đến
Lý gia thôn.<o:p></o:p></p><p class="MsoNormal">Không có giải trí phương tiện dưới tình huống, thời đại này
người phần lớn đều ở trời tối sau liền bắt đầu nghỉ ngơi, nhưng Lý gia thôn lại
đèn đuốc sáng trưng, toàn bộ thôn người đều canh giữ ở thôn từ đường, một đám sắc
mặt khẩn trương, tựa hồ ở sợ hãi cái gì.<o:p></o:p></p><p class="MsoNormal">“Tới, tới Cửu Thúc tới!!”<o:p></o:p></p><p class="MsoNormal">Ở Nhậm Gia Trấn quanh thân, Cửu Thúc danh khí thực vang dội,
có bất luận cái gì lớn nhỏ sự vụ cũng đều sẽ thỉnh hắn hỗ trợ, cứ việc loại sự
tình này người bình thường không muốn nó phát sinh.<o:p></o:p></p><p class="MsoNormal">Cửu Thúc mang theo Hứa Nham đi vào trong thôn, đã bị một đám
thôn dân cấp vây quanh lên, một đám người mồm năm miệng mười, nói cái không ngừng.<o:p></o:p></p><p class="MsoNormal">“Đại gia trước an tĩnh, an tĩnh một chút!!”<o:p></o:p></p><p class="MsoNormal">Cửu Thúc nâng lên tay lớn tiếng nói: “Ai tới nói cho ta, đã
xảy ra chuyện gì?”<o:p></o:p></p><p class="MsoNormal">“Nhường một chút, đều nhường một chút!!”<o:p></o:p></p><p class="MsoNormal">Lý gia thôn thôn trưởng tiến lên, làm các thôn dân an tĩnh,
đừng ở chỗ này đổ, “Cửu Thúc a, ngươi có điều không biết, vốn dĩ chúng ta Lý
gia thôn sinh hoạt bình tĩnh, ai biết bỗng nhiên nháo quỷ, đã chết vài khẩu người,
này…… Ai!!”<o:p></o:p></p><p class="MsoNormal">“Đại gia đừng nóng vội, trước đem sự tình nguyên nhân gây ra
nói một bên, ta chắc chắn đem kia yêu nghiệt thu phục.” Cửu Thúc nâng lên tay
trấn an các thôn dân, bắt đầu tìm hiểu tin tức.<o:p></o:p></p><p class="MsoNormal">Thật tà môn!<o:p></o:p></p><p class="MsoNormal">Đứng ở Cửu Thúc phía sau, nghe lão thôn trưởng thở ngắn than
dài kể ra, làm Hứa Nham cảm thấy cả người phát mao, thật đúng là nháo quỷ!!!<o:p></o:p></p><p class="MsoNormal">“Sự tình muốn từ mấy ngày trước nói lên, chúng ta trong thôn
tu sửa con đường, ai ngờ đem ven đường hoang mồ cấp đào khai, đại gia cũng
không chú ý, chuẩn bị đem thi cốt thu hảo, mặt khác mai táng, ai ngờ từ cùng
ngày ban đêm liền bắt đầu đã xảy ra chuyện.”<o:p></o:p></p><p class="MsoNormal">Lão thôn thở dài liên tục, tu lộ vốn là một chuyện tốt, ai
biết sẽ đưa tới một đống tai họa, liên tiếp đã chết vài người, hơn nữa mỗi một
cái đều chết tương thê thảm, dị thường khủng bố.<o:p></o:p></p><p class="MsoNormal">“Có không mang ta tiến đến xem xét một phen?”<o:p></o:p></p><p class="MsoNormal">Nghe thấy lão thôn kể rõ, Cửu Thúc cũng lưỡng lự, đề nghị
mau chân đến xem bị đào khai hoang mồ.<o:p></o:p></p><p class="MsoNormal">Lão thôn trưởng lập tức phái mấy cái tuổi trẻ tiểu hỏa, mang
theo Cửu Thúc cùng Hứa Nham thầy trò tiến đến xem xét.<o:p></o:p></p><p class="MsoNormal">“Kỳ quái.”<o:p></o:p></p><p class="MsoNormal">Bởi vì xảy ra chuyện, hoang mồ còn ở vào bị đào khai khi bộ
dáng.<o:p></o:p></p><p class="MsoNormal">Cầm la bàn xem xét một chút, Cửu Thúc vẫn chưa tìm kiếm đến
quỷ khí nồng đậm chỗ, ngồi xổm xuống thân mình nhéo lên trên mặt đất bùn đất
nhìn nhìn, “Này hẳn là chỉ là một tòa bình thường phần mộ mà thôi, vì sao sẽ có
quỷ quái giết người?”<o:p></o:p></p><p class="MsoNormal">Trong tình huống bình thường, trừ bỏ một ít âm khí rất nặng
xu với ra đời lệ quỷ, hoặc là oán hận quá lớn, dẫn tới người chết hình thành lệ
quỷ, tầm thường phần mộ liền tính bị đào khai, đem thi cốt một lần nữa chôn hảo,
cũng sẽ không xảy ra chuyện.<o:p></o:p></p><p class="MsoNormal">“Cũng biết này mồ chủ nhân thân phận?”<o:p></o:p></p><p class="MsoNormal">Cửu Thúc hướng mấy cái dẫn đường người trẻ tuổi hỏi.<o:p></o:p></p><p class="MsoNormal">“Không, không biết.”<o:p></o:p></p><p class="MsoNormal">Mấy cái người trẻ tuổi, tiến đến dẫn đường chính là lão thôn
sai khiến, nếu không căn bản không ai vui tiến đến, trước mắt một đám khẩn
trương hề hề, không ngừng khắp nơi quan vọng, thực sợ hãi.<o:p></o:p></p><p class="MsoNormal">“Sư phó, làm sao vậy?” Hứa Nham tò mò.<o:p></o:p></p><p class="MsoNormal">Cửu Thúc đem la bàn thu hồi tới, ánh mắt nhíu chặt, “Nếu vì
sư không đoán sai nói, kia quỷ chỉ sợ cùng này phần mộ không quan hệ, có thể là
ngoại lai.”<o:p></o:p></p><p class="MsoNormal">Phần mộ ở Lý gia thôn phạm vi, không có mộ bia không biết chủ
nhân thân phận, có chút niên đại xa xăm mồ không có hậu nhân xử lý, dần dà,
thân phận bị quên đi không kỳ quái.<o:p></o:p></p><p class="MsoNormal"><span lang="FR">“Mang ta đi nhìn
xem người chết.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nếu phần mộ không
thành vấn đề, như vậy liền phải từ người chết trên người tìm kiếm mấu chốt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Âm khí không nặng
nơi, rất ít có cường đại quỷ quái xuất hiện, càng đừng nói hại người, đừng học
những cái đó tam lưu ăn chín, nghe phong nói vũ, vì tiền tài, làm xằng làm bậy.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nơi này âm khí
không nặng?<o:p></o:p></span></p><p>





















































































































</p><p class="MsoNormal"><span lang="FR">Hứa Nham nhìn
thoáng qua chung quanh, cảm thấy cả người không thoải mái, quả nhiên hơn phân nửa
đêm ở hoang sơn dã lĩnh, vẫn là ở phần mộ bên cạnh, không tự giác làm người cảm
thấy sởn tóc gáy.<o:p></o:p></span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (37, 3, N'Chương 3', CAST(N'2021-09-12T08:43:15.040' AS DateTime), N'<p class="MsoNormal">Đoàn người về tới trong thôn, ở thôn từ đường nội xem xét
người chết thi thể.<o:p></o:p></p><p class="MsoNormal">Thực dọa người, ít nhất Hứa Nham là như vậy cảm thấy, mấy
cái người chết chết tương giống nhau, đều là đôi mắt phun ra, tái nhợt làn da
dưới, mạch máu bạo khởi, đặc biệt là mặt bộ mạch máu, liền tính người đã chết
còn có thể rõ ràng nhìn ra tới.<o:p></o:p></p><p class="MsoNormal">Giống như là bị sống sờ sờ cấp hù chết.<o:p></o:p></p><p class="MsoNormal">“Thôn trưởng, này quỷ quái tựa hồ cùng khai đào phần mộ
không quan hệ, gần nhất thôn nhưng có không bình thường địa phương, hoặc là
thôn ngoại.”<o:p></o:p></p><p class="MsoNormal">“Không có.”<o:p></o:p></p><p class="MsoNormal">Lão thôn nỗ lực hồi tưởng một chút, lắc đầu.<o:p></o:p></p><p class="MsoNormal">“Kia nhưng có người ra xa nhà?”<o:p></o:p></p><p class="MsoNormal">“Này……”<o:p></o:p></p><p class="MsoNormal">Lý gia thôn không lớn, mỗ một nhà có việc thực mau liền sẽ
truyền khắp toàn bộ thôn, lão thôn trưởng nỗ lực đi hồi tưởng, thực mau sắc mặt
đại biến.<o:p></o:p></p><p class="MsoNormal">“Đạo trưởng, phía trước A Mộc từng đi trước tức phụ nhà mẹ đẻ
tham gia tang lễ, nói trở về trên đường đụng tới một ít kỳ quái sự tình, chẳng
lẽ cùng cái này có quan hệ?”<o:p></o:p></p><p class="MsoNormal">Như vậy rõ ràng sự còn dùng hỏi?<o:p></o:p></p><p class="MsoNormal">Hứa Nham tâm đều run lên một chút, tựa hồ này mấy cái người
chết bên trong liền bao hàm cái kia kêu A Mộc người.<o:p></o:p></p><p class="MsoNormal">Chẳng lẽ này quỷ thật là thôn ngoại chọc trở về?<o:p></o:p></p><p class="MsoNormal">Trước kia Hứa Nham cảm thấy chỉ cần là quỷ liền rất khủng bố,
rất cường đại.<o:p></o:p></p><p class="MsoNormal">Nhưng trải qua sư phó Cửu Thúc khuyên sau hắn mới hiểu được,
giống nhau quỷ thực lực thật không ra sao, muốn hại người đều khó khăn, người
trong cơ thể có ba đốm lửa, đặc biệt là dương khí tràn đầy người, tầm thường tiểu
quỷ đụng tới đều phải sang bên đi.<o:p></o:p></p><p class="MsoNormal">Quỷ sở dĩ cường đại, chủ yếu ở chỗ khó có thể phát hiện,
hành động khó lường, xuyên tường xuống đất, biến ảo ra một ít đáng sợ hình ảnh
dọa người.<o:p></o:p></p><p class="MsoNormal">“A Mộc người nhà đâu, làm cho bọn họ lại đây, ta có lời còn
muốn hỏi bọn họ.”<o:p></o:p></p><p class="MsoNormal">Cửu Thúc trong lòng có kết thúc định, quỷ chính là bên ngoài
tới, đều không phải là Lý gia trong thôn xuất hiện.<o:p></o:p></p><p class="MsoNormal">“Sư phó, mấy người này là bị hù chết?”<o:p></o:p></p><p class="MsoNormal">Hứa Nham lặng lẽ hỏi.<o:p></o:p></p><p class="MsoNormal">Cửu Thúc biểu tình ngưng trọng, gật gật đầu, hạ giọng nói:
“Không sai biệt lắm, tầm thường quỷ quái sợ hãi nhân thể dương khí, vì thế ở hại
người thời điểm sẽ hù dọa người, tìm kiếm khả thừa chi cơ.”<o:p></o:p></p><p class="MsoNormal">Khó trách sư phó sẽ nói cho ta, đụng tới cổ quái ngàn vạn
không thể trong lòng sợ hãi, nếu không sẽ làm quỷ quái bắt lấy hại chính mình
cơ hội!<o:p></o:p></p><p class="MsoNormal">Hứa Nham bừng tỉnh.<o:p></o:p></p><p class="MsoNormal">Vốn dĩ đụng tới quỷ ngươi một chút việc đều không có, nhưng
bởi vì ngươi sợ hãi, sau đó vấn đề liền tới rồi.<o:p></o:p></p><p class="MsoNormal">Trên thực tế rất nhiều người đụng tới quỷ, ở không biết đối
phương là quỷ tiền đề hạ, căn bản không có bất luận vấn đề gì, một khi trong
lòng sợ hãi, liền sẽ bị quỷ đuổi theo chạy, thậm chí hút khô tinh khí.<o:p></o:p></p><p class="MsoNormal">“Đạo trưởng.”<o:p></o:p></p><p class="MsoNormal">Thực mau, A Mộc tức phụ liền khóc sướt mướt ôm hài tử đi vào
từ đường.<o:p></o:p></p><p class="MsoNormal">Nàng vốn là một cái bình thường thôn phụ, bởi vì nhà mẹ đẻ
đã chết người, bởi vì mang theo hài tử không nên đi xa, khiến cho trượng phu tiến
đến tham gia tang lễ, hỗ trợ, ai ngờ trượng phu sau khi trở về liền đi đời nhà
ma, liên quan trong thôn cũng đã chết vài người.<o:p></o:p></p><p class="MsoNormal">Nam nhân chính là trong nhà thiên, hiện tại trời sập, A Mộc
tức phụ thậm chí không biết về sau nên như thế nào nuôi lớn hài tử, như thế nào
sinh hoạt đi xuống.<o:p></o:p></p><p class="MsoNormal">“Đương gia nói bởi vì gác đêm, cho nên tinh thần thực mệt mỏi,
ở trở về trên đường bỗng nhiên cảm thấy một trận rét lạnh, về đến nhà vẫn luôn
nói lãnh, kết quả cùng ngày ban đêm liền không có động tĩnh.”<o:p></o:p></p><p class="MsoNormal">“Ngươi không ở nhà?” Cửu Thúc dò hỏi.<o:p></o:p></p><p class="MsoNormal">A Mộc tức phụ gật gật đầu, nức nở nói: “Ở cách vách gia hỗ
trợ xử lý lương thực.”<o:p></o:p></p><p class="MsoNormal">Tra ra manh mối, quỷ là bên ngoài chọc trở về.<o:p></o:p></p><p class="MsoNormal">Bởi vì A Mộc tinh thần trạng thái không tốt, cho nên ở trên
đường đụng tới quỷ quái, kết quả bị dính thượng mang theo trở về, liên quan
trong thôn người cũng đi theo tao ương.<o:p></o:p></p><p class="MsoNormal">Kế tiếp, liền phải nghĩ cách đem quỷ cấp bắt lấy mới được.<o:p></o:p></p><p class="MsoNormal">Mang theo Hứa Nham, Cửu Thúc ở thôn dân dẫn dắt hạ xem xét mấy
cái đã chết người gia, theo sau cùng lão thôn trưởng thương nghị lên, mấy cái
tuổi trẻ tiểu hỏa phân biệt ở A Mộc trong nhà trụ hạ, Cửu Thúc cùng Hứa Nham
cũng ở trong đó.<o:p></o:p></p><p class="MsoNormal">Này quỷ thực lực rõ ràng không cường, Cửu Thúc đạo hạnh cao
thâm, có hắn ở địa phương quỷ khẳng định không dám hiện thân, yêu cầu mồi mới
được, Hứa Nham vô ngữ chính là, chính mình cũng biến thành mồi chi nhất.<o:p></o:p></p><p class="MsoNormal">Con mẹ nó, đạo sĩ không hảo làm, cố tình chính mình vẫn là
cái tân không thể lại tân tiểu bạch.<o:p></o:p></p><p class="MsoNormal">Ngồi ở đống lửa bên, đem một bên củi lửa ném vào đống lửa, Hứa
Nham âm thầm phun tào, còn hảo hắn chỉ là dự bị, chân chính mồi là trong phòng
người.<o:p></o:p></p><p class="MsoNormal">Ở trong lòng an ủi chính mình, Hứa Nham hồn nhiên không nghĩ
tới có đôi khi liền tính là vài người ở bên nhau, nhưng cổ quái luôn là thích
tuyển một ít người làm xuống tay mục tiêu, thí dụ như dương khí, tinh lực tràn
đầy tuổi trẻ nam tử.<o:p></o:p></p><p class="MsoNormal">Vừa lúc Hứa Nham liền thuộc về này một loại.<o:p></o:p></p><p class="MsoNormal">Thời gian từng giây từng phút trôi qua, không có phát sinh bất
luận cái gì sự, nguyên bản tinh thần phấn chấn, không dám có chút lơi lỏng Hứa
Nham đều nhịn không được ngủ gà ngủ gật.<o:p></o:p></p><p class="MsoNormal">Một cổ gió lạnh đánh úp lại, làm Hứa Nham hơi hơi mở nheo lại
đôi mắt, theo bản năng cầm lấy một bên đầu gỗ chuẩn bị ném vào hỏa lực, mà khi
hắn quay đầu trong nháy mắt, hảo huyền không bị hù chết, một trương bạch đáng sợ
mặt liền ở chính mình bên cạnh, thậm chí hướng về phía hắn nhe răng cười.<o:p></o:p></p><p class="MsoNormal">Dựa!!<o:p></o:p></p><p class="MsoNormal">Sự thật chứng minh, có đôi khi người ở đã chịu quá độ kinh
hách khi, sẽ không phát ra tiếng thét chói tai, ít nhất Hứa Nham không có, còn
đang suy nghĩ nữ quỷ sẽ như thế nào xuất hiện, kết quả lặng yên không một tiếng
động xuất hiện ở chính mình bên người, còn hướng về phía chính mình cười.<o:p></o:p></p><p class="MsoNormal">Liền tính cái này nữ quỷ không có phi đầu tán phát, không có
ngũ quan đổ máu, cũng đem Hứa Nham sợ tới mức quá sức.<o:p></o:p></p><p class="MsoNormal">Thân thể trong nháy mắt cứng đờ lên, Hứa Nham minh bạch vừa
rồi phong, không phải cái gì gió lạnh, mà là nữ quỷ đã đến mang theo âm
phong!!!<o:p></o:p></p><p class="MsoNormal">Một cổ hàn ý từ xương cùng một đường thẳng tới đỉnh đầu, làm
Hứa Nham cả người lông tơ đều nổ tung.<o:p></o:p></p><p class="MsoNormal">“Chết khai!!”<o:p></o:p></p><p class="MsoNormal">Theo bản năng, Hứa Nham nâng lên tay liền đẩy qua đi, trong
tay gậy gỗ rời tay mà ra, từ nữ quỷ trong cơ thể xuyên qua đi, không có bị dọa
đến tè ra quần hắn cũng không hảo đi nơi nào.<o:p></o:p></p><p class="MsoNormal">Nữ quỷ thấy Hứa Nham so với người bình thường bình tĩnh một
chút, lộ ra âm lãnh tươi cười, nâng lên tay hướng tới hắn chộp tới, “A!!!”<o:p></o:p></p><p class="MsoNormal">Đúng lúc này, nữ quỷ tay đụng phải Hứa Nham mu bàn tay, bỗng
nhiên phát ra hét thảm một tiếng, cả người cả người đều bốc lên điện quang, giống
như là bị dây điện quấn quanh ở trên người, mạo khói nhẹ.<o:p></o:p></p><p class="MsoNormal">Hứa Nham nhảy ra thật xa, vẻ mặt kinh hãi nhìn ngã trên mặt
đất các loại giãy giụa cùng kêu thảm thiết nữ quỷ, đầu óc có điểm mơ hồ, này nữ
quỷ là chuyện như thế nào? Chẳng lẽ là sư phó ra tay?<o:p></o:p></p><p class="MsoNormal">“Nghiệt súc, nhận lấy cái chết!!”<o:p></o:p></p><p class="MsoNormal">Lúc này Cửu Thúc từ che giấu phòng nhỏ nội lao ra, tay phải
nắm chặt kiếm gỗ đào, tay trái cầm một trương Trấn Hồn Phù, chuẩn bị đem còn tưởng
tiếp tục hại người nữ quỷ thu đi, mà khi Cửu Thúc lao tới sau, nhìn đến trên mặt
đất lăn lộn kêu thảm thiết nữ quỷ sửng sốt một chút.<o:p></o:p></p><p class="MsoNormal">“Nhận lấy cái chết!!”<o:p></o:p></p><p class="MsoNormal">Đem Trấn Hồn Phù đinh ở kiếm gỗ đào thượng, kiếm gỗ đào bay
ra trát ở nữ quỷ trên người, nhiên nữ quỷ tiếng kêu thảm thiết bay lên mấy cái
cấp bậc, linh thể cũng bị Trấn Hồn Phù cấp thiêu hủy, thực mau hóa thành một đạo
khói đen biến mất không thấy, dư lại kiếm gỗ đào đinh trên mặt đất.<o:p></o:p></p><p class="MsoNormal">Không có đi quản trên mặt đất kiếm gỗ đào, Cửu Thúc một tay
đem Hứa Nham tay bắt lấy, chỉ thấy Hứa Nham mu bàn tay cùng ngón tay bởi vì
kinh hách dẫn tới gậy gỗ vứt ra đi bị cắt ra từng điều rất nhỏ miệng vết
thương, máu tươi theo miệng vết thương chảy ra.<o:p></o:p></p><p class="MsoNormal">“Chuyện này không có khả năng a.”<o:p></o:p></p><p class="MsoNormal">





















































































































</p><p class="MsoNormal">Cửu Thúc nhìn chằm chằm Hứa Nham trên tay miệng vết thương
xem cái không ngừng, trong miệng lầm bầm lầu bầu.<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (38, 1, N'Chương 1', CAST(N'2021-09-12T08:44:32.400' AS DateTime), N'<p class="MsoNormal">Trùng Khánh có một kêu Hoàng Ngọc Thôn thôn trang, từ 50
niên đại, toàn bộ thôn từng nhà liền bắt đầu chế tạo khởi vòng hoa hương nến
linh tinh cùng tang sự có quan hệ đồ vật.<o:p></o:p></p><p class="MsoNormal">Kỳ quái chính là, này Hoàng Ngọc Thôn từ bắt đầu làm này người
chết sinh ý sau, toàn bộ thôn từ trên xuống dưới, 136 hộ người, chỉ cần là sinh
hạ tiểu hài tử, thế nhưng tất cả đều là nữ hài, không một nam đinh, dần dà,
trong thôn nam nhân trên cơ bản đều là từ bên ngoài ở rể tiến vào.<o:p></o:p></p><p class="MsoNormal">Phụ cận những cái đó đỏ mắt Hoàng Ngọc Thôn thôn dân kiếm tiền
người liền nói, là này Hoàng Ngọc Thôn người kiếm người chết tiền, cho nên gặp
báo ứng.<o:p></o:p></p><p class="MsoNormal">Thậm chí việc này truyền ra đi sau, còn có mấy cái đến từ Bắc
Kinh cái gì chuyên gia, nói muốn khảo sát, hoài nghi Hoàng Ngọc Thôn là Tây Du
Ký trung ký lục nữ nhi quốc, kết quả làm Hoàng Ngọc Thôn thôn trưởng dẫn người
trực tiếp cấp đánh một đốn.<o:p></o:p></p><p class="MsoNormal">Thời gian dài, thậm chí Hoàng Ngọc Thôn mọi người đều cho rằng,
có phải hay không thật cùng bọn họ tránh người chết tiền có quan hệ.<o:p></o:p></p><p class="MsoNormal">Nhưng 1990 năm sáu tháng cuối năm, thôn trưởng gia, thế
nhưng phá lệ sinh cái nam đinh.<o:p></o:p></p><p class="MsoNormal">Ở rể không tính nhập trong đó, cái này nam đinh, có thể nói
là 50 năm nội, Hoàng Ngọc Thôn sinh ra cái thứ nhất nam đinh, hơn nữa vẫn là một
cái tám cân trọng đại béo tiểu tử.<o:p></o:p></p><p class="MsoNormal">Này nhưng đem toàn bộ thôn người cao hứng hỏng rồi, một đám
đều đến thôn trưởng gia đạo hỉ.<o:p></o:p></p><p class="MsoNormal">Thôn trưởng kêu Lâm Phúc Đức, đừng nhìn hắn lớn lên từ mặt
mày thiện, nhưng khi đó đánh những cái đó tới ‘ khảo sát ’ nhà khoa học khi, xuống
tay tàn nhẫn nhất.<o:p></o:p></p><p class="MsoNormal">Hắn lúc ấy biết được chính mình sinh hạ tới chính là một cái
tiểu tôn tử khi, cao hứng đến thiếu chút nữa trước tiên đi gặp Diêm Vương lão
gia, may là ổn định khẩu khí này.<o:p></o:p></p><p class="MsoNormal">Lâm Phúc Đức trực tiếp thỉnh cái gánh hát, ở hài tử sinh ra
ngày hôm sau buổi tối, thỉnh toàn bộ trong thôn người xem diễn uống rượu, toàn
bộ thôn đều ở vào cái này đại hỉ sự bên trong.<o:p></o:p></p><p class="MsoNormal">Thường thường còn sẽ có trong thôn tiểu cô nương chạy tới,
tò mò nhìn mới vừa sinh hạ tới này tiểu tể tử vì sao như vậy phong cách tây, mới
sinh ra liền như thế đại phô trương.<o:p></o:p></p><p class="MsoNormal">Toàn bộ Hoàng Ngọc Thôn cao hứng náo nhiệt khi, thôn ngoại lại
đi tới một cái ăn mặc rách nát đạo sĩ.<o:p></o:p></p><p class="MsoNormal">Này đạo sĩ thoạt nhìn 30 dư tuổi, ăn mặc rách nát không nói,
trên mặt cũng là dơ hề hề, không biết bao lâu không có tắm rửa, eo biên treo một
cái hồ lô.<o:p></o:p></p><p class="MsoNormal">Hoàng Ngọc Thôn thôn dân thấy đạo sĩ tới, lập tức cao hứng
đón đi lên, sau đó thỉnh này đạo sĩ cùng nhau uống rượu.<o:p></o:p></p><p class="MsoNormal">Hoàng Ngọc Thôn thôn dân bởi vì là muốn chết nhân sinh ý,
khó tránh khỏi sẽ gặp được một ít kỳ kỳ quái quái sự, đều phải thỉnh một ít đạo
sĩ hoặc là âm dương tiên sinh tới hỗ trợ, cho nên đối đạo sĩ thái độ cực hảo.<o:p></o:p></p><p class="MsoNormal">Thôn dân cùng này đạo sĩ uống lên hai đốn rượu, nghe này đạo
sĩ tự xưng họ Mao, là từ xa xôi phương bắc chạy tới làm việc.<o:p></o:p></p><p class="MsoNormal">Lâm Phúc Đức nghe nói tới đạo sĩ, liền trộm nhìn hai mắt,
phát hiện, này đạo sĩ tuy rằng ăn mặc rách nát, nhưng cách nói năng lại bất
phàm, liền ôm chính mình mới sinh ra tôn tử đi ra phía trước, cười nói: “Đạo
trưởng vạn phúc, ta tôn tử mới sinh ra, đạo trưởng nếu đi ngang qua, không bằng
giúp ta tôn tử nhìn một cái tướng mạo?”<o:p></o:p></p><p class="MsoNormal">Mao đạo trưởng ăn rượu, cũng không chậm lại, ngay sau đó
nhìn thoáng qua này đại béo tiểu tử, thật đúng là đừng nói, này đại béo tiểu tử
trắng nõn sạch sẽ, béo đô đô, nhắm mắt lại, nhưng lại không khóc không nháo.<o:p></o:p></p><p class="MsoNormal">Mao đạo trưởng thấy vậy mày nhăn lại, trên dưới đánh giá một
chút Lâm Phúc Đức: “Thôn trưởng, lệnh tôn sinh nhật có không cho ta?”<o:p></o:p></p><p class="MsoNormal">Lâm Phúc Đức thấy mao đạo trưởng nhíu mày, trong lòng lộp bộp
một chút.<o:p></o:p></p><p class="MsoNormal">Toàn bộ thôn đều là muốn chết nhân sinh ý, tà môn sự, nhà ai
không gặp được quá?<o:p></o:p></p><p class="MsoNormal">Hắn vội vàng làm người viết ra bản thân tôn tử sinh thần bát
tự đưa cho mao đạo trưởng.<o:p></o:p></p><p class="MsoNormal">“Canh ngọ năm chín tháng mười lăm ngày buổi trưa?” Mao đạo
trưởng véo chỉ tính một chút, nhìn Lâm Phúc Đức nói: “Lâm thôn trưởng, ta không
biết nên không nên nói.”<o:p></o:p></p><p class="MsoNormal">Lâm Phúc Đức trong lòng căng thẳng, chính mình liền này một
bảo bối tôn tử, chẳng lẽ còn có thể ra cái gì vấn đề? Nghĩ vậy, hắn vội vàng đối
mao đạo trưởng nói: “Đạo trưởng cứ nói đừng ngại.”<o:p></o:p></p><p class="MsoNormal">Mao đạo trưởng vừa nghe, cười ha hả nhìn Lâm Phúc Đức hỏi:
“Nghe đồn các ngươi Hoàng Ngọc Thôn, vài thập niên tới, chỉ sinh nữ hài, không
ra nam đinh, không biết là thiệt hay giả?”<o:p></o:p></p><p class="MsoNormal">Lâm Phúc Đức vừa nghe, có chút tâm nghi, rõ ràng là cho
chính mình tôn tử xem tướng mạo, như thế nào xả đến vấn đề này đi lên, bất quá
nếu nhân gia hỏi, hắn cũng gật gật đầu.<o:p></o:p></p><p class="MsoNormal">“Vậy ngươi cũng biết vì sao?”<o:p></o:p></p><p class="MsoNormal">Lâm Phúc Đức tự nhiên không biết, chuyện này vẫn luôn là bọn
họ Hoàng Ngọc Thôn một khối tâm bệnh, thấy mao đạo trưởng như thế hỏi, Lâm Phúc
Đức nói: “Bên ngoài người, đều lời đồn nói, là chúng ta kiếm lời người chết tiền,
cho nên gặp báo ứng.”<o:p></o:p></p><p class="MsoNormal">Nói đến này thời điểm, Lâm Phúc Đức có chút chột dạ nhìn mao
đạo trưởng, rốt cuộc kiếm người chết tiền nói ra nhưng không thế nào dễ nghe.<o:p></o:p></p><p class="MsoNormal">Mao đạo trưởng thấy hắn nói như vậy, vẫy vẫy tay: “Bọn họ đó
là đỏ mắt các ngươi kiếm tiền nhiều, nói lung tung, các ngươi tạo mấy thứ này,
những cái đó quỷ hồn chỉ biết tâm tồn cảm kích, các ngươi đây là tích phúc phận,
làm sao có cái gì báo ứng.”<o:p></o:p></p><p class="MsoNormal">“Các ngươi thôn sẽ biến thành như vậy, hẳn là mặt khác
nguyên nhân, ta cũng không rõ ràng lắm, nghĩ đến, 50 năm qua, đột nhiên ra cái
này nam hài, cái này nam hài hẳn là chính là giải quyết các ngươi Hoàng Ngọc
Thôn vấn đề mấu chốt.”<o:p></o:p></p><p class="MsoNormal">Lâm Phúc Đức nhìn mao đạo trưởng hỏi: “Ý của ngươi là, ta
tôn tử có thể giải quyết chúng ta thôn vấn đề?”<o:p></o:p></p><p class="MsoNormal">“Không sai.” Mao đạo trưởng gật đầu lên.<o:p></o:p></p><p class="MsoNormal">Chung quanh thôn dân, vừa nghe mao đạo trưởng nói, trên mặt
đều lộ ra vui mừng, thấp giọng thảo luận khởi cái này tiểu hài tử lên.<o:p></o:p></p><p class="MsoNormal">Mao đạo trưởng trầm ngâm một lát, nói: “Nhưng là, ngươi đứa
nhỏ này, nhưng không hảo nuôi sống, vừa rồi ta tính qua, lệnh tôn chính là tử
vi mệnh cách.”<o:p></o:p></p><p class="MsoNormal">Lâm Phúc Đức tuy rằng dẫn dắt toàn bộ thôn làm giàu, nhưng đối
với phương diện này đồ vật, lại là không hiểu một mao tiền, hỏi: “Mao đạo trưởng,
gì là tử vi mệnh cách? Ta này tôn tử như thế nào liền không hảo nuôi sống đâu?”<o:p></o:p></p><p class="MsoNormal">Mao đạo trưởng cân nhắc một lát nói: “Tử vi ở thời cổ, đại
biểu cho đế vương. Đây là trời sinh đế vương mệnh, nếu là sinh ở thời cổ, bị
người biết được, lập tức phải giết chết, miễn cho bị cây chín tộc.”<o:p></o:p></p><p class="MsoNormal">Nghe thế, Lâm Phúc Đức nhẹ nhàng thở ra, hiện tại chính là
pháp trị xã hội, không thể so trước kia xã hội phong kiến.<o:p></o:p></p><p class="MsoNormal">Mao đạo trưởng thấy Lâm Phúc Đức vẻ mặt nhẹ nhàng, liền nói:
“Đừng cao hứng đến quá sớm, vô số yêu ma quỷ quái, nằm mơ đều muốn ăn có chứa tử
vi mệnh cách người.”<o:p></o:p></p><p class="MsoNormal">Lâm Phúc Đức vừa nghe, chính mình tôn tử này mẹ nó không phải
thành kịch nam bên trong Đường Tăng thịt sao?<o:p></o:p></p><p class="MsoNormal">Vội vàng hỏi: “Đạo trưởng, chẳng lẽ không có gì biện pháp giải
quyết sao?”<o:p></o:p></p><p class="MsoNormal">“Trừ phi ngươi làm ta đem hắn mang đại.” Mao đạo trưởng mở
miệng nói.<o:p></o:p></p><p class="MsoNormal">Mới vừa nói xong, Lâm Phúc Đức dùng sức lắc đầu lên, toàn bộ
thôn, liền sinh ra như vậy một cái nam đinh, nào còn có thể đưa cho người ngoài
đi nuôi lớn?<o:p></o:p></p><p class="MsoNormal">Mao đạo trưởng thấy vậy, cười một chút, minh bạch Lâm Phúc Đức
ý tứ, nói: “Không bằng như vậy, đứa nhỏ này bảy tuổi phía trước, khiến cho các
ngươi mang theo, bảy tuổi lúc sau, ta dưỡng hắn đến mười hai tuổi lại cho các
ngươi đưa về tới, chỉ có như vậy, mới có thể bảo hắn tánh mạng, bằng không, hắn
tuyệt sống không quá tám tuổi.”<o:p></o:p></p><p class="MsoNormal">Lâm Phúc Đức vừa nghe, tư tưởng một chút, mao đạo trưởng
cũng cũng không có nói hiện tại khiến cho chính mình tôn tử cùng đi, mà là bảy
tuổi thời điểm lại rời đi, hơn nữa chuyện này, liên quan đến đến chính mình tôn
tử tánh mạng.<o:p></o:p></p><p class="MsoNormal">Nghĩ đến đây, Lâm Phúc Đức cũng đáp ứng rồi xuống dưới.<o:p></o:p></p><p class="MsoNormal">Thời gian từng năm quá khứ, Lâm Phúc Đức tôn tử, cũng dần dần
lớn lên, đặt tên, Lâm Hiểu Phong.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong tiểu tử này, từ nhỏ liền cùng hàm chứa chìa
khóa vàng lớn lên giống nhau, khác tiểu hài tử, có lẽ là trong nhà trưởng bối sủng
hắn, nhưng hắn nhưng không giống nhau.<o:p></o:p></p><p class="MsoNormal">Toàn bộ trong thôn mặt đem hắn đương bảo giống nhau, muốn đi
nhà ai ăn cơm, kia người nhà lập tức đem sở hữu hảo thịt hảo đồ ăn lộng thượng.<o:p></o:p></p><p class="MsoNormal">Mà Lâm Hiểu Phong tới rồi bảy tuổi thời điểm, dù cho là lại
không tha, Lâm Phúc Đức cũng liên hệ mao đạo trưởng, làm mao đạo trưởng đem Lâm
Hiểu Phong cấp mang đi.<o:p></o:p></p><p class="MsoNormal">Đến nỗi Lâm Hiểu Phong cùng mao đạo trưởng đi địa phương
nào, làm sự tình gì, không có bất luận kẻ nào rõ ràng, vẫn luôn chờ Lâm Hiểu
Phong từ mao đạo trưởng nơi đó trở về.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong trừ bỏ trưởng thành một ít, cũng không có mặt
khác kỳ lạ chỗ, đương có người hỏi Lâm Hiểu Phong cùng vị kia mao đạo trưởng đi
địa phương nào, làm chút cái gì, Lâm Hiểu Phong còn lại là ngậm miệng không đề
cập tới mao đạo trưởng việc.<o:p></o:p></p><p class="MsoNormal">









































































































</p><p class="MsoNormal">Nhoáng lên, Lâm Hiểu Phong liền tới rồi 17 tuổi.<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (38, 2, N'Chương 2', CAST(N'2021-09-12T08:45:02.977' AS DateTime), N'<p class="MsoNormal">“Mập mạp, ta thật là phục, bị ngươi lừa này chạy vội nghèo
khó vùng núi tới, ta đều mau mệt chết.”<o:p></o:p></p><p class="MsoNormal">Một cái hẻo lánh núi sâu trung trong rừng đường nhỏ thượng,
đi tới mười dư cái người trẻ tuổi, những người này có còn ăn mặc giáo phục,
trên lưng đều cõng một cái cực đại bao, gian nan đi ở trên đường núi.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong cõng một cái thật lớn bao đi ở đội ngũ cuối
cùng, trong bao trang cấp nghèo khó vùng núi mang vật tư.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong chỉ là nhớ tới, trong lòng liền một trận buồn
bực, mấy ngày hôm trước trường học tổ chức một cái hướng nghèo khó vùng núi hiến
tình yêu, theo lý thuyết, liền này phá hoạt động, có thể có mấy người tham gia
a?<o:p></o:p></p><p class="MsoNormal">Kết quả học sinh hội chủ tịch, cũng toàn bộ trường học sở hữu
nam sinh tập thể nữ thần, Tiếu Lệ Lệ chủ động nói nàng dẫn dắt đại gia tiến
nghèo khó vùng núi, lập tức, toàn bộ trường học người, không đúng, toàn bộ trường
học nam nhân, đều sinh động lên.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong bên người mập mạp đúng là này một trong số
đó.<o:p></o:p></p><p class="MsoNormal">Mập mạp là Lâm Hiểu Phong nhận thức nhiều năm huynh đệ, tên
là Hoàng Khiêm Dịch, người cũng như tên, đương nhiên, khiêm dễ này hai cái ưu
nhã tự, cùng này mập mạp tự nhiên là nửa mao tiền quan hệ không có, sở dĩ nói
là người cũng như tên, chủ yếu là hắn họ, hoàng.<o:p></o:p></p><p class="MsoNormal">Hoàng Béo mùng một liền bắt đầu thích xem một ít học sinh
trung học không nên xem phiến tử, cả ngày xem đến vui đến quên cả trời đất.<o:p></o:p></p><p class="MsoNormal">Hoàng Béo lúc này cũng mồ hôi đầy đầu, thở hồng hộc: “Hiểu
Phong, không phải huynh đệ hố ngươi, ngươi nhìn xem phía trước.”<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong hướng phía trước vừa thấy, đi ở đội ngũ đằng
trước, đúng là toàn bộ trường học tập thể nữ thần, Tiếu Lệ Lệ, nàng ăn mặc một
kiện màu trắng áo thun, một cái quần jean, phác họa ra hoàn mỹ dáng người.<o:p></o:p></p><p class="MsoNormal">“Hiểu Phong, ngươi nói này Tiếu Lệ Lệ mới cao tam, dáng người
như thế nào liền tốt như vậy đâu.” Hoàng Béo nói đến này, nước miếng cũng từ
trong miệng của hắn chảy ra.<o:p></o:p></p><p class="MsoNormal">Cũng không phải khoa trương dùng từ, mà là hắn thật chảy ra
không ít nước miếng.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong trắng hắn giống nhau: “Anh em, ngươi nhiệm vụ
lần này gian khổ a, tới truy Tiếu Lệ Lệ cũng không ít.”<o:p></o:p></p><p class="MsoNormal">Lần này đội ngũ hành động trung, phỏng chừng cũng cũng chỉ
có Lâm Hiểu Phong là bị Hoàng Béo ngạnh sinh sinh kéo tới, cũng không phải bởi
vì Lâm Hiểu Phong liền đối Tiếu Lệ Lệ không có hứng thú, lấy mập mạp nói tới giảng
chính là, chỉ cần là cái nam nhân, không có không thích Tiếu Lệ Lệ.<o:p></o:p></p><p class="MsoNormal">Mà là Lâm Hiểu Phong năm đó đi theo mao đạo trưởng thời điểm,
đã bị dặn dò quá, hai mươi tuổi phía trước, không thể gần nữ sắc, nếu không liền
sẽ có tánh mạng chi ưu.<o:p></o:p></p><p class="MsoNormal">Đoàn người rốt cuộc đi tới bọn họ tới làm nghĩa công nghèo
khó vùng núi, cây đước thôn.<o:p></o:p></p><p class="MsoNormal">Nơi này thật sự thực cũ nát, trong thôn mặt trên cơ bản đều
là lão nhân hài tử, hơi chút tuổi trẻ một ít, đều chạy ra núi lớn tìm công tác.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong bọn họ đoàn người đuổi tới sau, Tiếu Lệ Lệ
mang theo một đám người, cầm các loại vật tư, vấn an nơi này lưu thủ lão nhân,
phái đưa vật tư.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong nhàm chán đi theo bọn họ phía sau, trong lòng
cũng ở trong tối mắng, mẹ nó, hôm nay buổi tối là chính mình 17 tuổi sinh nhật,
nguyên bản còn chuẩn bị ở bên ngoài hảo hảo happy một chút, kết quả bị kéo đến
này núi sâu rừng già tới, bồi mập mạp này vương bát con bê ăn sinh nhật.<o:p></o:p></p><p class="MsoNormal">Phái đưa vật tư công tác thực thuận lợi, này đó lão nhân một
đám đều cảm kích thật sự.<o:p></o:p></p><p class="MsoNormal">Cây đước thôn thôn trưởng là một cái 70 dư tuổi lão nhân
gia, thoạt nhìn nhưng thật ra thực ngạnh lãng,<o:p></o:p></p><p class="MsoNormal">Nguyên bản phái đưa xong vật tư, Tiếu Lệ Lệ chuẩn bị mang
theo đại gia xuống núi, bất quá lại bị thôn trưởng lưu lại, hắn nói: “Trời sắp
tối rồi, đi đường núi không an toàn, lưu lại quá một đêm lại đi đi.”<o:p></o:p></p><p class="MsoNormal">Một đám người tự nhiên là không có ý kiến, trên thực tế bọn
họ này đàn học sinh bò một ngày sơn, đã sớm mệt đến eo đau chân đau.<o:p></o:p></p><p class="MsoNormal">Theo sau thôn trưởng cấp Lâm Hiểu Phong đám người an bài một
kiện thôn mặt sau nhà ở.<o:p></o:p></p><p class="MsoNormal">Này gian nhà ở rất lớn, phỏng chừng đến có hai ba trăm cái
bình phương, bên trong trống không một vật, lại nơi nơi đều là mạng nhện.<o:p></o:p></p><p class="MsoNormal">Một đám học sinh đi đến bên trong, từng người nghỉ ngơi lên,
một đám người đều quay chung quanh ở Tiếu Lệ Lệ bên người hư trường hỏi ấm lên.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong nhìn này gian nhà ở, mày lại nhíu lại, hắn cảm
giác trong phòng này giống như có chút không thích hợp, bất quá hắn lại cũng
không nói gì thêm.<o:p></o:p></p><p class="MsoNormal">Lúc này thái dương sắp xuống núi, trên núi hoàng hôn thực mỹ,
Vương Mộc Dương đi đến Lâm Hiểu Phong cùng mập mạp trước, cười hì hì nói: “Mập
mạp, Lệ Lệ nàng có một chút thói ở sạch, nơi này quá bẩn, nàng buổi tối ở muốn
cả người khó chịu, làm ta cho ngươi nói, thỉnh ngươi đem nơi này chuẩn bị một
chút.”<o:p></o:p></p><p class="MsoNormal">Tuy rằng mọi người đều mang theo lều trại, nhưng nào có
trong phòng này thoải mái, ít nhất nhà ở có thể che mưa chắn gió.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong vừa thấy, nở nụ cười, Vương Mộc Dương chính
là mập mạp cuối cùng cường địch, hắn lão cha là trường học phó hiệu trưởng, mới
cao tam, cả ngày mở ra một cái Audi tới đi học, cộng thêm diện mạo soái khí, vẫn
là trường học đội bóng rổ đội trưởng.<o:p></o:p></p><p class="MsoNormal">Tới những người này trung, cũng chỉ có Vương Mộc Dương nói
chuyện thời điểm, Tiếu Lệ Lệ mới có nói có cười.<o:p></o:p></p><p class="MsoNormal">Mập mạp thấy chính mình nữ thần cho chính mình an bài như vậy
một cái công tác, cao hứng một ngụm đáp ứng rồi xuống dưới, theo sau Vương Mộc
Dương hỏi: “Vậy các ngươi đâu?”<o:p></o:p></p><p class="MsoNormal">Hoàng Béo hỏi tự nhiên là Vương Mộc Dương cùng mặt khác theo
tới người theo đuổi.<o:p></o:p></p><p class="MsoNormal">Vương Mộc Dương nói: “Lệ Lệ muốn đi đỉnh núi nhìn một cái
hoàng hôn, nàng một người ta không yên tâm, cho nên chúng ta bồi nàng đi xem.”<o:p></o:p></p><p class="MsoNormal">Hoàng Béo vừa nghe lời này, tức khắc có chút trợn mắt há hốc
mồm lên, Vương Mộc Dương nhìn đến Hoàng Béo trợn mắt há hốc mồm thần sắc, cũng
là trong lòng thầm nghĩ: “Liền này tên mập chết tiệt, còn tưởng cùng ta đoạt Lệ
Lệ? Không biết tự lượng sức mình.”<o:p></o:p></p><p class="MsoNormal">Tiếu Lệ Lệ nhưng thật ra xoay đầu, hướng về phía mập mạp cười
một chút, nàng có thể trở thành toàn bộ trường học tập thể nam sinh nữ thần,
cũng không phải không có đạo lý, này cười, xem Hoàng Béo phía trước oán khí tức
khắc không còn sót lại chút gì.<o:p></o:p></p><p class="MsoNormal">Chờ Tiếu Lệ Lệ cùng Vương Mộc Dương một đám người rời đi này
nhà ở trung sau, Lâm Hiểu Phong ngồi ở mập mạp mặt sau, che miệng cười trộm.<o:p></o:p></p><p class="MsoNormal">“Thảo, cái gì phá sự a, lão tử ở chỗ này cho bọn hắn chuẩn bị
nhà ở, bọn họ chạy ra đi xem hoàng hôn?” Hoàng Béo từ Tiếu Lệ Lệ tươi cười
trung hồi quá vị tới sau, cắn răng nói.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong che miệng cười trộm nói: “Chạy nhanh quét tước
đi, nếu là đợi lát nữa ngươi nữ thần trở về, nhìn đến nhà ở còn dơ hề hề, nàng
đến sinh khí.”<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong là thật không hiểu được chính mình này ngốc
anh em đồ cái gì, Tiếu Lệ Lệ thái độ đã như vậy rõ ràng, hắn còn mặt dày mày dạn
như vậy truy làm gì.<o:p></o:p></p><p class="MsoNormal">Hoàng Béo nghiến răng nghiến lợi cầm cái chổi tại đây trong
phòng quét tước lên.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong nhưng không kia nhàn tâm tư đi giúp Hoàng
Béo, dựa vào ven tường, ngậm điếu thuốc trừu lên, tới này vây bần vùng núi, duy
nhất chỗ tốt có lẽ chính là hút thuốc thời điểm không ai quản đi?<o:p></o:p></p><p class="MsoNormal">“Thảo! “<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong còn ở hít mây nhả khói đâu, đột nhiên nghe được
ngoài cửa mập mạp hét to một tiếng.<o:p></o:p></p><p class="MsoNormal">“Làm sao vậy?” Lâm Hiểu Phong vội vàng dẫm tắt tàn thuốc, chạy
ra đi.<o:p></o:p></p><p class="MsoNormal">Mập mạp vẻ mặt kinh hoảng nhìn này gian nhà ở mặt trên bảng
hiệu, phía trước Lâm Hiểu Phong bọn họ tới thời điểm, bảng hiệu toàn bộ đều là tro
bụi, cái gì đều thấy không rõ, lúc này mập mạp cầm chổi lông gà đem tro bụi xoa
xoa, bảng hiệu thượng thế nhưng viết hai chữ: Nghĩa trang.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong vừa thấy, quả nhiên nơi này có chút vấn đề.<o:p></o:p></p><p class="MsoNormal">“Đi, chúng ta đi tìm thôn trưởng, làm hắn cho chúng ta đổi
cái chỗ ở.” Lâm Hiểu Phong lôi kéo mập mạp tay liền chuẩn bị hướng thôn đi.<o:p></o:p></p><p class="MsoNormal">“Ngươi nên sẽ không sợ hãi đi?” Mập mạp lại cho rằng Lâm Hiểu
Phong sợ hãi, vẻ mặt cười quái dị nói: “Gấp cái gì a, hôm nay buổi tối liền ở
nơi này.”<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong vừa nghe, tức khắc nhíu mày nói: “Đừng náo loạn,
nơi này ta tổng cảm giác có điểm tà môn.”<o:p></o:p></p><p class="MsoNormal">“Càng tà môn càng tốt a!” Mập mạp cao hứng lên nói: “Đám kia
vương bát đản không phải đi xem hoàng hôn sao, ta có một cái chủ ý, yêu cầu
phong ca ngươi hỗ trợ.”<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong cảm giác có chút không ổn, xem mập mạp tươi
cười, chuẩn không chuyện tốt.<o:p></o:p></p><p class="MsoNormal">







































































































</p><p class="MsoNormal">Quảng Cáo<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (38, 3, N'Chương 3', CAST(N'2021-09-12T08:45:29.930' AS DateTime), N'<p class="MsoNormal">Sắc trời thực mau liền đen xuống dưới, đi đỉnh núi xem hoàng
hôn Tiếu Lệ Lệ, Vương Mộc Dương đám người cũng thực mau trở lại.<o:p></o:p></p><p class="MsoNormal">Một đám người khi trở về, vô cùng náo nhiệt, thảo luận vừa rồi
ánh nắng chiều cỡ nào cỡ nào mỹ lệ.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong nhìn Vương Mộc Dương bọn họ trở về, xoa xoa
tay đi lên đi: “Các ngươi đã trở lại? Hoàng hôn xinh đẹp sao?”<o:p></o:p></p><p class="MsoNormal">“Ân.” Vương Mộc Dương phiết Lâm Hiểu Phong liếc mắt một cái,
nhẹ nhàng trở về một tiếng, vẻ mặt không để bụng bộ dáng.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong nhìn đến hắn cái này sắc mặt, trong lòng khó
chịu lên, nguyên bản mập mạp ra cái kia sưu chủ ý, chính mình còn đang suy nghĩ
muốn hay không như vậy làm, rốt cuộc làm như vậy không khỏi có chút quá tổn hại.<o:p></o:p></p><p class="MsoNormal">Đương hắn nhìn đến Vương Mộc Dương sắc mặt thời điểm, trong
lòng liền hạ quyết tâm, hôm nay buổi tối không hù chết hắn này vương bát con
bê, chính mình cùng hắn họ.<o:p></o:p></p><p class="MsoNormal">“Cái kia cho các ngươi nói chuyện này.” Lâm Hiểu Phong quay
đầu lại chỉ vào sau lưng nghĩa trang: “Vừa rồi chúng ta quét tước một chút, kết
quả đem này bảng hiệu tro bụi quét khai, nơi này thế nhưng là nghĩa trang, ta
tưởng chờ các ngươi trở về thương lượng thương lượng, muốn hay không đi cấp
thôn trưởng nói một chút, cho chúng ta đổi cái nhà ở?”<o:p></o:p></p><p class="MsoNormal">Này đám người, vừa thấy đến nghĩa trang, sắc mặt liền thay đổi,
đặc biệt là Vương Mộc Dương, cả người đều run lên một chút, phẫn nộ mắng: “Có ý
tứ gì a, chúng ta tới cấp bọn họ đưa vật tư, kết quả cho chúng ta ngủ nghĩa
trang?”<o:p></o:p></p><p class="MsoNormal">Nói xong, liền phải vãn cánh tay, muốn vọt vào trong thôn
cùng thôn trang giảng đạo lý.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong vội vàng cấp trong phòng mặt đánh cái thủ thế,
ở bên trong đã sớm chuẩn bị tốt Hoàng Béo đi ra, lớn tiếng nói: “Túng bao liền
đi a, nhân gia thôn điều kiện cũng cứ như vậy, an bài cấp che mưa chắn gió địa
phương, cũng không dễ dàng, Vương Mộc Dương, ngươi còn kén cá chọn canh, có ý tứ
gì a?”<o:p></o:p></p><p class="MsoNormal">“Còn vãn cánh tay, muốn đi tấu thôn trưởng lão nhân gia?”
Hoàng Béo lớn tiếng nói: “Dù sao ta là không tin cái quỷ gì, nhát gan, túng
bao, liền chính mình lăn con bê.”<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong xoa xoa cái mũi, trong lòng ám đạo, cũng
không biết vừa rồi ai mới vừa nhìn đến nghĩa trang thời điểm, bị dọa đến kêu thảm
thiết một tiếng.<o:p></o:p></p><p class="MsoNormal">Hiện tại nhưng thật ra trang khởi thiết cốt tranh tranh con
người rắn rỏi.<o:p></o:p></p><p class="MsoNormal">Theo lý thuyết, này nghĩa trang đích xác không thích hợp ngủ
người, này nhưng cùng nhát gan không nhát gan không có gì quan hệ, mà là âm
dương có khác.<o:p></o:p></p><p class="MsoNormal">Tuy rằng nghĩa trang thuần dương trạch, nhưng lại là phóng
thi thể địa phương, dương trạch ngủ vong nhân, như vậy địa phương, cũng không
phải là giống nhau tà tính.<o:p></o:p></p><p class="MsoNormal">Nhưng lần này tới người, đều là vì cái gì?<o:p></o:p></p><p class="MsoNormal">Vì truy Tiếu Lệ Lệ!<o:p></o:p></p><p class="MsoNormal">Lúc này một đám ai sẽ ở chính mình nữ thần trước mặt biểu hiện
đến cùng túng bao giống nhau?<o:p></o:p></p><p class="MsoNormal">Vương Mộc Dương cũng lấy hết can đảm, có chút lắp bắp nói:
“Ai, ai túng bao, ngủ liền ngủ, lão tử mồ đều ngủ quá, còn kém này một cái
nghĩa trang?”<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong trong lòng cười thầm một tiếng, này ngưu bức
thổi đến.<o:p></o:p></p><p class="MsoNormal">Một đám người nháo cãi cọ ồn ào một trận, cuối cùng Tiếu Lệ
Lệ mở miệng nói, mọi người đều là tiếp thu quá giáo dục cao đẳng người, như thế
nào có thể tin tưởng phong kiến mê tín đâu? Nên làm một cái kiên định thuyết vô
thần giả.<o:p></o:p></p><p class="MsoNormal">Tiếu Lệ Lệ này một mở miệng, mặc kệ có nguyện ý hay không,
dù sao đều tuyệt đối hôm nay buổi tối tại đây nghĩa trang trụ hạ.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong nhìn đến Hoàng Béo cho chính mình đưa mắt ra
hiệu, hắn hiểu ý gật gật đầu.<o:p></o:p></p><p class="MsoNormal">Vừa rồi kia bất quá là đệ nhất ra diễn, đệ nhị ra diễn,
chính là Lâm Hiểu Phong giả quỷ dọa người, sau đó Hoàng Béo tới anh hùng cứu mỹ
nhân.<o:p></o:p></p><p class="MsoNormal">Tuy rằng kế hoạch cũ kỹ, nhưng phóng tới này nghĩa trang
trung, tuyệt đối hiệu quả tăng gấp bội.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong trong lòng nghĩ đến, đừng nói giả quỷ, chính
mình chính là thật trảo hai chỉ cô hồn dã quỷ tới dọa người, cũng không phải
chuyện khó khăn lắm.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong lúc trước đi theo mao đạo trưởng kia 5 năm
cũng không phải là giống mặt khác học sinh như vậy đọc sách viết chữ, mà là đi
theo mao đạo trưởng vào nam ra bắc, học một thân đạo môn huyền thuật ở trên người.<o:p></o:p></p><p class="MsoNormal">Tới rồi buổi tối, tuy nói một đám phía trước nói được lợi hại,
nhưng nơi này dù sao cũng là nghĩa trang, tới rồi buổi tối, âm vèo vèo.<o:p></o:p></p><p class="MsoNormal">Một đám người ở nghĩa trang trung gian, phát lên lửa trại,
mười mấy người, vây quanh ở lửa trại bên cạnh nói chuyện phiếm.<o:p></o:p></p><p class="MsoNormal">Hoàng Béo lúc này cười ha hả đối Vương Mộc Dương bọn họ nói:
“Các ngươi gặp qua quỷ sao? Ta nói cho các ngươi, ta tổ tiên tam đại nhưng đều
là trảo quỷ trừ tà đạo sĩ……”<o:p></o:p></p><p class="MsoNormal">Hoàng Béo nói lên chuyện xưa tới, đem những người khác lừa dối
đến sửng sốt sửng sốt, một đám tập trung tinh thần nghe chuyện xưa.<o:p></o:p></p><p class="MsoNormal">Không biết là Hoàng Béo chuyện xưa quá hấp dẫn người vẫn là
như thế nào, những người khác cũng không có phát hiện, Lâm Hiểu Phong cũng
không có ở nghĩa trang này gian nhà ở trung.<o:p></o:p></p><p class="MsoNormal">Lúc này Lâm Hiểu Phong đang ở nghĩa trang ngoại rừng cây nhỏ
biên ngồi xổm, trong miệng ngậm điếu thuốc, mắng: “Mẹ nó, làm lão tử trảo chỉ
quỷ còn đơn giản chút, làm ta giả quỷ?”<o:p></o:p></p><p class="MsoNormal">Nghĩ vậy, Lâm Hiểu Phong liền một trận đau đầu, theo sau hắn
nhìn về phía một bên một kiện áo blouse trắng.<o:p></o:p></p><p class="MsoNormal">Đây là trong thôn thôn y quần áo lao động, phía trước mập mạp
trộm ẩn vào thôn trộm ra tới.<o:p></o:p></p><p class="MsoNormal">Không nói đến ăn mặc này phá quần áo có thể hay không dọa đến
người, chính mình trước kia đi theo sư phụ, ở phương bắc vào nam ra bắc, trảo
quỷ diệt yêu thời điểm, cũng coi như là có chút thanh danh, làm sư phụ bọn họ
biết chính mình đỉnh cái áo blouse trắng đâm quỷ dọa người?<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong trong lòng nói thầm lên, lấy sư phụ kia tính
tình, phỏng chừng đến trực tiếp đem chính mình trục xuất sư môn.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong cố nén trảo một con cô hồn dã quỷ tới hù dọa
Vương Mộc Dương bọn họ xúc động, đem áo blouse trắng xuyên đến trên người, cũng
không biết chính mình đến tột cùng giống không giống quỷ.<o:p></o:p></p><p class="MsoNormal">Lấy ra đồng hồ nhìn hạ thời gian, khoảng cách ước định tốt
12 giờ còn có hảo một trận đâu, nhàn rỗi nhàm chán, Lâm Hiểu Phong ngồi xuống
dưới tàng cây, nhắm mắt lại ngủ lên.<o:p></o:p></p><p class="MsoNormal">Hắn ngủ đến cũng không chết, đây là lúc trước đi theo mao đạo
trưởng trảo yêu thời điểm dưỡng hạ thói quen.<o:p></o:p></p><p class="MsoNormal">Đột nhiên, một nữ nhân ca hát thanh âm truyền vào Lâm Hiểu
Phong trong tai.<o:p></o:p></p><p class="MsoNormal">Hắn mở hai mắt, tả hữu nhìn nhìn, tiếng ca là rừng cây chỗ
sâu trong truyền đến.<o:p></o:p></p><p class="MsoNormal">Này núi sâu rừng già, như thế nào sẽ có nữ nhân hơn phân nửa
đêm ca hát?<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong nghĩ đến đây, trong miệng nở nụ cười, ngay
sau đó cởi ra trên người áo blouse trắng.<o:p></o:p></p><p class="MsoNormal">Nếu gặp được thật quỷ, còn cần chính mình trang sao?<o:p></o:p></p><p class="MsoNormal">Nghĩ vậy, hắn cẩn thận hướng tiếng ca truyền đến địa phương
chậm rãi lại gần qua đi.<o:p></o:p></p><p class="MsoNormal">Dưới ánh trăng, Lâm Hiểu Phong theo tiếng ca, đi tới một cái
giếng cạn trước.<o:p></o:p></p><p class="MsoNormal">Tiếng ca chính là từ này giếng cạn truyền ra tới.<o:p></o:p></p><p class="MsoNormal">Cái này giếng cạn mặt trên còn cái một cái phiến đá xanh,
Lâm Hiểu Phong đến gần vừa thấy, phiến đá xanh thượng thế nhưng còn có khắc một
đạo phù.<o:p></o:p></p><p class="MsoNormal">“Trấn áp tà ám phù?” Lâm Hiểu Phong ngồi xổm giếng cạn biên,
nhìn này trương phù liếc mắt một cái, khẽ lắc đầu, loại này ngoạn ý cũng không
thể mở ra.<o:p></o:p></p><p class="MsoNormal">Có thể sử dụng phù chú trấn áp đồ vật, nhưng đều không đơn
giản.<o:p></o:p></p><p class="MsoNormal">Tính, vẫn là khổ bức chính mình giả quỷ đi thôi.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong xoay người vừa muốn rời đi, giếng cạn truyền
đến một nữ nhân thanh âm: “Giúp giúp ta.”<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong dừng lại bước chân, quay đầu lại đối giếng cạn
nói: “Ngươi vẫn là đừng lăn lộn mù quáng, nếu là mang theo pháp khí, ta hiện tại
liền thu ngươi.”<o:p></o:p></p><p class="MsoNormal">Nói xong, hắn đi nhanh rời đi, trở lại phía trước vứt bỏ áo
blouse trắng địa phương.<o:p></o:p></p><p class="MsoNormal">Hắn nhặt lên trên mặt đất áo blouse trắng, thở dài nói: “Nãi
nãi, trang liền trang đi.”<o:p></o:p></p><p class="MsoNormal">Tuy rằng trang quỷ làm Lâm Hiểu Phong trong lòng cảm giác có
chút mất mặt, nhưng tưởng tượng đến đợi lát nữa Vương Mộc Dương bị chính mình cấp
sợ tới mức kêu cha gọi mẹ trường hợp, hắn trong lòng liền một trận ám sảng.<o:p></o:p></p><p class="MsoNormal">“Cùng ta trang bức, đợi lát nữa ta dọa khóc ngươi.” Lâm Hiểu
Phong nói thầm một câu.<o:p></o:p></p><p class="MsoNormal">Mặc tốt áo blouse trắng lúc sau, đột nhiên một bóng người đi
đến trước mặt hắn, nhưng thật ra đem hắn cấp hoảng sợ.<o:p></o:p></p><p class="MsoNormal">“Ngọa tào, ai a.” Lâm Hiểu Phong vừa thấy, thế nhưng là
Hoàng Béo.<o:p></o:p></p><p class="MsoNormal">Lâm Hiểu Phong bị Hoàng Béo hoảng sợ, không khỏi có chút vô
ngữ hỏi: “Ngươi không ở bên trong chuẩn bị anh hùng cứu mỹ nhân, chạy nơi này tới
làm gì?”<o:p></o:p></p><p class="MsoNormal">Hoàng Béo sắc mặt có chút tái nhợt, ôm bụng nói: “Ta bụng
đau, trước đi WC.”<o:p></o:p></p><p class="MsoNormal">Hoàng Béo một bộ không nín được bộ dáng, hướng tới vừa rồi
giếng cạn phương hướng liền chạy tới.<o:p></o:p></p><p class="MsoNormal">“Uy, đừng hướng bên kia đi!” Lâm Hiểu Phong đột nhiên phục hồi
tinh thần lại, vội vàng quát.<o:p></o:p></p><p class="MsoNormal"><span lang="FR">“Ta mau không nín
được.” Hoàng Béo không hề có phản ứng Lâm Hiểu Phong ý tứ, chạy trốn bay nhanh.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lâm Hiểu Phong
nhưng ngồi không yên, chính mình không mang pháp khí, nếu là làm Hoàng Béo thả
ra giếng cạn bên trong đồ vật nói, đã có thể phiền toái.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nghĩ vậy, hắn vội
vàng đuổi theo.<o:p></o:p></span></p><p class="MsoNormal">





































































































































</p><p class="MsoNormal"><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:
&quot;MS Gothic&quot;">【</span><span lang="FR">PS: Sách mới vừa
mới bắt đầu, cầu đề cử phiếu, cầu cất chứa, cầu đánh thưởng, các loại cầu. </span><span style="font-family:&quot;MS Gothic&quot;;mso-bidi-font-family:&quot;MS Gothic&quot;">】</span><span lang="FR"><o:p></o:p></span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (39, 1, N'Chương 1', CAST(N'2021-09-12T08:47:25.450' AS DateTime), N'<p class="MsoNormal">Ở tương ngộ phía trước, ta là “Bình thường” ta, mà ngươi
cũng là đối với ta tới nói bình thường ngươi. Cùng sinh hoạt trên thế giới này
bất luận cái gì người thường giống nhau, chúng ta đối lẫn nhau tới nói cũng
không có cái gì không giống người thường.<o:p></o:p></p><p class="MsoNormal">“Tiểu tử thúi! Ngươi, ngươi chờ! Ta sẽ trở về tìm ngươi tính
sổ!” Lau một phen mặt, nhìn đến trên tay một tay huyết, tên côn đồ trên mặt lộ
ra một mạt kinh hoảng thất thố, thanh âm run run rẩy rẩy, giống trong TV diễn đến
người xấu giống nhau, ném xuống một câu truyền thống lời kịch, hắn mang theo một
đám đồng lõa giơ chân chạy.<o:p></o:p></p><p class="MsoNormal">Mặt vô biểu tình nhìn chằm chằm đối phương biến mất đến vô
tung vô ảnh, ăn mặc màu đen đồ thể dục choai choai thanh niên sau một lúc lâu
cúi đầu tà liếc mắt một cái ngồi dưới đất lão thái thái, sau một lúc lâu khom
người đem nàng đỡ lên.<o:p></o:p></p><p class="MsoNormal">Người thanh niên cánh tay mềm dẻo mà hữu lực, lão thái thái
cảm giác chính mình lập tức liền đứng lên, nàng nhìn cái kia người trẻ tuổi lại
nâng dậy chính mình sau lại đi bên cạnh đem rơi trên mặt đất bao da nhặt lên,
sau đó còn đưa tới một chiếc xe taxi.<o:p></o:p></p><p class="MsoNormal">“Người trẻ tuổi, cảm ơn, cảm ơn ngươi a!” Đối phương làm được
quá thuận tay, lão thái thái một bên liền câu nói đều chen vào không lọt đi, bị
hắn đưa đến xe taxi ghế sau thời điểm, thật vất vả mới kéo lấy đối phương ống
tay áo nói thanh cảm tạ.<o:p></o:p></p><p class="MsoNormal">“Chạy nhanh về nhà đi, mang theo nhiều như vậy tiền, liền
không cần tỉnh này mấy cái xe taxi tiền.” Cái kia người trẻ tuổi rốt cuộc nói
chuyện, nói được lời nói lại một chút không xuôi tai, bất quá tuy rằng không dễ
nghe, lại rất có vài phần đạo lý.<o:p></o:p></p><p class="MsoNormal">Lão thái thái khẩn trương nhìn nhìn trước tòa tài xế taxi, bất
quá nàng thực mau phát hiện thanh niên thanh âm phi thường thấp, trước tòa tài
xế taxi căn bản nghe không được.<o:p></o:p></p><p class="MsoNormal">Nàng lúc này mới nhẹ nhàng thở ra, cánh tay của nàng ngay
sau đó bị đối phương đẩy ra rồi, cửa xe bị khép lại nháy mắt, lão thái thái cuối
cùng thấy rõ đối phương diện mạo.<o:p></o:p></p><p class="MsoNormal">Nha! Người thanh niên này đôi mắt lớn lên cũng thật xinh đẹp
——<o:p></o:p></p><p class="MsoNormal">Ấn tượng gần trong nháy mắt, cửa xe ngay sau đó bị thật mạnh
đóng lại.<o:p></o:p></p><p class="MsoNormal">Nhìn thoáng qua chung quanh vây xem người, Kế Hoan nhặt lên
chính mình cặp sách hướng xe taxi tương phản phương hướng đi đến.<o:p></o:p></p><p class="MsoNormal">Đi rồi thật dài một đoạn đường, chung quanh người đi đường
càng ngày càng ít thời điểm, hắn cũng rốt cuộc đi tới mục đích của chính mình
mà —— một cái rách tung toé trạm xe buýt bài hạ.<o:p></o:p></p><p class="MsoNormal">Trạm bài thượng dán vài trương quảng cáo, màu sắc rực rỡ,
phía dưới xe buýt tin tức hoàn toàn bị chặn, nếu không phải biết rõ nơi này
tình huống người, tám phần sẽ bỏ lỡ cái này trạm bài.<o:p></o:p></p><p class="MsoNormal">Liếc mắt một cái biển số xe, khóe miệng nhấp nhấp, đáng
thương cặp sách lại lần nữa bị chủ nhân ném tới một bên, Kế Hoan ngay sau đó đứng
ở ghế trên rửa sạch khởi trạm bài thượng quảng cáo tới.<o:p></o:p></p><p class="MsoNormal">Rửa sạch một hồi lâu, trạm bài thượng nguyên bản xe buýt tin
tức rốt cuộc một lần nữa thấy hết: 9 hào xe buýt cùng 99 hào xe buýt.<o:p></o:p></p><p class="MsoNormal">Kế Hoan sắp đi nhờ chính là 99 hào xe buýt, nó ngừng trạm
thiếu đến đáng thương, mỗi vừa đứng chi gian khoảng cách tương đương trường, bất
quá lại là trên dưới sơn duy nhất một chuyến xe buýt.<o:p></o:p></p><p class="MsoNormal">Rửa sạch xong quảng cáo sau không bao lâu, xe liền tới. Xoát
tạp lên xe, Kế Hoan tùy ý ngồi ở dựa cửa sổ vị trí.<o:p></o:p></p><p class="MsoNormal">Hiện tại là mùa đông, ven đường cảnh sắc đã không có gì đẹp,
nguyên bản xanh um tươi tốt cây cối đều đã điêu tàn, huống chi thiên cũng hắc đến
sớm, đợi cho Kế Hoan xuống xe thời điểm, không trung đã hơi hơi sát đen.<o:p></o:p></p><p class="MsoNormal">Bài xuất một cái Kế Hoan lúc sau, xe buýt cửa xe lập tức
khép lại.<o:p></o:p></p><p class="MsoNormal">Sau đó tiếp tục ca ca ca hướng càng trên núi vị trí đi tới.<o:p></o:p></p><p class="MsoNormal">Đi nhờ 99 lộ xe buýt đã ít nhất mười năm, chính là Kế Hoan
trước sau không biết nó trạm cuối là nơi nào, đối này hắn cũng không có hứng
thú, nhưng thật ra tỷ tỷ khi còn nhỏ đã từng ý đồ tìm kiếm quá, cuối cùng lạc
đường khóc sướt mướt bị gia gia ôm trở về, Kế Hoan ấn tượng cũng không hơn.<o:p></o:p></p><p class="MsoNormal">Kế Hoan gia khoảng cách này vừa đứng trạm bài rất gần, tuy rằng
là trên núi, chính là nơi này vẫn là có nhân gia cư trú, bởi vì có nhân gia cho
nên cũng có quốc lộ, ven đường chỉnh chỉnh tề tề bị khai ra mảnh nhỏ mảnh nhỏ đồng
ruộng, bởi vì hiện tại mùa đông, cho nên nhiều rất nhiều lều lớn. Kế Hoan đi
trước nhà mình lều lớn nhìn thoáng qua, không có nhìn thấy hình bóng quen thuộc
lúc sau, hắn ngay sau đó hướng gia phương hướng chạy tới.<o:p></o:p></p><p class="MsoNormal">Sau đó hắn liền thấy được trong viện đang ở uy heo lão nhân.<o:p></o:p></p><p class="MsoNormal"><span lang="FR">“Lão nhân, phòng
đi, ta tới.” Lời ít mà ý nhiều hô một giọng nói, Kế Hoan ngay sau đó đem chính
mình cặp sách ném tới lão gia tử trong lòng ngực: “Ta khát, muốn uống thủy.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“…… Ngươi đứa nhỏ
này……” Lão nhân gia lải nhải một câu, chung quy vẫn là ôm Kế Hoan cặp sách trở lại
trong phòng đi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Kế Hoan gia tổng
cộng dưỡng năm đầu heo, Kế Hoan tuy rằng có ở nghỉ ngơi thời gian nỗ lực rửa sạch
chuồng heo, chính là bọn người kia trời sinh liền rất sẽ đem hoàn cảnh làm hỏng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Heo hương vị thật
sự không thể nói dễ ngửi, Kế Hoan lại rất thói quen loại này hương vị.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Một bên rải thực
một bên vội vàng heo, hắn muốn cảnh giác có heo ăn quá nhiều, mà một khác chút
ăn không đến.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Đại bạch, ngươi
ăn quá nhiều, biên nhi đi!” Kế Hoan thực mau phát hiện một đầu không hợp pháp
chi “Heo”, dùng trong tay khô nhánh cây hung hăng gõ một chút heo ghế sau nhi,
nhưng mà kia đầu tên là đại bạch heo không những không cho rằng đau, tương phản,
nó còn tưởng rằng Kế Hoan cùng nó đùa giỡn, tai to mặt lớn hướng Kế Hoan khô
nhánh cây thượng cọ cọ, sau một lúc lâu, “Răng rắc răng rắc”, nó còn gặm khởi Kế
Hoan “Hung khí” tới!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“…… Lại xem ta,
ta liền đem ngươi ăn luôn.” Mặt vô biểu tình trừng mắt nhìn liếc mắt một cái đại
bạch heo, Kế Hoan đem sở hữu cơm heo đều ngã vào máng ăn, xác định mỗi đầu heo
đều ăn tới rồi cũng đủ đồ ăn lúc sau, hắn lúc này mới buông tay áo cùng ống quần
một lần nữa trở lại phía sau phòng trong.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Trong phòng truyền
đến một trận so vừa mới cơm heo hảo không bao nhiêu hương vị —— lão gia tử muốn
hay không như vậy “Hiền huệ”? Hắn lão nhân gia lại đem cơm làm tốt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thở dài, Kế Hoan
đành phải đi rửa tay, giúp lão gia tử đem thịnh tốt cháo từ phòng bếp mang sang
tới, Kế Hoan đem trong đó một chén cháo cung tới rồi nhà chính linh kham trước
mặt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ba, mẹ, ăn cơm.”
Một người một chén cháo, lại thượng một nén nhang, Kế Hoan lúc này mới trở về
cùng gia gia cùng ăn cơm.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ông nội, ngươi nấu
cháo thật khó uống.” Kế Hoan một bên uống cháo một bên nói: “Quả thực cùng vừa
mới uy đại bạch chúng nó cơm heo không có gì hai dạng.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ha hả, chính là
một nồi cháo a.” Lão gia tử ha hả cười: “Nấu một nồi cháo, đại bạch chúng nó
hơn phân nửa, thừa cái đáy nồi, chúng ta gia hai hơn nữa ngươi ba mẹ vừa vặn ăn
sạch quang.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“……” Cảm tình thật
là cơm heo! Kế Hoan bĩu môi.<o:p></o:p></span></p><p class="MsoNormal">“Cơm heo làm sao vậy? <span lang="FR">Ngươi ba cùng ngươi còn không phải lớn lên như vậy cao cao đại đại? Ta xem
ngươi về sau sẽ so ngươi lão tử lớn lên còn cao, ít nhất một tám năm!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“……” Lão gia tử
như thế nào liền chính mình trong lòng tưởng cái gì đều biết? Trong lòng phun
tào một câu, Kế Hoan bưng lên chén mồm to uống khởi cháo tới.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Mau khảo thí đi?
Tưởng hảo khảo cái nào trường học không có? Tiền vấn đề không phải sợ, ta đều
cho ngươi tồn hảo, tỷ tỷ ngươi cũng có gửi tiền trở về muốn ngươi đọc sách……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Cho ta tồn tiền
làm gì? Đó là ngươi dưỡng lão tiền, chính ngươi lưu lại đi. Ta nghĩ kỹ rồi, cao
trung tốt nghiệp liền không đọc sách, ta trở về dưỡng heo.” Đem cuối cùng một
ngụm cháo uống xong bụng, Kế Hoan nói ra chính mình suy nghĩ thật lâu tính
toán.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Cái gì? Ngươi
dám —— lão tử, lão tử……” Thao khởi một phen chổi lông gà, lão gia tử cơm cũng
không ăn, vây quanh bàn ăn đuổi theo Kế Hoan đánh lên.<o:p></o:p></span></p><p>

















































































</p><p class="MsoNormal"><span lang="FR">Lão kế gia nhật tử,
hôm nay cũng là trước sau như một gà bay chó sủa, chỉ có tổ tôn hai sống nương
tựa lẫn nhau tiểu sinh sống, khó được bị bọn họ quá đến vô cùng náo nhiệt.<o:p></o:p></span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (39, 2, N'Chương 2', CAST(N'2021-09-12T08:47:53.687' AS DateTime), N'<p class="MsoNormal">Bát Đức Trấn, đây là một cái nhỏ đến trên bản đồ căn bản
không có bị đánh dấu thị trấn.<o:p></o:p></p><p class="MsoNormal">Bốn phương tám hướng đều có sơn, này đó sơn vốn không có cái
gì thống nhất tên, phía tây đã kêu Tây Sơn, phía đông đã kêu Đông Sơn, sơn cũng
không cao, bất quá bởi vì trấn trên phòng ở cũng đều không cao, cho nên cơ hồ từng
nhà đẩy ra cửa sổ đều có thể đi thẳng vào vấn đề.<o:p></o:p></p><p class="MsoNormal">Có sơn liền có thủy, nơi này từng nhà đều có hai điều thủy
quản, một cái ăn nước ngầm, mà một khác điều ăn chính là trên núi suối nước, đến
nỗi trên núi nhân gia tắc hoàn toàn ăn suối nước, những cái đó sơn hộ hoàn toàn
theo suối nước mà theo, từng nhà trước cửa liền có dòng suối nhỏ, bọn họ ở chỗ
này múc nước ăn cơm, rửa mặt, thậm chí súc rửa sàn nhà.<o:p></o:p></p><p class="MsoNormal">Kế Hoan gia cũng là như thế.<o:p></o:p></p><p class="MsoNormal">Sáng sớm tỉnh lại, Kế Hoan mặc tốt xiêm y liền chạy vội tới
suối nước bên kia đi, rửa mặt súc miệng, dùng khăn lông lau mặt thời điểm, hắn
dư quang thoáng nhìn một con tiểu xảo ếch xanh, bị Kế Hoan một nhìn chằm chằm,
kia lục da tiểu gia hỏa phảng phất cảm thấy cái gì lớn lao nguy hiểm, vội vàng
một cái, màu xanh lục thân mình lóe nhập cỏ khô từ lập tức biến mất không thấy.<o:p></o:p></p><p class="MsoNormal">Hắn dù sao cũng là người thiếu niên, ở vào tự hạn chế tỉnh đến
đã rất sớm, chính là vẫn là so ra kém gia gia, lão nhân gia giác nhẹ, chờ đến Kế
Hoan trở lại nhà chính thời điểm, lão nhân gia đã đem đồ ăn dọn xong.<o:p></o:p></p><p class="MsoNormal">Nghe hương vị liền biết thật không tốt cháo rau, Kế Hoan lại
bưng lên tới uống một hớp lớn, sau đó bỗng nhiên nhớ tới cái gì dường như, hắn
chạy tới buồng trong ôm một cái cái bình ra tới.<o:p></o:p></p><p class="MsoNormal"><span lang="FR">“Đó là cái gì?
A…… Kia không phải phía trước rượu của ta đàn sao? Ta nói như thế nào tìm không
thấy, nguyên lai là Tiểu Hoan ngươi cầm đi……” Nhìn bị Kế Hoan đặt lên bàn cái
bình, lão nhân gia chớp chớp mắt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ân, dù sao ngươi
cũng kiêng rượu. Đây là ta cùng hàng xóm trương thẩm học yêm rau ngâm, tính
tính hôm nay có thể Khai Phong.” Vừa nói, Kế Hoan một bên mở ra cái bình, một cổ
rượu hương bạn tương hương phiêu ra tới, dùng sạch sẽ chiếc đũa kẹp ra một cây
đen nhánh dưa chuột cắn một ngụm, Kế Hoan khẳng định gật gật đầu: “Có thể ăn.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Há ngăn là có thể
ăn, quả thực là ăn ngon đến không được!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lão nhân mới vừa
cắn một ngụm liền kinh ngạc mở to hai mắt: “Này…… Này…… Quả thực cùng mụ mụ
ngươi yêm đến giống nhau như đúc!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Kia tám phần là
bởi vì ta mẹ cũng là cùng cách vách trương thẩm học đi?” Kế Hoan lại chỉ là liền
lông mày cũng không nhúc nhích một chút, kẹp ra một đĩa nhỏ rau ngâm sau, lại
đem cái bình còn nguyên phong hảo, tàng hồi buồng trong sau mới một lần nữa trở
về ăn cơm.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ăn ngon về sau
ta liền cố định yêm điểm, bất quá một bữa cơm ngươi chỉ có thể ăn nhiều như vậy,
lại nhiều đối với ngươi mạch máu không tốt.” Cầm lấy chiếc đũa trước, Kế Hoan
nhìn xem đối diện gia gia, khuôn mặt nghiêm túc mà dặn dò nói.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Tấm tắc! Mới bao
lớn liền tưởng quản ta, ngươi này có nề nếp tính cách rốt cuộc giống ai nga? Ta
và ngươi ba mẹ đều là thực hòa khí người a! Liền ngươi, từ nhỏ liền một bộ tiểu
đại nhân dạng, trong thôn hài tử đều không muốn cùng ngươi chơi, lớn lên điểm
còn thường xuyên bị coi như bất lương thiếu niên, ngươi này tóc…… Ngươi ngày
mai liền cho ta đem này tóc cắt đi!” Lão nhân gia lẩm bẩm, sau một lúc lâu nhìn
đến Kế Hoan đã che mắt tóc mái, lập tức không thuận theo không buông tha dùng
chiếc đũa chỉ vào hắn ồn ào lên.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ăn cơm không cần
nói chuyện, mặt khác, không cần dùng chiếc đũa chỉ vào người khác.” Nhướng mày,
Kế Hoan lạnh lùng nói.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lão gia tử lập tức
ăn mệt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ngươi, ngươi cái
này tính cách…… Ta biết giống ai.” Khóe miệng run run nửa ngày, lão gia tử
buông chiếc đũa, vẻ mặt lâm vào hồi ức bộ dáng: “Ngươi quả thực cùng ngươi nãi
nãi giống nhau như đúc a!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ngươi nãi nãi
chính là siêu cấp đại mỹ nhân a!” Lão nhân gia như là nhớ tới cái gì, vẻ mặt cảm
khái, sau đó cảm khái cảm khái liền sắc mặt tái nhợt đi lên.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lão nhân nhất định
là cái khí quản viêm ← một bên dùng bữa, Kế Hoan một bên nội tâm trộm tưởng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Mỗi lần lâm vào hồi
ức kết quả đều là sắc mặt trắng bệch, nãi nãi năm đó rốt cuộc đối hắn làm cái
gì —— mỗi khi nhìn đến như vậy gia gia, Kế Hoan tổng hội như vậy tưởng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thực tế tình huống
chính là hắn cũng không có gặp qua nãi nãi, cũng chưa thấy qua phụ thân cùng mẫu
thân, trong nhà chỉ có một trương bọn họ ảnh chụp, kia bức ảnh bị lão nhân bảo
tồn thực nghiêm cẩn, mỗi năm chỉ lấy ra tới cấp Kế Hoan xem một lần, Kế Hoan đối
bọn họ ấn tượng trên cơ bản giữ lại ở nhà chính linh vị thượng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Kia hai khối đầu
gỗ, chính là cha mẹ hắn, cùng với lão nhân nhi tử tức phụ.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nghe nói bọn họ
là ở một hồi tai nạn xe cộ trung qua đời. Ở Kế Hoan còn ở trong tã lót thời điểm,
hắn đối này cũng không ý tưởng, đối với không cha không mẹ chuyện này cũng
không có gì oán giận, bởi vì gia gia cùng tỷ tỷ đã cho hắn cũng đủ quan ái, hắn
hiện tại nhất muốn làm sự, đại khái chính là có thể mau chóng thành niên, sau
đó có thể thế cha mẹ kết thúc bọn họ chưa hết trách nhiệm.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Gia gia đã càng
ngày càng già rồi……<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hắn kiên quyết
không đi bệnh viện, bất quá Kế Hoan trong lén lút có trộm tồn tiền, chờ đến
chính mình khảo thí xong nghĩ cách làm gia gia xuống núi một chuyến, sau đó liền
có thể thuận tiện hống hắn đi bệnh viện làm thân thể kiểm tra.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Trấn trên lão
nhân gia đều là làm như vậy.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nói đến cũng
quái, mặt khác giống Kế Hoan như vậy tuổi người thiếu niên, mỗi ngày tưởng đại
khái đều là chính mình, trong thành lại ra cái gì tân ngoạn ý, cái nào thẻ bài
giày thiết kế siêu khốc…… Xác định hảo này đó, liền có thể triều cha mẹ ma tiền
tiêu vặt mua sắm tân trang bị, Kế Hoan lại bất đồng, hắn thích quan sát người
già đồ dùng. Đi ở trên đường cũng thói quen tính nhìn chằm chằm mặt khác lão
nhân gia nhìn, hiện giờ lão nhân trang lưu hành xu thế là cái gì, cái nào thẻ
bài quải trượng sử dụng tới lại nhẹ lại hảo…… Hắn thậm chí còn lén lút đi tương
đối quá xe lăn cùng người già giấy tã.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Quá mức lão thành
Kế Hoan, cũng khó trách ở trường học giao không đến cái gì cùng tuổi bạn tốt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Kế Hoan đối này
cũng không có hứng thú.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hắn tâm ý đã quyết,
cao trung tốt nghiệp lúc sau liền không hề tiếp tục tiến học, hắn liền lưu tại
trong nhà dưỡng heo, trồng trọt, sau đó hầu hạ gia gia bảo dưỡng tuổi thọ. Đại
bạch trường thịt rất nhanh, hắn không tính toán mua, lưu trữ làm lợn giống, về
sau nhật tử cũng sẽ càng ngày càng tốt……<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Kế Hoan vẫn luôn
là như vậy tưởng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thẳng đến ——<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Cao nhị phóng nghỉ
đông trước một ngày, lão sư đang ở bố trí nghỉ đông tác nghiệp thời điểm, Kế
Hoan di động bỗng nhiên vang lên. Kế Hoan cau mày tắt đi di động lúc sau, di động
lại bám riết không tha lần thứ hai vang lên.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Như thế tam phiên
lúc sau, Kế Hoan niệu độn ra phòng học môn, chuyển được điện thoại.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Sau đó,<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ngài hảo, là Kế
Hoan tiên sinh sao? Ngài tỷ tỷ nằm viện, hiện tại sinh mệnh đe dọa, thỉnh ngươi
mau chóng lại đây một chuyến, trước tiên dự bị nàng hậu sự……”<o:p></o:p></span></p><p class="MsoNormal">







































































</p><p class="MsoNormal"><span lang="FR">Bắt lấy cũ nát di
động, Kế Hoan ngây dại.<o:p></o:p></span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (39, 3, N'Chương 3', CAST(N'2021-09-12T08:48:19.443' AS DateTime), N'<p class="MsoNormal">Kế Hoan bình tĩnh hỏi thanh đối phương chính mình tỷ tỷ hiện
tại sở trụ bệnh viện tên, địa chỉ, hắn còn muốn hỏi kỹ càng tỉ mỉ một chút tỷ tỷ
bệnh tình, nhưng mà đối phương lại không chịu nhiều lời, không bao lâu, đối
phương liền cúp điện thoại.<o:p></o:p></p><p class="MsoNormal">Làm xong này hết thảy, hắn vẫn luôn cường tự đè ở đáy lòng sợ
hãi sông cuộn biển gầm dũng đi lên.<o:p></o:p></p><p class="MsoNormal">Không có xem phòng học liếc mắt một cái, Kế Hoan thất hồn lạc
phách đi ra khu dạy học.<o:p></o:p></p><p class="MsoNormal">Vẻ mặt của hắn nghiêm túc, khóe miệng nhấp chặt, gió lạnh
đón đầu đánh vào hắn trên mặt, thân mình dần dần lãnh xuống dưới, hắn đôi mắt lại
dần dần khôi phục bình thường.<o:p></o:p></p><p class="MsoNormal">Đi thong thả biến thành chạy chậm, sau đó hắn đi nhanh chạy
lên.<o:p></o:p></p><p class="MsoNormal">Hắn trước chạy tới mỗi ngày tan học sau làm công địa phương
—— một nhà sửa xe hành.<o:p></o:p></p><p class="MsoNormal">“Đem ta tháng trước tiền lương cho ta.” Vừa vào cửa, hắn trực
tiếp tìm tới sửa xe hành lão bản, đi thẳng vào vấn đề nói.<o:p></o:p></p><p class="MsoNormal">“Uy! Lúc này mới đầu tháng, chúng ta nói tốt phát tiền lương
ngày là giữa tháng a!” Đầy người vấy mỡ hán tử từ xe đế chui ra tới, bất mãn đối
Kế Hoan nói.<o:p></o:p></p><p class="MsoNormal">Kế Hoan không nói gì, chỉ là lạnh lùng mà nhìn hắn.<o:p></o:p></p><p class="MsoNormal">Hắn vóc dáng xem như cao, so 1m7 nhiều sửa xe hành lão bản
cao hơn đi nửa đầu, bởi vì còn ở phát dục kỳ cho nên thực gầy, bất quá sửa xe
hành lão bản lại biết gia hỏa này nhìn như đơn bạc thân thể hạ cất giấu như thế
nào lực lượng! Lần đầu tiên thấy hắn chính là hắn bị bản địa một đám bất lương
thiếu niên vây công trường hợp, lại tiểu nhân trong thị trấn cũng sẽ có mấy chỉ
hư điểu, Bát Đức Trấn cũng không ngoại lệ, sửa xe hành lão bản đã làm tốt thấy
thiếu niên bị quần ẩu chuẩn bị, bất quá tình hình thực mau đã xảy ra thay đổi,
thiếu niên ra tay như sấm, cuối cùng lại là bằng sức của một người đem đối diện
bốn cái tiểu lưu manh đánh bay!<o:p></o:p></p><p class="MsoNormal">Sau lại thiếu niên này ở trấn trên nơi nơi tìm làm việc vặt
giờ địa phương, mặt khác gia ngại với tuổi đều cự tuyệt hắn, chỉ có chính mình
nhớ tới thiếu niên đánh nhau khi tàn nhẫn kính nhi, nghĩ đến chính mình loại
này cửa hàng ngày thường thực dễ dàng đưa tới tiểu lưu manh thăm, lúc này mới
tuyển dụng hắn.<o:p></o:p></p><p class="MsoNormal">Sự thật chứng minh hắn là đúng, tên này kêu Kế Hoan thiếu
niên tuổi tuy rằng không lớn, bất quá làm khởi việc tới lại một cái đỉnh hai,
hơn nữa gia hỏa này đặc biệt có thể đánh, phía trước không có việc gì chạy tới
thu bảo hộ phí tiểu du côn nhóm tới vài lần đều bị hắn đánh chạy, sau lại sẽ
không bao giờ nữa tới, chỉ là nguyên lai bị làm tiền đi bảo hộ phí đều so với
chính mình chi trả cấp thiếu niên tiền lương cao, trong lén lút, sửa xe hành
lão bản không ngừng một lần cùng chính mình bà nương khoe khoang quá chính
mình” anh minh quyết sách”.<o:p></o:p></p><p class="MsoNormal">Bất quá thiếu niên tuy rằng có thể đánh, ở sửa xe hành làm
việc thời điểm lại là phi thường điệu thấp mà thành thật, làm làm cái gì liền
làm cái đó, việc lại trọng cũng không chê mệt, cũng không yêu cầu quá trướng tiền
lương, ngẫu nhiên sửa xe hành lão bản mắng hắn một hai câu cũng sẽ không miệng,
dần dà, sửa xe hành lão bản đã sớm đã quên gia hỏa này đánh nhau khi tàn nhẫn bộ
dáng.<o:p></o:p></p><p class="MsoNormal">Nhưng mà hiện tại, thiếu niên nhìn về phía chính mình bộ
dáng, lại tựa như xem đám kia du côn lưu manh một cái dạng……<o:p></o:p></p><p class="MsoNormal">Nuốt một ngụm nước miếng, sửa xe hành lão bản còn tưởng nói
điểm cái gì, nhưng mà ở thiếu niên lạnh băng nhìn chăm chú hạ, hắn lại phát hiện
chính mình một chữ cũng nói không nên lời, thậm chí, hắn phát hiện chính mình
hai chân ở run nhè nhẹ.<o:p></o:p></p><p class="MsoNormal">“Ta còn không có mãn 18 tuổi, ngươi đây là thuê lao động trẻ
em.” Lạnh như băng thiếu niên bỗng nhiên nói.<o:p></o:p></p><p class="MsoNormal">“Thảo! Ngươi này tính cái gì đồng ——” trong miệng nhỏ giọng
mắng một câu, sửa xe hành lão bản rốt cuộc không dám nhìn thẳng đối phương đôi
mắt, vẫy vẫy tay, hắn trốn tránh dường như nói: “Đi mặt sau, tìm ngươi vương dì
cho ngươi tính tiền.”<o:p></o:p></p><p class="MsoNormal">Vương dì là sửa xe hành kế toán, cũng là nhà này sửa xe hành
tài vụ, bọn họ loại này tiểu điếm trên cơ bản đều là cửa hàng nhỏ.<o:p></o:p></p><p class="MsoNormal">Cúi đầu, tóc che lại đôi mắt, Kế Hoan lại biến thành dĩ vãng
cái kia trầm mặc ít lời thiếu niên, vượt qua sửa xe chủ tiệm, hắn lập tức hướng
buồng trong đi đến.<o:p></o:p></p><p class="MsoNormal">Một cái hơi béo nữ nhân đang ở bên trong xem TV, một bên xem
một bên cắn hạt dưa, thường thường còn phát ra một trận quá mức sang sảng tiếng
cười.<o:p></o:p></p><p class="MsoNormal">Nhìn đến Kế Hoan tiến vào, nàng vội vàng điều thấp TV âm lượng,
xoay qua mặt, nữ nhân hướng Kế Hoan cười: “Kế Hoan, ngươi tới rồi?”<o:p></o:p></p><p class="MsoNormal">Gật gật đầu, Kế Hoan trực tiếp khô cằn nói: “Vương dì, ta muốn
tháng trước tiền lương.”<o:p></o:p></p><p class="MsoNormal">“Ai? Còn không đến nhật tử…… Bất quá không kém, cho ngươi là
được.” Vương dì là cái tâm tư rất đại nữ nhân, nhìn thoáng qua trên tường lịch
ngày, lại nhìn thoáng qua cúi đầu Kế Hoan, không biết não bổ cái gì, nàng lập tức
từ trong ngăn kéo lấy ra một cái rách tung toé vở, thẩm tra đối chiếu một chút
Kế Hoan tháng trước công tác thời gian, sau đó nhanh chóng tính hảo trướng cầm
tiền cho hắn.<o:p></o:p></p><p class="MsoNormal">Kế Hoan cẩn thận điểm điểm tiền, sau một lúc lâu ngẩng đầu:
“Nhiều 300.”<o:p></o:p></p><p class="MsoNormal">“Đó là tăng ca phí, tháng trước quốc định ngày nghỉ không phải
còn đem ngươi kêu lên tới hỗ trợ sao?” Vương dì cười cười: “Cho ngươi liền cầm.”<o:p></o:p></p><p class="MsoNormal">“Nga.” Đem tiền cẩn thận để vào túi, Kế Hoan nhìn nữ nhân
sau một lúc lâu, sau đó bỗng nhiên triều nàng cúi mình vái chào.<o:p></o:p></p><p class="MsoNormal">“Đây là làm cái gì nga? Được rồi, ta biết ngươi đứa nhỏ này,
sẽ không vô duyên vô cớ trước tiên muốn tiền lương, là có việc phải dùng tiền
đi? Mau đi làm.” Vương dì hướng hắn vẫy vẫy tay.<o:p></o:p></p><p class="MsoNormal">Gật gật đầu, Kế Hoan ngay sau đó chạy ra.<o:p></o:p></p><p class="MsoNormal">Hắn ngay sau đó chạy đến ga tàu hỏa tra xét một chút đi tỷ tỷ
nơi thành thị vé xe lửa muốn bao nhiêu tiền, sau đó tính toán một chút chính
mình đến nay tiền tiết kiệm, đem chính mình tiêu dùng khống chế ở thấp nhất phạm
vi, hắn đến trấn trên lương mễ cửa hàng mua một đại túi gạo, lại đi thịt phô cắt
một đao thịt ba chỉ, nghĩ nghĩ lại mua một ít trứng gà, lúc này mới bao lớn bao
nhỏ ngồi trên đi thông trên núi xe bus, nhiều như vậy đồ vật, cũng may hắn sức
lực đại xách đến động.<o:p></o:p></p><p class="MsoNormal">“Tiểu hoa ngươi đây là muốn trước tiên dự bị hàng tết lạp?
Trong nhà còn có mễ như thế nào lại mua?” Vừa thấy mặt lão gia tử đã bị hắn trận
thế hoảng sợ.<o:p></o:p></p><p class="MsoNormal">“Ta thay đổi chủ ý, muốn thi đại học.” Không có so đo gia
gia lỡ lời mà ra chính mình nhũ danh, Kế Hoan hiện đem dễ dàng va chạm trứng gà
đặt ở trên bàn, sau đó mới dỡ xuống trầm trọng nhất gạo túi, cuối cùng đem thịt
heo phóng tới tủ lạnh đông lạnh cách.<o:p></o:p></p><p class="MsoNormal">Nghe hắn nói như vậy, gia gia nháy mắt đã quên mấy thứ này
chuyện này: “Ngươi đứa nhỏ này cuối cùng suy nghĩ cẩn thận, không đọc đại học
sao được? Nghe nói hiện tại trong thành hài tử đều đến đọc được cái kia……
Nghiên cứu sinh lý!”<o:p></o:p></p><p class="MsoNormal">“Ân, a tỷ cho ta gọi điện thoại, nàng muốn ta nghỉ đông qua
đi nàng bên kia đọc lớp học bổ túc, ta đáp ứng rồi.” Kế Hoan đem chính mình
trên đường tưởng tốt lấy cớ nói ra.<o:p></o:p></p><p class="MsoNormal">“Tiểu Hắc cho ngươi gọi điện thoại lạp? Ta liền nói kia hài
tử tháng này như thế nào còn không gọi điện thoại trở về đâu!”<o:p></o:p></p><p class="MsoNormal">“A tỷ nói nàng cho ngươi đánh quá điện thoại, không ai tiếp.”
Những lời này Kế Hoan cũng nói được thuận miệng, phía trước a tỷ xác thật thường
xuyên cấp ông nội gọi điện thoại, bất quá ông nội ở bên ngoài làm việc, luôn là
lậu tiếp.<o:p></o:p></p><p class="MsoNormal">Kế Hoan cũng không để ý lấy cớ này sẽ bị vạch trần, gia gia
sẽ không tra trò chuyện ký lục.<o:p></o:p></p><p class="MsoNormal">“Ta ngày mai liền đi, vừa mới ta đi nhà ga lấy lòng vé xe,
liền ngày mai còn có phiếu.” Kế Hoan tiếp tục nói.<o:p></o:p></p><p class="MsoNormal">“…… Cũng hảo, ngươi đi lúc sau, hảo hảo xem xem tỷ tỷ ngươi,
hảo hảo đọc sách.” Ông nội thoạt nhìn cũng không có cái gì dị thường, Kế Hoan
cuối cùng yên tâm.<o:p></o:p></p><p class="MsoNormal">Ở xác nhận tỷ tỷ bên kia tình huống phía trước, hắn sẽ không
nói cho ông nội bất luận cái gì tin tức, ông nội thân thể không tốt, chịu không
nổi lúc kinh lúc rống đại hỉ đại bi.<o:p></o:p></p><p class="MsoNormal">Cơm chiều ăn đến lệ thường là ông nội nấu đến cháo, Kế Hoan
làm được rau ngâm, cùng với hắn từ dưới chân núi mua màn thầu, Kế Hoan mua hơn
hai mươi cái màn thầu, đều băng ở tủ lạnh đông lạnh đi lên, đủ ông nội ăn cái
hai mươi ngày.<o:p></o:p></p><p class="MsoNormal">Cái này buổi tối, Kế Hoan còn chạy tới dưới chân núi bối một
vại tân khí than.<o:p></o:p></p><p class="MsoNormal">Suy nghĩ một vòng trong nhà còn có cái gì không có chuẩn bị
toàn, hắn ưu tư thật mạnh ngủ rồi.<o:p></o:p></p><p class="MsoNormal">Ở hắn ngủ lúc sau, hắn không biết chính mình gia gia từng
vào hắn phòng.<o:p></o:p></p><p class="MsoNormal">Ngồi ở Kế Hoan đầu giường, lão gia tử trong bóng đêm ngồi thật
lâu, sau một lúc lâu mới nhẹ nhàng sờ sờ Kế Hoan cái trán.<o:p></o:p></p><p class="MsoNormal">Tuy rằng ngủ thật sự vãn, ngày hôm sau Kế Hoan vẫn là đúng hạn
rời giường, gia gia khởi so với hắn còn sớm, Kế Hoan phía trước chuẩn bị tiểu
hành lý bao so tối hôm qua cổ không ít, nhìn dáng vẻ gia gia lại hướng trong tắc
đồ vật.<o:p></o:p></p><p class="MsoNormal">Kế Hoan thói quen tính kiểm tra rồi một chút hành lý, chú ý
tới bên trong thật dày một cái phong thư tiền giấy khi, hắn đem phong thư đem
ra.<o:p></o:p></p><p class="MsoNormal"><span lang="FR">“Ta mang tiền đủ
dùng.” Ngồi xổm trên mặt đất, Kế Hoan đem phong thư đệ hướng lão nhân.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Kia không phải
cho ngươi, là cho Tiểu Hắc, tới rồi bên kia, ngươi cấp Tiểu Hắc mua điều váy
hoa tử đi, muốn quý, xinh đẹp.” Lão nhân chỉ là vẫy vẫy tay.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Kế Hoan vì thế lại
đem tiền thả trở về, bất quá cũng không có đặt ở hành lý bao nội, mà là bên người
thả lên.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tuy rằng là cái
bình sinh chưa từng có ra quá trấn nhỏ ở nông thôn thiếu niên, bất quá hắn xem
qua rất nhiều phương diện này tin tức, ra cửa bên ngoài, đặc biệt là cưỡi xe lửa,
tiền tài nhất định phải bên người phóng thỏa.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Xách theo không lớn
hành lý bao, Kế Hoan vẫy tay từ biệt gia gia.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Mà ở hắn rời khỏi
sau, lão nhân đứng ở trong viện đại thụ hạ thật lâu thật lâu, nhẹ nhàng sờ soạng
một chút thân cây, sau một lúc lâu, hắn từ trong nhà lấy ra một phen rìu.<o:p></o:p></span></p><p class="MsoNormal">







































































































</p><p class="MsoNormal"><span lang="FR">“…… Yêu cầu…… Tân
vật liệu gỗ……” Cùng với một tiếng thở dài, lão nhân triều trong viện cận tồn thụ
huy nổi lên rìu.<o:p></o:p></span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (44, 1, N'Chương 1', CAST(N'2021-09-12T09:03:26.747' AS DateTime), N'<p class="MsoNormal">Mai xuân trấn trên có một cái bủn xỉn lão bản, đương nhiên hắn
bản nhân cũng không phải họ “Bủn xỉn” như vậy cái kỳ quái họ, chỉ là hắn làm người
quá mức bủn xỉn, “Bủn xỉn lão bản” cái này xưng hô mới dần dần bị người kêu
khai.<o:p></o:p></p><p class="MsoNormal">Bủn xỉn lão bản ở không phải lão bản trước, chính là phụ cận
có tiếng vắt cổ chày ra nước, chờ đến hắn khai một nhà tiểu tửu quán sau ——<o:p></o:p></p><p class="MsoNormal">Khách nhân phát hiện người khác bán rượu nhiều nhất là hướng
rượu trộn lẫn thủy, mà nhà hắn quả thực là hướng trong nước trộn lẫn rượu. Nhắm
rượu các loại đồ ăn tỷ như đậu phộng không nói số lượng liếc mắt một cái đảo
qua đi là có thể số thanh, còn luôn có chút lại hắc lại khổ trộn lẫn ở bên
trong.<o:p></o:p></p><p class="MsoNormal">Hơn nữa!<o:p></o:p></p><p class="MsoNormal">Liền như vậy cái rượu không giống rượu và thức ăn không giống
đồ ăn ngoạn ý, hắn đều bảo bối luyến tiếc lãng phí, mỗi lần vào nhầm khách nhân
cơ hồ không nhúc nhích rượu và thức ăn đều bị hắn một lần nữa đoan đi chính
mình dùng, vì thế bủn xỉn lão bản tên tuổi liền như vậy bị kêu lên.<o:p></o:p></p><p class="MsoNormal">Liền tốt như vậy đại một đóa kỳ ba cửa hàng, khách nhân tự
nhiên là tới một lần sẽ không tới lần thứ hai.<o:p></o:p></p><p class="MsoNormal">Đương nhiên…… Nếu tưởng chỉnh người ngoại trừ.<o:p></o:p></p><p class="MsoNormal">Bất quá, bởi vì bủn xỉn lão bản thanh danh cùng với hắn
trong tiệm kỳ ba ( thật ) thủy ( giả ) rượu cùng có thể dùng số đồ nhắm rượu
truyền khai sau, đảo có không ít người mộ danh tới trong tiệm kiến thức hắn đến
tột cùng có bao nhiêu bủn xỉn.<o:p></o:p></p><p class="MsoNormal">Liền bởi vì như vậy, đảo làm bủn xỉn lão bản cửa hàng vẫn
luôn khai xuống dưới mà không có đóng cửa. Đương nhiên, cửa hàng không có thể
đóng cửa tuyệt đối căn hắn làm người bủn xỉn cho nên phí tổn thiếu cũng không
phải không có quan hệ.<o:p></o:p></p><p class="MsoNormal">Bất quá, mặc kệ người khác thấy thế nào bủn xỉn lão bản, ít
nhất vừa đến nơi này Thẩm Triết Hãn lại là thực cảm tạ hắn như vậy cái bủn xỉn
tính tình.<o:p></o:p></p><p class="MsoNormal">Nếu không phải hắn bủn xỉn, cũng không dám vì ích lợi mà lưu
lại chính mình như vậy một cái vô hộ tịch, không đường dẫn, vô lai lịch tam vô
nhân viên.<o:p></o:p></p><p class="MsoNormal">Trấn nhỏ thượng không có gì có thể tiêu khiển địa phương, đi
ngang qua một cái họ Vương làm buôn bán bởi vì có việc yêu cầu ở chỗ này dừng lại
một ngày, nghe nói bủn xỉn lão bản sự tích, liền muốn đi nhìn một cái.<o:p></o:p></p><p class="MsoNormal">Bủn xỉn lão bản tiểu tửu quán là thật đủ tiểu nhân, hơn nữa
cũng không có tên, liền ở cửa treo mặt viết cái đại đại “Rượu” tự thanh bố
phàm.<o:p></o:p></p><p class="MsoNormal">Còn chưa tới cửa, làm buôn bán đã nghe tới rồi một trận mê
người mùi hương, theo hương vị không tự chủ được liền đi vào.<o:p></o:p></p><p class="MsoNormal">Cho hắn dẫn đường chính là cái họ ngưu người địa phương, bởi
vì là trong nhà lão đại cho nên bị trấn trên người kêu Ngưu Đại.<o:p></o:p></p><p class="MsoNormal">Ngưu Đại phía trước cũng kiến thức quá bủn xỉn lão bản bủn xỉn,
đi theo tiến vào sau, nhìn đến bên trong kín người hết chỗ tình cảnh, nhất thời
còn tưởng rằng chính mình đi nhầm địa phương.<o:p></o:p></p><p class="MsoNormal">Hắn duy nhất tới một lần vẫn là ở khai trương thời điểm,
ngày đó đều không có như vậy nhiều người hảo sao?<o:p></o:p></p><p class="MsoNormal">Chẳng lẽ là đổi lão bản?<o:p></o:p></p><p class="MsoNormal">Ngưu Đại đang cố gắng muốn tìm được chủ tiệm chứng minh chính
mình suy đoán khi, làm buôn bán đã nhanh chóng ngồi vào một người mới vừa đi mặt
bàn còn không có tới kịp thu thập vị trí thượng.<o:p></o:p></p><p class="MsoNormal">“Tiểu nhị, thanh cái bàn!” Không phát hiện lão bản, Ngưu Đại
liền cũng đi theo ngồi xuống, sau đó giương giọng nói.<o:p></o:p></p><p class="MsoNormal">“Tới tới.”<o:p></o:p></p><p class="MsoNormal">Theo tiếng truyền đến lúc sau, một lát sau mới có người tới
thu thập cái bàn.<o:p></o:p></p><p class="MsoNormal">Làm buôn bán không quen biết, Ngưu Đại lại là nhận thức trước
mặt người, không khỏi ngạc nhiên nói: “Bủn xỉn lão bản?”<o:p></o:p></p><p class="MsoNormal"><span lang="FR">“Nha, là Ngưu Đại
a! Đa tạ ngươi hôm nay dẫn người tới chiếu cố sinh ý, muốn ăn chút cái gì?”
Thành thạo đem trơn bóng mâm thu vào khay, bủn xỉn lão bản ngẩng đầu cuối cùng
một câu lại là hỏi bên cạnh làm buôn bán.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Tùy tiện thượng
chút rượu và thức ăn, tốc độ mau chút là được.” Nghe bốn phía mùi hương, làm
buôn bán nói.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tùy hắn phát huy
bủn xỉn lão bản tự nhiên cao hứng, đồng ý sau liền bưng khay hướng phía sau đi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Không lớn một hồi,
bủn xỉn lão bản liền bưng rượu và thức ăn lại đây, một bên động tác nhanh nhẹn
hướng trên bàn đặt tới bàn một bên cười nói: “Hương cay đậu tằm, ngũ vị hương đậu
phộng, hàm làm đậu nành, đường dấm tam ti, việc nhà đậu hủ, nhị vị chậm dùng,
không đủ lại kêu ta.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vô cùng đơn giản
năm đĩa tiểu thái cùng một bầu rượu, đặt tới trên bàn lại hương thật sự.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hút hạ cái mũi,
làm buôn bán có chút gấp không chờ nổi nắm lên chiếc đũa nếm hai viên đậu phộng,
theo sau trước mắt sáng ngời gật đầu vẻ mặt vừa lòng ăn lên.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngưu Đại thấy,
không khỏi nói: “Vương lão bản, ăn ngon sao?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vương lão bản chiếc
đũa không ngừng gật gật đầu, một bên nhai trong miệng đậu nành một bên nói: “Ăn
ngon, ta đời này cũng chưa ăn qua ăn ngon như vậy đồ nhắm rượu, ngươi cũng nếm
thử!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nói hắn lúc này mới
nhớ tới bên cạnh rượu, vì thế dùng một cái tay khác đổ một ly đặt ở một bên.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngưu Đại nhìn mắt
thức ăn trên bàn, chính là bình thường đậu phộng, đậu nành linh tinh, xem khởi
khá xinh đẹp nghe lên cũng rất hương, đã có thể này đó lại ăn ngon lại có thể
ăn ngon đến nào đi?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Mang theo một
phân hoài nghi, Ngưu Đại cầm lấy chiếc đũa trước gắp một viên đậu phộng đến
trong miệng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đệ nhất cảm giác
là hương, kế tiếp chính là giòn, nuốt xuống đi sau môi răng lưu hương, chưa đã
thèm còn tưởng tiếp tục, đừng nói, còn liền thật như vậy ăn ngon!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lại hợp với gắp mấy
viên đậu phộng, nếu không phải cố kỵ nơi này không phải chính mình gia còn có đối
diện người, không đã ghiền Ngưu Đại đều có chút tưởng thượng thủ bắt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đem mặt khác mấy
thứ đều nếm một lần sau, Ngưu Đại xem như phục, chờ nhìn đến đối diện người
bưng lên chén rượu khi không khỏi nói: “Kia cơ bản chính là bạch thủy, căn bản
không có gì uống đầu.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hắn khi nói chuyện
Vương lão bản đã uống xong một chén nước rượu, đừng nói mùi rượu xác thật đạm
cơ hồ không có, bất quá, “Trang bị này đồ ăn ăn còn hành.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nghe vậy, Ngưu Đại
buông chiếc đũa đổ ly uống rượu, vị vẫn là trước kia cái kia nhạt nhẽo vị,
nhưng đừng nói, vừa mới ăn những cái đó đồ ăn lại uống này rượu nhạt, cư nhiên
xác thật không tồi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Hắc, người khác
là lấy đồ ăn nhắm rượu, đến này xem như trái ngược.” Ngưu Đại buông cái ly cười
nói, trong lòng lại nghĩ cái này bủn xỉn lão bản từ nào tìm tới tay nghề như vậy
tốt đầu bếp, mấu chốt là hắn như vậy bủn xỉn là dùng cái gì đem người lưu lại?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Liền như vậy mấy
cái tiểu thái đều như vậy ăn ngon, kia thịt làm ra tới là cái gì vị?” Nhai mấy
viên đậu phộng sau, Vương lão bản nói, nhìn đối diện người liếc mắt một cái.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Minh bạch hắn ý tứ
Ngưu Đại lập tức liền buông chiếc đũa hô: “Bủn xỉn lão bản, ngươi lại đây một
chút.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Kêu một hồi, có lẽ
là trong tiệm bận quá vẫn là như thế nào, bủn xỉn lão bản cũng không có từng có
tới.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hướng đã đầy
trong tiệm nhìn lướt qua, Ngưu Đại tròng mắt vừa chuyển, lại hô: “Tính tiền!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Này hai chữ vừa mới
rơi xuống, bủn xỉn lão bản liền bá từ phía sau lóe tiến vào, quét mắt trước mặt
cái bàn sau nói: “Thừa huệ tổng cộng 130 văn.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chụp được hắn duỗi
lại đây tay, Ngưu Đại nói: “Gấp cái gì, chúng ta còn không có ăn xong đâu,
ngươi trở lên hai cái thịt đồ ăn tới.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Chúng ta này
buôn bán nhỏ, không có thịt, liền này vài món thức ăn.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thịt như vậy quý
bủn xỉn lão bản lại là luyến tiếc mua.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ta đưa tiền.”
Vương lão bản nói.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Bao nhiêu tiền?”
Nghe được tiền bủn xỉn lão bản đôi mắt đều sáng một chút.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Hai cái thịt đồ
ăn ta cấp một lượng bạc tử.” Vương lão bản vươn tay so cái nhị lại so cái một.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Một lượng bạc tử
chính là một ngàn văn, hai cái đồ ăn so này một bàn đồ ăn còn kiếm được thật tốt
vài lần!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bủn xỉn lão bản
đôi mắt càng sáng, chỉ là ngay sau đó lại bỗng nhiên lại tối sầm xuống dưới,
“Chúng ta trong tiệm không có thịt.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Này có khó gì?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lại gắp hai viên
đậu nành, Vương lão bản tùy tay cầm hai đồng bạc ném cho Ngưu Đại, “Ngươi đi
mua điểm thịt tới.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Này thịt thượng
bàn thế nào cũng có chính mình một ngụm, bởi vậy Ngưu Đại gật đầu lên tiếng sau
buông chiếc đũa liền đứng dậy chạy ra đi mua thịt.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Thịt ta ra, giá
bất biến, như vậy có thể đi?” Vương lão bản nói.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Bủn xỉn lão bản
liên tục gật đầu, đầy mặt tươi cười nói: “Có thể, đương nhiên có thể!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đối trấn trên
quen cửa quen nẻo Ngưu Đại thực mau liền xách một cân nhiều thịt cùng một con xử
lý tốt gà trở về, trực tiếp đưa cho bủn xỉn lão bản.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tiếp thịt hướng
phía sau đi, dọc theo đường đi nhìn ngồi đầy người đại đường, ngày xưa liền
tươi cười đều bủn xỉn bủn xỉn lão bản khó được vẫn luôn liệt miệng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lưu lại kia tiểu
tử quả nhiên là chính xác, nhìn xem hiện giờ sinh ý, quả thực thật tốt quá!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Một quyển thỏa
mãn hướng nhà bếp đi, bủn xỉn lão bản ở cửa liền bắt đầu kêu: “Thẩm tiểu tử,
mau đem này thịt cầm đi làm hai cái đồ ăn!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đứng ở bệ bếp Thẩm
Triết Hãn còn tưởng rằng chính mình nghe lầm, chờ quay đầu lại nhìn đến trong
tay hắn thịt khi, không khỏi trước u một tiếng, sau đó mới tiếp nhận nhục đạo:
“Thật hiếm lạ, lão bản ngài cư nhiên bỏ được mua thịt?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Tiểu tử ngươi biết
cái gì, chạy nhanh làm hai cái đồ ăn ta hảo lấy ra đi.” Nghĩ đến chính mình một
lượng bạc tử, bủn xỉn lão bản thúc giục nói.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Phía trước bởi vì
tài liệu hữu hạn làm cho đều là chút đơn giản đến không được đồ nhắm rượu, đối
với Thẩm Triết Hãn tới nói thật đúng là rất không khó khăn, hiện giờ nhìn đến một
con gà cùng một khối heo mông thịt hắn thực mau liền có chủ ý.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Gà có thể làm
thành ớt gà, thịt gà tạc tương đối nhai rất ngon hơn nữa xốp giòn da khoai tây
khối là thực tốt đồ nhắm rượu.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đến nỗi này khối
thịt heo mông thịt làm thành tỏi giã thịt luộc liền không tồi, tỏi giã thịt luộc
là món cay Tứ Xuyên, ăn lên cay rát hàm tiên, môi răng lưu hương, đã đỡ thèm
còn không dầu mỡ, tuyệt đối là hiếm có một đạo đồ nhắm rượu.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đang nghĩ ngợi tới,
Thẩm Triết Hãn cũng đã đem thịt heo cùng khương cùng nhau để vào nước lạnh
trong nồi nấu, đồng thời đem gà phóng tới thớt thượng thịt gà thiết ngón trỏ
tiêm đại đinh, thêm muối trảo đều ướp ở một bên.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Chờ đến trong nồi
thịt chín thành thục, dùng chiếc đũa không uổng lực mà trát thấu thịt không thấy
được máu loãng tràn ra sau, Thẩm Triết Hãn đem nồi mang sang tới phóng tới một
bên làm đem thịt tiếp tục ngâm, sau đó đi chuẩn bị tỏi giã thủy cùng mặt khác
gia vị.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Gia vị chuẩn bị tốt
sau, hắn đem yêm tốt thịt gà bắt được một cái khác nồi bên, trung hỏa hạ thiêu
khai thâm du đem thịt gà cùng khoai tây thay phiên tạc hai lần, sử thịt gà đến
nâu nhạt, khoai tây mặt ngoài hương giòn sau, dùng xào nồi thêm các loại liêu
xào sau ra nồi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nghe kia một trận
một trận mùi hương, chính là từ trước đến nay chỉ ái tiền không yêu mỹ thực bủn
xỉn lão bản đều nhịn không được nuốt nước miếng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đem đồ ăn phóng tới
trong tay hắn, nhìn đến hắn dáng vẻ này Thẩm Triết Hãn trêu ghẹo nói: “Lão bản
nếu là luyến tiếc không bằng đừng bán chính mình ăn bái!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nghe này mùi
hương, bủn xỉn lão bản thật là có điểm nhịn không được, ngay sau đó nghĩ đến một
lượng bạc tử, nhắm chặt miệng trừng hắn liếc mắt một cái liền chạy nhanh đi ra
ngoài.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đến nỗi vì cái gì
quan trọng nhắm miệng? Hắn lại là sợ nước miếng rơi vào mâm.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vừa mới đã nghe đến
một trận mê người mùi hương, chờ bủn xỉn lão bản ra tới, phát hiện hương vị là
từ trong tay hắn truyền ra tới, trong tiệm khách nhân không thấy rõ đó là cái
gì liền bắt đầu kêu: “Lão bản, ngươi trong tay đồ ăn cho ta cũng tới một cái!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Còn có nơi này,
ta cũng muốn một phần!”<o:p></o:p></span></p><p>























































































































































</p><p class="MsoNormal"><span lang="FR">“Xin lỗi, này đồ
ăn chỉ có một phần.” </span>Đem đồ ăn đưa đến trên bàn sau, bủn xỉn lão bản mới
nhẹ nhàng thở ra, triều những người khác bồi cái không phải sau liền chạy nhanh
hướng phía sau đi.<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (44, 2, N'Chương 2', CAST(N'2021-09-12T09:03:55.077' AS DateTime), N'<p class="MsoNormal">Bủn xỉn lão bản vội vàng chui vào mặt sau đi, đại đường
khách nhân liền đem tầm mắt dừng ở phóng kia bàn đồ ăn trên bàn.<o:p></o:p></p><p class="MsoNormal">Mạo nhiệt khí ớt gà nghe lên rất hấp dẫn người, hơn nữa
Vương lão bản bản thân chính là cái có thể ăn cay, nhìn đến này bàn rực rỡ đồ
ăn, ở bên cạnh người tầm mắt hạ trực tiếp động chiếc đũa.<o:p></o:p></p><p class="MsoNormal">Nhìn theo hắn đem một khối thịt gà đưa vào trong miệng, Ngưu
Đại nhịn không được nuốt hạ nước miếng.<o:p></o:p></p><p class="MsoNormal">“Đủ vị, có nhai đầu, ăn ngon!”<o:p></o:p></p><p class="MsoNormal">Thịt gà nhập khẩu lại cay lại hương còn có nhai đầu, trang bị
mềm mại ngon miệng khoai tây, thật sự là ăn ngon! Vương lão bản cảm thấy chính
mình này một lượng bạc tử ra thật sự là giá trị, lộ ra tươi cười đổ ly uống rượu,
ngay sau đó lại tiếp tục ăn lên.<o:p></o:p></p><p class="MsoNormal">Xem tới được lại ăn không được, mặt khác khách nhân liền đều
quay đầu lại tới ăn chính mình tiểu thái.<o:p></o:p></p><p class="MsoNormal">Tuy rằng phía trước Vương lão bản nói làm chính mình cùng
nhau dùng, bất quá Ngưu Đại vẫn là có chút nhãn lực kính, kẹp đậu phộng, đậu
nành, đậu hủ chậm rãi ăn, chờ đến hắn đem một đĩa ớt gà ăn hơn phân nửa khi mới
duỗi chiếc đũa gắp khối thịt gà.<o:p></o:p></p><p class="MsoNormal">Thẩm Triết Hãn nấu ăn phía trước tự nhiên là hỏi thăm quá bản
địa khẩu vị, biết nơi này người đều thích ăn cay mới có thể làm này đó đồ ăn.<o:p></o:p></p><p class="MsoNormal">Ngưu Đại sẽ không hình dung, dù sao chính là cảm thấy này thịt
gà trang bị khoai tây chính là đặc biệt ăn ngon.<o:p></o:p></p><p class="MsoNormal">Nhà bếp, nhìn đến hắn nhanh như vậy liền trở về, Thẩm Triết
Hãn không khỏi quay đầu lại nói: “Làm sao vậy, khách nhân không hài lòng?”<o:p></o:p></p><p class="MsoNormal">“Vừa lòng, vừa lòng thật sự!” Một lượng bạc tử lập tức muốn
tới tay, bủn xỉn lão bản nhưng thật ra rất cao hứng, chỉ là nghĩ đến vừa mới đại
đường những người đó vỗ tiền muốn đồ ăn, nhưng hắn lại cố tình không đồ ăn đi
kiếm những cái đó tiền, không khỏi lại có chút đau lòng.<o:p></o:p></p><p class="MsoNormal">Tỏi giã thịt luộc này thoạt nhìn rất đơn giản, muốn làm tốt
lại không dễ dàng, vì bảo đảm vào miệng là tan, béo mà không ngán vị, chỗ khó
liền ở chỗ kỹ thuật xắt rau muốn hảo.<o:p></o:p></p><p class="MsoNormal">Đem lượng lãnh thịt vớt phóng tới thớt thượng sau, Thẩm Triết
Hãn thần sắc nghiêm túc lên, nắm đao dứt khoát lưu loát thiết lên.<o:p></o:p></p><p class="MsoNormal">Nhìn đến kia khối thịt heo ở hắn thủ hạ trở nên phiến đại
trong suốt, mỏng như tằm cánh, bủn xỉn lão bản liền không thể không ở bội phục
đồng thời lại lần nữa xác định chính mình nhặt được bảo.<o:p></o:p></p><p class="MsoNormal">Chính là phía trước hắn cũng chỉ là xem tuổi này nhẹ nhàng
thiếu niên lớn lên hảo hơn nữa lại không cần tiền công, lúc này mới tưởng lưu hắn
xuống dưới đương cái chạy đường, chỉ là không nghĩ tới thiếu niên trù nghệ cư
nhiên như vậy hảo, hiện giờ xem ra, hắn không ngừng trù nghệ hảo đao công cũng
không kém a!<o:p></o:p></p><p class="MsoNormal">Đem cắt thành lát cắt thịt bãi bàn, đem tỏi giã thủy cùng
gia vị tưới đi lên sau, Thẩm Triết Hãn vừa lòng nhìn nhìn sau đem mâm đưa qua
đi.<o:p></o:p></p><p class="MsoNormal">Này bàn đồ ăn mùi hương không như vậy nùng, bất quá quang
xem bộ dáng này liền rất hấp dẫn người.<o:p></o:p></p><p class="MsoNormal">Bất quá, nghĩ vậy bàn đồ ăn mang sang đi hắn một lượng bạc tử
liền đến tay, bủn xỉn lão bản dời đi ánh mắt hỏi câu này bàn đồ ăn tên sau liền
chạy nhanh bưng mâm đi ra ngoài.<o:p></o:p></p><p class="MsoNormal">Đồ ăn lại ăn ngon ăn vào trong bụng liền không có, vẫn là bạc
nhất thật sự!<o:p></o:p></p><p class="MsoNormal">Nhìn đến tuổi cũng không nhỏ lão bản chạy ra chạy vào, kiêm
nhiệm chạy đường, tiểu nhị vội đến giống cái con quay giống nhau Thẩm Triết Hãn
liền có chút vô ngữ.<o:p></o:p></p><p class="MsoNormal">Nhân sinh có chút theo đuổi là tốt, tựa như chính mình yêu
thích nấu ăn giống nhau. Chính là, hắn như vậy vì tỉnh tiền lăn lộn chính mình
liền có chút lẫn lộn đầu đuôi đi?<o:p></o:p></p><p class="MsoNormal">Bất quá, những lời này Thẩm Triết Hãn cũng chỉ có thể ở
trong lòng ngẫm lại, rốt cuộc thông qua nhiều như vậy thiên hiểu biết, hắn cũng
đã khắc sâu lĩnh giáo bủn xỉn lão bản có thể tỉnh một cái tiền đồng liền tuyệt
không tỉnh nửa cái bủn xỉn chi phong, cho nên nói cũng là uổng phí.<o:p></o:p></p><p class="MsoNormal">Bước chân không ngừng trực tiếp đem đồ ăn đoan đến Vương lão
bản trên bàn, bủn xỉn lão bản nói: “Tỏi giã thịt luộc, ngài thỉnh dùng!”<o:p></o:p></p><p class="MsoNormal">Nâng lên chiếc đũa gắp một mảnh thịt đưa vào trong miệng liền
cảm giác được vào miệng là tan, béo mà không ngán, hơn nữa tỏi giã cùng gia vị
mùi hương, Vương lão bản chiếc đũa có chút dừng không được tới.<o:p></o:p></p><p class="MsoNormal">“Hương vị như thế nào?” Nhìn đến hắn bộ dáng kia bủn xỉn lão
bản liền biết khẳng định ăn ngon, mở miệng cũng bất quá là biến tướng nhắc nhở
hắn đưa tiền.<o:p></o:p></p><p class="MsoNormal">“Ăn ngon!” Bớt thời giờ ném ra hai chữ, Vương lão bản đổ ly
liền uống lên sau vốn dĩ tưởng hơi chút rụt rè một ít, chờ phát hiện bên cạnh mấy
trương cái bàn người đều nhìn chằm chằm chính mình trước mặt đồ ăn, trực tiếp
chiếc đũa như bay đem thịt đều kẹp vào trong miệng.<o:p></o:p></p><p class="MsoNormal">Một hơi đem một mâm tỏi giã thịt luộc ăn xong, hắn lại uống
lên ly rượu, bụng đã no rồi lại còn cảm thấy có chút chưa đã thèm.<o:p></o:p></p><p class="MsoNormal">Thấy hắn kia phó quỷ chết đói đầu thai đức hạnh, người bên cạnh
đều thiếu chút nữa nhịn không được phiên hắn cái xem thường.<o:p></o:p></p><p class="MsoNormal">Xem hai mắt cũng sẽ không thiếu một miếng thịt, đến nỗi như
vậy không phóng khoáng sao?<o:p></o:p></p><p class="MsoNormal">Có người nhịn không được chụp hạ cái bàn, ở trong đại đường
người đều vọng lại đây khi hô: “Lão bản, đem cái kia tỏi…… Tỏi giã thịt luộc
cho ta tới một mâm!”<o:p></o:p></p><p class="MsoNormal">“Cái này cũng chỉ có một phần.” Bủn xỉn lão bản trả lời.<o:p></o:p></p><p class="MsoNormal">“Ta nói ngươi có thể hay không làm buôn bán a? Ta lại không
phải không trả tiền, hơn nữa vì cái gì hắn vậy có, chẳng lẽ lão bản ngươi thật
đúng là xem đĩa hạ đồ ăn?” Người nọ nhịn không được nói.<o:p></o:p></p><p class="MsoNormal">Thấy này đồ ăn chỉ hắn nơi này độc nhất phân, Vương lão bản
càng thêm cảm thấy một lượng bạc tử hoa giá trị, nghe được người nọ nói, không
khỏi giúp bủn xỉn lão bản nói một câu nói, “Ta này hai bàn đồ ăn là chính mình
ra tài liệu.”<o:p></o:p></p><p class="MsoNormal">Người nọ lập tức nói tiếp: “Ta đây cũng có thể chính mình ra
tài liệu a!”<o:p></o:p></p><p class="MsoNormal">“Ta còn ra một lượng bạc tử.” Vương lão bản quét hắn liếc mắt
một cái sau chậm rì rì tiếp tục nói.<o:p></o:p></p><p class="MsoNormal">Một lượng bạc tử đều có thể đi tửu lầu ăn một đốn, chính là
này đồ ăn lại ăn ngon bọn họ cũng luyến tiếc.<o:p></o:p></p><p class="MsoNormal">Cái này người nọ không hé răng, đồng thời cảm thấy này đồ ăn
đến thật tốt ăn mới làm người chịu hoa một lượng bạc tử đi nếm?<o:p></o:p></p><p class="MsoNormal">Ăn no Vương lão bản bưng chén nước uống rượu, dư quang chú ý
tới vẻ mặt chờ mong đứng ở một bên bủn xỉn lão bản khi mới phản ứng lại đây,
tùy tay sờ soạng một hai nhị đồng bạc cho hắn.<o:p></o:p></p><p class="MsoNormal">Thấy hắn còn nhiều cho, bủn xỉn lão bản tức khắc nở nụ cười,
“Đa tạ vị này khách quan, ăn ngon lần sau ngài lại đến.”<o:p></o:p></p><p class="MsoNormal">“Liền hướng ngươi này đồ ăn, lần sau nếu là còn đi ngang qua
này ta khẳng định sẽ đến.” Vương lão bản nói.<o:p></o:p></p><p class="MsoNormal">Trong tiệm sinh ý tuy rằng bởi vì Thẩm Triết Hãn tay nghề trở
nên hảo không ít, bất quá bởi vì thời gian còn không dài thanh danh còn không
có hoàn toàn truyền ra đi, cho nên chờ đến mặt trời chiều ngã về tây khi, trong
tiệm liền cũng không nhiều ít khách nhân.<o:p></o:p></p><p class="MsoNormal">Sẽ đột nhiên đến nơi đây, đối với Thẩm Triết Hãn tới nói tuyệt
đối là một cái ngoài ý muốn, rốt cuộc cũng không phải ai hảo hảo đi ở đường cái
thượng đều sẽ gặp được mặt đất đột nhiên sụp đổ.<o:p></o:p></p><p class="MsoNormal">Vừa đến nơi này khi, hắn quần áo quái dị không nói còn cả
người là thổ, cũng chỉ có bủn xỉn lão bản lộ ra thiện ý cho chén nước hắn uống.<o:p></o:p></p><p class="MsoNormal">Tuy rằng nguyên nhân là nhà mình giếng thủy không cần tiền,
lại còn có muốn hắn bổ một đống sài đương “Chén nước chi ân”, bất quá không tại
đây hoàn toàn xa lạ địa phương lưu lạc đầu đường còn có thể tiếp tục ngốc tại
trong phòng bếp nấu ăn, Thẩm Triết Hãn đã không chút nào tiếc rẻ ở trong lòng cấp
bủn xỉn lão bản đã phát thẻ người tốt.<o:p></o:p></p><p class="MsoNormal">Nắm lên vạt áo lau đem trên đầu hãn, nghĩ lúc này nhất thời
nửa cũng sẽ không lại có khách nhân tới, Thẩm Triết Hãn đem trong phòng bếp đồ
vật đơn giản thu thập lên.<o:p></o:p></p><p class="MsoNormal">Thu thập hảo sau hắn từ một bên mâm sờ soạng hai cái cây táo
hồng, một bên rắc răng rắc cắn một bên đi ra ngoài.<o:p></o:p></p><p class="MsoNormal">Bủn xỉn lão bản cái kia bủn xỉn tính tình tự nhiên là sẽ
không mua trái cây, này cây táo hồng vẫn là hắn nhà mình trong viện kia cây thượng
kết, bất quá hắn này trái cây hái xuống đều là đặt ở cửa tiệm bán, cũng liền mấy
ngày nay nhìn đến sinh ý như vậy hảo, mới khó được hào phóng cầm năm sáu cái cấp
Thẩm Triết Hãn.<o:p></o:p></p><p class="MsoNormal">Hiểu biết sau phát hiện này rõ ràng là cái hư cấu thời
không, Thẩm Triết Hãn đảo cảm thấy khá tốt, bởi vì hiện đại những cái đó nguyên
liệu nấu ăn ở chỗ này trên cơ bản đều có, tên thượng cũng không có quá lớn biến
hóa, lại còn có có rất nhiều chờ hắn đi tìm tòi nghiên cứu tân nguyên liệu nấu
ăn.<o:p></o:p></p><p class="MsoNormal">Đối với một cái đầu bếp, một cái ở hiện đại đã không vướng bận
đầu bếp tới nói, tới rồi nơi này cũng có thể tiếp tục nấu ăn, như vậy cũng
không phải quá khó có thể tiếp thu.<o:p></o:p></p><p class="MsoNormal">Đương nhiên, nếu lão bản có thể hào phóng một ít, không cần
mỗi ngày chỉ ở trong phòng bếp chuẩn bị đậu phộng, đậu nành, đậu hủ, rau xanh
này mấy thứ hữu hạn nguyên liệu nấu ăn, kia hắn khẳng định sẽ càng dễ dàng tiếp
thu nơi này.<o:p></o:p></p><p class="MsoNormal">Cắn cây táo hồng xuyên qua phòng bếp tiểu viện, Thẩm Triết
Hãn xốc lên đi thông phía trước rèm vải khi, liền nhìn đến đại đường quả nhiên
đã không khách nhân.<o:p></o:p></p><p class="MsoNormal">Mới vừa sát xong cuối cùng một cái bàn bủn xỉn lão bản dư
quang chú ý tới hắn ra tới, nhìn hắn một cái sau đem trong tay phát hoàng khăn
vải đáp ở một bên giá gỗ thượng liền xoay người hướng quầy sau đi.<o:p></o:p></p><p class="MsoNormal">Nhìn hắn trên mặt áp đều áp không được ý mừng, Thẩm Triết
Hãn liền biết hôm nay tiền lời không tồi, mà hắn hiện tại gấp không chờ nổi liền
muốn đi đếm tiền.<o:p></o:p></p><p class="MsoNormal">Gần đây ngồi vào một cái bàn trước, nghe đồng tiền va chạm
thanh âm, Thẩm Triết Hãn một tay nâng mặt một tay cầm nửa cái cây táo hồng có một
ngụm không một ngụm cắn.<o:p></o:p></p><p class="MsoNormal">Ở sau quầy ôm trang tiền rương gỗ một bên vài dặm mặt tiền bủn
xỉn lão bản một bên cười đến thấy răng không thấy mắt, chờ số xong phát hiện so
ngày hôm qua lại nhiều nửa đồng bạc sau, khóe miệng càng là mau liệt đến nhĩ
sau.<o:p></o:p></p><p class="MsoNormal">Ngẩng đầu quét mắt quét đưa lưng về phía chính mình đang ở
ăn trái cây thiếu niên, nghĩ nghĩ hắn đếm năm cái đồng tiền ra tới, do dự một hồi
lại thả lại đi ba cái, nhưng mà nhìn sẽ lòng bàn tay hai quả đồng tiền khẽ cắn
môi vẫn là lại bỏ thêm một cái.<o:p></o:p></p><p class="MsoNormal">Tam cái đồng tiền ở trong tay nhéo một hồi lâu, bủn xỉn lão
bản vẫn là nhịn xuống thả lại tiền rương ý tưởng.<o:p></o:p></p><p class="MsoNormal">“Tiểu Thẩm, ngươi lại đây một chút.”<o:p></o:p></p><p class="MsoNormal">Khó được hắn sẽ ở đếm tiền thời điểm kêu chính mình, Thẩm
Triết Hãn kinh ngạc lại có chút tò mò quay đầu nhìn hắn một cái, theo sau đứng
dậy đi qua.<o:p></o:p></p><p class="MsoNormal">“Tuy rằng lúc trước nói tốt chỉ lo ăn trụ, bất quá ta cũng
không phải bất cận nhân tình người, này đó tiền cho ngươi, về sau hảo hảo làm.”<o:p></o:p></p><p class="MsoNormal">Nhìn hắn một bên lưu luyến không rời đem tam cái đồng tiền
phóng tới chính mình trong tay, còn một bên nhắc nhở không cần loạn dùng tốt nhất
tồn lên, Thẩm Triết Hãn quả thực có chút dở khóc dở cười.<o:p></o:p></p><p class="MsoNormal">Cố ý triều trước mặt hắn tiền rương nhìn thoáng qua, Thẩm
Triết Hãn nói: “Lão bản tâm tình như vậy hảo, xem ra hôm nay tiền lời thực
không tồi.”<o:p></o:p></p><p class="MsoNormal">Bang một tiếng đem tiền rương hợp nhau tới, bủn xỉn lão bản
huy xuống tay nói: “Không tồi cái gì không tồi, gần nhất đồ ăn đều trướng giới
không biết sao? Ngươi chạy nhanh một bên nghỉ ngơi đi!”<o:p></o:p></p><p class="MsoNormal">Trong tiệm đồ ăn không phải đều từ hắn nhà mình hậu viện vườn
rau lấy sao? Cho nên đồ ăn giới trướng không trướng có quan hệ gì?<o:p></o:p></p><p class="MsoNormal">Thấy hắn khẩn trương, Thẩm Triết Hãn nhịn không được cười rộ
lên, tùy tay đem tam cái đồng tiền trang khởi sau xoay người trở lại vừa rồi vị
trí ngồi hạ tiếp tục gặm hắn trái cây.<o:p></o:p></p><p class="MsoNormal">Đem tiền rương hộ trong người trước, xem hắn một lần nữa ngồi
xuống sau, bủn xỉn lão bản mới một lần nữa mở ra số khởi tiền tới.<o:p></o:p></p><p class="MsoNormal">Lại đem tiền đếm một lần, bủn xỉn lão bản mang theo tươi cười
đem tiền rương khóa lại sau cẩn thận phóng hảo, theo sau nghĩ cũng không có gì
sự, vì thế liền đi tới Thẩm Triết Hãn bên người ngồi xuống cùng hắn nói chuyện
phiếm lên.<o:p></o:p></p><p class="MsoNormal">





































































































































</p><p class="MsoNormal">Thẩm Triết Hãn nhưng thật ra rất nguyện ý nghe hắn nói chút
trời nam đất bắc khi trướng trướng đối với nơi này thường thức, chỉ là đang
nghe hắn nói đến cái gì tiên nhân khi không khỏi cảm thấy có chút buồn cười.<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (44, 3, N'Chương 3', CAST(N'2021-09-12T09:05:26.737' AS DateTime), N'<p class="MsoNormal">Từ tiểu tửu quán nhà bếp có Thẩm Triết Hãn sau, sinh ý liền
một ngày hảo quá một ngày, mặc dù đại đường cái bàn lại bỏ thêm hai trương đều
mỗi ngày kín người hết chỗ.<o:p></o:p></p><p class="MsoNormal">Đối với chính mình tay nghề Thẩm Triết Hãn vẫn là thực tự
tin, nếu không có nguyên liệu nấu ăn thiếu thốn mà trấn nhỏ người trên lại cũng
không tính quá nhiều, hắn tin tưởng trong tiệm sinh ý khẳng định sẽ càng hỏa bạo.<o:p></o:p></p><p class="MsoNormal">Mỗi ngày liền làm đậu phộng, đậu nành này mấy thứ đồ vật
cũng không có gì, ghê gớm nhiều đổi một ít đa dạng tới làm. Nhưng ăn này đó ăn
với cơm liền ăn nửa tháng sau, Thẩm Triết Hãn thật sự là có chút chịu không nổi,
tại thuyết phục bủn xỉn lão bản bỏ tiền mua mặt khác nguyên liệu nấu ăn không
có kết quả dưới tình huống, quyết định chính mình nghĩ cách.<o:p></o:p></p><p class="MsoNormal">Mặc dù tiểu tửu quán đồ nhắm rượu không tồi, nhưng sáng tinh
mơ lại là không ai sẽ đến uống rượu, bởi vậy trong tiệm đều là thái dương cao
chiếu khi mới có thể mở cửa.<o:p></o:p></p><p class="MsoNormal">Vì thế, trước tiên cùng bủn xỉn lão bản nói qua sau, hôm nay
sáng sớm Thẩm Triết Hãn liền cõng một cái giỏ tre chuẩn bị đi trấn ngoại trên
núi tìm điểm nguyên liệu nấu ăn.<o:p></o:p></p><p class="MsoNormal">Lúc này trời vừa mới sáng, bất quá trên đường đã có mấy chỗ
sớm một chút sạp bày ra tới.<o:p></o:p></p><p class="MsoNormal">“Sáng sớm, tiểu Thẩm đây là muốn đi đâu?”<o:p></o:p></p><p class="MsoNormal">Mai xuân trấn không lớn, có điểm chuyện gì không mấy ngày là
có thể truyền đến mọi người đều biết, Thẩm Triết Hãn tới nơi này cũng có nửa
tháng, hiện giờ trấn trên người trên cơ bản đều biết bủn xỉn lão bản may mắn,
nhặt cái tay nghề tốt thiếu niên ở trong tiệm hỗ trợ.<o:p></o:p></p><p class="MsoNormal">Tới khi quần áo tự nhiên không thể xuyên, Thẩm Triết Hãn hiện
giờ xuyên bất quá là một thân không biết bủn xỉn lão bản từ nào lấy tới màu xám
vải bố y.<o:p></o:p></p><p class="MsoNormal">Nhưng mà, tuy rằng ăn mặc xám xịt, nhưng nại không được hắn
lớn lên hảo, ngũ quan tinh xảo, làn da lại bạch, lại còn có lại có lễ phép lại
ái cười, cùng trấn trên bạn cùng lứa tuổi hoàn toàn bất đồng.<o:p></o:p></p><p class="MsoNormal">Không thể không nói, bất luận ở địa phương nào, lớn lên hảo
bao nhiêu là có chút ưu thế, ít nhất trấn trên gặp qua người của hắn liền không
có không thích hắn.<o:p></o:p></p><p class="MsoNormal">“Lưu đại thúc sớm!” Thẩm Triết Hãn nghe tiếng vọng qua đi,
giơ lên tươi cười nói.<o:p></o:p></p><p class="MsoNormal">Hắn vốn đang có chút lo lắng giống như vậy trấn nhỏ có thể
hay không tính bài ngoại, sau lại lại phát hiện chính mình suy nghĩ nhiều, nơi
này người đều còn tính hảo ở chung.<o:p></o:p></p><p class="MsoNormal">“Sớm!” Vị kia Lưu đại thúc sạp là mua cháo cùng màn thầu,
lúc này nhìn đến hắn, cười trở về một tiếng sau trực tiếp liền đem hai cái bánh
bao nhét vào trong lòng ngực hắn, “Cầm ăn chơi.”<o:p></o:p></p><p class="MsoNormal">Trước hai ngày ra tới khi chăn một lần thấy hắn Lưu đại
nương ngạnh thỉnh một cái màn thầu, đẩy không được Thẩm Triết Hãn liền thuận miệng
đề ra hai câu có thể đem cháo lộng chút đa dạng, như vậy so đơn bán cháo trắng
hấp dẫn người.<o:p></o:p></p><p class="MsoNormal">Lưu đại nương nghe nói hắn có một đống hảo trù nghệ, liền hướng
hắn thỉnh giáo, Thẩm Triết Hãn liền nói thẳng mấy thứ cháo cách làm.<o:p></o:p></p><p class="MsoNormal">Hiện giờ nhà bọn họ này sinh ý so trước kia hảo nhưng không
ngừng một chút, bởi vậy đối với hắn tắc lại đây màn thầu Thẩm Triết Hãn liền thản
nhiên tiếp được, “Đa tạ Lưu đại thúc.”<o:p></o:p></p><p class="MsoNormal">“Hải, khách khí cái gì, thật muốn nói thúc còn phải tạ ngươi
đâu!” Bủn xỉn lão bản gia một ngày chỉ ăn hai đốn, giữa trưa một đốn làm buổi tối
một đốn hi, đây là trấn trên người đều biết đến, bởi vậy biết hắn buổi sáng nhất
định không ăn Lưu đại thúc lại nói: “Nếu không ngồi xuống thúc lại cho ngươi tới
chén cháo?”<o:p></o:p></p><p class="MsoNormal">“Không cần.” Thẩm Triết Hãn vẫy vẫy tay, chỉ vào phía trước
nói: “Ta muốn đi trên núi đi dạo.”<o:p></o:p></p><p class="MsoNormal">Lưu đại thúc cũng không hỏi hắn nguyên nhân, chỉ nhắc nhở
hai câu làm hắn tiểu tâm chút.<o:p></o:p></p><p class="MsoNormal">Một bên cắn màn thầu một bên ra trấn nhỏ, chờ đến đem hai
cái bánh bao ăn xong Thẩm Triết Hãn cũng tới rồi chân núi.<o:p></o:p></p><p class="MsoNormal">Trấn ngoại có một mảnh liên miên núi non, bất quá cũng không
có tên, Thẩm Triết Hãn lên núi sau liền tả hữu nhìn quét lên.<o:p></o:p></p><p class="MsoNormal">Dưới chân núi còn tốt một chút, càng lên cao đi cỏ cây liền
càng tràn đầy, Thẩm Triết Hãn một bên chậm rãi hướng lên trên đi một bên đem
nhìn đến rau dại đào ra bỏ vào giỏ tre.<o:p></o:p></p><p class="MsoNormal">Trấn trên người cơ hồ mọi nhà đều là hậu viện có vườn rau tiền
viện có cây ăn quả, mấy năm gần đây mưa thuận gió hoà nhật tử quá đến không tồi,
hơn nữa núi lớn nhiều ít có chút nguy hiểm, này đây bình thường trừ bỏ đốn củi,
hái thuốc cùng thợ săn ngoại cũng không có gì người đến trong núi tới.<o:p></o:p></p><p class="MsoNormal">Nguyên nhân chính là như thế, cho nên Thẩm Triết Hãn còn
chưa đi đến trên sườn núi trên lưng giỏ tre cũng đã đầy.<o:p></o:p></p><p class="MsoNormal">Cõng tràn đầy một sọt nguyên liệu nấu ăn, Thẩm Triết Hãn một
quyển thỏa mãn lộ ra tươi cười.<o:p></o:p></p><p class="MsoNormal">Rốt cuộc không cần lại tiếp tục ăn đậu phộng, đậu nành!<o:p></o:p></p><p class="MsoNormal">Nhìn mắt sắc trời, biết thời gian còn đầy đủ, Thẩm Triết Hãn
liền có chút tay ngứa lên.<o:p></o:p></p><p class="MsoNormal">Nơi này nguyên liệu nấu ăn phong phú, ngay tại chỗ lấy tài
liệu nhưng thật ra có thể làm không ít ăn ngon.<o:p></o:p></p><p class="MsoNormal">Món ăn hoang dã hắn là không cái kia tinh lực đi tóm được, bất
quá nghĩ đến vừa mới nhìn đến dòng suối nhỏ, Thẩm Triết Hãn dương môi đi qua.<o:p></o:p></p><p class="MsoNormal">Suối nước thanh triệt thấy đáy, bên trong quả nhiên có không
ít bàn tay đại cá ở vui sướng du.<o:p></o:p></p><p class="MsoNormal">Đem giỏ tre đặt ở trên mặt đất, Thẩm Triết Hãn cởi giày cầm
lấy một phen chủy thủ đi vào trong nước.<o:p></o:p></p><p class="MsoNormal">Này chủy thủ vẫn là hắn ở nhà bếp trong một góc nhảy ra tới,
khó khăn đem mặt ngoài rỉ sắt trừ bỏ lại lấy đá mài dao cấp ma sắc bén mới có
thể dùng.<o:p></o:p></p><p class="MsoNormal">Vào nước sau lẳng lặng đứng một hồi chờ mặt nước khôi phục
bình tĩnh, sau đó Thẩm Triết Hãn liền xuất kỳ bất ý liên tục đem chủy thủ đâm
xuống.<o:p></o:p></p><p class="MsoNormal">Ném sáu bảy con cá ở trên bờ chuẩn bị mang về sau, Thẩm Triết
Hãn lại theo dõi khó được một con cá lớn.<o:p></o:p></p><p class="MsoNormal">Này cá so mặt khác cá lớn gấp hai, Thẩm Triết Hãn phí điểm sức
lực mới đâm trúng nó đem này ném về trên bờ.<o:p></o:p></p><p class="MsoNormal">Cơ bản thường thức Thẩm Triết Hãn vẫn phải có, rốt cuộc là ở
trong núi, hắn cũng không dám làm ra quá lớn mùi máu tươi, tìm trương đại lá
cây đem mặt khác cá bao lên bỏ vào giỏ tre sau, trên mặt đất đào cái động động
tác lưu loát đem cái kia cá lớn xử lý sạch sẽ.<o:p></o:p></p><p class="MsoNormal">Ở ly bên dòng suối không xa trên mặt đất đôi một đống cành
khô dùng mang ra tới mồi lửa phát lên hỏa, lại đi chọn một cây phẩm chất thích
hợp mới mẻ nhánh cây bẻ tới phóng tới trong nước rửa sạch sẽ phao sau khi, Thẩm
Triết Hãn đem cá dùng nhánh cây xâu lên tới đặt ở hỏa thượng nướng.<o:p></o:p></p><p class="MsoNormal">Bởi vì ra tới trước liền có nghĩ tới tình huống hiện tại,
cho nên Thẩm Triết Hãn có trước tiên chuẩn bị cho tốt gia vị mang lại đây, lau
hắn đặc chế gia vị cá nướng một hồi liền toát ra mê người mùi hương.<o:p></o:p></p><p class="MsoNormal">Nơi này đồ vật thuần thiên nhiên, làm lên hương vị đều đặc
biệt hảo, hồi lâu không như vậy ăn qua cá Thẩm Triết Hãn chính mình nghe mùi
hương đều nhịn không được nuốt hạ nước miếng.<o:p></o:p></p><p class="MsoNormal">Vừa mới ở bên kia còn thấy được cây trúc, nếu không phải sợ
chậm trễ thời gian, hắn kỳ thật càng muốn làm trúc hương cá nướng.<o:p></o:p></p><p class="MsoNormal">Biểu tình chuyên chú quay cuồng cá thân, chờ đến nướng hảo
lúc sau, Thẩm Triết Hãn đem cá đặt ở rửa sạch sẽ phô ở hòn đá thượng lá cây thượng,
chính mình xoay người đi bên dòng suối giặt sạch bắt tay cùng mặt.<o:p></o:p></p><p class="MsoNormal">Không có biện pháp, lúc này là mùa hè, tuy rằng trong núi
không như vậy nhiệt, nhưng ở đống lửa ngồi lâu như vậy vẫn là có chút chịu
không nổi.<o:p></o:p></p><p class="MsoNormal">Bất quá, nhìn đến trong nước ảnh ngược, Thẩm Triết Hãn không
khỏi sờ sờ mặt, khó khăn đầy hai mươi tuổi, kết quả này một xuyên trực tiếp lại
co lại thành vị thành niên, xem bộ dáng này, cũng liền chính mình mười lăm sáu
bộ dáng đi?<o:p></o:p></p><p class="MsoNormal">Tả hữu cổ đại nhận người không quy củ nhiều như vậy, càng sống
càng tuổi trẻ cũng không có gì không tốt.<o:p></o:p></p><p class="MsoNormal">Thẩm Triết Hãn nghĩ, lắc lắc trên tay thủy, chuẩn bị đi hưởng
dụng hắn thơm ngào ngạt cá nướng.<o:p></o:p></p><p class="MsoNormal">Nhưng mà, mới vừa trở lại đống lửa bên, hắn còn không có tới
kịp lấy cá, trước người lại đột nhiên bá một chút xuất hiện một người, Thẩm Triết
Hãn có chút cứng đờ ngẩng đầu.<o:p></o:p></p><p class="MsoNormal">Trước mắt người một thân bạch y, khuôn mặt thanh tuấn mang
theo vài phần đạm mạc, một đôi hắc như trời cao con ngươi tựa nạp vào đầy trời
sao trời, như mực phát dùng bạch ngọc phát quan thúc khởi, hắn đứng yên ở nơi
đó, dáng người tú dật phảng phất giống như tiên nhân.<o:p></o:p></p><p class="MsoNormal"><span lang="FR">Nhưng là! Trọng
điểm là! Cái này “Tiên nhân” hắn là trống rỗng xuất hiện a!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tựa như cưỡi ngựa
trắng có thể là Đường Tăng giống nhau, giống tiên nhân cũng rất có khả năng là
A Phiêu……<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vừa mới còn cảm
thấy râm mát trong núi hiện tại Thẩm Triết Hãn chỉ cảm thấy âm trầm lên, không
có biện pháp, khi còn nhỏ quỷ chuyện xưa nghe nhiều, mặc dù trong lòng không
tin có kia ngoạn ý, nhưng tổng vẫn là có chút sợ hãi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ngươi nhưng nguyện……”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Kia hơi lạnh
thanh âm kỳ thật rất dễ nghe, nhưng kia ba chữ rơi xuống Thẩm Triết Hãn trong
tai khi, hắn lại nháy mắt liền não bổ ra tới ba vạn chữ quỷ chuyện xưa.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ta không muốn!”
Không tự giác run lên một chút, hắn hô một câu sau nắm lên trong tầm tay giỏ
tre xoay người liền chạy.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đến nỗi vì cái gì
lúc này còn nhớ rõ giỏ tre? Chỉ có thể nói là thân là đầu bếp kỳ ba bệnh nghề
nghiệp.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nhìn đến hắn nháy
mắt liền chạy ra hảo xa, bạch y nhân trên mặt như cũ nhàn nhạt chỉ có trong mắt
tựa hiện lên một tia nghi hoặc, như là không rõ hắn vì cái gì không đợi chính
mình nói xong lời nói lại đột nhiên chạy.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Ngay sau đó, hắn
cúi đầu nhìn mắt bị quên đi còn mạo nhiệt khí cá, rốt cuộc không có đuổi theo
đã chạy xuống sơn người.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Nhanh như chớp chạy
xuống sơn tới rồi trấn nhỏ ngoại khi Thẩm Triết Hãn mới ngừng lại được, vỗ vỗ ngực
chậm rãi hướng trong trấn đi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đến nỗi vì cái gì
không quay đầu lại nhìn xem? Nghe xong như vậy nhiều quỷ chuyện xưa kinh nghiệm
nói cho hắn, gặp được quỷ dị sự kiện sau tốt nhất không cần tùy tiện quay đầu lại!<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vốn đang sợ hắn sẽ
hồi chậm ảnh hưởng làm buôn bán, nhìn đến hắn mồ hôi đầy đầu gấp trở về, mới vừa
đem cửa hàng môn mở ra bủn xỉn lão bản trong lòng vừa lòng, trong miệng lại
nói: “Kỳ thật cũng không cần như vậy cấp trở về đuổi!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Thẩm Triết Hãn vẫy
vẫy tay, từ trong tiệm đổ chén nước uống xong sau mới tính hoãn quá mức.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Vừa mới ở trên
núi khi là thật bị dọa, nhưng cũng có một bộ phận nguyên nhân là đối hoàn cảnh
nơi đây xa lạ lại mang theo vài phần chính mình dọa chính mình tâm lý, hiện giờ
ngồi ở trong tiệm, Thẩm Triết Hãn hơi chút bình tĩnh một ít, không khỏi nói:
“Lão bản chúng ta trấn trên có mặc quần áo trắng thanh niên sao?”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Không có.” Bủn xỉn
lão bản không cần nghĩ ngợi lắc đầu, sau đó nói: “Màu trắng nhiều không kiên nhẫn
dơ, ai không có việc gì xuyên cái kia.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Không phải trấn
trên kia cũng có thể là đi ngang qua người, đột nhiên toát ra tới cũng có thể
là chính mình trước không chú ý.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Tóm lại tuy rằng
bị dọa một chút, Thẩm Triết Hãn vẫn là không muốn tin tưởng trên thế giới thực
sự có kia ngoạn ý, bởi vậy chính mình bắt đầu cấp kia “Người” tìm lý do.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Di! Đâu ra nhiều
cá như vậy?” Bủn xỉn lão bản lúc này mới chú ý tới hắn đặt ở trên mặt đất giỏ
tre, tùy ý quét mắt sau kinh hỉ nói.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Đi trong núi bắt.”
Thẩm Triết Hãn nói.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Chạy trên núi đi
bắt cá? Ngươi thật đúng là nguyện ý lăn lộn.” Bủn xỉn lão bản nói, trên mặt lại
mang theo tươi cười.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Đây là Thẩm Triết
Hãn lộng trở về đồ vật, bủn xỉn lão bản đảo không chuẩn bị tham, chỉ là nghĩ đến
làm tốt sau hắn khẳng định cũng có thể ăn được đến, bởi vậy rất cao hứng.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Giữa trưa thời điểm
bởi vì khách nhân nhiều liền tùy tiện ăn chút, buổi tối khi lấy cho chính mình
an ủi vì lý do, Thẩm Triết Hãn dùng kia mấy cái cá làm vài đạo đồ ăn.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Buổi tối ăn một đốn
hắn làm cá kho, sóc cá cùng rau dại canh cá lại thêm một mâm tỏi nhuyễn rau
xanh sau, vuốt bụng thẳng đánh cách bủn xỉn lão bản tỏ vẻ duy trì hắn mỗi ngày
đi trên núi đi dạo, liền tính hồi chậm một ít cũng không, quan, hệ!<o:p></o:p></span></p><p>













































































































































</p><p class="MsoNormal"><span lang="FR">Thẩm Triết Hãn tắc
tỏ vẻ, tạm thời, ít nhất hai ngày này là không chuẩn bị lên núi.<o:p></o:p></span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (45, 1, N'Chương 1', CAST(N'2021-09-12T09:06:51.813' AS DateTime), N'<p class="MsoNormal">Màn đêm buông xuống, quỷ hỏa hồ minh, lạnh căm căm gió lạnh
vẫn luôn hướng trong sơn động rót.<o:p></o:p></p><p class="MsoNormal">Sơn động lối vào có một thiển phiêu sắc cẩm y thanh niên ngồi
xếp bằng, bên ngoài âm phong từng trận, to rộng tay áo đều bị thổi đến phát ra
thanh âm, hắn hai mắt nhìn chằm chằm bên ngoài động tĩnh, thật lâu sau lúc sau,
phía sau truyền tới thanh âm đánh gãy hắn chăm chú nhìn.<o:p></o:p></p><p class="MsoNormal">Thanh niên quay đầu lại, liền nhìn đến bổn an tĩnh nằm tuyết
y thiếu niên lúc này bắt đầu phát ra ý vị không rõ tiếng rên rỉ, còn đem thân
thể cuộn tròn lên, mỹ nhân nhỏ dài, bệnh trạng suy nhược, bất luận kẻ nào nhìn
đều sẽ nhịn không được xông lên đi ôm lấy hắn.<o:p></o:p></p><p class="MsoNormal">Nhưng Phương Triều Chu không có.<o:p></o:p></p><p class="MsoNormal">Bởi vì hắn là cái xuyên thư giả.<o:p></o:p></p><p class="MsoNormal">Xuyên thư việc này còn muốn từ nửa năm trước nói lên, nửa
năm trước, Phương Triều Chu tai nạn xe cộ mà chết, nhưng không nghĩ tới chính
mình còn có thể mở mắt ra, chỉ là mở mắt ra sau, hắn ý thức được chính mình khả
năng tới rồi dị thế giới, bởi vì hắn chứng kiến đến người đều là tóc dài cổ
bào.<o:p></o:p></p><p class="MsoNormal">Sau lại, có người tới thăm hỏi, một ngụm một cái nhị sư
huynh, trong miệng còn niệm những người khác người danh, Phương Triều Chu bỗng
nhiên phát hiện người này theo như lời tên giống như cùng hắn xem qua một quyển
trường thiên chưa kết thúc trong tiểu thuyết nhân vật tên trọng điệp.<o:p></o:p></p><p class="MsoNormal">Quyển sách này là hắn nhàn rỗi nhàm chán thời điểm truy,
truy nguyên nhân rất đơn giản, bởi vì này bổn trường thiên tu chân trong tiểu
thuyết mặt có cái cùng hắn trùng tên trùng họ nhân vật.<o:p></o:p></p><p class="MsoNormal">Cái kia nhân vật là vai chính thụ tiểu sư đệ nhị sư huynh, mỗi
ngày chỉ biết tiểu sư đệ trường, tiểu sư đệ đoản, vì tiểu sư đệ chắn kiếm, vì
tiểu sư đệ sát yêu thú, vì tiểu sư đệ loảng xoảng loảng xoảng đâm đại tường.<o:p></o:p></p><p class="MsoNormal">Đúng vậy, vị này nhị sư huynh ái mộ chính mình tiểu sư đệ,
nhưng quyển sách này là một thiên mua cổ văn, tác giả cũng không có trực tiếp
nói cho người đọc vai chính công là ai, chỉ là sáng tạo vô số ưu tú nam nhân,
mà văn trung tiểu sư đệ tựa hồ vẫn là cái thẳng nam.<o:p></o:p></p><p class="MsoNormal">Ở trong quyển sách này vô số nam tính nhân vật đối hắn
khuynh tâm, nhưng hắn không chỉ có không chút nào động tâm, thậm chí đối những
cái đó cố ý nịnh nọt tiếp cận người của hắn đều không có sắc mặt tốt, còn tiếp
đến một trăm vạn tự, tuy rằng thư còn không có kết thúc, còn không ai có thể đến
gần vị này tiểu sư đệ tâm.<o:p></o:p></p><p class="MsoNormal">Quyển sách này ở trên mạng thực hỏa, Tieba đều khai mười mấy,
mỗi cái Tieba đều là bất đồng CP, các đại CP fans ở trên mạng véo đến chết đi sống
lại, nhị sư huynh X tiểu sư đệ cặp này cũng tính hơi chút đứng đầu CP, fans còn
có một cái tên —— trứng ( đan ) xào ( triều ) cơm.<o:p></o:p></p><p class="MsoNormal">Chỉ là Phương Triều Chu hiện tại xuyên qua, mà trong sách
trăm vạn cốt truyện hiện giờ mới phát triển đến một nửa, tiểu sư đệ Tiết Đan
Dung đã khiến cho vô số nam nhân chú ý, thậm chí quyển sách lớn nhất vai ác đã
chuẩn bị lặng lẽ đối hắn xuống tay.<o:p></o:p></p><p class="MsoNormal">Theo đạo lý, biết được cốt truyện phát triển Phương Triều
Chu hẳn là ỷ vào tiên tri ưu thế, trước một bước đem tiểu sư đệ lộng tới tay,
nhưng Phương Triều Chu là điều không nghĩ nói chuyện yêu đương chỉ nghĩ ăn no
chờ chết cá mặn.<o:p></o:p></p><p class="MsoNormal">Tại đây hơn một trăm vạn tự, nguyên chủ vì tiểu sư đệ không
biết ăn nhiều ít khổ, hậu kỳ còn nhập ma, có thể nói nhất thảm lốp xe dự phòng.<o:p></o:p></p><p class="MsoNormal">Theo đuổi tiểu sư đệ, lại không nhất định có thể theo đuổi đến,
tiểu sư đệ những cái đó người theo đuổi mỗi người đều thực hung, nỗ lực tu luyện,
hắn tu vi hậu kỳ đều thành tiểu sư đệ lót chân gạch, thôi, thôi, này tình yêu
cùng tu luyện khổ đều không ăn.<o:p></o:p></p><p class="MsoNormal">Cho nên xuyên thư ngày hôm sau, Phương Triều Chu liền từ bỏ
theo đuổi tiểu sư đệ Tiết Đan Dung, cũng không còn sớm ra vãn về, vui vui vẻ vẻ
đương nổi lên cá mặn.<o:p></o:p></p><p class="MsoNormal">Vì thế Thiên Thủy Tông đệ tử dần dần phát hiện Tiết Đan Dung
bên người thiếu một người.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu nhìn mắt trên mặt đất thiếu niên, sau đó
đương không thấy được giống nhau, nhẫn tâm mà quay lại đầu.<o:p></o:p></p><p class="MsoNormal">Trên mặt đất tuyết y thiếu niên đúng là hắn tiểu sư đệ Tiết
Đan Dung, nói đến, tối nay sự tất cả đều là ngoài ý muốn.<o:p></o:p></p><p class="MsoNormal">Hắn đương hơn nửa năm tử trạch, rốt cuộc bị sư phụ không
quen nhìn, một chân đem hắn đá xuống núi, buộc hắn mang đội, mang sư đệ muội
nhóm đi bí cảnh rèn luyện, tiểu sư đệ Tiết Đan Dung đang ở trong đó.<o:p></o:p></p><p class="MsoNormal">Này một đường, Phương Triều Chu đều cực lực cùng Tiết Đan
Dung bảo trì khoảng cách, đương nhiên vì tránh cho làm nhân thiết băng đến quá
lợi hại, chỉ cần không cẩn thận nhìn đến Tiết Đan Dung, hắn đều làm ra một bộ ảm
đạm nội thương bộ dáng, phảng phất là ăn đủ rồi tình yêu khổ.<o:p></o:p></p><p class="MsoNormal">Bởi vì Phương Triều Chu cố ý tránh né, này một đường nguyên
bản hắn nên cùng Tiết Đan Dung phát sinh hỗ động tình tiết đều không có phát
sinh, thẳng đến tối nay.<o:p></o:p></p><p class="MsoNormal">Tối nay bọn họ gặp một cái phi thường lợi hại yêu thú, đem bọn
họ đoàn người cấp lộng tan, Phương Triều Chu lạc đường, trên đường bí cảnh trời
mưa, hắn một đường trốn vũ, cuối cùng đi vào một cái sơn động, kết quả liền
nhìn đến ngã vào trong sơn động tiểu sư đệ Tiết Đan Dung.<o:p></o:p></p><p class="MsoNormal">Hắn ngẩn người, mới nhớ tới tối nay có cái tình tiết phải
đi.<o:p></o:p></p><p class="MsoNormal">Nguyên cốt truyện, tiểu sư đệ cùng hắn cũng không có phân
tán, mà bọn họ đi tìm trong tông môn mặt khác sư đệ muội thời điểm, tiểu sư đệ
không cẩn thận bị rắn độc cắn thương, Phương Triều Chu lập tức giết xà, đem tiểu
sư đệ ôm vào một cái sơn động tiến hành chữa thương.<o:p></o:p></p><p class="MsoNormal">Ở cái này nguyệt hắc phong cao ban đêm, Phương Triều Chu rút
đi tiểu sư đệ giày vớ, nhìn kia tuyết trắng tinh xảo mắt cá chân, hắn cánh mũi
mấp máy, đột nhiên cúi đầu hút lấy……<o:p></o:p></p><p class="MsoNormal">Đình chỉ!<o:p></o:p></p><p class="MsoNormal">Tình tiết này là không thể có.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu lắc lắc đầu, đem hình ảnh cấp đuổi đi ra
ngoài.<o:p></o:p></p><p class="MsoNormal">Hắn không nghĩ tới hắn đã cực lực né tránh Tiết Đan Dung, lại
còn có thể đụng tới đối phương, bởi vì biết tiểu sư đệ không chết được, dù sao
cũng là vai chính, cho nên Phương Triều Chu không hề lương tâm mà ngồi ở một
bên.<o:p></o:p></p><p class="MsoNormal">Này trời mưa đến thật sự kỳ quái, hắn vừa ra đi liền hạ, trở
lại sơn động liền đình, hay là sách này khai Thiên Nhãn, buộc hắn đi cốt truyện?<o:p></o:p></p><p class="MsoNormal">Không được, sĩ khả sát bất khả nhục, hắn mới không cần hôn một
cái nam nhân chân, lại mỹ cũng không thể thân.<o:p></o:p></p><p class="MsoNormal">Phía sau tiểu sư đệ tiếng rên rỉ không ngừng, Phương Triều
Chu trong lòng không hề dao động, thậm chí từ nhẫn trữ vật lấy ra một trản dạ
minh châu sở chế đèn cùng một cái tiểu thoại bản.<o:p></o:p></p><p class="MsoNormal">Hiện giờ tới rồi tu chân thế giới, Phương Triều Chu sớm đã
tích cốc, trường kỳ ăn cơm ngũ cốc hoa màu chỉ biết tổn hại hắn tu vi, tuy rằng
Phương Triều Chu không nghĩ tu luyện, nhưng nhìn đến tu vi lui về phía sau, tổng
cảm thấy có điểm nguy hiểm, rốt cuộc hắn cái này nhị sư huynh vẫn là muốn mang
sư đệ muội nhóm đi rèn luyện.<o:p></o:p></p><p class="MsoNormal">Cho nên hắn là thật sự thèm ăn, mới có thể đi ăn cái gì, ăn
còn muốn dùng sang quý Hóa Thực Châu, làm trong cơ thể trọc khí tiêu tán.<o:p></o:p></p><p class="MsoNormal">Không có ăn cái gì này một đại yêu thích, Phương Triều Chu
chỉ có thể xem tiểu thoại bản tống cổ thời gian, không thể không nói, cái này
tu chân trong thế giới thoại bản lượng nhiều chất cao, thông thường Phương Triều
Chu thượng bộ còn không có xem xong, tác giả hạ bộ liền đưa ra thị trường.<o:p></o:p></p><p class="MsoNormal">Bất quá gần nhất vào bí cảnh, nhẫn trữ vật tiểu thoại bản đều
bị nhìn thất thất bát bát, liền dư lại này vốn không có nhìn. Nói đến xấu hổ,
này vốn là tiểu sư đệ Tiết Đan Dung đồng nhân tiểu thuyết, quét hóa thời điểm,
lão bản thấy hắn hào phóng đưa, hắn mang về trước cũng không chú ý tới đây là
cái gì thư, sau lại mới biết được đó là tiểu sư đệ đồng nhân tiểu thuyết.<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung lúc này đã có chút danh tiếng, dân gian có một
mỹ nhân bảng, hàng năm đổi mới, bảng thượng cùng sở hữu mười hai cái danh ngạch,
Tiết Đan Dung một chút sơn, liền nhẹ nhàng tễ thượng bảng đơn, thậm chí theo hắn
tu vi gia tăng, xếp hạng càng ngày càng đi phía trước.<o:p></o:p></p><p class="MsoNormal">Rất nhiều tay bút đều sẽ cấp mỹ nhân bảng người trên viết đồng
nghiệp.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu bổn không nghĩ xem, nhưng hiện tại thật sự
nhàm chán.<o:p></o:p></p><p class="MsoNormal">Vì thế hắn phiên tới rồi đêm trước xem địa phương.<o:p></o:p></p><p class="MsoNormal">Thư thượng viết nói ——<o:p></o:p></p><p class="MsoNormal">“Tiết Đan Dung lại thẹn lại giận mà nhìn trước mắt nam nhân,
‘ ngươi muốn làm chi? ’<o:p></o:p></p><p class="MsoNormal">Hắc y nam nhân cười lạnh một tiếng, ‘ ngươi chẳng lẽ nhìn
không ra sao? Ta đã nhẫn ngươi cùng nam nhân kia thật lâu, các ngươi cùng nhau ở
trước mặt ta dính, khi ta bị mù sao? Tối nay ta khiến cho ngươi nhìn xem ai mới
là ngươi chân chính nam nhân! ’<o:p></o:p></p><p class="MsoNormal">Chỉ thấy một đạo sấm rền vang lên, Tiết Đan Dung sắc mặt
nháy mắt trở nên trắng bệch, hắn không thể tin được mà nhìn trước mắt nam nhân
đối chính mình cư nhiên có mang ý nghĩ như vậy, hắn vẫn luôn đem đối phương trở
thành chí giao hảo hữu……”<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu ghét bỏ mà lắc lắc đầu, này rất khó nhìn ra
tới sao?<o:p></o:p></p><p class="MsoNormal">Hắn thượng một hồi mới hôn ngươi, ngươi là mất trí nhớ sao?
A?<o:p></o:p></p><p class="MsoNormal">“Ân…… A……”<o:p></o:p></p><p class="MsoNormal">Mặt sau thanh âm biến đại, Phương Triều Chu dừng một chút, rốt
cuộc đứng dậy. Hắn dạo bước đến tuyết y thiếu niên bên cạnh, thiếu niên bởi vì
đau đớn đã hoàn toàn súc thành một đoàn, tóc dài che lại mặt bộ, bất tỉnh nhân
sự.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu ngồi xổm xuống, tùy ý vén lên giấu ở thiếu
niên chỗ cổ tóc dài, hạ một đạo cấm ngôn thuật.<o:p></o:p></p><p class="MsoNormal">Hảo, an tĩnh, có thể tiếp tục đọc sách.<o:p></o:p></p><p class="MsoNormal">Thi pháp sau khi kết thúc, Phương Triều Chu tri kỷ mà đem
tóc dài lại cấp che lại trở về, thời tiết rét lạnh, tiểu sư đệ vẫn là đừng đông
lạnh cổ.<o:p></o:p></p><p class="MsoNormal">Lại nhìn mấy trương, Phương Triều Chu đắm chìm ở trong cốt
truyện, cũng không có chú ý tới phía sau động tĩnh biến đại, chờ bả vai bị một
bàn tay dùng sức chế trụ, hắn mới đột nhiên bừng tỉnh.<o:p></o:p></p><p class="MsoNormal">“Nhị sư huynh?”<o:p></o:p></p><p class="MsoNormal">Là tiểu sư đệ thanh âm.<o:p></o:p></p><p class="MsoNormal">















































































































</p><p class="MsoNormal">Hắn thanh âm nghẹn ngào, trong đó còn chứa đầy thống khổ chi
ý.<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (45, 2, N'Chương 2', CAST(N'2021-09-12T09:07:21.997' AS DateTime), N'<p class="MsoNormal">Quảng Cáo<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung ngày thường thanh âm như kim ngọc tương bính
chi âm, trong trẻo dễ nghe, hiện giờ lại bị độc tố tra tấn đến thanh âm nghẹn
ngào.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu nghe được nhà mình tiểu sư đệ thanh âm,
không chút hoang mang mà đem thư khép lại, thu vào nhẫn trữ vật, quay đầu lại,
vô tội tương vọng, “Tiểu sư đệ, ngươi tỉnh a.”<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung sinh một trương thật xinh đẹp mặt, có bao
nhiêu xinh đẹp đâu?<o:p></o:p></p><p class="MsoNormal">Đại khái là chỉnh quyển sách nam nhân nhìn hắn đều phải vì
này phát cuồng, đặc biệt là hắn giữa mày chỗ kia viên nốt chu sa, như là một
phen hỏa, ở sở hữu nam nhân trong lòng thiêu đốt.<o:p></o:p></p><p class="MsoNormal">Lúc này Tiết Đan Dung sắc mặt ửng đỏ, đôi mắt ướt át, tóc
đen rơi rụng, càng thêm sấn đến gương mặt kia tựa như phù dung mặt, kiều diễm ướt
át tới rồi cực chỗ. Bất luận kẻ nào thấy hắn, đều sẽ tâm sinh gợn sóng, hận
không thể lập tức đem mỹ nhân ôm nhập trong lòng ngực, nhưng Tiết Đan Dung tối
nay cố tình gặp là Phương Triều Chu này cá mặn.<o:p></o:p></p><p class="MsoNormal">Tiểu sư đệ vừa mới vẫn luôn trên mặt đất lăn lộn, này quần
áo đều có chút ô uế đi, tóc cũng trên mặt đất lăn, hẳn là cũng hỗn tạp không ít
bùn đất đi.<o:p></o:p></p><p class="MsoNormal">Sách, tưởng cấp tiểu sư đệ thi một đạo rửa sạch thuật, nhưng
không biết có thể hay không quá mạo phạm.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu như là không thấy được Tiết Đan Dung lúc
này diễm sắc, không bờ bến mà nghĩ tới mặt khác vấn đề.<o:p></o:p></p><p class="MsoNormal">“Nhị sư huynh…… Như thế nào ở chỗ này?”<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung những lời này cơ hồ là kẽ răng trung bài trừ tới,
mới nói một câu, trên trán đã là mồ hôi lạnh ròng ròng.<o:p></o:p></p><p class="MsoNormal">Kia nháy mắt, Phương Triều Chu đang nói nói thật cùng lời
nói dối giữa rối rắm một phen, cuối cùng hắn lựa chọn nói láo.<o:p></o:p></p><p class="MsoNormal">“Ta cố ý tới tìm ngươi, mới vừa rồi đội ngũ đi lạc, ta thực
sợ hãi ngươi xảy ra chuyện.”<o:p></o:p></p><p class="MsoNormal">Rốt cuộc hắn hiện tại vẫn là tiểu sư đệ liếm cẩu, liếm cẩu
là không thể tùy ý OOC.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu ý đồ tàng khởi chính mình cá mặn cái đuôi.<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung nghe vậy, hàng mi dài run lên, cũng không biết
là tin vẫn là không tin, hắn chậm rãi đem chế trụ Phương Triều Chu bả vai tay
thu trở về, “Nhị sư huynh, ta…… Bị rắn độc cắn được, kia xà có độc, ta ăn…… Giải
độc hoàn, nhưng vô dụng.”<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu chớp hạ mắt, chờ nhìn đến Tiết Đan Dung hơi
kinh ngạc ánh mắt, mới ý thức được đến chính mình nói tiếp lúc.<o:p></o:p></p><p class="MsoNormal">“Tiểu sư đệ, ngươi không sao chứ? Như thế nào sẽ có như vậy
không có mắt rắn độc?”<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung ninh hạ mi, đang muốn nói cái gì, liền nhìn đến
Phương Triều Chu vẻ mặt hạo nhiên chính khí mà đứng lên.<o:p></o:p></p><p class="MsoNormal">“Tiểu sư đệ, ngươi yên tâm, việc này liền giao cho sư huynh,
ngươi thả ở chỗ này an tâm chờ đợi.”<o:p></o:p></p><p class="MsoNormal">Hắn nói xong liền xoay người đi rồi.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu lần này ra tới không trời mưa, hắn một bên
cầm dạ minh châu đèn đi phía trước đi, một bên ở trong lòng tưởng nguyên cốt
truyện.<o:p></o:p></p><p class="MsoNormal">Nguyên cốt truyện yêu cầu hắn cấp tiểu sư đệ hấp độc, sau đó
độc tố dời đi sau, hắn chịu đủ tra tấn, đối mặt như hoa như ngọc tiểu sư đệ,
trong lòng mơ màng phi phi, nhưng mặt ngoài còn phải làm cái ôn nhu sư huynh,
cuối cùng là hắn mạnh mẽ đem độc tố khống chế ở thức hải, phản hồi tới rồi sư
môn, tuy rằng sư phụ cuối cùng giúp hắn trị liệu, khá vậy bởi vậy lùi lại hai
mươi năm tu vi.<o:p></o:p></p><p class="MsoNormal">Này xà độc cũng thật đủ kỳ quái, Phương Triều Chu nhịn không
được phun tào, không bang liền lùi lại hai mươi năm tu vi sao? Kia bang là có
thể trướng tu vi sao? Hơn nữa, kia xà độc như thế nào phân rõ là trúng độc giả
là tay động người lao động, vẫn là eo động người lao động đâu? Còn có, tiểu sư
đệ trúng liền tưởng bị người ngủ? Hắn trúng liền muốn ngủ người?<o:p></o:p></p><p class="MsoNormal">Một loại độc, hai loại công hiệu?<o:p></o:p></p><p class="MsoNormal">Xú xà, ra tới bị đánh!<o:p></o:p></p><p class="MsoNormal">Thật là nói ra liền ra tới, tiếp theo nháy mắt, Phương Triều
Chu thiếu chút nữa đụng phải treo ở trên cây một con rắn, hắn thấy rõ kia không
phải nhánh cây sau, nhanh chóng thi pháp đánh qua đi.<o:p></o:p></p><p class="MsoNormal">Một con rắn “Bẹp” rơi xuống đất.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu lấy dạ minh châu đèn chiếu chiếu trên mặt đất
chết xà, này xà vòng eo có hai ngón tay như vậy thô, cả người mọc đầy giáng màu
đỏ hoa văn, tựa hồ có điểm giống trong sách miêu tả cái kia cắn Tiết Đan Dung
xà.<o:p></o:p></p><p class="MsoNormal">Bắt được hiềm nghi xà, vậy mang về cấp tiểu sư đệ cho hả giận.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu đem nhẫn trữ vật ngày thường dùng để gà nướng
trường xoa đem ra, đem xà mặc ở mặt trên, xách theo về sơn động. Hắn trở về thời
điểm, Tiết Đan Dung còn ngồi ở mới vừa rồi vị trí, chỉ là hắn gắt gao cắn môi,
như là cực không dễ chịu.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu săn sóc tiến lên, đem xà đưa qua, “Tiểu sư
đệ, chạy nhanh sấn nhiệt ăn đi, vừa mới chết đâu.”<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung: “……”<o:p></o:p></p><p class="MsoNormal">Hắn mắt phượng liếc mắt đưa tới trước mắt chết xà, thong thả
mở miệng, “Đây là…… Cái gì?”<o:p></o:p></p><p class="MsoNormal">“Tiểu sư đệ, này giống không giống cắn ngươi cái kia xà?”
Phương Triều Chu hỏi.<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung lại liếc liếc mắt một cái xà, “Không biết, cái
kia xà…… Du tẩu đến quá nhanh, ta không có…… Thấy rõ ràng, nhưng hoa văn tựa hồ……
Có điểm giống.”<o:p></o:p></p><p class="MsoNormal">“Kia hẳn là chính là nó, mới vừa rồi ta đi ra ngoài tìm một
vòng, nhìn đến nó ở trên cây nghỉ ngơi, lập tức giết nó thế tiểu sư đệ báo
thù.” Phương Triều Chu dừng một chút, “Còn có, tiểu sư đệ trúng nó độc, ta nghe
nói dân gian có lấy độc trị độc liệu pháp.”<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung mày khẽ nhíu, trong mắt có giận tái đi, “Nhị
sư huynh là muốn cho ta ăn này chết xà?”<o:p></o:p></p><p class="MsoNormal">Đại khái bởi vì sinh khí, Tiết Đan Dung câu này nói chính là
liền mạch lưu loát, không có tạm dừng.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu trì độn phát hiện nhà mình tiểu sư đệ sinh
khí, có chút xấu hổ mà đem xà thu trở về, nhưng thực mau hắn lại nói: “Tiểu sư
đệ, ngươi có phải hay không không thói quen ăn sinh? Không quan hệ, ta giúp
ngươi nướng chín nó.”<o:p></o:p></p><p class="MsoNormal">Nói, hắn liền đi nhóm lửa nướng xà.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu ở nguyên thế giới thời điểm là nướng BBQ một
phen hảo thủ, hiện giờ xuyên tiến trong sách, tùy thân đều sẽ mang nướng BBQ đồ
dùng, bao gồm hắn cố ý điều chế phối liệu.<o:p></o:p></p><p class="MsoNormal">Đến sái ớt cay kia bước thời điểm, Phương Triều Chu hỏi: “Tiểu
sư đệ, ngươi ăn không ăn cay?”<o:p></o:p></p><p class="MsoNormal">Không ai hồi hắn.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu xoay đầu, liền phát hiện Tiết Đan Dung đã
súc ở sơn động trong một góc, cách hắn rất xa, kia một chỗ cơ hồ bị hắc ám bao
phủ, hắn chỉ có thể phân biệt ra nơi đó có người, cũng thấy không rõ tiểu sư đệ
biểu tình.<o:p></o:p></p><p class="MsoNormal">“Tiểu sư đệ, ăn cay sao?” Phương Triều Chu lại hỏi một lần.<o:p></o:p></p><p class="MsoNormal">Lần này, Tiết Đan Dung rốt cuộc đã mở miệng, “Không ăn!”<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu biết được đáp án, vặn quay đầu lại tiếp tục
nướng xà, chờ thịt rắn nướng đến khô vàng nộn tô, mùi hương phác mũi, Phương
Triều Chu đều có điểm tưởng chảy nước miếng, bất quá hắn vẫn là kiềm chế ở, cầm
nướng xà đi tới Tiết Đan Dung trước mặt.<o:p></o:p></p><p class="MsoNormal">“Tiểu sư đệ, nướng hảo, chạy nhanh ăn đi, thời tiết lãnh, lập
tức liền lạnh……”<o:p></o:p></p><p class="MsoNormal">Lời nói còn không có nói xong, nướng xà đã bị một đạo pháp
thuật đánh ngã xuống đất.<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung thanh âm đồng thời vang lên.<o:p></o:p></p><p class="MsoNormal"><span lang="FR">“Ta nói, ta không
ăn!”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Hắn thanh âm lạnh
băng, cự người lấy ngàn dặm ở ngoài.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Phương Triều Chu
nhìn trên mặt đất nướng xà, một hồi lâu mới duỗi tay nhặt lên, “Đừng nóng giận,
đều là ta sai.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Xú tiểu hài tử,
chờ kia đại ma tu ra tới, ta nhất định đem ngươi chắp tay đưa ra đi, tuyệt đối
không cứu ngươi.<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Ta biết tiểu sư
đệ hiện tại khó chịu, là đương sư huynh vô dụng, không thể bảo vệ tốt ngươi.”<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">Lãng phí lương thực
đáng xấu hổ biết không? Loạn vứt rác đáng xấu hổ biết không?<o:p></o:p></span></p><p class="MsoNormal"><span lang="FR">“Tiểu sư đệ khó
chịu, sinh khí, cứ việc hướng ta phát, ta đều chịu.”<o:p></o:p></span></p><p class="MsoNormal">



















































































































</p><p class="MsoNormal"><span lang="FR">Tính tình như vậy
kém, khó trách là cái thụ.<o:p></o:p></span></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (45, 3, N'Chương 3', CAST(N'2021-09-12T09:07:47.377' AS DateTime), N'<p class="MsoNormal">Phương Triều Chu nói chuyện, phát hiện trước mắt người hô hấp
càng thêm trầm trọng, bởi vì cách đến gần, hắn thấy rõ đối phương tay, kia tay
gắt gao mà bắt lấy chính mình cánh tay, kia một khối quần áo đã dần dần biến
thành màu đỏ.<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung dùng tay đem chính mình sinh sôi làm ra huyết.<o:p></o:p></p><p class="MsoNormal">Như vậy khó nhịn sao?<o:p></o:p></p><p class="MsoNormal">Kia hắn ở chỗ này chẳng phải là rất nguy hiểm?<o:p></o:p></p><p class="MsoNormal">Nghĩ đến đây, Phương Triều Chu mặt không đỏ tâm không nhảy bắt
đầu nói dối, “Tiểu sư đệ, ngươi không nói lời nào? Là không muốn lý ta sao? Vẫn
là cảm thấy sư huynh ở chỗ này quá chướng mắt? Hảo đi, ta biết ta ở chỗ này chỉ
biết chọc tiểu sư đệ sinh khí, ta hiện tại liền rời đi.”<o:p></o:p></p><p class="MsoNormal">36 kế tẩu vi thượng kế.<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung vẫn luôn không nói gì, chỉ là hơi hơi giương mắt
nhìn chằm chằm Phương Triều Chu, nhìn chằm chằm người hoàn toàn biến mất. Chỉ
là không có bao lâu, hắn nghe được bên ngoài truyền đến một tiếng kinh hô.<o:p></o:p></p><p class="MsoNormal">Thanh âm kia tựa hồ là Phương Triều Chu.<o:p></o:p></p><p class="MsoNormal">Một lát, hắn nhìn đến Phương Triều Chu một lần nữa vào được.<o:p></o:p></p><p class="MsoNormal">Cùng đi ra ngoài khi bất đồng, Phương Triều Chu là khập khiễng
tiến vào, liền cùng hắn lúc ấy mới vừa vào núi động giống nhau. Khi đó hắn bị
cái kia rắn độc cắn một ngụm, bị cắn cái kia chân nhanh chóng đã tê rần, cho
nên hắn không thể không trước tìm cái sơn động, tạm thời tránh né, miễn cho yêu
thú đột nhiên xuất hiện.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu tiến vào sau, cũng không xem Tiết Đan Dung,
trước cuốn lên chính mình ống quần, sau đó thở dài. Hắn thật là xui xẻo, vừa mới
chuẩn bị ly tiểu sư đệ rất xa, còn không có đi vài bước lộ, mắt cá chân chỗ liền
truyền đến đau nhức, chờ hắn phản ứng lại đây, chỉ nhìn đến một cái giáng màu đỏ
con rắn nhỏ từ trong bụi cỏ chợt lóe mà qua.<o:p></o:p></p><p class="MsoNormal">Hắn lấy dạ minh châu đèn chiếu chiếu, mắt cá chân phía trên
nơi đó có hai cái rõ ràng huyết động, vừa thấy liền biết là rắn cắn. Trong truyện
gốc miêu tả Tiết Đan Dung từ bị rắn cắn đến độc phát, tựa hồ thời gian không
dài.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu này sương suy nghĩ nên làm cái gì bây giờ,
bên kia trong một góc Tiết Đan Dung thanh âm nghẹn ngào mà đã mở miệng.<o:p></o:p></p><p class="MsoNormal">“Nhị…… Sư huynh.”<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu tìm theo tiếng nhìn lại, “Ân?”<o:p></o:p></p><p class="MsoNormal">“Ngươi cũng bị…… Rắn cắn sao?” Tiết Đan Dung như là trúng độc
quá sâu, nói chuyện hữu khí vô lực, nói mấy chữ liền phải tạm dừng một chút.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu biểu tình có chút xấu hổ, “Đúng vậy.”<o:p></o:p></p><p class="MsoNormal">“Ngươi lại đây.” Tiết Đan Dung nhẹ giọng nói.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu có chút do dự, nhưng nghĩ đến chính mình là
Tiết Đan Dung liếm cẩu, vẫn là ngoan ngoãn đi qua, nào biết một qua đi, Tiết
Đan Dung liền duỗi tay chế trụ hắn cẳng chân.<o:p></o:p></p><p class="MsoNormal">“Nhị sư…… Huynh, ta trúng độc đã thâm, ngươi còn chưa độc……
Phát, dứt khoát đem này xà độc…… Toàn bộ dẫn tới ta một người trên người, như vậy,
cũng có thể có người…… Đem ta thi thể mang về tông môn.”<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu sửng sốt một chút, “Như thế nào dẫn?”<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung nâng lên mắt thấy hắn, nhân trúng xà độc, hắn
gương mặt kia lúc này nhìn qua mang theo một loại yêu dị mỹ, “Hút ra tới.”<o:p></o:p></p><p class="MsoNormal">“Không được!” Phương Triều Chu lập tức phản bác, chờ nhìn đến
Tiết Đan Dung khó hiểu ánh mắt khi, lập tức bổ cứu nói, “Tiểu sư đệ, ta không
cho phép ngươi như vậy vì ta hy sinh.”<o:p></o:p></p><p class="MsoNormal">“Vậy ngươi chuẩn bị…… Làm chúng ta hai người đều độc phát
sao? Này độc……” Tiết Đan Dung cắn nha, như là phi thường khó có thể mở miệng,
“Là dâm độc.”<o:p></o:p></p><p class="MsoNormal">Hắn ý tứ thực rõ ràng, một người trúng độc, một người khác
còn có thể khống chế, hai người trúng độc, kia trường hợp khả năng khó có thể
thu thập.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu nghe xong lời này, lập tức tưởng nói có thể
đem độc tố bức tiến thức hải, nhưng vấn đề là, hắn sẽ không……<o:p></o:p></p><p class="MsoNormal">Này hơn nửa năm, hắn lục tục có nguyên chủ ký ức, kế thừa tu
vi, nguyên chủ nửa năm trước học những cái đó pháp thuật, hắn đều sẽ, nhưng vấn
đề là đem độc tố bức tiến thức hải, giống như vốn nên là nguyên chủ này nửa năm
học pháp thuật, nhưng Phương Triều Chu không học, hắn vội vàng đương một con cá
mặn, làm sao có thời giờ đi học tập.<o:p></o:p></p><p class="MsoNormal">Kể từ đó, Phương Triều Chu cũng rối rắm.<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung như là đã không có kiên nhẫn, thanh âm rõ ràng
trở nên càng vì lãnh đạm, “Nhị sư huynh!”<o:p></o:p></p><p class="MsoNormal">“Hảo hảo hảo, ta đồng ý.” Phương Triều Chu ngồi xuống, nhìn
quên mình vì người Tiết Đan Dung, chân thành mà nói một câu, “Tiểu sư đệ, ngươi
thật tốt.”<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung không nói chuyện, mà là đem Phương Triều Chu
chân hướng hắn bên kia kéo kéo, theo sau hắn trực tiếp cúi đầu.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu cảm giác được có mềm ấm đồ vật đụng phải hắn
làn da, tuy rằng biết đối phương là ở giúp hắn giải độc, nhưng kia nháy mắt hắn
vẫn là nổi lên một thân nổi da gà, cho nên Tiết Đan Dung giúp hắn hấp độc toàn
bộ hành trình, hắn vẫn luôn cương thân thể, chờ chân bị buông ra, hắn “Vèo” một
chút thu hồi chân, đem ống quần thả xuống dưới.<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung bởi vì mới vừa giúp Phương Triều Chu hút huyết,
hiện tại cánh môi còn dính huyết, hắn thấy được Phương Triều Chu động tác, mày
hơi hơi nhíu một chút.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu buông ống quần, đột nhiên cảm thấy chính
mình giống cái tra nam, cho nên nhìn đến Tiết Đan Dung cánh môi còn có huyết,
đem chính mình trong tay áo khăn lụa đưa qua, “Lau lau đi.”<o:p></o:p></p><p class="MsoNormal">Ngô, giống như càng giống cái tra nam.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu sửa lại một chút, “Lau lau miệng, mặt trên
có huyết.”<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung không tiếp Phương Triều Chu khăn lụa, mà là lấy
ra chính mình khăn lụa, dùng sức mà xoa xoa cánh môi, theo sau đem bẩn khăn tay
ném ở trên mặt đất, sau đó một chữ cũng không nói, một lần nữa nhắm hai mắt lại.<o:p></o:p></p><p class="MsoNormal">Bởi vì Tiết Đan Dung giúp chính mình hút xà độc, Phương Triều
Chu ngượng ngùng lại đi, cho nên cùng Tiết Đan Dung nói: “Sư đệ, ngươi muốn hay
không thử đem độc tố bức tiến thức hải, tuy rằng sẽ tổn hại tu vi, nhưng ít nhất
tánh mạng vô ưu.”<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung đôi mắt đều không có mở to một chút, “Sẽ
không.”<o:p></o:p></p><p class="MsoNormal">Hảo đi.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu tìm khối còn tính sạch sẽ địa phương, ngồi
xếp bằng, nhìn chằm chằm trong một góc Tiết Đan Dung.<o:p></o:p></p><p class="MsoNormal">Hiện tại nên làm cái gì bây giờ?<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung hẳn là sẽ không chết đi?<o:p></o:p></p><p class="MsoNormal">Hắn chính là vai chính, hắn đã chết, thế giới này còn tồn tại
sao?<o:p></o:p></p><p class="MsoNormal">Vừa định đến nơi đây, Phương Triều Chu đột nhiên nghe được sột
sột soạt soạt quần áo cọ xát thanh, hắn vừa nhấc đầu, liền nhìn đến mới vừa rồi
còn súc ở góc tường Tiết Đan Dung đi tới hắn trước mặt.<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung khuôn mặt tuyết trắng, tóc dài rũ tán, một bộ
tuyết y, tại đây tối tăm trong sơn động, nhìn qua tựa như cái diễm quỷ. Lúc
này, cái này diễm quỷ đôi mắt đang thẳng lăng lăng mà nhìn chằm chằm Phương Triều
Chu xem.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu đối thượng Tiết Đan Dung ánh mắt, trong
lòng mạc danh có một loại điềm xấu dự cảm.<o:p></o:p></p><p class="MsoNormal">“Tiểu sư đệ?”<o:p></o:p></p><p class="MsoNormal">Vừa dứt lời, Phương Triều Chu đã bị phác gục.<o:p></o:p></p><p class="MsoNormal">Bị người phác gục, Phương Triều Chu lập tức thi pháp tưởng định
trụ Tiết Đan Dung, nhưng hắn nhất định, Tiết Đan Dung liền cởi bỏ, cơ hồ là gặp
chiêu nào thì phá giải chiêu đó. Phương Triều Chu duỗi tay bắt lấy Tiết Đan
Dung đặt ở hắn đai lưng thượng tay, lời nói thành khẩn, “Tiểu sư đệ, ngươi bình
tĩnh một chút, ngươi chính là cao lãnh chi hoa, không nên thuộc về bất luận kẻ
nào, ta không thể làm bẩn ngươi.”<o:p></o:p></p><p class="MsoNormal">Tiết Đan Dung phảng phất đã bị xà độc khống chế được đại
não, mắt điếc tai ngơ, dùng sức tránh ra Phương Triều Chu tay, lại bắt được
Phương Triều Chu đai lưng.<o:p></o:p></p><p class="MsoNormal">Phương Triều Chu gắt gao bắt lấy chính mình đai lưng, không
chịu buông tay, còn ý đồ mê đi Tiết Đan Dung, nhưng này Tiết Đan Dung độc tố
công tâm, lực công kích thế nhưng so ngày thường tấn mãnh rất nhiều, hắn phát
hiện Phương Triều Chu ý đồ, đột nhiên kéo xuống chính mình đai lưng, đem Phương
Triều Chu đôi tay một trói, đè ở trên đỉnh đầu.<o:p></o:p></p><p class="MsoNormal">Này thụ quá hung!<o:p></o:p></p><p class="MsoNormal">









































































































</p><p class="MsoNormal">Phương Triều Chu trong lòng một mảnh hỗn độn, mắt thấy chính
mình đai lưng phải bị kéo xuống tới, hắn hô to một tiếng, “Tiểu sư đệ, kỳ thật
ta không cử!”<o:p></o:p></p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (53, 1, N'1, Địa Hà Hoa', CAST(N'2021-09-17T16:51:20.130' AS DateTime), N'<p>“Chu Thiếu tướng quân đã trở lại, Chu Thiếu tướng quân đã trở lại!”</p><p>“Ngươi biết thiếu tướng quân lần này về kinh vì sao?……”</p><p>“Vì cùng thái phó đích nữ kết thân việc nha!……”</p><p>“…… Hư! Tu đến nói bậy, việc này chớ nên lại đề cập, tiểu tâm ngươi đầu lưỡi căn!”</p><p>Toái toái lời nói nhỏ nhẹ như từng điều vô hình con sông, từ từ chảy xuôi, uốn lượn trằn trọc, vòng qua chiếm địa ngàn mẫu đình viện, ở nha hoàn, hộ viện, bọn thị vệ bên cạnh người bên tai xuyên qua mà qua.</p><p>Nhất phẩm tướng quân phủ chiếm địa rộng lớn, phòng ốc mấy trăm gian, chỉ là người hầu liền phải hơn trăm người, mỗi ngày tạp ngôn toái ngữ liền như vừa ra vô chủ tuồng, nhẫm đến ồn ào.</p><p>Cuối cùng, này không tiếng động ngôn hải đan chéo hội tụ ở tướng quân phủ hậu viện.</p><p>Rộng lớn hậu viện, có một cây thô tráng lão thụ, theo tổ tiên nhóm nói, này viên lão thụ nhưng nhiều năm đầu, ít nói cũng muốn hơn một ngàn năm, chỉ là kia thụ eo, bốn cái thành niên tráng hán tay cầm tay đều ôm hết không được.</p><p>Này thụ hàng năm nở hoa, một năm bốn mùa, vĩnh viễn mãnh liệt.</p><p>Liền tính khô héo, cũng là cực kỳ ngắn ngủi, một cái đêm khuya thời gian điêu tàn, sáng sớm hôm sau, liền lại lửa đỏ nở rộ.</p><p>Trên cây sở kết đóa hoa cực đại, giống như trong ao hoa sen, một mảnh cánh hoa đều có đứa bé bàn tay chi khoan. Nhan sắc so hoa sen muốn nùng diễm, đỏ như máu cánh hoa, tựa như Thạch Lựu ngoại da.</p><p>Bởi vậy, mọi người đều xưng này hoa vì Địa Hà Hoa.</p><p>Vào đông đứng ở tuyết trắng xóa trung nhìn lại, một mảnh ngân trang tố khỏa, chỉ có kia chi đầu hồng đến nhìn thấy ghê người, chợt mắt vừa thấy, trong lòng không cấm nhảy dựng, cánh hoa lập loè quỷ dị ánh sáng, thế nhưng đỏ đến phát tím.</p><p>Ngắm hoa người trong lòng sợ hãi, vội vàng đem tầm mắt dời đi, không dám lại nhiều khuy liếc mắt một cái.</p><p>Tựa như gỗ đào nhưng trừ tà, nghe đồn Địa Hà Hoa thụ cũng có thể đuổi quỷ tránh sát.</p><p>Chẳng qua, gỗ đào có những cái đó sắc thái mỹ lệ thần thoại truyền thuyết, Địa Hà Hoa lại chỉ có làm nhân tâm kinh run sợ yêu quái chuyện ma quỷ.</p><p>Nghe nói, Địa Hà Hoa chỉ có ở tử thi phồn đa nơi mới có thể trừu chi nảy mầm.</p><p>Thế nhân toàn vân, chỉ có võ tướng trong nhà mới dám dưỡng địa hoa sen.</p><p>Bọn họ trên người mang sát, trên tay đều bị nắm chặt mấy trăm điều tánh mạng, dưỡng địa hoa sen chính là vì tránh những cái đó tiến đến lấy mạng cô hồn dã quỷ.</p><p>“Pi pi pi.”</p><p>Chim chóc mở ra hai cánh, dừng ở Địa Hà Hoa chi đầu.</p><p>Nó đậu đen đôi mắt chớp chớp, đầu nhỏ một đốn một đốn tả hữu đong đưa. Xốc lên cánh tay trái cánh, đem đầu củng đến cánh, muốn sửa sang lại một chút nội cánh lông tơ.</p><p>Bỗng nhiên, chim chóc cảnh giác đem đầu từ lông xù xù nội cánh trung nâng lên, hai cánh mở ra, tựa hồ muốn từ chi đầu cất cánh.</p><p>Nhưng chim chóc còn không có tới kịp minh đề, nó hạ xuống chi đầu màu vàng nộn trảo, giây lát gian liền biến thành một bãi máu loãng.</p><p>Máu loãng theo nó vàng nhạt sắc nộn trảo hướng về phía trước leo lên, hai cái hô hấp gian, một con linh động chim nhỏ, đã bị hòa tan thành một bãi máu loãng, hít vào thân cây bên trong.</p><p>Thanh phong thổi tới, thân cây như nhau thường lui tới, phảng phất vừa rồi hết thảy, đều là một hồi ngày xuân ảo giác.</p><p>Địa Hà Hoa nhánh cây theo thanh phong lắc lư, như là ở hưởng thụ ánh mặt trời cùng gió nhẹ. Cành lá tươi tốt thân cây bên trong, vươn một con trong suốt cánh tay, kia cánh tay nhan sắc dần dần gia tăng, tựa như trong suốt chuồn chuồn mỏng cánh, dần dần đầy đặn huyết nhục.</p><p>Cánh tay thong thả về phía trước duỗi, từ thô tráng thân cây bên trong, bò ra tới một cái tóc dài xõa trên vai nữ tử.</p><p>Nàng lười nhác nằm sấp với trên thân cây, mới vừa rồi còn hút chim chóc quỷ dị thân cây, lúc này tựa như bình thường nhánh cây giống nhau, vững vàng chở nàng.</p><p>Đem trước mặt tóc dài khảy đến sau đầu, nữ tử lộ ra khuôn mặt.</p><p>Trắng tinh như ngọc khuôn mặt, mặc ngọc con ngươi.</p><p>Môi hồng răng trắng, sóng mắt lưu chuyển.</p><p>Huyết Tiên một giấc này ngủ đến cũng không lâu, nếu không phải gần đây tướng quân phủ bọn hạ nhân lời nói có chút nhiều, nàng khả năng còn muốn ngủ tiếp trước mấy năm.</p><p>Trong lúc ngủ mơ, nàng phảng phất nghe được có người nói: “Chu Thiếu tướng quân đã trở lại!…… Cùng thái phó đích nữ kết thân việc a……”</p><p>Chu Thiếu tướng quân?</p><p>Thon dài oánh bạch ngón tay ở không trung điểm điểm, một tiết nhánh cây từ một khác sườn vòng lại đây, nhánh cây đằng trước, treo một cái tiểu mộc cổ.</p><p>Mộc cổ sườn biên hệ hai điều hồng anh tuệ, anh tuệ nhan sắc có chút ám, mộc cổ thượng đồ đến màu đỏ thuốc màu loang lổ bóc ra, thứ này hiển nhiên có chút năm đầu.</p><p>Huyết Tiên vươn tay, bắt được mộc cổ bắt tay, nhẹ nhàng quơ quơ.</p><p>Ngay sau đó, mộc cổ hai bên treo mộc châu tả hữu lắc lư, phát ra “Thịch thịch thịch” dễ nghe tiếng trống, anh tuệ cũng theo mộc châu lắc lư tả hữu phiên động, tựa như hai đóa ở không trung quay cuồng bọt sóng.</p><p>Người thiếu niên trước khi đi biên cương trước khuôn mặt hiện lên ở trước mắt, Huyết Tiên ngón tay hơi đốn, thầm nghĩ, hắn muốn kết thân?</p><p>Hắn sao lại có thể kết thân?</p><p>Ngủ này năm sáu năm, Huyết Tiên chỉ có một lát thanh tỉnh.</p><p>Gõ gõ thân cây, mấy năm nay sự, nàng đến tìm cái vật còn sống tới hỏi một chút.</p><p>Đánh tam hạ sau, dưới tàng cây trên mặt đất cố lấy một cái tiểu thổ bao. Đầu tiên là lộ ra một mảnh lông xù xù màu nâu phần lưng, tiếp theo vươn tới một cái tinh tế cái đuôi, đỉnh mang theo điểm màu đen lông tóc.</p><p>Cuối cùng, phần đầu lộ ra mặt đất.</p><p>Tiểu xảo lỗ tai, tròn xoe tròng mắt, không ngừng ong động miệng nhỏ, lại là một con chuột đất.</p><p>Nơi đây chuột tên là Độn Địa Hổ, là cái thành tinh 400 năm hơn chuột đất yêu.</p><p>Hắn tròn xoe mắt to tử linh hoạt chuyển động hai chu, chờ nhìn đến trên thân cây nằm bò Huyết Tiên khi, thật dài chòm râu không tự giác trừu động số hạ.</p><p>Tủng kéo trong người trước hai cái móng vuốt có cái thói quen, khẩn trương liền sẽ run rẩy, không tự giác móng trái đánh hữu trảo, hữu trảo trừu móng trái.</p><p>“Huyết, Huyết Tiên đại nhân, ngài, ngài tỉnh.”</p><p>Thấy Huyết Tiên thức tỉnh, Độn Địa Hổ thiếu chút nữa dọa phá lá gan.</p><p>Này ngàn năm lão tinh quái, như thế nào nhanh như vậy liền tỉnh?!</p><p>Thổ chuột yêu Độn Địa Hổ tại đây phạm vi mấy chục dặm, cũng coi như là một cái vang dội yêu tinh. Trăm năm trong vòng tiểu yêu, đều đến tôn xưng hắn một tiếng gia gia.</p><p>Chính cái gọi là nhân ngoại hữu nhân, yêu ngoại có yêu, Độn Địa Hổ nhà hắn phong thuỷ không tốt, gia bên ngoài liền có một con ngàn năm thụ tinh.</p><p>Nếu nói ngàn năm còn có điểm không chuẩn xác, hắn từng nghe có giao tình thổ địa công nói, năm đó chúng thần tiên hạ giới ngao du, bãi tha ma trung, chỉ thấy này thụ trụi lủi ở âm phong trung lay động.</p><p>Cù kết rễ cây thật sâu cắm ở sâm sâm bạch cốt cùng huyết nhục bên trong, không biện tà ác, cũng không nhân quả.</p><p>“Này thụ có cơ duyên.”</p><p>Phật đà như thế nói.</p><p>Phật âm vừa ra, màu đỏ tươi nụ hoa giống như hút no rồi huyết nhục giống nhau, trong phút chốc nở khắp toàn bộ chi đầu, này cây liền có tinh hồn.</p><p>Từ nay về sau trải qua hàng ngàn hàng vạn năm vật đổi sao dời, này tinh hồn mới khai linh trí, biến thành một cái phấn trang ngọc xây nữ oa oa, người thường mắt thường cũng không có thể thấy được.</p><p>5 năm trước, Huyết Tiên tinh hồn biến hóa thành thân thể một tấc tấc kéo trường, một cổ buồn ngủ đánh úp lại, nàng hai tròng mắt hơi hạp, thân thể như bị bùn lầy cắn nuốt tượng đá, từ từ hoàn toàn đi vào bản thể thân cây bên trong, nặng nề đã ngủ.</p><p>Lại qua nhiều năm như vậy thời gian, nữ oa oa mới biến ảo thành đại nhân bộ dáng.</p><p>Thổ chuột yêu tưởng, năm đó hắn biến thành hình người, ước chừng ngủ gần một trăm năm, này thụ tinh lại lợi hại, cũng đến ngủ cái mười năm hơn. Tưởng tượng đến nhà mình có thể quá mười năm hơn sống yên ổn nhật tử, Độn Địa Hổ vui mừng ra mặt.</p><p>Nhưng lúc này mới ngắn ngủn năm sáu năm quang cảnh, nàng như thế nào liền tỉnh đâu!</p><p>Này phật đà cùng thụ tinh có hay không cơ duyên hắn không biết, bọn họ toàn gia thật đúng là cùng nàng có thiên đại “Duyên phận”.</p><p>Chuột loại vốn là giỏi về sinh sản, huống hồ hắn còn có bảy cái chuột lão bà, lấy một năm bảy oa, một oa ba con tần suất, một trăm năm quang cảnh, ít nói hắn đến có 2100 chỉ nhi tử, còn không tính nhi tử tái sinh tôn tử!</p><p>Hắn nguyên bản là nhiều con nhiều cháu nhiều phúc thọ mệnh a!</p><p>Kết quả đâu, này thụ tinh cư nhiên không ăn chay! Còn một chút đều không thể sứt môi!</p><p>Mùa đông không có chim chóc lạc chi đầu, nàng liền đem rễ cây cắm hắn trong động đi ăn chuột nhãi con.</p><p>Năm nào sơ cần cù chăm chỉ ở mẫu chuột trên người huy mồ hôi như mưa, sinh một oa lại một oa, cuối năm phì tráng, mắt thấy hắn phải làm gia gia.</p><p>Nàng tất cả đều cấp hóa thành máu loãng nuốt! Liền sợi lông đều không dư thừa!</p><p>Độn Địa Hổ không phải không nghĩ tới muốn đi liều mạng, còn không tới gần cành khô, hắn liền túng.</p><p>Đen như mực sắc thân cây, tản ra thật lâu không tiêu tan mùi máu tươi, đem hắn vốn là không lớn lão thử gan, giảo thành năm bè bảy mảng.</p><p>Đánh không lại, trốn chạy đi!</p><p>Độn Địa Hổ mang lên bảy cái lão bà cùng còn sót lại năm cái nhi tử, suốt đêm liền chạy. Dưới mặt đất chui mười mấy mà, một oa thổ chuột nơm nớp lo sợ, lông xù xù củng ở bên nhau, ngủ cái đã lâu hảo giác.</p><p>Ngày hôm sau buổi sáng tỉnh lại, Độn Địa Hổ tuyệt vọng.</p><p>Hắn lại về tới Địa Hà Hoa phía dưới thổ chuột trong động.</p><p>Lúc sau hắn lại chạy rất nhiều lần, mỗi một lần tỉnh lại, đều sẽ lại lần nữa trở lại cái này hầm ngầm trung.</p><p>Sau lại hắn minh bạch, này cây tinh hơn một ngàn năm thật không phải sống uổng phí, này phạm vi mười mấy dặm thổ địa chỗ sâu trong, đều là nàng cù kết như bàn long rễ cây.</p><p>Cho dù hắn có thể chạy trốn xa hơn một ít, nàng kia rễ cây cũng có thể đem hắn một nhà còn nguyên dọn về tới.</p><p>Độn địa long không chạy, hắn sợ ngày nào đó chọc thụ tinh phiền chán, trực tiếp đem hắn một nhà đều cấp nuốt. Nàng không đem con của hắn đều ăn sạch, còn xem như có chút lương tri.</p><p>Huyết Tiên cúi đầu đánh giá hồi lâu không thấy vật nhỏ, nàng chịu đựng này một oa bọn chuột nhắt ở nàng rễ cây hạ đào thành động, toàn nhân bọn họ một nhà sinh sản tốc độ mau, nàng mỗi lần đói bụng, liền đem rễ cây duỗi đi xuống đánh bữa ăn ngon.</p><p>“Mới tỉnh không lâu.”</p><p>Độn Địa Hổ tả hữu trảo khống chế không được qua lại chụp đánh, run run rẩy rẩy nói: “Cung, chúc mừng Huyết Tiên đại nhân, hóa thành nhân thân!”</p><p>Bởi vì nàng tỉnh lại quá sớm, Huyết Tiên này phúc thể xác còn không quá ổn định, muốn ở bản thể Địa Hà Hoa thụ bên nghỉ ngơi bảy bảy bốn mươi chín thiên, tới cố tinh hồn.</p><p>Nàng trắng tinh tuyết cánh tay chống cằm, hắc bạch phân minh đôi mắt hướng tướng quân bên trong phủ thổi đi, mở miệng hỏi: “Vân Nghiên đã trở lại?”</p><p>Thổ chuột phản ứng một lát, mới nhớ tới đây là Chu Thiếu tướng quân tên huý, Chu Vân Nghiên, tự Tử Trạm.</p><p>Độn Địa Hổ đáp: “Thiếu tướng quân hắn mấy ngày trước đây dường như đã trở lại.”</p><p>Ấn nhân thế gian cách nói, hắn Độn Địa Hổ hiện tại trụ này phương địa giới là thuộc sở hữu tướng quân phủ.</p><p>Chu gia ra hai cái tướng quân, vì phân chia, mới ở Chu Vân Nghiên xưng hô trước bỏ thêm cái “Thiếu” tự.</p><p>Độn Địa Hổ hàng năm thăm Chu gia nhà bếp, hắn bảy cái lão bà yêu nhất Chu gia các nữ nhân dùng điểm tâm, cũng coi như là bị nhà hắn không ít ân huệ.</p><p>Ngàn năm thụ tinh vi gật đầu, ngữ khí bình đạm nói: “Hắn muốn kết thân?”</p><p>Độn Địa Hổ biết Chu Thiếu tướng quân tuổi nhỏ khi, cùng nữ oa oa bộ dáng thụ tinh gặp qua vài lần mặt, cũng coi như là có chút sâu xa.</p><p>Hồi tưởng một chút tướng quân trong phủ bọn hạ nhân đối thoại, nói: “Giống như xác có việc này.”</p><p>“Hắn sao lại có thể kết thân đâu.”</p><p>Nghe thế, Độn Địa Hổ mới nghe ra không thích hợp, ngắn ngủn cổ nâng lên, liền thấy Huyết Tiên mỏng lạnh ánh mắt nhìn về phía trong viện, nhàn nhạt nói: “Hắn kết thân nữ tử là thái phó gia đích nữ?”</p><p>“Hảo, hình như là.”</p><p>“Ngươi cũng biết thái phó gia ở phương nào vị?”</p><p>Độn Địa Hổ càng nghe càng kinh hãi, một loại dự cảm bất hảo ở trong lòng dâng lên: “Biết, biết.”</p><p>Kinh thành miếng đất này, hắn Độn Địa Hổ nhắm mắt lại đều có thể biết rõ phương hướng.</p><p>Huyết Tiên khẽ mở môi, không chút để ý nói: “Ngươi đi đem hắn dục kết thân nữ tử mang đến.”</p><p>Nàng mảnh dài ngón tay chậm rãi vuốt ve phai màu anh tuệ, một cây, hai căn.</p><p>“Không, không biết đại nhân, muốn đem nàng kia……?”</p><p>Huyết Tiên hai mắt đạm mạc, giống như vào đông thanh lãnh băng tuyền. Kia ngàn năm thụ tinh đôi mắt, trước nay đều không có thương hại.</p><p>Thô to thân cây chậm chạp động, Huyết Tiên theo thân cây dịch chuyển, từ nằm bò chuyển vì dựa ở thân cây thượng tư thế.</p><p>Nàng một thân áo bào trắng chợt hóa thành thủy hồng sắc, cùng phía sau cực nóng Địa Hà Hoa giao hòa chiếu sáng lẫn nhau, hồng nùng liệt.</p><p>Độn Địa Hổ trong lòng dâng lên một cái suy đoán, làm hắn run đến lợi hại hơn.</p><p>“Tự nhiên là nuốt nàng.”</p><p>Huyết Tiên nói được không chút để ý, phảng phất người sống ở trong mắt nàng, cùng điểu thú vô dị.</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (53, 2, N'2, kết thân gia', CAST(N'2021-09-17T16:53:12.433' AS DateTime), N'<p>Thổ chuột Độn Địa Hổ khẩn trương liền sẽ không tự giác tả hữu trảo thay phiên chụp đánh, móng trái chụp hữu trảo, hữu trảo đánh móng trái, đánh đến “Bạch bạch” rung động.</p><p>“Đại nhân, này, này nhưng không được, gì đến nỗi này a……”</p><p>Bọn họ yêu loại lại không hiểu nhân gian sự, này đó mệnh cách cao quý các đại nhân vẫn là biết đến, thái phó chi nữ, nói nuốt liền nuốt?</p><p>Tuy rằng này thụ tinh cùng chúng nó này đó tinh quái bất đồng, gần nhất nàng chân thân nãi đâm chồi với bạch cốt huyết nhục bên trong, thứ hai nàng là từ phật đà tự mình điểm hóa, ngay cả thổ địa công đều đến kính nàng, càng đừng nói chúng nó này đó nho nhỏ yêu loại.</p><p>Chính là, này thụ tinh ăn cơm không khỏi quá tạp chút, tiểu nhân như bay cầm tẩu thú, đại như mãnh hổ cự lang, ngay cả nhân loại, nàng đều có thể sống nuốt, quá huyết tinh tàn nhẫn.</p><p>“Hắn Chu Vân Nghiên đi biên cương trước, đem toàn bộ tướng quân phủ phó thác với ta, hiện giờ hắn trở về, sao có thể cưới mặt khác nữ tử?”</p><p>Huyết Tiên mi sắc nhàn nhạt, không biện hỉ nộ nói.</p><p>“Chu Thiếu tướng quân trước khi đi đem tướng quân phủ phó thác cấp đại nhân?”</p><p>Sao có thể đâu?</p><p>Trẻ con khi còn bé đôi mắt lượng, nhiều có thể thấy được tinh quái quỷ thần.</p><p>Đãi không bao lâu trí khai, liền không thể tái kiến này đó yêu ma quỷ quái, liền khi còn bé ký ức cũng sẽ cùng nhau tiêu tán.</p><p>Chu Thiếu tướng quân lúc đi đã có mười bốn tuổi, như thế nào cũng không có khả năng nhìn đến đứa bé bộ dáng thụ tinh a! Cùng tinh quái chuyện cũ năm xưa, hẳn là đều quên đến không còn một mảnh mới là.</p><p>Huyết Tiên trầm ngâm nửa khắc nói: “Ngày đó, hắn tay phúc với thân cây phía trên, chậm nói: ‘ Tử Trạm muốn đi biên cương, còn thỉnh thụ tiên đại nhân nhiều hơn phù hộ Chu gia. ’ này không phải phó thác lại là gì?”</p><p>Độn Địa Hổ: “……”</p><p>Không phải, ngươi từ chỗ nào nghe ra tới phó thác?</p><p>Chu Thiếu tướng quân chính là đi phía trước xem một cái hậu viện lão thụ, rốt cuộc hắn không bao lâu liền thường ở nhánh cây gian leo lên, này cây hàng năm khai hỏa hoa hồng đóa Địa Hà Hoa là hắn ít có khi còn nhỏ bạn chơi cùng.</p><p>Độn Địa Hổ phía sau cái đuôi run run.</p><p>Này thụ tinh nhân chưa biến ảo thành nhân hình, trừ bỏ rễ cây có thể từ dưới nền đất hướng ra phía ngoài kéo dài, tinh hồn cùng bản thể nghìn năm qua liền đều ở chỗ này. Tướng quân phủ tu sửa hảo sau, nàng vẫn luôn chưa ra cái này sân, không cao tường viện, lăng là vây quanh một con ngàn năm thụ tinh.</p><p>Nữ oa oa bộ dáng Huyết Tiên, mỗi ngày liền ở tướng quân phủ nóc nhà đi lên hồi du nhảy, quan sát đến này đó “Người sống”. Tuy nói ở nàng trong mắt, to như vậy tướng quân phủ cùng một oa lão thử nhãi con không có gì khác nhau.</p><p>Nhưng người sống vẫn là có ý tứ.</p><p>Các nữ quyến sẽ xuyên đủ mọi màu sắc hoa phục, hành hành ngón tay ngọc điểm ở bên môi thượng cười duyên, còn sẽ dùng đầu gỗ làm tiểu vật, sơ kia như sa tanh tóc dài.</p><p>Đãi các nữ quyến đi xa, Huyết Tiên liền chui vào phòng, đem kia đầu gỗ làm tiểu vật cầm đi.</p><p>Nàng đầy đầu tóc đen rơi rụng đầu vai, tóc nãi cây mây biến thành, tản ra mềm mại cứng cỏi ánh sáng.</p><p>Đi theo các nữ quyến bước chân, Huyết Tiên một bên chải đầu, vừa đi vào đại viện tử.</p><p>Viện này bố trí thật là kỳ quái, cao cao hồng trần nhà, phía dưới đáp một đài.</p><p>Các nữ quyến ngồi ở đài đối diện, trung gian chủ vị ngồi cái đầy đầu tóc bạc lão thái thái, các nữ quyến xảo tiếu yên hề nói cái gì, thoạt nhìn thập phần vui mừng nhảy nhót.</p><p>Huyết Tiên đi qua đi, trực tiếp nhảy lên kia lão thái thái đầu gối đầu, ngồi xuống.</p><p>Người sống nhóm đều nhìn không tới thân ảnh của nàng, liền tính ngồi ở lão thái quân đầu gối đầu, lão thái quân cũng cái gì đều cảm thụ không đến.</p><p>Nàng học mới vừa rồi nhìn đến nữ quyến, chậm rì rì chải đầu, nhân nàng tay cầm cây lược gỗ, người khác liền nhìn không tới kia trên dưới động tác cây lược gỗ tử.</p><p>Các nữ quyến cười đùa thanh dần dần ngăn nghỉ, toàn nâng lên cổ, nhìn phía phía trước hồng đài.</p><p>Cao cao đài trước rũ xuống hai thất vải đỏ, vải đỏ đang ở thong thả hướng hai sườn kéo ra, một cái trên mặt dán giả râu nam nhân, theo kéo ra vải đỏ, dần dần triển lộ ra mặt dung.</p><p>Hắn tay phải cổ tay khẽ nâng, chân trái banh thẳng về phía trước duỗi, đầu hướng dưới đài đột nhiên vung, đề giọng xướng nói: “Nha ~~~~”</p><p>Huyết Tiên lúc đó tâm trí giống như hài đồng, tò mò nhảy lên đài, ngồi ở Võ Tịnh đầu vai, duỗi tay đi sờ hắn giả râu.</p><p>Võ Tịnh cảm thấy cằm đau xót, hắn râu liền rớt.</p><p>Dưới đài các nữ quyến: “……”</p><p>Đây là trong phim nào vừa ra?</p><p>Trước không nói sau lại này ra diễn là như thế nào binh hoang mã loạn, ngay cả đoan trang thanh đán, đỉnh đầu vật trang sức trên tóc đều rơi rụng đầy đất.</p><p>Trên đài con hát nhóm loạn thành một đoàn, Huyết Tiên lại cảm thấy thật là thú vị.</p><p>Đánh kia về sau, Huyết Tiên nhàn tới không có việc gì liền thường tới xem diễn.</p><p>Các nữ quyến nghe diễn, phần lớn thích nghe những cái đó tài tử giai nhân chuyện xưa, bởi vậy Huyết Tiên cũng đi theo nghe xong một đầu uyên ương thoại bản cùng ái hận tình trường.</p><p>Nhưng cố tình nàng không biết tình yêu.</p><p>Trong phim nam nữ thành thân lại là không tránh được tất yếu kiều đoạn, thả mang theo hí kịch độc hữu khoa trương thủ pháp. Nhiều ít bỏ mạng uyên ương, tư bôn trên đường đã tư định chung thân.</p><p>Huyết Tiên xem đến ngây thơ mờ mịt, lại hứng thú dạt dào.</p><p>Nàng gặp qua sinh nam có thể đếm được trên đầu ngón tay, nói chuyện qua, chỉ có niên thiếu khi, lược có thể thấy được tinh quái Chu Thiếu tướng quân.</p><p>Không thể không nói, này Chu Thiếu tướng quân tuy là võ tướng, nhân từ nhỏ liền ở Quốc Tử Giám thư đồng, trên người thiếu kia cổ võ tướng mãng kính nhi, niên thiếu khi liền đã tướng mạo đường đường.</p><p>Không biết mặt khác sinh nam Huyết Tiên, tự nhiên liền đem này rất có sâu xa Chu Thiếu tướng quân trở thành nàng sở hữu vật.</p><p>Năm đó Chu tướng quân ra ngoài chinh chiến, trực tiếp liền đem mười tuổi Chu Vân Nghiên cũng cùng nhau mang đi.</p><p>Ấn Chu tướng quân nguyên nói, một cái đỉnh thiên lập địa nhi lang, cả ngày ngâm mình ở trong nhà, sớm hay muộn phải bị nhóm người này nữ nhân dưỡng giáo thành cái gối thêu hoa.</p><p>Chu tướng quân liền muốn cho nhà mình nhi tử kế thừa hắn y bát, làm một cái có tranh tranh thiết cốt võ tướng, mạc đi trộn lẫn triều đình những cái đó lục đục với nhau.</p><p>Chu Vân Nghiên không phụ sở vọng, tuy còn không có thành hắn ba như vậy mãnh tướng, đảo cũng có thể bị xưng một tiếng thiếu niên tướng quân.</p><p>Còn tuổi nhỏ, liền có phong độ đại tướng.</p><p>Chu Thiếu tướng quân vừa đi đó là bốn năm, mười bốn tuổi mới về kinh một chuyến, không ra một tháng liền lại đi rồi, lần này là đi biên quan.</p><p>Nghe nói nhà mình tôn nhi muốn đi kia nơi khổ hàn, lão thái quân rất là đau lòng, ở tướng quân phủ cửa cho hắn tiễn đưa hết sức, vẫn luôn vọng đến người của hắn ảnh biến mất ở nơi xa, mới hai mắt đẫm lệ vẫy vẫy tay, ở mọi người nâng hạ trở về đi.</p><p>Võ tướng phần lớn đều là muốn chịu khổ, huống hồ mấy năm nay biên quan luôn là không yên ổn.</p><p>Này vừa đi, liền lại là 5 năm, Chu Thiếu tướng quân đã mười chín, ở hắn này đồng lứa trung, không thành thân liền thừa hắn một cái.</p><p>Lão thái quân không phải không nghĩ tới cấp cháu ngoại trong phòng thêm hai người, thị tỳ nha đầu cũng hảo, còn bởi vậy sự cố ý cấp Chu Vân Nghiên viết quá thư từ.</p><p>Chu Thiếu tướng quân hồi âm là, biên quan hoàng thổ đầy trời, không thích hợp nữ tử sinh tồn, hắn một năm bên trong có hơn phân nửa đều bên ngoài xuất binh, quân doanh càng là cấm nữ quyến, vẫn là không cần cho hắn an bài trong phòng người.</p><p>Mắt thấy tôn tử từng ngày lớn lên, hắn đường đệ trong phòng đều sinh con, lão thái quân ngồi không yên.</p><p>Vừa vặn, Lý thái phó bên này có kết thân ý đồ.</p><p>Chu tướng quân cùng lão thái quân cân nhắc một phen, bọn họ Chu gia ở trên triều đình trước sau bảo trì trung lập, vừa không kéo bè kéo cánh, cũng không đi cho ai đương chỗ dựa.</p><p>Này thái phó gia cũng không sai biệt lắm, liền tính hai nhà kết nhân, cũng sẽ không chọc Thánh Thượng ngờ vực cùng không mừng.</p><p>Lúc này mới có Chu Thiếu tướng quân về kinh một chuyện.</p><p>Lão thái quân ý tứ là, không cần nhiều, Vân Nghiên về kinh ba ngày liền cũng đủ.</p><p>Đối bát tự, hạ sính lễ, trước đem này hôn sự đính xuống, sang năm đầu xuân lại làm hỉ sự.</p><p>Này sương, Độn Địa Hổ còn ở không ngừng vỗ móng vuốt.</p><p>“Này, này……”</p><p>Muốn hắn tới nói, này Chu Thiếu tướng quân thật là oan uổng. Hắn căn bản cùng này chỉ thụ tinh không có gì, chỉ có thể nói vận mệnh trêu người…… Hắn mệnh không tốt.</p><p>Phàm là này thụ tinh lại vãn cái vài thập niên khai linh trí, hoặc là mụ nội nó lão thái quân thiếu nghe điểm tình yêu tiết mục, sự tình đều không thể phát triển cho tới hôm nay này bước.</p><p>“Ngươi ở cọ xát cái gì?”</p><p>Nhánh cây một tấc tấc kéo trường, Huyết Tiên thân mình lại bò về tới trên thân cây.</p><p>Mặc ngọc con ngươi không hề độ ấm nhìn chằm chằm to mọng thổ chuột, liếm liếm môi, hồng hồng cánh môi sáng lấp lánh.</p><p>Bị Huyết Tiên như vậy nhìn chằm chằm, Độn Địa Hổ trên bụng lông mềm đều đứng lên tới, tâm một hoành, nói: “Tiểu nhân này liền đi!”</p><p>Thật là muốn chết! Này thụ tinh nói tình yêu, vì sao phải lan đến gần hắn?</p><p>Này Chu Thiếu tướng quân cũng thật xui xẻo, trở về đính cái thân, cô dâu mới lập tức liền phải không có!</p><p>Huyết Tiên ghé vào trên cây nghỉ tạm một lát, ngồi dậy, nàng nhẹ nhàng trừu động chóp mũi.</p><p>Kỳ quái, này tướng quân trong phủ Chu Vân Nghiên khí vị thật là đạm bạc, phảng phất người khác cũng không ở trong phủ giống nhau.</p><p>Độn Địa Hổ bốn trảo chấm đất, trên mặt đất nói trung nhanh chóng chạy vội, ước chừng đã đến thái phó gia khi, hắn đầu tiên là đào cái lỗ nhỏ, nhỏ giọng vô tức từ ngầm hướng ra phía ngoài mặt nhìn trộm.</p><p>Một cổ hương khí từ bên ngoài phiêu vào hầm ngầm, Độn Địa Hổ nhìn kỹ xem, này hẳn là nhà bếp.</p><p>“Ngươi nói, chúng ta thái phó lúc này không phải đắc tội tướng quân phủ sao?”</p><p>Hai cái nhóm lửa bà tử ở bệ bếp trước nói cái gì, Độn Địa Hổ nghe được “Tướng quân phủ” ba chữ, dừng động tác, bình hút nghe.</p><p>“Kia nhưng không bái! Này mắt nhìn bát tự đều phải đối xong rồi, đại tiểu thư cùng người chạy! Này truyền ra đi, thái phó mặt đều đến bị ném quang!”</p><p>Bên trái nhóm lửa bà tử nhìn mắt chung quanh, xác nhận không ai sau nói: “Ai, ta cùng ngươi nói, ngươi đừng cùng người khác nói a.”</p><p>“Cái gì? Không nói không nói, ngươi mau nói.” Bên phải bà tử bát quái để sát vào lỗ tai, thúc giục nói.</p><p>“Ta nghe nói, đại tiểu thư là cùng kia gia tiểu nhi tử chạy!”</p><p>“Kia gia?”</p><p>Hai cái bà tử trong lòng hiểu rõ mà không nói ra đúng rồi cái ánh mắt, bên trái bà tử nói tiếp: “Liền không biết chúng ta lão gia như thế nào lựa chọn lạp.”</p><p>“Này đều tư bôn, nhân gia tướng quân phủ nào còn có thể muốn. Tuy rằng là con vợ lẽ, tốt xấu là thừa tướng gia, cũng coi như có thể.” Bên phải bà tử chép chép miệng, hơi mang đánh giá nói.</p><p>Trong động Độn Địa Hổ: “……”</p><p>Chạy?</p><p>Kia nói cách khác, hắn không cần đi bắt người?</p><p>Để ngừa vạn nhất, Độn Địa Hổ vẫn là đi rồi một chuyến thái phó gia nhà chính, đi dò xét một chút hư thật.</p><p>Chính viện trong phòng, thái phó chính vẻ mặt khuôn mặt u sầu ở trong phòng đi qua đi lại: “Này nhưng như thế nào cho phải?!”</p><p>Thái phó phu nhân ngồi ở khắc hoa chiếc ghế thượng, đôi mắt nhìn phía quan đến kín mít giấy cửa sổ, không nói một lời, tựa như một cái sẽ không lời nói việc làm rối gỗ chinh lăng.</p><p>“Ta liền nói, Tiêu Thục cùng thừa tướng gia cái kia con vợ lẽ đi được thân cận quá! Làm ngươi xem điểm! Nhưng khen ngược, nàng nói đi thơ hội, ngươi khiến cho nàng đi?! Đều phải kết thân, không ở nhà bị của hồi môn, đi cái gì thơ hội! Cái này hảo, người không có! Ngươi là không thấy được hôm qua Chu Chấn gương mặt kia, đều tưởng đem ta chém!”</p><p>Một ngày trước, tướng quân phủ.</p><p>Nữ nhi tư bôn hai ngày, một chút manh mối đều không có, Lý thái phó không có biện pháp lại trộm tìm, chỉ có thể căng da đầu đi theo Chu gia nói ra tình hình thực tế.</p><p>Chu gia trên dưới đều cho rằng Lý thái phó là vì việc hôn nhân mà đến, Chu tướng quân, cũng chính là Chu Vân Nghiên phụ thân Chu Chấn nghe được thông truyền, lập tức phái gã sai vặt đi kêu thiếu gia tới chính sảnh, cùng hắn tương lai lão trượng gia nhiều đánh vài lần đối mặt.</p><p>Chu Vân Nghiên lần này về kinh chỉ có ba ngày kỳ hạn, hôm nay mặt trời xuống núi trước, liền phải đường về.</p><p>Chu Chấn nghiêm túc khuôn mặt khó được lộ ra gương mặt tươi cười, ở chính sảnh đầy mặt ý mừng nghênh đón khách nhân.</p><p>Liền thấy tương lai thông gia Lý thái phó vẻ mặt sầu khổ đi đến, kia hai bước đi được, hạ bàn vô lực, hư vô mờ mịt, thế nhưng giống cái mềm yếu tiểu nương tử.</p><p>Đây là làm sao vậy?</p><p>Ngày hôm trước Chu Vân Nghiên về kinh khi, Chu Chấn dẫn hắn đi Lý thái phó trong phủ đi lại quá, ngày ấy Lý thái phó còn không giống hôm nay như vậy suy yếu.</p><p>Chu Chấn nào biết đâu rằng, hắn mang Chu Vân Nghiên đi bái phỏng ngày đó ban đêm, Lý thái phó đích nữ Lý Tiêu Thục liền cùng tình lang tư bôn!</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (53, 3, N'3, Chu Vân Nghiên', CAST(N'2021-09-17T16:55:03.707' AS DateTime), N'<p>Đối mặt Chu Chấn cường tráng thân thể, bức người khí thế, Lý thái phó nơm nớp lo sợ, hai chân lạnh run đem tình hình thực tế nói ra tới, nói thời điểm, trong lòng không được mắng to nghiệt tử!</p><p>Hắn này nữ nhi từ nhỏ liền điêu ngoa, nhân là đích nữ, liền sủng ái có thêm, nơi chốn đều theo nàng tâm ý, không nghĩ tới nhưỡng ra lớn như vậy tai họa tới!</p><p>Chu Chấn vừa nghe, mắt hổ trừng, thô thanh nói: “Hay là nhà ngươi nữ nhi cùng thừa tướng gia tiểu nhi sớm đã có giao tình?”</p><p>Thái phó không dám nhìn thẳng Chu tướng quân ánh mắt, ấp a ấp úng ngập ngừng nói: “Này, cũng không thể nói có giao tình, chính là…… Cùng đi qua thơ hội.”</p><p>Hắn tự nhiên biết nhà mình cái kia tùy hứng nữ nhi cùng thừa tướng gia tiểu nhi tử đi được gần, nếu là kia tiểu nhi tử là con vợ cả, hắn cũng liền thuận thế đẩy thuyền.</p><p>Nhưng kia tiểu nhi tử cố tình là cái con vợ lẽ, mẹ đẻ cũng không có gì hiển hách bối cảnh, đây là trăm triệu gả không được.</p><p>Sợ đêm dài lắm mộng, nữ nhi cũng đến tuổi, thái phó liền tưởng nhanh lên đem nữ nhi gả đi ra ngoài, chờ thành người phụ, nàng liền ngừng nghỉ. Chung quanh nhìn một vòng, có thể xứng đôi nhà hắn đích nữ, đó là Chu tướng quân con vợ cả Chu Vân Nghiên.</p><p>Tuy nói tuổi tác thượng so với hắn nữ nhi dài quá vài tuổi, nhưng hảo nhi lang chí ở kiến công lập nghiệp, hơi chút đại điểm cũng hảo, có thể theo hắn tùy hứng nữ nhi.</p><p>Nghe được cùng Chu gia kết thân tin tức, thái phó chi nữ Lý Tiêu Thục khóc đến đôi mắt đều sưng lên!</p><p>Nàng không gả! Nàng liền phải gả Triệu lang!</p><p>“Hồ đồ!”</p><p>Lý thái phó tận tình khuyên bảo cấp nữ nhi giảng đạo lý, làm con vợ lẽ, vẫn là tiểu nhi tử, thừa tướng khẳng định sẽ không thiên hướng Triệu Ý, cũng liền so với người bình thường hảo như vậy một chút, đời này ăn uống vô ưu thôi.</p><p>Nếu là kia Triệu Ý tài cao bát đẩu, có dũng có mưu, có thể vì chính mình mưu đường ra cũng đúng, nhưng Triệu Ý chính là cái sẽ nói điểm mật lời nói Tiểu Bạch mặt! Cũng là có thể lừa lừa thiệp thế chưa thâm khuê phòng nữ lang.</p><p>Lý thái phó trăm triệu không nghĩ tới, đãi hắn cùng tướng quân phủ nói hợp lại, bát tự đều phải khép lại thời điểm.</p><p>Hắn nữ nhi trực tiếp đem hắn bàn tính như ý đánh nghiêng trên mặt đất, quăng ngã cái nát nhừ!</p><p>Nữ nhi tư bôn là ngày hôm sau phát hiện, nàng chỉ chừa một giấy công văn, đại thể ý tứ là, cha mẹ không có đặt mình vào hoàn cảnh người khác vì nàng suy nghĩ, chính là muốn dùng nàng đích nữ thân phận chắp nối, này thân phận nàng từ bỏ! Nàng muốn cùng Triệu lang song túc song phi, triền triền miên miên đến thiên nhai.</p><p>Lúc ấy thái phó đầu chính là “Ong” một tiếng trầm minh, trước mắt từng mảnh hắc ảnh thổi qua, lảo đảo lắc lư liền phải đảo, may mắn bị hầu hạ gã sai vặt cấp nâng.</p><p>Lý Tiêu Thục tư bôn ngày thứ hai, Lý thái phó lặng lẽ cấp Triệu thừa tướng viết phong thư, ý tứ là, ngươi nhi tử mang nữ nhi của ta chạy, ngươi nhìn xem làm thế nào chứ!</p><p>Triệu thừa tướng trưa hôm đó liền cho hắn hồi âm, ngắn gọn sáng tỏ nói, việc này nháo lớn đối với ngươi nữ nhi thanh danh không tốt, chúng ta đều đem việc này nuốt vào trong bụng, nếu ngày nào đó hai đứa nhỏ đã trở lại, ta khiến cho Triệu Ý cưới nhà ngươi Lý Tiêu Thục.</p><p>Nói ngắn lại, Triệu thừa tướng không sợ mất mặt, một cái không chớp mắt con vợ lẽ có thể cưới thái phó gia đích nữ, nhà bọn họ như thế nào cũng là kiếm lời.</p><p>Nghĩ đến đây, thái phó tâm trong ổ từng đợt quặn đau, hắn thiên kim ngọc quý dưỡng ra tới nữ nhi, sao cam tâm gả cho một cái mềm thì thầm con vợ lẽ?</p><p>Chính là, cùng tướng quân phủ việc hôn nhân này, chung quy là thất bại.</p><p>Chính sảnh nội một vị khác đương sự Chu Vân Nghiên, sống lưng thẳng thắn ngồi ở chiếc ghế thượng.</p><p>Chu Vân Nghiên hàng năm bên ngoài, từ mười tuổi liền theo Chu Chấn ở trên lưng ngựa chinh chiến, mạnh mẽ cơ bắp giấu ở trường bào dưới. Ngón tay cùng hổ khẩu thượng đều là thật dày cái kén, giơ tay nhấc chân gian tự mang một cổ uy nghiêm chi khí, cũng không thô tục.</p><p>Hắn niên ấu từng đã làm hoàng tử thư đồng, bên ngoài nhàn rỗi khi cũng sẽ nhiều đọc sách.</p><p>Chu Chấn cũng không hy vọng chính mình nhi tử trở thành một cái chỉ biết đánh giặc mãng phu, bởi vậy thường xuyên đốc xúc hắn muốn nhiều xem các loại thư tịch, tuy rằng về sau không cần đi làm văn, cũng muốn hiểu người nào nói được là phương nào chuyện ma quỷ.</p><p>Có lẽ là này từng trang văn chương công lao, Chu Vân Nghiên bất động võ khi, thoạt nhìn khí chất trầm ổn, thả khuôn mặt tuấn dật.</p><p>Chính là cằm biên có vài đạo thật nhỏ vết sẹo, không thể tính phá tướng, nhưng cùng nữ lang nhóm trong lòng như ngọc công tử, là kém cách xa vạn dặm.</p><p>Chính là lại nho nhã, cũng sẽ không bị người nhận sai vì người đọc sách.</p><p>Chu Vân Nghiên đứng lên, hướng Lý thái phó được rồi cái võ tướng ôm quyền lễ, mở miệng nói: “Việc hôn nhân này, như vậy từ bỏ đi.”</p><p>Hắn tự biết tuổi không nhỏ, nhưng hắn ở biên quan đã là trấn thủ tướng quân, cũng coi như nửa cái quan phụ mẫu, bởi vậy căn bản không có nhàn tâm đi bận tâm hôn sự.</p><p>Biên quan địa giới mở mang, nguyên bản phái tới tri huyện chỉ có bát phẩm, nhưng nhân có trú binh, đồng thời hoàn cảnh quá mức ác liệt, không ai nghĩ đến này ăn không đủ no địa giới, phàm là tới biên quan, đều đề nhất phẩm, vì thất phẩm tri huyện.</p><p>Hiện giờ biên quan tri huyện họ Thủ, trong nhà không có gì bối cảnh, thật vất vả thi đậu tiến sĩ, để lại cho hắn đều là chút khổ sai sự.</p><p>Cân nhắc một chút lợi và hại, Thủ tri huyện khẽ cắn môi, liền mang theo lão nương cùng tức phụ, tới này hoàng thổ phi dương biên giới. Thủ tri huyện tưởng, tốt xấu thăng nhất phẩm, đáng giá!</p><p>Ở biên quan thổi hai năm cát vàng, diện mạo thanh tú Thủ tri huyện hoàn toàn thành dân bản xứ, lại hắc lại gầy!</p><p>Quay chung quanh như thế nào cải thiện biên quan sinh tồn hoàn cảnh, Thủ tri huyện là sầu trọc đầu, cùng Chu Vân Nghiên quen biết lúc sau, thường tới Chu Vân Nghiên nơi này phun nước đắng.</p><p>Bọn họ này vốn dĩ liền nghèo, cũng không có nhân tài nguyện ý tới, những cái đó có chí các học sinh tình nguyện oa ở Hàn Lâm Viện ngâm thơ câu đối, phí thời gian thời gian, cũng không nghĩ tới này nơi khổ hàn tạo phúc nhân dân.</p><p>Ở biên quan đãi lâu rồi, Chu Vân Nghiên cũng phía đối diện cương sự tình cực kỳ để bụng, hắn lần này trở về, đính hôn là việc nhỏ, hắn đến hướng đi Hoàng Thượng báo cáo công tác, xem có thể hay không cấp biên quan lại vớt điểm chỗ tốt.</p><p>Kỳ thật không ai coi trọng biên quan việc này là có thể lý giải, rốt cuộc nước láng giềng địch nhân nhóm như hổ rình mồi, ba ngày hai đầu tới biên giới tống tiền. Loại lương thực, dưỡng súc vật, liền sợ cho người khác làm áo cưới.</p><p>Dù sao cũng loại không sống, đơn giản liền vứt bỏ.</p><p>Biên cảnh không phải bị họa thượng một cái minh mắt có thể thấy được tuyến, cũng không phải trung gian bị bổ ra, hai nước chi gian cách một cái huyền nhai vách đá.</p><p>Biên giới chỗ chỉ lập một cái bia, ly xa chút, liền nói không rõ nơi nào là chỗ nào rồi.</p><p>Hắn ở biên quan trú nhiều năm như vậy, ăn không ít khổ, cùng nước láng giềng giao phong vô số lần, còn đánh hai tràng xinh đẹp thắng trận, hoàn toàn có thể dựa vào này đó, vẻ vang hồi kinh.</p><p>Tiểu bối võ tướng, không ai theo kịp.</p><p>Chu Chấn còn hỏi hắn, khai năm muốn hay không quay lại trong kinh?</p><p>Chu Vân Nghiên nghĩ nghĩ, vẫn là quyết định lại ngốc 5 năm.</p><p>Thái phó gia cùng tướng quân phủ liên hôn không thể tránh khỏi băng rồi, đương lão thái quân nghe nói việc này khi, không cấm cảm thấy nhà mình tôn nhi thật là khổ.</p><p>Hàng năm bên ngoài không nói, lớn như vậy vóc lang, mỗi ngày phong tới đao đi, trong phòng liền cái đau lòng người của hắn đều không có.</p><p>Quần áo, giày vớ, đều đến một đại nam nhân chính mình thu thập, lão thái quân càng nghĩ càng cảm thấy nhà mình tôn nhi đáng thương.</p><p>“Nếu không, cấp Vân Nghiên mang hai cái nha đầu đi thôi.” Lão thái quân kiến nghị nói, tuy nói Chu gia cũng không hưng dưỡng thiếp thị thông phòng, nhưng phái hai cái kiều tiếu thị nữ đi hầu hạ hắn cuộc sống hàng ngày vẫn là đỡ phải.</p><p>Chu Chấn vừa lúc tới cùng lão thái quân nói lui bát tự sự, nghe nói lời này, lập tức phản bác nói: “Quân doanh như thế nào có thể có nữ quyến? Mẫu thân chớ nên lại nói lời này.”</p><p>Lão thái quân: “…… Ngươi liền nhẫn tâm làm Vân Nghiên một người lẻ loi ở kia nơi khổ hàn bị liên luỵ? Liền cái cho hắn làm giày vớ người đều không có?! Không còn có cái quân doanh ngoại tòa nhà sao? An bài ở nơi đó tốt không?”</p><p>Chu Vân Nghiên số tuổi, ở kinh thành chưa cưới thân nhi lang xem như đại, bình thường mười bốn, năm tuổi liền hẳn là thành thân.</p><p>Hắn mấy năm nay bên ngoài, bị chậm trễ mười thành mười.</p><p>Lớn như vậy cái số tuổi, liền huân cũng chưa khai quá, liền nhị phòng tiểu nhi tử đều phải thành thân!</p><p>Chu Chấn chẳng hề để ý nói: “Vân Nghiên hắn không chấp nhất với này đó nhi nữ tình trường, cũng không kém này một hai năm.”</p><p>Lão thái quân cảm thấy nàng vô pháp cùng nàng nhi tử câu thông, nàng đến chạy nhanh lại thế Vân Nghiên tìm một cái tức phụ.</p><p>Lần này không thể chỉ xem gia thế, đến cẩn thận hỏi thăm hỏi thăm nữ lang làm người.</p><p>Nghĩ vậy, lão thái quân không cấm thở dài, nàng tốt như vậy tôn nhi, nhân duyên như thế nào liền như vậy nhấp nhô.</p><p>Trước khi đi, Chu Vân Nghiên phương hướng lão thái quân chào từ biệt, lão thái quân hai mắt đẫm lệ nhìn nàng đại tôn tử, nói: “Vân Nghiên nếu là gặp vừa ý nhân nhi, muốn cưới muốn thu đều tùy ngươi, cấp trong nhà tới phong thư là được, cũng làm tổ mẫu vui vẻ vui vẻ.”</p><p>Chu Vân Nghiên trịnh trọng hướng tổ mẫu hành lễ, nói: “Tôn nhi này đi còn phải kể tới năm mới có thể trở về, không thể ở tổ mẫu trước mặt tẫn hiếu, vạn phần tiếc nuối, đãi Vân Nghiên hồi kinh, lại quấy rầy tổ mẫu cấp Vân Nghiên chọn một hiền lương nữ tử.”</p><p>Lão thái quân: “……”</p><p>Nàng này tôn nhi căn bản liền không nghĩ tìm, liền chờ hồi kinh sau lại nói!</p><p>“Đi nhanh đi, ngày mau lạc sơn!”</p><p>Lão thái quân xua tay, ngươi đừng nói chuyện, chạy nhanh xuất phát đi.</p><p>Tướng quân phu nhân, cũng chính là Chu Vân Nghiên mẫu thân chỉ sinh Chu Vân Nghiên một cái nhi tử, sau lại liền sinh hai cái nữ nhi.</p><p>Nhất phẩm quan viên trong nhà không nói thê thiếp thành đàn, ít nhất có hai ba thông phòng, nhưng Chu Chấn hậu viện một cái ăn không ngồi rồi đều không có.</p><p>Nữ nhân nhiều, hậu viện thế tất chướng khí mù mịt, dính toan ghen bình sinh tai họa. Lại nói hắn hàng năm qua lại bôn tẩu, ở nhà nhật tử vốn là không nhiều lắm, muốn như vậy nhiều nữ nhân làm chi.</p><p>Tướng quân phủ dân cư vốn là không ít, bọn họ là đại phòng, còn có nhị đệ, tam đệ hai nhà, toàn gia huynh hữu đệ cung, huynh đệ ba cái đều không được tốt lắm nữ sắc, trong phòng một cái so một cái sạch sẽ.</p><p>Đại phòng cũng chỉ có Chu Vân Nghiên như vậy một viên độc đinh, lão thái quân là hận không thể làm hắn chạy nhanh sinh hai cái.</p><p>Đương Độn Địa Hổ hỏi thăm xong tin tức, phương hướng Huyết Tiên bẩm báo là lúc, Chu Vân Nghiên sớm đã khởi hành một ngày một đêm.</p><p>Trách không được này thượng trăm gian trong phòng, không có một chỗ truyền đến Chu Vân Nghiên nồng đậm khí vị.</p><p>Huyết Tiên nghe xong Độn Địa Hổ hồi bẩm, tay trái chống cằm, hắc hắc con ngươi nhìn phía phương xa, nói: “Hắn hôm qua đã xuất phát?”</p><p>Độn Địa Hổ trừu động hai hạ chóp mũi, trả lời: “Đúng là, ít nói cũng qua gần mười hai cái canh giờ, đã sớm không biết đi ra nhiều ít dặm đường.”</p><p>Chu Thiếu tướng quân bảo mã (BMW) nhanh chóng như gió, tuy không đến ngàn dặm, cũng ít không đến chạy đi đâu.</p><p>Huyết Tiên vươn thon dài ngón trỏ, nhẹ nhàng vuốt ve chi đầu nở rộ đóa hoa, hồng diễm diễm cánh hoa chỗ sâu trong, là vàng nhạt cùng nộn phấn sắc tương giao dung nhụy hoa.</p><p>Độn Địa Hổ cho rằng việc này như vậy hạ màn, ai ngờ Huyết Tiên tiếp theo câu nói suýt nữa làm hắn lòng bàn chân trượt, ngã hồi uốn lượn hầm ngầm trung.</p><p>Huyết Tiên nhẹ nhàng bâng quơ nói: “Ta đây đi tìm hắn đó là.”</p><p>Nàng đã không phải cái kia thoạt nhìn như tiểu oa nhi trong suốt tinh hồn, đã đã tu thành mắt thường có thể thấy được thân hình, nàng đại có thể cũng đi theo đi kia kêu biên quan địa giới.</p><p>Nàng tại đây trong viện ngốc lâu lắm, này bức tường ngoại giới, chỉ có rễ cây bò đi ra ngoài quá, đối nàng tới nói, vẫn là hoàn toàn xa lạ.</p><p>Ở Huyết Tiên trong lòng, nàng cùng Chu Vân Nghiên chính là kia kịch nam theo như lời thanh mai trúc mã, kia tự nhiên cũng muốn tình chàng ý thiếp.</p><p>“Hắn tưởng kết thân, ta liền viên hắn cái này niệm tưởng, cùng hắn kết thân là được.” Huyết Tiên nói nhỏ, kia ngữ khí tựa như thỏa mãn hài đồng thỉnh cầu giống nhau, còn mang theo như vậy điểm dung túng.</p><p>Độn Địa Hổ chớp chớp tròn xoe đậu đen mắt, hắn dùng sống mấy trăm năm đầu dưa, cũng thật sự là tưởng không rõ, này thụ tinh cùng Chu Thiếu tướng quân, nhiều lắm chính là trong nhà lão thụ cùng tiểu chủ tử duyên phận, nào đáng giá này thụ tinh lao tới ngàn dặm, đi tìm hắn kết thân đâu?</p>', 1)
INSERT [dbo].[ChuongTruyen] ([MaTruyen], [SoChuong], [TenChuong], [NgayTao], [NoiDung], [Dang]) VALUES (53, 4, N'4, đi biên quan', CAST(N'2021-09-17T16:57:03.767' AS DateTime), N'<p>Nếu từ có tinh hồn nói lên, Huyết Tiên không biết đã sống nhiều ít tuổi, mặc dù trong đó đại bộ phận thời gian, nàng đều là ở thô tráng thân cây bên trong chợp mắt.</p><p>Nàng đối số tuổi không có gì khái niệm, cũng liền không để bụng chính mình so Chu Thiếu tướng quân đến tột cùng lớn nhiều ít cái luân hồi.</p><p>Độn Địa Hổ vỗ vỗ móng vuốt, có chút chần chờ nói: “Tiểu nhân có một câu, chẳng biết có nên nói hay không.”</p><p>Huyết Tiên quét hắn liếc mắt một cái: “Ta sao biết ngươi làm hay không giảng.”</p><p>Này bọn chuột nhắt nói thật là thú vị, nàng như thế nào biết hắn muốn nói cái gì.</p><p>Độn Địa Hổ run run chòm râu, vẫn là nói: “…… Đại nhân vừa mới hóa thành đại nhân bộ dáng, lúc này thực sự không nên rời đi bản thể.”</p><p>Trước không nói này thụ tinh vì điểm này tình cảm có đáng giá hay không đi này một chuyến biên cương, nàng mới từ nữ oa oa tu thành hình người, lý nên ở bản thể Địa Hà Hoa này cây đại thụ bên ngây ngốc bảy bảy bốn mươi chín thiên, mới có thể làm tinh hồn củng cố tại đây phó thể xác trung.</p><p>Tinh hồn không xong, vô luận đối yêu vẫn là tinh quái tới nói, đều là đại sự.</p><p>Huyết Tiên hơi hơi chuyển động cổ, tĩnh hai tức sau, mảnh dài nhu di duỗi hướng phía dưới, năm ngón tay ở không trung như bay toàn cánh hoa, theo thứ tự thong thả thu hồi ngón tay.</p><p>“Răng rắc” một tiếng giòn vang, Địa Hà Hoa dưới tàng cây phương một cái thô tráng cành khô từ thân cây chỗ chỉnh tề tách ra, thân cây hoành mặt cắt nhan sắc dần dần biến thâm, cho đến nhìn không ra đoạn ngân.</p><p>Này thô tráng cành khô chậm rãi dâng lên, chiều dài ước vì một hài đồng vóc người, phẩm chất cũng có bát to lớn nhỏ.</p><p>Đãi cành khô lên tới Huyết Tiên độ cao khi, phiêu hướng nàng nhẹ nắm nắm tay.</p><p>Huyết Tiên duỗi khai năm ngón tay, này cành khô liền như đá chìm đáy biển giống nhau, chậm rãi lâm vào nàng lòng bàn tay.</p><p>Cành bên cạnh nở rộ Địa Hà Hoa ở bị nuốt vào trước, còn theo gió nhẹ nhẹ nhàng đong đưa.</p><p>Đem cành khô nuốt vào bàn tay sau, Huyết Tiên lại lần nữa cầm quyền.</p><p>Nếu không thể rời đi bản thể, kia nàng liền mang một đoạn cành khô đi, hai ba năm quang cảnh, như thế nào cũng đủ dùng, đãi lần sau khi trở về, nàng lại ở bản thể biên hảo hảo tĩnh dưỡng một đoạn thời gian.</p><p>Độn Địa Hổ nghĩ thầm, hắn nên nhắc nhở cũng đều nhắc nhở, Huyết Tiên liền tính thực sự có cái gì, cũng quái không đến trên người hắn. Tuy rằng lấy Huyết Tiên đạo hạnh, cũng sẽ không gặp được cái gì nguy hiểm là được.</p><p>Hắn đều có thể tưởng tượng đến, này chỉ thụ tinh sẽ ở xa xôi biên cương, như thế nào đem mặt khác tinh quái sợ tới mức run bần bật.</p><p>Huyết Tiên muốn ly kinh, này đối Độn Địa Hổ tới nói tuyệt đối tính một chuyện tốt.</p><p>Ít nhất trong khoảng thời gian này, hắn vừa không dùng lo lắng cho mình chuột nhãi con nhóm bị ăn, còn có thể ở Huyết Tiên không ở này đó thời gian hoành hành ngang ngược, cáo mượn oai hùm một phen.</p><p>Độn Địa Hổ trong lòng vui vô cùng, tiểu chòm râu không ngừng run rẩy, tận lực che giấu chính mình sung sướng tâm tình, để tránh chọc Huyết Tiên không mừng.</p><p>Độn Địa Hổ ngàn tính vạn tính, cũng không có tính đến, Huyết Tiên sẽ mang theo hắn cùng nhau đi.</p><p>Độn Địa Hổ: “……”</p><p>Ta làm sai cái gì? Hắn không ở kinh, hắn bảy cái lão bà nhưng làm sao bây giờ?</p><p>Kinh thành ngoại trên quan đạo, một nữ tử thân xuyên màu trắng áo váy, ngoại khoác lụa hồng sắc lụa sam, trên đầu mang đỉnh đầu nhánh cây biên thành mũ rơm, từ mũ rơm mái thượng rũ xuống một mảnh sa mỏng, xuyên thấu qua lồng bàn, mơ hồ có thể thấy được nữ tử giảo hảo khuôn mặt.</p><p>Nữ tử này đó là hóa thành người bình thường trang điểm Huyết Tiên.</p><p>Trên quan đạo không có một bóng người, Huyết Tiên lòng bàn chân sinh phong, nếu có người thấy, chắc chắn kinh ngạc không thôi.</p><p>Một cái kiều nữ lang, vì sao có thể đi được nhanh như vậy, so với kia rong ruổi hạng nhất tuấn mã còn muốn tấn mẫn. Giống như một trận gió, lại chớp mắt, liền chỉ có thể nhìn đến nàng bóng dáng.</p><p>Nữ lang trong tay dẫn theo cái đồ vật, tới gần xem, là một con to mọng thổ chuột.</p><p>Độn Địa Hổ giống một con chết thổ chuột giống nhau, theo Huyết Tiên thần hành thái bảo chạy như bay chân tốc tả hữu lắc lư, đen bóng tròng mắt chỉ chiếm hốc mắt một nửa, dư lại một nửa đều là tròng trắng mắt.</p><p>Đương hắn nghe được Huyết Tiên nói khi, hắn đốn sau một lúc lâu, vui mừng nhảy nhót tâm tình liền như bị bắn lạc chim nhạn, từ trên bầu trời thẳng tắp rơi xuống, đi đời nhà ma.</p><p>“Đại, đại nhân vì sao phải mang tiểu nhân cùng đi?”</p><p>Này chỉ thụ tinh đi kết kia không thể hiểu được thân, hắn đi làm gì? Gia tăng biên cương thổ chuột chủng loại sao?</p><p>Huyết Tiên sâu kín nhìn hắn, xem đến hắn chuột mao đứng chổng ngược, run bần bật.</p><p>“Ta không hiểu nhân gian này sự, ngươi sống nhiều năm như vậy, nói vậy chuyện gì đều có thể nói ra cái tí sửu dần mẹo.”</p><p>Huyết Tiên đối trên thế gian này hết thảy, đều là từ kịch nam cùng tướng quân bên trong phủ được đến, có thể nói, ra này phiến tường, nàng cái gì quy củ cũng không biết.</p><p>Liền bởi vì tiểu gia “Kiến thức rộng rãi”, ngươi liền phải mang ta đi biên quan ăn cát vàng?</p><p>Độn Địa Hổ vỗ vỗ gục xuống ở trước ngực móng vuốt nhỏ, hắn lời này là khẳng định không dám đối Huyết Tiên nói, hắn nghĩ nghĩ: “Đại nhân quá khen, tiểu nhân cũng chỉ biết cái da lông. Không bằng như vậy, tiểu nhân vì đại nhân dẫn tiến một con chim én tinh, nó hàng năm vào nam ra bắc, biết đến khẳng định so ít hơn nhiều.”</p><p>“Là ở tướng quân phủ chính viện cây liễu thượng đáp oa kia một con?” Huyết Tiên hỏi.</p><p>Độn Địa Hổ gật đầu: “Đúng là kia chỉ chim én tinh, hắn biết ăn nói, còn biết rõ này ven đường phong cảnh, cùng hắn cùng lên đường, đại nhân nhất định sẽ không quá đến phiền muộn.”</p><p>Xin lỗi, lão đệ, ngươi vẫn là cái người đàn ông độc thân, không giống ta có lão có tiểu, ngươi liền đi theo đi này một chuyến đi.</p><p>Huyết Tiên nhấc lên mí mắt, nhàn nhạt nói: “Kia chỉ chim én, đã bị ta nuốt.”</p><p>Nàng ngủ thời điểm, rễ cây sẽ tự chủ ăn cơm, nàng tỉnh lại liền sẽ biết, chính mình ăn này đó đồ vật.</p><p>Độn Địa Hổ: “……”</p><p>Hắn nâng lên run rẩy móng vuốt, loát loát chòm râu, nghĩ còn có cái nào tinh quái có thể “Dẫn tiến.”</p><p>“Ngươi không nghĩ đi?”</p><p>Trên đỉnh đầu truyền đến Huyết Tiên thanh âm, giống như chảy xuôi dày nặng thủy ngân.</p><p>Độn Địa Hổ không dám ngẩng đầu, trừu trừu cái mũi, nhược nhược nói: “Đại nhân nói đùa, tất nhiên là muốn đi.”</p><p>Huyết Tiên chăm chú nhìn hắn lông xù xù đỉnh đầu sau một lúc lâu, mở miệng nói: “Kia liền hảo.”</p><p>Ngàn năm thụ tinh huyết tinh chi khí sợ tới mức Độn Địa Hổ sau cổ phát lạnh.</p><p>Nếu hắn không đi……</p><p>Độn Địa Hổ vỗ vỗ chính mình móng vuốt, thầm nghĩ, chớ nên lại động quỷ tâm tư, hắn chính là lại tu luyện mấy trăm năm, cũng không đủ này chỉ thụ tinh điền kẽ răng.</p><p>Bởi vậy, bị Huyết Tiên giống chết thổ chuột giống nhau dẫn theo Độn Địa Hổ, sớm đã tiến vào vô niệm vô ngã cảnh giới.</p><p>Một tinh một yêu liên tục đuổi mấy cái canh giờ lộ, sắc trời liền đã sát hắc.</p><p>Huyết Tiên ngủ nhiều năm như vậy, lúc này căn bản không cần giấc ngủ, nàng chỉ nghĩ nhanh lên đuổi theo Chu Vân Nghiên.</p><p>Ban đêm trên quan đạo, một nữ tử dẫn theo một con chết thổ chuột bay nhanh, người khác nhìn chắc chắn cảm thấy vạn phần quỷ dị.</p><p>Một đoạn này quan đạo hai bên đều là núi rừng, nếu có người buổi tối lên đường, tất nhiên muốn đêm túc ở ở nông thôn dã ngoại.</p><p>Huyết Tiên cùng Độn Địa Hổ ở ban đêm cũng có thể bình thường coi vật, cũng có thể đem nơi xa chi vật xem đến rõ ràng. Cách hảo xa khoảng cách, hai người liền thấy quan đạo bên đống lửa, bảy tám cái thân xuyên áo quần ngắn nam tử vây quanh ở đống lửa bên.</p><p>Bọn nam tử thân xuyên áo quần ngắn hình thức thống nhất, cánh tay trái thêu một cái Lý tự, nhìn dáng vẻ như là nào một nhà gia phó hoặc là hộ viện thị vệ.</p><p>Huyết Tiên thiên tư thông tuệ, đối văn tự càng là đã gặp qua là không quên được. Nàng xem qua Bách Gia Tính, tự nhiên có thể nhận ra cái kia “Lý” tự.</p><p>Nàng quơ quơ trên tay Độn Địa Hổ, đôi mắt nhìn chằm chằm nơi xa kia đám người, hỏi: “Những người đó chính là Lý thái phó trong phủ?”</p><p>Nhân ở đêm tối, nơi xa các hộ vệ nhìn không tới khoảng cách bọn họ trăm bước ở ngoài Huyết Tiên.</p><p>Độn Địa Hổ nâng lên lông xù xù đầu, hắn không quá biết chữ, nhưng “Lý” tự vẫn là nhận biết, tròn xoe thổ chuột mắt nhìn kỹ xem, không sai, những người này trên người ăn mặc quần áo, cùng Lý thái phó trong phủ thị vệ xuyên y phục tương đồng.</p><p>“Những người này hẳn là Lý thái phó trong phủ.”</p><p>Lý thái phó trong phủ bọn thị vệ hơn phân nửa đêm vì sao sẽ ở rừng núi hoang vắng?</p><p>Kết hợp bọn họ sở đi phương hướng, những người này hơn phân nửa chính là Lý thái phó phái ra đuổi theo Lý gia con vợ cả tiểu thư người.</p><p>Ra kinh thành, chỉ có nam bắc hai cái quan đạo, nếu bọn họ đi cái này phương hướng, nhất định là được đến cái gì manh mối, hoặc là hai cái phương hướng đều phái người đi truy tìm.</p><p>Độn Địa Hổ thấp thỏm hỏi: “Đại nhân là tưởng?”</p><p>Lý gia làm Chu gia ném lớn như vậy mặt, không nói kết thù, nhưng này sống núi khẳng định là kết hạ, chẳng sợ Lý Tiêu Thục hiện tại đổi ý, việc hôn nhân này cũng là không về được.</p><p>Nhưng Huyết Tiên cũng không hy vọng nàng bị Lý gia tìm trở về.</p><p>Nếu đã chạy, liền chạy trốn rất xa, đời này đều đừng bị tìm được mới hảo.</p><p>Huyết Tiên không nói chuyện, từ làn váy hạ vươn một cái nhánh cây, đem trên mặt đất dùng hai chân đứng thẳng Độn Địa Hổ một quyển, tiếp tục cất bước về phía trước đi.</p><p>Độn Địa Hổ cảm thấy chính mình chính là ngăn thiết, này thụ tinh tưởng lấy liền lấy, tưởng phóng liền phóng.</p><p>Lý gia bảy tám cái thị vệ vây quanh ở đống lửa trước ăn lương khô, bọn họ ra kinh thành trước mua chút bánh rán, cũng đủ đêm nay no bụng, ngày mai nói vậy là có thể nhìn đến dân cư.</p><p>“Ngươi nói ra này quan đạo, chúng ta hướng chỗ nào tìm?” Một cái thị vệ gặm bánh rán, bất mãn nói: “Tiểu thư cũng thật là hồ đồ, cái kia tôm chân mềm, nơi nào so được với Chu Thiếu tướng quân!”</p><p>“Chủ tử sự, nơi nào là chúng ta có thể nghị luận, ngươi bớt tranh cãi đi.”</p><p>Ngồi ở trung gian, nhìn như thị vệ đầu lĩnh nam tử dùng nhánh cây ngoéo một cái hỏa, nói: “Tiểu thư là thiên kim chi khu, không ăn qua khổ, cũng không hiểu đến cải trang giả dạng, cho dù lại thật cẩn thận, cũng sẽ lộ ra dấu vết, chúng ta ven đường nhiều hỏi thăm, định có thể tìm được manh mối.”</p><p>Thái phó gia đích nữ, từ nhỏ chính là bị Lý thái phó phủng ở lòng bàn tay lớn lên, chân chính hòn ngọc quý trên tay.</p><p>Mấy ngày còn hảo, nhật tử lâu rồi, nhất định chịu không nổi ăn cỏ ăn trấu, trốn trốn tránh tránh sinh hoạt.</p><p>Bọn thị vệ đang nói, liền nghe được từ xa tới gần truyền đến tiếng bước chân.</p><p>Người này tả hữu chân biến hóa thật là nhanh chóng, hơn phân nửa là sẽ chút võ nghệ.</p><p>Ỷ vào người nhiều, bọn thị vệ lớn mật nhìn phía lai lịch, nương ánh lửa, dần dần hiển lộ ra một cái bước đi mau lẹ thân hình.</p><p>Đêm nửa đêm, người này mang theo một trản lụa trắng mũ, thấy không rõ khuôn mặt. Nhưng từ mạn diệu dáng người, có thể thấy được là một vị nữ tử.</p><p>Một nữ tử dám đêm hôm khuya khoắt một mình hành tẩu ở quan đạo, nhất định là có chút bản lĩnh.</p><p>Nàng kia bước đi thần tốc, nháy mắt, liền cách bọn họ chỉ có vài bước xa, mọi người mới thấy rõ, nữ tử bên hông tựa hồ cắm một cái nhánh cây, cành đằng trước hiện ra hình tròn, bên trong bộ một con da lông bóng lưỡng to mọng thổ chuột.</p><p>Thổ chuột theo nữ tử bước chân tả hữu đong đưa, không biện sinh tử.</p><p>Nữ tử hướng về bọn họ phương hướng đã đi tới.</p><p>Ở bên ngoài không thể thiếu cảnh giác, bọn thị vệ theo bản năng đem tay đặt ở eo sườn trên chuôi kiếm.</p><p>“Các ngươi là Lý thái phó gia?”</p><p>Khoảng cách bọn họ còn có một bước khoảng cách, nữ tử dừng lại bước chân, hướng bọn họ hỏi.</p><p>Nữ tử thanh âm thanh thanh lãnh lãnh, xuyên thấu qua lồng bàn truyền đến.</p><p>Thị vệ thủ lĩnh đứng lên, tay phải trước sau đặt ở trên chuôi kiếm, trả lời: “Đúng là, xin hỏi cô nương là?”</p><p>Hắn vừa dứt lời, chóp mũi liền ngửi được một cổ mùi thơm lạ lùng, mọi người theo bản năng trừu động chóp mũi, kia hương khí làm như có sinh mệnh, như nòng nọc chui vào bọn họ lỗ mũi trung.</p><p>Xoang mũi nội bỗng chốc tê rần, liên quan óc đều trở nên hôn hôn trầm trầm, thân mình một oai, bảy tám cái tráng hán nháy mắt liền mất đi ý thức.</p>', 1)
GO
SET IDENTITY_INSERT [dbo].[HanhDongCuaTK] ON 

INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (33, 16, NULL, 5, CAST(N'2021-09-09T09:08:02.123' AS DateTime), 2, N'Truyện gì mà hay quá ', NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (34, 16, NULL, 8, CAST(N'2021-09-09T09:08:40.080' AS DateTime), 2, N'5', NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (38, 16, 1, 1, CAST(N'2021-09-09T10:54:14.520' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (39, 16, 1, 5, CAST(N'2021-09-09T15:12:09.537' AS DateTime), 2, N'Chiện hay quá ra tiếp đi bạn ê', NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (40, 16, NULL, 2, CAST(N'2021-09-09T15:41:18.193' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (42, 16, 1, 7, CAST(N'2021-09-09T15:55:52.007' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (43, 16, 1, 5, CAST(N'2021-09-09T15:56:26.127' AS DateTime), 2, N'ok bạn', NULL, NULL, 39, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (44, 18, 1, 1, CAST(N'2021-09-09T17:05:38.207' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (45, 18, 2, 1, CAST(N'2021-09-09T17:05:45.477' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (46, 18, 3, 1, CAST(N'2021-09-09T17:05:53.783' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (47, 20, 1, 1, CAST(N'2021-09-09T17:41:48.580' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (48, 20, 2, 1, CAST(N'2021-09-09T18:01:30.230' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (49, 19, 1, 1, CAST(N'2021-09-09T20:02:46.340' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (50, 19, 2, 1, CAST(N'2021-09-09T20:03:55.737' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (51, 16, 1, 1, CAST(N'2021-09-09T20:45:13.877' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (52, 19, 1, 1, CAST(N'2021-09-09T20:47:11.623' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (53, 16, 1, 1, CAST(N'2021-09-10T08:53:38.560' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (54, 20, 1, 1, CAST(N'2021-09-10T08:55:15.660' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (56, 18, 2, 1, CAST(N'2021-09-10T14:50:16.873' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (57, 18, 1, 1, CAST(N'2021-09-10T14:50:23.337' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (58, 20, 1, 1, CAST(N'2021-09-10T14:55:52.910' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (59, 20, 2, 1, CAST(N'2021-09-10T14:55:59.633' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (60, 17, 1, 1, CAST(N'2021-09-10T15:01:59.230' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (64, 28, 1, 1, CAST(N'2021-09-10T17:16:25.360' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (65, 24, 1, 1, CAST(N'2021-09-10T17:19:37.333' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (66, 24, 2, 1, CAST(N'2021-09-10T17:19:43.877' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (68, 19, NULL, 2, CAST(N'2021-09-11T13:15:10.380' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (73, 30, NULL, 2, CAST(N'2021-09-11T14:31:14.047' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (74, NULL, NULL, 3, CAST(N'2021-09-11T14:31:19.027' AS DateTime), 2, NULL, NULL, 16, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (75, NULL, NULL, 3, CAST(N'2021-09-11T14:31:52.057' AS DateTime), 2, NULL, NULL, 12, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (76, 31, NULL, 2, CAST(N'2021-09-11T19:29:45.073' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (77, NULL, NULL, 3, CAST(N'2021-09-11T19:29:50.883' AS DateTime), 2, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (78, 31, 2, 4, CAST(N'2021-09-11T19:48:32.997' AS DateTime), 2, N'Truyện Thiếu nữ 9 tuổi đã cập nhật chương mới
Chương: 2 Quá khứ ta là ai', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (79, 31, 3, 4, CAST(N'2021-09-11T20:23:59.350' AS DateTime), 2, N'Truyện Thiếu nữ 9 tuổi đã cập nhật chương mới
Chương: 3 Một con người mới', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (80, 31, 1, 1, CAST(N'2021-09-11T20:26:44.690' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (81, 31, 2, 1, CAST(N'2021-09-11T20:27:29.907' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (86, 44, 2, 1, CAST(N'2021-09-12T09:04:42.433' AS DateTime), 13, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (87, 17, 1, 1, CAST(N'2021-09-13T15:25:18.953' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (88, 16, 1, 1, CAST(N'2021-09-13T16:10:43.423' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (89, 29, 1, 1, CAST(N'2021-09-13T19:15:07.387' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (90, 29, 2, 1, CAST(N'2021-09-13T19:15:50.130' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (91, 26, 1, 1, CAST(N'2021-09-13T19:19:23.710' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (92, 39, NULL, 8, CAST(N'2021-09-14T08:49:53.077' AS DateTime), 2, N'5', NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (93, 39, 1, 1, CAST(N'2021-09-14T09:08:27.473' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (94, 20, 1, 1, CAST(N'2021-09-14T09:19:29.927' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (95, NULL, NULL, 4, CAST(N'2021-09-14T18:25:23.383' AS DateTime), 108, N'Tác giả Eli Haag cần được phê duyệt', 1, 17, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (96, NULL, NULL, 4, CAST(N'2021-09-14T18:25:23.487' AS DateTime), 114, N'Tác giả Eli Haag cần được phê duyệt', 1, 17, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (97, NULL, NULL, 4, CAST(N'2021-09-14T18:25:23.847' AS DateTime), 115, N'Tác giả Eli Haag cần được phê duyệt', NULL, 17, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (98, 16, NULL, 4, CAST(N'2021-09-14T18:41:07.267' AS DateTime), 2, N'Truyện Xuyên thành pháo hôi minh tinh sau ta bạo hồng đã bị quản trị viên khóa', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (99, NULL, NULL, 4, CAST(N'2021-09-14T18:42:46.390' AS DateTime), 2, N'Bạn đã bị xóa tác giả', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (100, NULL, NULL, 4, CAST(N'2021-09-14T18:43:21.220' AS DateTime), 108, N'Tác giả AZĐoàn cần được phê duyệt', 1, 2, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (101, NULL, NULL, 4, CAST(N'2021-09-14T18:43:21.317' AS DateTime), 114, N'Tác giả AZĐoàn cần được phê duyệt', 1, 2, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (102, NULL, NULL, 4, CAST(N'2021-09-14T18:43:21.750' AS DateTime), 115, N'Tác giả AZĐoàn cần được phê duyệt', NULL, 2, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (103, NULL, NULL, 4, CAST(N'2021-09-14T18:43:57.303' AS DateTime), 2, N'Bạn đã được duyệt tác giả', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (104, NULL, NULL, 4, CAST(N'2021-09-16T15:09:43.823' AS DateTime), 3, N'Bạn đã bị khóa tác giả', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (105, NULL, NULL, 4, CAST(N'2021-09-16T15:10:07.113' AS DateTime), 3, N'Bạn đã bị khóa tác giả', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (106, NULL, NULL, 4, CAST(N'2021-09-16T15:10:18.287' AS DateTime), 3, N'Bạn đã được duyệt tác giả', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (107, NULL, NULL, 4, CAST(N'2021-09-16T15:11:55.483' AS DateTime), 3, N'Bạn đã bị khóa tác giả', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (108, NULL, NULL, 4, CAST(N'2021-09-16T15:11:58.517' AS DateTime), 3, N'Bạn đã bị khóa tác giả', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (109, NULL, NULL, 4, CAST(N'2021-09-16T15:12:01.997' AS DateTime), 3, N'Bạn đã được duyệt tác giả', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (110, 45, NULL, 4, CAST(N'2021-09-16T15:35:26.730' AS DateTime), 13, N'Truyện Xuyên tiến vạn nhân mê văn ta nhân thiết băng rồi đã bị quản trị viên khóa', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (111, 45, NULL, 4, CAST(N'2021-09-16T15:35:41.377' AS DateTime), 13, N'Truyện Xuyên tiến vạn nhân mê văn ta nhân thiết băng rồi đã bị quản trị viên khóa', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (112, NULL, NULL, 4, CAST(N'2021-09-16T16:43:42.287' AS DateTime), 2, N'Phúc yêu cầu tham gia nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (113, NULL, NULL, 4, CAST(N'2021-09-17T09:19:29.117' AS DateTime), 1, N'Bạn đã được duyệt vào nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (114, NULL, NULL, 4, CAST(N'2021-09-17T12:00:01.937' AS DateTime), 2, N'Tác Giả Chuyên Nghiệp yêu cầu tham gia nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (115, NULL, NULL, 4, CAST(N'2021-09-17T12:01:19.293' AS DateTime), 13, N'Bạn đã bị xóa khỏi nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (116, NULL, NULL, 4, CAST(N'2021-09-17T12:02:15.033' AS DateTime), 2, N'Tác Giả Chuyên Nghiệp yêu cầu tham gia nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (117, NULL, NULL, 4, CAST(N'2021-09-17T12:03:15.133' AS DateTime), 13, N'Bạn đã được duyệt vào nhóm Nhóm Thiên Ân', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (118, NULL, NULL, 4, CAST(N'2021-09-17T12:24:04.870' AS DateTime), 13, N'Bạn đã bị xóa khỏi nhóm Nhóm Thiên Ân', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (119, NULL, NULL, 4, CAST(N'2021-09-17T12:30:58.120' AS DateTime), 1, N'Bạn đã được thăng chức làm nhóm trưởng của nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (120, NULL, NULL, 4, CAST(N'2021-09-17T12:33:09.733' AS DateTime), 1, N'Nguyễn Văn A yêu cầu tham gia nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (121, NULL, NULL, 4, CAST(N'2021-09-17T12:33:09.817' AS DateTime), 2, N'Nguyễn Văn A yêu cầu tham gia nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (122, NULL, NULL, 4, CAST(N'2021-09-17T12:36:26.760' AS DateTime), 3, N'Bạn đã được duyệt vào nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (123, NULL, NULL, 4, CAST(N'2021-09-17T12:37:38.147' AS DateTime), 3, N'Bạn đã được duyệt vào nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (124, NULL, NULL, 4, CAST(N'2021-09-17T12:38:48.050' AS DateTime), 3, N'Bạn đã được duyệt vào nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (125, NULL, NULL, 4, CAST(N'2021-09-17T12:40:05.090' AS DateTime), 3, N'Bạn đã được duyệt vào nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (126, NULL, NULL, 4, CAST(N'2021-09-17T12:40:32.757' AS DateTime), 3, N'Bạn đã được duyệt vào nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (127, NULL, NULL, 4, CAST(N'2021-09-17T12:49:14.133' AS DateTime), 1, N'Bạn đã bị cắt chức nhóm trưởng của nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (128, NULL, NULL, 4, CAST(N'2021-09-17T12:51:16.350' AS DateTime), 1, N'Bạn đã được thăng chức làm nhóm trưởng của nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (129, NULL, NULL, 4, CAST(N'2021-09-17T12:51:24.283' AS DateTime), 1, N'Bạn đã bị cắt chức nhóm trưởng của nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (130, NULL, NULL, 4, CAST(N'2021-09-17T12:51:28.967' AS DateTime), 1, N'Bạn đã được thăng chức làm nhóm trưởng của nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (137, 53, NULL, 4, CAST(N'2021-09-17T15:05:51.290' AS DateTime), 108, N'Truyện Bọn họ lão bà thực đáng sợ cần được phê duyệt', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (138, 53, NULL, 4, CAST(N'2021-09-17T15:05:51.743' AS DateTime), 114, N'Truyện Bọn họ lão bà thực đáng sợ cần được phê duyệt', NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (139, 53, NULL, 4, CAST(N'2021-09-17T15:05:51.837' AS DateTime), 115, N'Truyện Bọn họ lão bà thực đáng sợ cần được phê duyệt', NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (140, 53, NULL, 4, CAST(N'2021-09-17T15:06:35.723' AS DateTime), 2, N'Truyện Bọn họ lão bà thực đáng sợ đã được duyệt', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (141, 53, NULL, 4, CAST(N'2021-09-17T15:06:40.013' AS DateTime), 2, N'Truyện Bọn họ lão bà thực đáng sợ đã được duyệt', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (142, 53, NULL, 4, CAST(N'2021-09-17T15:06:43.927' AS DateTime), 2, N'Truyện Bọn họ lão bà thực đáng sợ đã được duyệt', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (143, 53, NULL, 4, CAST(N'2021-09-17T15:07:53.797' AS DateTime), 2, N'Truyện Bọn họ lão bà thực đáng sợ đã được duyệt', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (144, 53, NULL, 4, CAST(N'2021-09-17T15:08:17.467' AS DateTime), 2, N'Truyện Bọn họ lão bà thực đáng sợ đã được duyệt', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (145, 53, NULL, 4, CAST(N'2021-09-17T15:14:05.223' AS DateTime), 2, N'Truyện Bọn họ lão bà thực đáng sợ đã được duyệt', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (146, 53, NULL, 4, CAST(N'2021-09-17T15:14:17.463' AS DateTime), 2, N'Truyện Bọn họ lão bà thực đáng sợ đã được duyệt', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (147, 53, NULL, 4, CAST(N'2021-09-17T15:14:56.307' AS DateTime), 2, N'Truyện Bọn họ lão bà thực đáng sợ đã được duyệt', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (148, 53, NULL, 4, CAST(N'2021-09-17T15:17:02.193' AS DateTime), 2, N'Truyện Bọn họ lão bà thực đáng sợ đã được duyệt', 1, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (149, 53, 2, 1, CAST(N'2021-09-17T16:53:36.340' AS DateTime), 3, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (150, 53, 1, 1, CAST(N'2021-09-17T16:53:45.830' AS DateTime), 3, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (161, NULL, NULL, 6, CAST(N'2021-09-18T10:25:00.860' AS DateTime), 1, N'Chào em', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (162, NULL, NULL, 6, CAST(N'2021-09-18T10:25:00.987' AS DateTime), 2, N'Chào anh', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (163, NULL, NULL, 4, CAST(N'2021-09-18T11:35:47.730' AS DateTime), 1, N'AZĐoàn yêu cầu tham gia nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (164, NULL, NULL, 4, CAST(N'2021-09-18T11:36:20.473' AS DateTime), 2, N'Bạn đã được duyệt vào nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
GO
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (165, NULL, NULL, 4, CAST(N'2021-09-18T12:39:44.513' AS DateTime), 2, N'Bạn đã được thăng chức làm nhóm trưởng của nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (166, NULL, NULL, 6, CAST(N'2021-09-18T13:18:55.553' AS DateTime), 2, N'Chào mọi người', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (167, NULL, NULL, 4, CAST(N'2021-09-18T13:40:00.723' AS DateTime), 1, N'Bạn đã bị cắt chức nhóm trưởng của nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (168, NULL, NULL, 4, CAST(N'2021-09-18T13:41:01.417' AS DateTime), 1, N'Bạn đã được thăng chức làm nhóm trưởng của nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (169, NULL, NULL, 4, CAST(N'2021-09-18T13:41:06.573' AS DateTime), 2, N'Bạn đã bị cắt chức nhóm trưởng của nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (170, NULL, NULL, 4, CAST(N'2021-09-18T13:54:16.223' AS DateTime), 1, N'Tác Giả Nghiệp Dư yêu cầu tham gia nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (171, NULL, NULL, 6, CAST(N'2021-09-18T14:01:30.940' AS DateTime), 1, N'Chào Thảo', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (172, NULL, NULL, 6, CAST(N'2021-09-18T14:11:00.610' AS DateTime), 2, N'Chào anh Phúc', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (173, NULL, NULL, 6, CAST(N'2021-09-18T14:11:34.037' AS DateTime), 1, N'em khỏe không ', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (174, NULL, NULL, 6, CAST(N'2021-09-18T14:17:21.613' AS DateTime), 2, N'em vẫn khỏe anh', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (175, NULL, NULL, 6, CAST(N'2021-09-18T14:43:13.293' AS DateTime), 1, N'khỏe là được rồi', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (176, NULL, NULL, 6, CAST(N'2021-09-18T14:44:01.617' AS DateTime), 2, N'cảm ơn anh', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (177, NULL, NULL, 4, CAST(N'2021-09-18T15:05:34.537' AS DateTime), 12, N'Bạn đã được duyệt vào nhóm Nhóm Thiên Ân', 1, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (178, NULL, NULL, 6, CAST(N'2021-09-18T15:12:06.893' AS DateTime), 12, N'hello', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (179, NULL, NULL, 6, CAST(N'2021-09-18T15:16:06.513' AS DateTime), 1, N'Chào tác giả nghiệp dư', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (180, NULL, NULL, 6, CAST(N'2021-09-18T15:16:47.577' AS DateTime), 12, N'chào admin', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (181, NULL, NULL, 6, CAST(N'2021-09-18T15:37:19.303' AS DateTime), 1, N'Web Truyện Tranh ', NULL, NULL, NULL, 4)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (182, 53, 1, 1, CAST(N'2021-09-18T16:20:06.067' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HanhDongCuaTK] ([MaHD], [MaTruyen], [SoChuong], [LoaiHD], [NgayHanhDong], [MaTK], [GhiChu], [DaXem], [TacGia], [PhanHoi], [MaNhom]) VALUES (183, 53, 3, 1, CAST(N'2021-09-18T16:20:11.390' AS DateTime), 2, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HanhDongCuaTK] OFF
GO
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (16, 2, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (17, 2, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (18, 1, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (18, 2, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (19, 2, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (20, 1, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (21, 1, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (22, 3, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (23, 3, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (24, 12, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (25, 12, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (26, 12, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (27, 12, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (28, 12, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (29, 16, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (30, 16, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (31, 1, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (32, 13, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (33, 13, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (34, 13, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (35, 13, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (36, 13, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (37, 2, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (38, 2, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (39, 2, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (44, 13, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (45, 13, 1, NULL)
INSERT [dbo].[TruyenTacGia] ([MaTruyen], [MaTK], [VaiTro], [DangNhom]) VALUES (53, 1, 1, 4)
GO
INSERT [dbo].[ThanhVienNhom] ([MaTK], [MaNhom], [Ngayvaonhom], [Vaitro], [GhiChu], [DaDuyet]) VALUES (1, 4, CAST(N'2021-09-16T16:43:35.200' AS DateTime), 1, NULL, 1)
INSERT [dbo].[ThanhVienNhom] ([MaTK], [MaNhom], [Ngayvaonhom], [Vaitro], [GhiChu], [DaDuyet]) VALUES (1, 5, CAST(N'2021-09-18T21:25:57.987' AS DateTime), 1, NULL, 1)
INSERT [dbo].[ThanhVienNhom] ([MaTK], [MaNhom], [Ngayvaonhom], [Vaitro], [GhiChu], [DaDuyet]) VALUES (2, 4, CAST(N'2021-09-18T11:35:47.543' AS DateTime), 2, NULL, 1)
GO
