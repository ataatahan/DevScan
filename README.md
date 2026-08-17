# 🚀 DevScan - Cihaz & Sürücü Bilgi Tespit Aracı

![DevScan Icon](ico/Ata.ico)

**DevScan**, bilgisayarın donanım kimliğini (Üretici, Model, Seri Numarası) ve işletim sistemi bilgilerini anında tespit ederek, ilgili markanın resmi sürücü/destek portalına tek tıkla yönlendiren **hafif (lightweight)** bir Help Desk destek aracıdır.

---

## 📌 Özellikler

* ⚡ **Işık Hızında Tespit:** Donanım ve işletim sistemi bilgilerini saniyeler içinde ekrana getirir.
* 📋 **Otomatik Kopyalama:** Cihazın **Seri Numarasını (Serial Number)** doğrudan sistem panosuna (Clipboard) kopyalar.
* 🌐 **Resmi Portala Yönlendirme:** Markaya özel (Lenovo, HP, Dell, ASUS, MSI, Acer, Monster) resmi destek sayfasını varsayılan tarayıcınızda açar.
* 🛠️ **Sıfır Kurulum:** Kurulum veya ek kütüphane gerektirmez; `.exe` olarak tak-çalıştır çalışır.

---

## 🚀 Kullanım (Son Kullanıcılar İçin)

1. **`DevScan.exe`** dosyasını çalıştırın.
2. Ekranda cihaz bilgilerinizi kontrol edin.
3. Otomatik olarak açılan resmi destek sayfasındaki arama kutusuna tıklayıp **`Ctrl + V`** yapın *(Seri numaranız hafızaya kopyalanmıştır)*.
4. Cihazınıza özel güncel sürücüleri anında indirin!

> **⚠️ Windows SmartScreen / Güvenlik Uyarısı Alıyorsanız:**
> * Çıkan mavi ekranda **"Daha fazla bilgi" (More info)** seçeneğine tıklayın.
> * Ardından alt kısımda beliren **"Yine de çalıştır" (Run anyway)** butonuna basın.
> * *(İsteğe bağlı)* `.exe` dosyasına sağ tıklayıp **Özellikler > Engellemeyi Kaldır (Unblock)** seçeneğini işaretleyebilirsiniz.

---
## 🛠️ Geliştirici & Derleme (GitHub)

Projeyi kaynak koddan düzenlemek veya kendiniz `.exe` formatına dönüştürmek isterseniz:

### Gereksinimler
* Windows 10 / 11
* PowerShell 5.1+
* `PS2EXE` Modülü

### Derleme Adımları

1. Repoyu klonlayın:
   ```bash
   git clone [https://github.com/ataatahan/DevScan.git](https://github.com/ataatahan/DevScan.git)
   cd DevScan

👤 Geliştirici
* Geliştirici: Atahan ATA
* Kullanım Alanı: Help Desk / IT Support Quick-Fix Tools