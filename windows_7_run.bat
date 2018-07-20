echo OFF
echo 

echo ***************************************
echo Author: Duy Luan @ Tinhte.vn
echo Version: 1.0
echo Release: 20 Aug 2016
echo.

echo Script a se doi DPI cua may ban, khong can root may
echo + Tren may tinh: Neu chua cai Android ADB, hay chay file adb-setup-1.4.2.exe di kem, cai roi thi thoi
echo + Dam bao ban da bat Developer Mode tren dien thoai.
echo + Neu chua bat, hay vao "Settings > About", tim dong 'Build number' ('So phien ban' neu ban dung tieng Viet) va nhan 7 lan vao do
echo + Sau khi da bat Developer Mode, dao bao ban da chon tuy chon USB Debugging trong do.
echo + Gio thi ket noi dien thoai cua ban vao may tinh bang cap USB. Cho phep USB Debugging tren man hinh smartphone neu duoc hoi.
echo.

echo Nen doi DPI xuong bao nhieu la hop ly?
echo + Doan script se cho biet DPI mac dinh cua may, vi du 640 DPI.
echo + Neu ban cam thay chu, icon va moi thu tren man hinh qua lon, hay giam con so nay xuong.
echo + Ban nen giam dan dan ke tu DPI mac dinh, vi du 600 roi 580 roi 560 cho den khi thay vua y.
echo.

echo Ghi chu:
echo + Co kha nang dien thoai cua ban se bi loi khi thiet lap DPI moi.
echo + Khi do, chay lenh 'adb shell wm density reset' de dua ve mac dinh cua nha san xuat.
echo ***************************************

pause

echo.
echo DPI mac dinh cua thiet bi la
adb shell getprop ro.sf.lcd_density

echo.
echo Ban muon thiet lap DPI bao nhiu? (Vi du: 520 DPI thi go so 520) 
set /p dpi_set="DPI mong muon: "

echo.
echo DPI se duoc thiet lap thanh %dpi_set%...
adb shell wm density %dpi_set%

echo.
echo Khoi dong lai thiet bi...
adb reboot

echo.
echo Hoan tat. Xin cam on va chuc vui ve!
echo.
echo.
pause