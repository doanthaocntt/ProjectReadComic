//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebTruyen.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class TaiKhoan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TaiKhoan()
        {
            this.HanhDongCuaTKs = new HashSet<HanhDongCuaTK>();
            this.HanhDongCuaTKs1 = new HashSet<HanhDongCuaTK>();
            this.NhomTGs = new HashSet<NhomTG>();
            this.QuanLyHinhAnhs = new HashSet<QuanLyHinhAnh>();
            this.ThanhVienNhoms = new HashSet<ThanhVienNhom>();
            this.TruyenTacGias = new HashSet<TruyenTacGia>();
        }
    
        public int MaTK { get; set; }
        public string HovaTen { get; set; }
        public string Mail { get; set; }
        public string MatKhau { get; set; }
        public string SDT { get; set; }
        public System.DateTime NgayTao { get; set; }
        public int TinhTrang { get; set; }
        public Nullable<System.DateTime> NgayKhoa { get; set; }
        public string Avatar { get; set; }
        public int VaiTro { get; set; }
        public string ButDanh { get; set; }
        public Nullable<System.DateTime> ngayDKTG { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HanhDongCuaTK> HanhDongCuaTKs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HanhDongCuaTK> HanhDongCuaTKs1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NhomTG> NhomTGs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<QuanLyHinhAnh> QuanLyHinhAnhs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ThanhVienNhom> ThanhVienNhoms { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TruyenTacGia> TruyenTacGias { get; set; }
    }
}