<h1 align="center">📊 CSC12107 – BÁO CÁO ETL.Assigment 📊</h1>

---

## 📘 THÔNG TIN VỀ ĐỒ ÁN

- **📚 Mã học phần**: CSC12107
- **📖 Tên học phần**: Hệ thống thông tin phục vụ trí tuệ kinh doanh
- **📑 Tên đồ án**: BÁO CÁO ETL.Assigment
---

## 📝 Mô tả Dự án

Dự án **ETL với SSIS** bao gồm các bước sau để thực hiện quá trình rút trích, làm sạch và nạp dữ liệu:

1. **🛠️ Extract dữ liệu** từ **Excel** (Sheet **Học sinh** và **LopHoc**) và đưa vào **Stage** theo phương pháp **Incremental Extract**.
2. **⚙️ Load vào Stage**:
   - Làm sạch dữ liệu, loại bỏ các bản ghi cũ, cập nhật dữ liệu mới.
3. **🚀 Load từ Stage sang NDS**:
   - Chuyển dữ liệu từ **Stage** sang các bảng **LopHoc_NDS** và **HocSinh** trong **NDS** sau khi đã **profiling** và **làm sạch**.
4. **🗂️ Metadata**:
   - Ghi lại thời gian ETL (`LSET`, `CET`) để kiểm soát dữ liệu rút trích và nạp chính xác.

---

## 👩‍🏫 Giảng viên phụ trách

- **Cô Hồ Thị Hoàng Vy**
- **Cô Tiết Gia Hồng**
- **Cô Nguyễn Ngọc Minh Châu**

---

> **Ghi chú**: Dự án tập trung vào các kỹ thuật ETL cơ bản, sử dụng **SSIS** để quản lý và chuyển đổi dữ liệu một cách hiệu quả từ các nguồn khác nhau.
