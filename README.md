# PROJECT BASED INTERNSHIP BUSINESS ANALYST BANK MUAMALAT X RAKAMIN ##
# 📊 Sales Performance Analysis PT Sejahtera Utama

## 📌 Latar Belakang

PT Sejahtera Utama merupakan perusahaan yang menjual berbagai produk digital, seperti Training Videos, eBooks, Drone, Drone Kits, Blueprints, Robotics, dan Robotics Kits.

Manajemen ingin memahami performa penjualan perusahaan selama periode Januari 2020 hingga Desember 2021 untuk mengetahui produk dan wilayah yang memberikan kontribusi terbesar terhadap pendapatan perusahaan.

Untuk mendukung pengambilan keputusan bisnis, dilakukan analisis data transaksi pelanggan menggunakan Google BigQuery dan visualisasi dashboard menggunakan Looker Studio.

> **Catatan:** Dataset asli tidak disertakan dalam repository ini karena alasan kerahasiaan dan privasi data perusahaan. Repository ini berfokus pada proses perancangan database, pembuatan query SQL, pengembangan dashboard, dan analisis bisnis.

---

## 🎯 Tujuan Analisis

Analisis dilakukan untuk menjawab beberapa pertanyaan bisnis berikut:

1. Berapa total penjualan yang dihasilkan perusahaan?
2. Kategori produk apa yang memberikan kontribusi penjualan terbesar?
3. Kategori produk apa yang memiliki jumlah penjualan (quantity) tertinggi?
4. Kota mana yang memberikan kontribusi sales terbesar?
5. Bagaimana pola pembelian pelanggan berdasarkan kategori produk?
6. Strategi apa yang dapat dilakukan perusahaan untuk mempertahankan atau meningkatkan penjualan?

---

## 🛠️ Tools & Technologies

![SQL](https://img.shields.io/badge/SQL-BigQuery-blue)
![Excel](https://img.shields.io/badge/Excel-Data%20Cleaning-green)
![Looker Studio](https://img.shields.io/badge/Looker%20Studio-Dashboard-orange)

| Tool | Function |
|--------|----------|
| Excel | Data Cleaning & Preparation |
| Google BigQuery | Data Processing & Analysis |
| SQL | Querying & Data Transformation |
| Looker Studio | Dashboard & Visualization |
---

## 📂 Repository Structure

```text
├── Data Visualization
│   ├── Dashboard BI Sales PT. Sejahtera Utama
│   └── Looker Studio Link
│
├── Raw_Data (Private_File)
│   ├── Customers.xlsx
│   ├── Orders.xlsx
│   ├── ProductCategory.xlsx
│   └── Products.xlsx
│
├── Relational Database Schema
│   ├── PBI BI Analyst Bank Muamalat
│   └── Relational.txt
│
└── SQL - Google BigQuery
    ├── 1. Primary Key
    ├── 2. Relationship Table
    ├── 3. Master Table
    ├── 3. Preview Master Table.png
    ├── 3. Schema Master Table.png
    └── Full Query
```

---

## 🔄 Data Processing Workflow

### 1. Data Collection
Menggunakan dataset transaksi penjualan yang terdiri dari data pelanggan, pesanan, produk, dan kategori produk.

### 2. Data Modeling
Melakukan identifikasi primary key dan relationship antar tabel untuk membangun struktur database yang terintegrasi.

### 3. Data Transformation
Menggabungkan beberapa tabel menjadi master table menggunakan SQL di Google BigQuery.

### 4. Data Analysis
Melakukan analisis untuk menjawab kebutuhan bisnis terkait performa penjualan, produk, dan wilayah.

### 5. Data Visualization
Membangun dashboard interaktif menggunakan Looker Studio untuk memudahkan monitoring dan pengambilan keputusan.

---

## 🗄️ Data Model

Dataset terdiri dari beberapa tabel utama:

- Customers
- Orders
- Products
- ProductCategory

Relasi antar tabel dapat dilihat pada folder **Relational Database Schema**.

---

## 📈 Dashboard

Dashboard dibuat menggunakan Looker Studio untuk menampilkan:

- Total Sales
- Sales by Product Category
- Quantity by Product Category
- Sales by City
- Customer Purchase Pattern
- Sales Trend Analysis

Dashboard dan link Looker Studio tersedia pada folder **Data Visualization**.

---

## 💡 Business Value

Hasil analisis dapat membantu perusahaan untuk:

- Mengidentifikasi kategori produk dengan kontribusi penjualan terbesar.
- Menentukan wilayah dengan performa penjualan tertinggi.
- Memahami pola pembelian pelanggan.
- Menyusun strategi pemasaran yang lebih efektif.
- Mengoptimalkan pengelolaan produk dan penjualan.

---

## 👤 Author

Project ini dibuat sebagai bagian dari portfolio Data Analyst menggunakan Google BigQuery dan Looker Studio.
