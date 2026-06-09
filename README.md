# Railway V2Ray Server

خادم V2Ray مهيأ للنشر على Railway مع بروتوكول VLESS وتمويه YouTube.

## المواصفات

- **البروتوكول:** VLESS
- **المنفذ:** 443
- **النقل:** gRPC
- **الأمان:** TLS
- **SNI:** www.youtube.com
- **UUID:** `8dc7722c-2767-4eea-a28b-2f8daacc07e3`
- **Service Name:** youtube

## خطوات النشر على Railway

### الخطوة 1: الدخول إلى Railway

1. اذهب إلى https://railway.app
2. سجل الدخول بحسابك (أو أنشئ حساب جديد)

### الخطوة 2: ربط المستودع

1. اضغط على **New Project**
2. اختر **Deploy from GitHub repo**
3. اختر هذا المستودع: `railway-v2ray`
4. اضغط **Deploy**

### الخطوة 3: الانتظار حتى اكتمال النشر

- ستظهر رسالة "Deployment Successful"
- انسخ رابط الخادم (سيكون مثل: `railway-v2ray.up.railway.app`)

---

## إعدادات V2RayNG على هاتفك

### الطريقة 1: النسخ المباشر

استخدم هذا الرابط (استبدل `railway-v2ray.up.railway.app` برابطك الخاص):

```
vless://8dc7722c-2767-4eea-a28b-2f8daacc07e3@railway-v2ray.up.railway.app:443?encryption=none&flow=&security=tls&sni=www.youtube.com&type=grpc&serviceName=youtube#railway-v2ray
```

### الطريقة 2: الإدخال اليدوي

في V2RayNG:
- **البروتوكول:** VLESS
- **العنوان:** railway-v2ray.up.railway.app
- **المنفذ:** 443
- **UUID:** 8dc7722c-2767-4eea-a28b-2f8daacc07e3
- **التشفير:** none
- **النقل:** gRPC
- **Service Name:** youtube
- **SNI:** www.youtube.com
- **TLS:** مفعّل

---

## نصائح مهمة

✅ **كيفية التحقق من عمل الخادم:**
1. تأكد من أن Railway Dashboard تظهر "Deployment Successful"
2. اختبر الاتصال في V2RayNG
3. إذا لم يعمل، تحقق من سجلات الأخطاء في Railway

⚠️ **تحذيرات:**
- هذا الخادم مخصص للاستخدام الشخصي فقط
- تأكد من امتثالك لقوانين شركة الاتصالات والدول المحلية
- Railway قد توقف الخدمة إذا تم إساءة الاستخدام

---

## تحديث الخادم

إذا أردت تحديث الإعدادات:

```bash
git clone https://github.com/mohamed666999/railway-v2ray.git
cd railway-v2ray
# عدّل الملفات (مثل config.json)
git add .
git commit -m "تحديث الإعدادات"
git push origin main
```

Railway سيعيد النشر تلقائياً عند كل تحديث.

---

## المساعدة

إذا واجهت مشاكل:
- تحقق من سجلات الأخطاء في Railway Dashboard
- تأكد من صحة ملف `config.json`
- تأكد من أن المنفذ 443 مفتوح
