# Tuproq tahlilini sun'iy intellekt orqali o'rganish yordamida hosilni bashorat qilish

![crops](crops.jpeg)

## Umumiy ma'lumot

Ushbu loyiha fermerlarni ekinlarni tanlash, ekish va yig'ish bo'yicha ongli qarorlar qabul qilishda qo'llab-quvvatlash uchun mashinalarni o'rganishga asoslangan ekinlarni bashorat qilish modelini ishlab chiqishga qaratilgan. Model chuqur o'rganish texnikasidan foydalangan holda tarixiy ekinlar va ob-havo ma'lumotlarining katta ma'lumotlar to'plamida o'qitildi. Model natijalari ekinlarning hosildorligini bashorat qilishda yuqori aniqlikni ko'rsatdi va an'anaviy ekinlarni bashorat qilish usullaridan ustun keldi. Model foydalanuvchilarga qulay interfeys bilan jihozlangan bo'lib, fermerlarga bir nechta qiymatlarni kiritish va qachon va nima ekish kerakligi to'g'risida xabardor qarorlar qabul qilish imkonini beradi. Ushbu loyiha qishloq xo'jaligining samaradorligi va rentabelligini oshirish uchun ML dan foydalanishda muhim qadamdir.

## Ma'lumotlar

Modelni o'rgatish uchun ishlatiladigan ma'lumotlar [hosilni bashorat qilish] (https://www.kaggle.com/datasets/atharvaingle/crop-recommendation-dataset) ma'lumotlar to'plami. Ma'lumotlar to'plami 2200 xil ekinlarning 22 ta namunasidan iborat bo'lib, ularning bashoratlari 7 ta xususiyat yordamida amalga oshiriladi: azot, fosfor, kaliy va tuproqning pH miqdori, harorat, namlik va yog'ingarchilik. Ma'lumotlar to'plami mukammal muvozanatlangan, har bir ekin 100 ta namunaga ega. The [Hindistonda yog'ingarchilik] (https://www.kaggle.com/datasets/raj Sardor / O'zbekistonda yog'ingarchilik) ma'lumotlar to'plami mos keladigan yog'ingarchilik qiymatlariga geolokatsiyalarni kesib o'tish uchun ishlatiladi. Ma'lumotlar izchillikni ta'minlash uchun oldindan qayta ishlangan va yetishmayotgan qiymatlarni olib tashlash uchun tozalangan. Ma'lumotlar turli xil ekin turlari, ob-havo sharoitlari va tuproq turlari to'g'risidagi ma'lumotlarni o'z ichiga oladi. [Hosilni bashorat qilish] bo'yicha quyidagi ma'lumotlarni vizualizatsiya qilish amalga oshirildi(https://www.kaggle.com/datasets/atharvaingle/crop-recommendation-dataset) ma'lumotlar to'plami:

- Xususiyatlar uchun juftlik korrelyatsion diagrammalar

![data_visual1](data_visual1.png)

- Korrelyatsiya Matritsasi

![correlation_matrix](correlation_matrix.png)

## Model

Model chuqur neyron tarmoqlari(Dnn) yordamida qurilgan. Biz tanlagan arxitektura mos ravishda 3, 64 va 128 neyronli 64 ta yashirin qatlamdan va har biri bitta ekin turiga mos keladigan 22 neyrondan iborat chiqish qatlamidan iborat. Kirish va yashirin qatlamlarda faollashtirish funktsiyasi [SeLU] (https://pytorch.org/docs/stable/generated/torch.nn.SELU.html), chiqish qatlami uchun faollashtirish funktsiyasi esa softmax hisoblanadi. Model Python doirasi yordamida yaratilgan.

## O'rganish

Model 80:20 bilan ma'lumotlarga o'rgatilgan poezd-sinov split nisbatini o'z ichiga oladi. Ob'ektiv (yo'qotish) funktsiyasi kategorik xoch entropiyasi edi va optimallashtiruvchi omil edi. Modelni baholash uchun ishlatiladigan ishlash ko'rsatkichi aniqlikdir. O'rganish 100 davr uchun qilingan.

## Natijalar

Model poezd ma'lumotlarida 99% aniqlikka va sinov ma'lumotlarida taxminan 99% aniqlikka erishdi, bu uning bashoratlarida yuqori aniqlik darajasini ko'rsatadi.

<!-- The vizualization of the performance is shown as follows: -->

## Tekshirish

Bashorat qilish uchun oxirgi foydalanuvchidan quyidagi ma'lumotlar to'planadi:

1. N, p, k, tuproqning pH tarkibi.
2. Geolokatsiya (shtat va tuman)
3. Kultivatsiya oyi (mavsumi) 

Geolokatsiya ob-havo prognozi saytlariga tegishli API  yordamida joyning harorat va namlik qiymatlarini olish mumkin. Iqlim ma'lumotlari uchun API ni ulash uchun quyidagi saytlar orqali ulanish mumkin:

1. [Open Weather](http://api.openweathermap.org/)
2. [Latitude and Logitude Finder](https://www.latlong.net)
Bundan tashqari, biz foydalanuvchilarga o'zlarining hosillarini bashorat qilish uchun tegishli ma'lumotlarni kiritishlari uchun interaktiv interfeys yaratdik.
![Preview](preview2.png)


