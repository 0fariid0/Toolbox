# 🚀 ToolBox

ابزار خط فرمان برای مدیریت و بهینه‌سازی سرورهای Ubuntu / Debian.

## نصب و اجرا روی سرور

```bash
bash <(curl -Ls https://raw.githubusercontent.com/0fariid0/Toolbox/main/script.sh)
```

بعد از نصب:

```bash
toolbox
```

## لینک‌های GitHub

- Repository: `https://github.com/0fariid0/Toolbox`
- Script: `https://raw.githubusercontent.com/0fariid0/Toolbox/main/script.sh`
- ToolBox: `https://raw.githubusercontent.com/0fariid0/Toolbox/main/toolbox.sh`

## امکانات

- تنظیم و تشخیص خودکار MTU
- انتخاب و تست Mirror برای APT
- تنظیم DNS عمومی، ایرانی و دستی
- تنظیم Mirror برای Docker، Node.js، npm و Python/pip
- تست لایسنس و دسترسی سرویس‌ها
- بنچمارک سرور با `bench.sh`
- Speedtest با انتخاب سرورهای مختلف

## نکات مهم

- برای اجرای کامل امکانات، دسترسی `root` یا `sudo` لازم است.
- قبل از تغییر DNS، MTU یا Mirror بهتر است دسترسی جایگزین مثل کنسول دیتاسنتر داشته باشید.
- این ابزار برای Ubuntu / Debian و مشتقات آن‌ها طراحی شده است.

## اجرای مستقیم بدون نصب دائمی

اگر می‌خواهید فایل اصلی را مستقیم اجرا کنید:

```bash
bash <(curl -Ls https://raw.githubusercontent.com/0fariid0/Toolbox/main/toolbox.sh)
```

## مشارکت

1. Fork کنید.
2. تغییرات را اعمال کنید.
3. Pull Request ارسال کنید.

## لایسنس

MIT
