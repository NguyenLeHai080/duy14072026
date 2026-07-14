# WordPress của Duy

Mã nguồn của website `camera.nexoratech.com.vn`.

## Triển khai production

Mọi commit được push lên nhánh `prod` sẽ được máy chủ kiểm tra và triển khai tự
động trong vòng khoảng một phút. Máy chủ giữ nguyên `wp-config.php`, dữ liệu
upload và thông tin đăng nhập database.

```bash
git switch prod
git pull origin prod
# sửa mã nguồn
git add .
git commit -m "Mô tả thay đổi"
git push origin prod
```

Không commit mật khẩu, file `.env`, `wp-config.php`, file backup hoặc nội dung
`wp-content/uploads` vào Git.

## Cập nhật database

Tạo file SQL mới trong `database/migrations`, ví dụ:

```text
database/migrations/20260714_add_custom_table.sql
```

Mỗi file migration chỉ được chạy một lần, theo thứ tự tên file. Không sửa file
migration đã được triển khai; hãy tạo file mới cho thay đổi tiếp theo. Hệ thống
tự sao lưu database trước khi chạy migration.
