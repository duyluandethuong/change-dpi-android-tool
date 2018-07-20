chcp 65001
echo OFF
echo 

echo ***************************************
echo Author: Duy Luan @ Tinhte.vn
echo Version: 1.0
echo Release: 20 Aug 2016
echo.

echo Script này sẽ đổi DPI máy Android của bạn, không cần root máy
echo + Trên máy tính: Nếu chưa cài Android ADB, hãy chạy file adb-setup-1.4.2.exe đi kèm, cài rồi thì thôi
echo + Đảm bảo bạn đã bật Developer Mode trên điện thoại.
echo + Nếu chưa bật, hãy vào "Settings > About", tìm dòng 'Build number' ('Số Phiên bản' nếu bạn dùng tiếng Việt) và nhấn 7 lần vào đó.
echo + Sau khi đã có Developer Mode, đảm bảo bạn đã chọn tùy chọn USB Debugging trong đó.
echo + Giờ thì kết nối điện thoại của bạn với máy tính bằng cáp USB. Nhớ cho phép Debug nếu màn hình điện thoại có hỏi.
echo.

echo Nên đổi DPI thành bao nhiêu là hợp lý?
echo + Đoạn script sẽ nói bạn biết DPI mặc định của máy, ví dụ 640 DPI.
echo + Nếu bạn cảm thấy kích thước chữ, icon quá to so với màn hình, có thể giảm DPI xuống thấp hơn.
echo + Bạn nên giảm từ từ tính từ mức DPI mặc định, ví dụ 600 rồi 580 rồi 560 cho đến khi thấy vừa ý.
echo.

echo Ghi chú:
echo + Có khả năng máy của bạn sẽ bị lỗi sau khi cài DPI mới.
echo + Khi đó, chạy lệnh 'adb shell wm density reset' để đưa về mặc định của nhà sản xuất
echo ***************************************

pause

echo.
echo DPI mặc định của thiết bị là 
adb shell getprop ro.sf.lcd_density

echo.
echo Bạn muốn thiết lập DPI bao nhiêu? (Ví dụ: 520 DPI thì gõ số 520) 
set /p dpi_set="DPI mong muốn: "

echo.
echo DPI sẽ được thiết lập thành %dpi_set%...
adb shell wm density %dpi_set%

echo.
echo Khởi động lại thiết bị...
adb reboot

echo.
echo Hoàn tất. Xin cảm ơn và chúc vui vẻ!
echo.
echo.
pause