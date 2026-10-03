# Railway deployment

این نسخه برای Railway اصلاح شده است. در Dockerfile از دستور Docker `VOLUME` استفاده نشده، چون Railway برای Volume از تنظیمات خود سرویس استفاده می‌کند.

## مراحل
1. محتویات این پوشه را در ریشه GitHub repository قرار دهید. خود فایل ZIP را داخل repository نگذارید.
2. در Railway همان repository را Deploy کنید.
3. اگر قبلاً یک Railway Volume به مسیر `/etc/x-ui` وصل کرده‌اید، آن را نگه دارید.
4. در Settings > Networking یک Public Domain بسازید.
5. اگر build خطای دیگری داد، Build Logs را باز کنید و اولین خط قرمز را ارسال کنید.
