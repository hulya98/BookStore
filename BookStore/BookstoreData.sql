USE [BookStore]
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 
GO
INSERT [dbo].[Genres] ([GenreId], [GenreName], [Status]) VALUES (1, N'Drama', 1)
GO
INSERT [dbo].[Genres] ([GenreId], [GenreName], [Status]) VALUES (2, N'Comedy', 1)
GO
INSERT [dbo].[Genres] ([GenreId], [GenreName], [Status]) VALUES (3, N'Fantasy', 1)
GO
INSERT [dbo].[Genres] ([GenreId], [GenreName], [Status]) VALUES (4, N'Scientific', 1)
GO
INSERT [dbo].[Genres] ([GenreId], [GenreName], [Status]) VALUES (5, N'Business', 1)
GO
INSERT [dbo].[Genres] ([GenreId], [GenreName], [Status]) VALUES (6, N'Science fiction', 1)
GO
INSERT [dbo].[Genres] ([GenreId], [GenreName], [Status]) VALUES (7, N'Action', 1)
GO
INSERT [dbo].[Genres] ([GenreId], [GenreName], [Status]) VALUES (30, N'Psychology', 1)
GO
INSERT [dbo].[Genres] ([GenreId], [GenreName], [Status]) VALUES (31, N'Classic', 1)
GO
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[Writers] ON 
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (1, N'Adam Fawer', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (2, N'Antoine de Saint-Exupéry', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (3, N'Jose Mauro De Vasconcelos', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (4, N'Grigory Petrov', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (6, N'Victor Hugo', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (8, N'Elxan Elatlı', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (9, N'Çingiz Aytmatov', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (10, N'Charles Dickens', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (11, N'Paulo Coelho', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (12, N'Dan Brown', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (13, N'Jean Giono', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (14, N'Richard Carlson', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (23, N'Daniel Smith', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (24, N'Sarah Jio', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (25, N'Sabahattin Ali', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (26, N'Khalid Huseyin', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (27, N'Burak Aksak', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (28, N'Mark Levi', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (29, N'Stephen King', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (30, N'Harper Lee', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (31, N'Miguel de Cervantes Saavedra', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (32, N'Romain Puertolas', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (33, N'Zafer Polat Koyuncu', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (34, N'J.K. Rowling', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (35, N'George R.R.Martin', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (36, N' J.R.R. Tolkien', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (37, N'George Orwell', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (38, N'Jack London', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (39, N'Napoleon Hill', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (40, N'Benjamin Graham', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (41, N'John Brooks', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (42, N'Simon Sinek', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (43, N'Rad Bradbury', 1)
GO
INSERT [dbo].[Writers] ([WriterId], [WriterName], [Status]) VALUES (44, N'Isaac Asimov', 1)
GO
SET IDENTITY_INSERT [dbo].[Writers] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (2, 2, 3, N'The Little Prince', N'b48f8249-e162-4445-a853-43839733694dLittleprince.jpg', 17, CAST(4.00 AS Decimal(18, 2)), 10, CAST(3.60 AS Decimal(18, 2)), N'Tülkü susdu və uzun-uzadı Balaca Şahzadəyə baxdı:<br>
– Nə olar, əhliləşdir məni... <br>
– Mən də çox istəyirəm, – Balaca Şahzadə dedi, – amma mənim bir elə vaxtım yoxdur. Hələ neçə-neçə dost tapmalı, neçə-neçə yeni şeylər öyrənməliyəm...<br>
– Yalnız əhliləşdirdiyin şeyləri tanıya bilərsən. İnsanların nəyisə öyrənməyə vaxtları yoxdur. Onlar həmişə dükanlardan hazır malı almağa həvəslidirlər. Ancaq bu dünyada elə bir dükan yoxdur ki, orda dost satsınlar, bəlkə, elə buna görə də insanların artıq dostları yoxdur.
Dostun olmasını istəyirsənsə, çox xahiş edirəm, məni əhliləşdir.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (3, 4, 4, N'Beyaz zambaklar ülkesinde', N'292488e9-a3d5-477c-a770-b940da1e2681byzzmbklar.jpg', 21, CAST(17.00 AS Decimal(18, 2)), 0, CAST(17.00 AS Decimal(18, 2)), N'“Finlandiya. Ağ zanbaqlar ölkəsi” əsəri Finlandiyanın qurulmasını, onun bataqlıq ərazidən ağ zanbaqlar ölkəsinə çevrilməsini təsvir edən Qriqori Petrovun ən məşhur əsəridir. Bu əsər müəllifin XIX əsrin əvvəllərində Finlandiya səyahətində tutduğu qeydlər əsasında yazılmışdır.
<br>
Əsərdə Finlandiyanın daşlı və bəhrəsiz torpaqlarından, savadsız və kasıb insanlarından, sürətlə pozulan cəmiyyətindən, azadlıq və sivilizasiya yolu ilə inkişafından, ziyalıların xalqı oyandırmasından, bugünkü fin mədəniyyətinin, sənayesinin və təhsilinin əsas təməllərinin atılmasından bəhs edilir. Müəllif demək istəyir ki, insanlar istəsələr, cəmiyyətin bütün sahələrində uğur qazana bilərlər. Kitab bizə bu ideyanı aşılayır, nümunə və faktlarla göstərir.
<br>
Beləliklə, kitabı oxuyan hər kəs “Bizdə nə çatışmır?” sualını özünə verəcək, gücün əsl mənbəyini tapacaqdır.
<br>
“Xalqı yaddan çıxarmayın! Hamınız xalqın içindən çıxmısınız. Bəs indi nə ilə məşğulsunuz? Savadsız həmvətənlərinizdən qaçırsınız? Yoxsa, xalqımızın firavanlığı üçün yollar axtarırsınız? Cəmiyyətin mədəni inkişafı naminə hansı işləri görürsünüz?”
<br>
“Gəncləri günahlandırmayın, özünüzü qınayın. Qəbahət gənclərdə deyil, sizdədir. Siz gəncləri necə tərbiyə edirsinizsə, onlar da elə yetişirlər. Gənclərə hansı tərbiyəni verirsiniz?”
<br>
“Qədim yunan mütəfəkkiri Sokrat meydanlarda illərlə həyatın gözəllik və gerçəklərini xalqa öyrətmişdir. Müasir Sokratlar hardadır?”
<br>
“Müdrik bir atalar sözündə deyilir ki, yeni cəmiyyətlər özləri ilə yeni nəğmələr gətirir. Zaman ötdükcə nəsillər də dəyişir və inkişaf edir. Hər nəsil özü ilə birlikdə yeni anlayışlar, yeni ehtiyaclar və yeni arzular gətirir.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (4, 1, 6, N'Olasılıksız', N'e2b90f9a-377f-4195-9508-f584a87ebb39Olasiliksiz.jpg', 15, CAST(10.00 AS Decimal(18, 2)), 0, CAST(10.00 AS Decimal(18, 2)), N'BITIRMEK ICIN YARINI, BASKASINA ANLATMAK ICIN BITIRMEYI BEKLEMEYECEKSINIZ. ''Olasiliksiz demek yetersiz kalacaktir. Insani adeta buyusu altina alan bu hikayede, Adam Fawer, bilim, felsefe, entrika ve maceradan ortaya bir basyapit cikarmis." Clive Cussler ''Ilk cumleden itibaren baglanip kaldim- sayfalari, flos royal tutturmaya calisan bir kumarbazin kartlarini actigi gibi cevirdim. Olasiliksiz, insani dusunduren matematik teorilerini ve maceranin albenisini dahice birlestiren, okura Michael Crichton ve Robert Ludlum''u hatirlatan bir kitap. Gercekten kacirilmamasi gereken bir zevk.'' Ben Mezrich, ''Mekani Batirmak'' ve ''Cirkin Amerikalilar''in yazari ''...hikayenin sonunda, bir yandan sizofreninin gercek nedenlerini dusunurken, bir yandan da tek bir hareketin bir insanin hayatini ne kadar degistirebilecegine sasiriyor olacaksiniz. Olasiliksiz, begeniceginize gozumuz kapali iddiaya girebilecegimiz bir kitap.'' People Bir sabah, yillardir gormediginiz bir arkadasinizi dusunerek uyandiniz. Bir saat sonra, onunla sokakta karsilastiniz. Sizce bu sadece bir tesaduf mu, yoksa cok daha farkli anlami olabilir mi? Siz hic Loto''da buyuk ikramiye kazanmadiniz. Ama birileri kazaniyor. Hem de surekli! Onlar sizden daha mi sanslilar? Sans nedir gercekten? Icinizde butun paranizi kirmiziya yatirmaniz gerektigini soyleyen bir his var. Bu his bir ongoru mudur? Yoksa daha fazlasi mi? Yolda gidiyorsunuz. Kafanizi cevirip yandaki kucuk parka baktiniz ve bir anda bu ani daha once de yasamis oldugunuzu hissettiniz. Evet, Deja Vu. Sizce nedir Deja Vu- Gecmis mi, ruya mi, yoksa gelecegi mi goruyorsunuz? Eger siz de kontrolun kimde oldugunu merak ediyorsaniz, ''Olasiliksiz'' tam size gore bir roman.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (5, 6, 1, N'Gülən adam', N'047f3497-d4ce-497d-b6dc-6bb524668cd5gulenadam.jpg', 7, CAST(19.00 AS Decimal(18, 2)), 20, CAST(14.20 AS Decimal(18, 2)), N'Böyük fransız şairi, yazıçısı və dramaturqu Viktor Hüqonun bütün əsərləri romantizmin şəfəqinə bürünüb. «Gülən adam» romanını Hüqo siyasi düşüncələrinə görə sürgün edildiyi Channel adalarında 15 ay ərzində yazmışdır.
<br>
«Gülən adam» romanında yazıçı öz qəhrəmanı Quinplenin uşaq vaxtı oğurlanmasını, quldurlar tərəfindən eybəcər hala salınmasını və yarmarka aktyorluğundan parlamentdə lord vəzifəsinə oturmasını təqib edir.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (6, 6, 1, N'Səfillər', N'cb37f67b-e550-49fe-86b6-4c385fc33e81sefiller.jpg', 10, CAST(20.00 AS Decimal(18, 2)), 50, CAST(10.00 AS Decimal(18, 2)), N'Yalnız fransız ədəbiyyatının deyil, dünya ədəbiyyatının da ən görkəmli simalarından sayılan Viktor Hüqo özünün parlaq istedadının məhsulu olan əsərləri ilə bəşər bədii fikri tarixini zənginləşdirmişdir. XIX əsrin bu korifey sənətkarının yaradıcılığı ümumbəşər mənəvi sərvətləri xəzinəsində özünəməxsus yer tutur. Hüqo dühası, Hüqo irsi yer üzünün bütün xalqları üçün doğma və əzizdir. Hüqonun tükənməz yaradıcılıq aləmində “Səfillər” romanının xüsusi çəkisi var. Dahi rus yazıçısı Lev Tolstoyun “fransız ədəbiyyatının ən yaxşı romanı” adlandırdığı bu ölməz əsər, demək olar, bütün dünya dillərinə tərcümə olunaraq müəllifinə əbədi şöhrət qazandırmışdır. Hamı üçün yazılmış “Səfillər” bu gün də qapıları döyür: “Açın, biz sizə gəlmişik” deyir. Ölməz ədibin sahilsiz kədərinin ayrılmaz parçası olan bu şah əsəri hər bir insana mənəvi cəhətdən zənginlik qazandıracaq qüdrətə sahib romandır. Əgər “Səfillər” olmasaydı, dünya ədəbiyyatı həqiqətən də bir xeyli yoxsul görünərdi.   .')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (9, 10, 4, N'İki şəhərin hekayəsi', N'bedbbbbc-c9c4-4a00-b308-3828dc849c02ikiseherinhekayesi.jpg', 1, CAST(1.00 AS Decimal(18, 2)), 2, CAST(1.00 AS Decimal(18, 2)), N'Çarlz Dikkensin “İki şəhərin hekayəti” əsəri ingilisdilli ədəbiy­yatda populyar romanlardan biri hesab olunur. Elə təkcə ingilis dilində bu roman 200 milyon tirajla çap olunub. Əsərin əsas qəhrəmanları Lüsi Manett və Çarlz Darney iki düş­mən ailənin gəncləridi. Bu düşmənçilik ona gətirib çıxarır ki, Lüsi­nin atası doktor Manett iyirmi il həbsxanada yatır və nəticədə ağlını itirir. Təsadüf elə gətirir ki, Lüsi ilə Çarlz tanış olub bir-birini sevir, evlənirlər. Həmin vaxt Böyük Fransız İnqilabı yetişmək üzrəydi. 1789-cu ildə Bastiliyanın alınmasıyla inqilab başladı. Fransa qan gölündə üzürdü- inqilab qurban tələb edirdi. Həmin qurbanlardan biri də Çarlz Darney olmalıydı və iş elə gətirdi ki, Çarlz Darney inqilabçıların əlinə keçdi. Artıq sağalıb ağlı başına gəlmiş doktor Manett, Lüsi, ailənin yaxın dostu, qoca bank işçisi mister Lorri gənc Çarlzı xilas etmək üçün əllərindən gələni edirlər. Lakin heç bir nəticə alınmır. Bu yerdə istedadlı vəkil, Lüsini hədsiz dərəcədə sevən, lakin onunla evlənə bilməyən vəkil Sidni Karton işə qarışır. Karton bu işə qarışmaya da bilərdi, lakin qarışdı və öz həyatı bahasına Lüsinin həyat yoldaşını ölümdən xilas etdi… Dramatik hadisələrlə dolu, çox maraqlı bir əsər olan “İki şəhərin hekayəti” romanı Azərbaycan dilində ilk dəfə çap olunur.  ')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (11, 2, 31, N'Bülbülü öldürmek', N'179aab55-0e9d-432a-83bf-5d14325e34f0Harper_Li_Bulbulu_oldurmek_kapak_Esas.png', 12, CAST(12.00 AS Decimal(18, 2)), 21, CAST(12.00 AS Decimal(18, 2)), N'Çox təsirli, dramatik romandır. “Bülbülü öldürmək” oxucuları mərhəmət və qəddarlıq, sevgi və nifrətlə qarşı-qarşıya qoyur. Alabamadan olan balaca bir qızın söylədiyi həyat hekayəsi bu vaxtacan 18 milyon nüsxədən çox nəşr olunub, dünyanın 40 dilinə tərcümə edilib. Harper Lee həmişə öz kitabını sadə sevgi hekayəsi adlandırıb. Kitab Amerika ədəbiyyatının şah əsəri hesab olunur.
“Bülbülü öldürmək” romanında müəllif uşaqlıq illəri ilə bağlı unudulmaz xatirələrini qələmə alıb. Roman ilk dəfə 1960-cı ildə nəşr olunub, elə həmin ildə də bestsellerə çevrilib, tənqidçilər tərəfindən yüksək qiymətləndirilib. 1961-ci ildə Pulitzer mükafatına layiq görülüb, daha sonra kitab əsasında film çəkilib.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (15, 23, 30, N'Steve Jobs Gibi Düşünmek', N'6109a572-ddab-4d01-9efa-c2d26e677cd9thinkasstevejobs.jpg', 12, CAST(7.20 AS Decimal(18, 2)), 0, CAST(7.20 AS Decimal(18, 2)), N'Steve Jobs... O bir teknoloji devi ve dünyanın en çağdaş inovasyoncularından biriydi. Bu başarısının altında yatan sır ise herkesten farklı düşünebilme becerisiydi. Ayrıca, insanların ne istediğini onlardan önce bilmek gibi müthiş bir yeteneğe sahipti. Dahası, bir fikri satmak da ondan sorulurdu. İşleyişe olduğu kadar tasarıma da son derece önem veren Jobs, dünyanın teknolojiye olan bakış açısını kökten değiştirdi. Peki, böyle bir başarıya nasıl ulaşabilmişti? Yöntemleri nelerdi? Bu başına buyruk işadamının görüşlerini ve itinayla bilenmiş becerilerini bir araya getiren Daniel Smith, okurlarını Steve Jobs''dan ilham almaya ve dünyaya bir dâhinin gözlerinden bakmaya davet ediyor. Jobs, dünyayı değiştirmekten korkmayarak insanlığı ileri götüren kişilerin her zaman için uyumsuzlar ve isyankârlar olduğunu dile getirmiştir. Bu kitap sayesinde siz de Steve Jobs gibi özgürce düşünmeyi alışkanlık haline getirerek cüretkâr fikirler üretmeye başlayabilir ve bu fikirleri günlük yaşamınızda etkin bir biçimde uygulayabilirsiniz.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (19, 29, 1, N'Yaşıl mil', N'36dacb16-d84d-42a4-ac9a-e11afeda0414yasil-mil-450x640.jpg', 21, CAST(9.99 AS Decimal(18, 2)), 0, CAST(7.99 AS Decimal(18, 2)), N'Əsər Pol Eskomin dili ilə nəql edilir. Öz cavanlıq illərini xatırlayan Pol haçansa ölüm hökmünün icrasını gözləyən məhkumlar üçün nəzərdə tutulmuş həbsxananın «E» blokunun sabiq baş nəzarətçisi olmuşdur. Onun «qəyyumları» arasında Con adlı nəhəng, safqəlbli bir zənci də var idi. O, iki kiçik qız uşağının qəddarcasına qətlində günahlandırılırdı. Sonradan məlum olur ki, Con bu cinayətdə günahkar deyil. O, sadəcə olaraq, uşaqları xilas etmək istərkən polislər tərəfindən yaxalanmışdır.
<br>
«Yaşıl Mil» romanını Stiven Kinq 1996-cı ildə yazmışdı. Kitab ilk nəşrindən sonra «Yaxşı roman» nominasiyasında Brem Stoker mükafatına layiq görülmüşdür. 1999-cu ildə isə bu roman çox uğurla ekranlaşdırılmışdır. «Yaşıl Mil» romanı Kinqin ən yaxşı əsərlərindən sayılır. Çox emosional, mürəkkəb süjet xəttinə və əlvan dekorasiyalara malik olan bu romanda təkcə mistik deyil, eyni zamanda fəlsəfi suallar da öz həllini tapır.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (20, 26, 1, N'Və dağlardan səda gəldi', N'442e6728-0371-4ccd-8b05-e3e0d40a524avedaglardansedageldi.jpg', 1, CAST(12.00 AS Decimal(18, 2)), 0, CAST(12.00 AS Decimal(18, 2)), N'Abdulla və bacısı Pəri 1952-ci ilin Əfqanıstanının Şadbag adlı kiçik bir kəndində ataları və ögey analarıyla birlikdə yaşayırlar. Ataları Sabur davamlı iş axtarmaqda, yoxsulluq və çətin qış şərtlərilə mübarizə aparmaqdadır.

Adı kimi gözəl və yaxşı xasiyyəti olan Pəri, qardaşı Abdullanın hər şeyidir. Bacısına qardaşdan çox valideyn olan Abdulla onun uğrunda, hətta qurban getməyə hazırdır. Onun üçün etməyəcəyi heç bir şey yoxdur. Hətta qardaşı, Pərinin kolleksiyasına əlavə etmək istədiyi ən dəyərli lələyi əldə etmək üçün yeganə ayaqqabılarından da keçməyə razıdır. Və gecələr bir tək çarpayını paylaşmaq məcburiyyətindədirlər.

Pəri və Abdulla, atalarıyla Kabil çölünə tərəf yola çıxanda onları gözləyən, həyatlarını bir-birindən qoparacaq taledən xəbərsizdirlər: Bəzən bir əli qurtarmaq üçün bir barmağından keçməlisən.

Nəsillərdən və qitələrdən keçərək bizi Kabildən başlayıb Paris, San-Fransisko və Tinosun Yunan adalarına tərəf səfərə çıxaran Xalid Hüseyni yeni romanında, həyatımız boyunca etdiyimiz seçimləri, ən yaxınlarımız tərəfindən məruz qaldığımız ümidsizlikləri, bizi təsvir edən və həyatımızı şəkilləndirən ölçüləri sonsuz müdriklik, mərhəmət hissi və həvəslə izah edir.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (22, 31, 2, N'Don Kişot', N'4fe096d0-606d-44aa-9ecb-b053ffbbf889don-kisot-karton-kapak-kitabini-indir.jpg', 11, CAST(5.00 AS Decimal(18, 2)), 0, CAST(5.00 AS Decimal(18, 2)), N'Dəb necə meydana gəlir? Cinayətkarlığın səviyyəsinin artması və enməsi nə üçün baş verir? Necə olur ki, naməlum müəlliflərin kitabları bestsellerlərə çevrilir? Yeniyetmələr arasında siqaret çəkmə həvəsi nə cür yayılır? Kütlə fenomeninin və bir çox digər kütləvi təzahürlərin hansı şəkildə peyda olmasını anlamaqdan ötrü bunlara epidemiya kimi baxmaq lazımdır. İdeyalar, mallar, informasiya və davranış tipləri eynilə viruslartək yayılır. Lazımi məkanda edilmiş kiçicik cəhd qlobal tendensiya ərsəyə gətirmək üçün yetərli olur. Müəllif iki əsas suala cavab verməyə can atır: nəyə görə bir ideya, davranış tipi və ya məhsullar epidemiya yaradır, digərləri isə yox və biz öz istəyimizlə xeyirli epidemiyaları necə yaradıb, bunları idarə edə bilərik?')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (23, 27, 2, N'Leyla ile Mecnun', N'd898c831-3296-4037-b854-827657d6e98bleylailemecnun.jpg', 10, CAST(11.00 AS Decimal(18, 2)), 0, CAST(11.00 AS Decimal(18, 2)), N'Türk televizyon tarihinin en büyük hayran kitlesine sahip dizilerinden Leyla ile Mecnun, bu kez sevenlerinin karşısına farklı bir tür ve yepyeni bir macera ile çıkıyor. Dizinin başarılı senaristi Burak Aksak, aynı adlı kitabıyla o meşhur imkansız aşka yeni bir yorum daha katıyor. Mecnun, İsmail Abi, Erdal Bakkal, İskender, Yavuz, Aksakallı Dede ve dizinin daha nice unutulmaz ismi, yeni maceralarıyla güldürürken hüzünlendirmeye devam ediyor.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (24, 26, 1, N'Çərpələng uçuran', N'6b2a3913-912b-4d72-936c-0f0c6df3568ccerpelengucuran.jpg', 17, CAST(14.00 AS Decimal(18, 2)), 20, CAST(11.20 AS Decimal(18, 2)), N'Xalid Hüseyninin bu debüt romanını artıq yeni əsrin baş romanı, müəllifini isə canlı klassik hesab edirlər. “Çərpələng uçuran” bu an yaşanan müstəmləkəçilik sonrası yeni müstəmləkəçilik (neokolonial), qloballaşma, mədəniyyətlərarası müharibə, vətəndaş müharibəsi və miqrasiya kimi mövzulara bədii baxış bucağı gətirir. Bundan əlavə, müəllif xatirələr, aydınlaşdırma, cinsi münasibətlər kimi qavrayışlara da toxunur. Kitab sözün əsl mənasında dostluq, sədaqət, xəyanət, günahlardan təmizlənmə haqqındadır və Xalid Hüseyninin bu incə, canayaxın, ironik və sözün yaxşı mənasında sentimental romanı doymadan və göz çəkə bilmədən baxdıqca baxılan möhtəşəm bir rəsm əsərinə bənzəyir. Müəllif, əsərin adından da göründüyü kimi, Əfqan uşaqlarının çərpələng uçurmaq əyləncəsini yada salır. Bu yarışlardan birində əsərin qəhrəmanlarından biri – Həzara (Xəzər) oğlu Həsənin başına dəhşətli hadisə gəlir, o bu hadisəyə dostu bildiyi Əmirin naminə razı olur, ancaq onu kədərləndirmək haqda düşünmür. Həmin dost isə bu dəhşəti kənardan görür, lakin gizlənib səsini çıxarmır. Bununla da faciə böyüyür, getdikcə davam edir. Öz qorxaqlığından dəli olan Əmir ayılanda artıq gec olduğunu düşünür...')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (25, 26, 1, N'Min möhtəşəm günəş', N'faa170d2-4ecd-4f73-b511-9e23c728b21dminmohtesemgunes.jpg', 2, CAST(17.00 AS Decimal(18, 2)), 50, CAST(8.50 AS Decimal(18, 2)), N'Roman Əfqanıstanı darmadağın edən müharibənin qurbanı olmuş iki əfqan qadınının həyatından bəhs edir: əfqanlı zəngin birisinin nikahdan kənar qızı, uşaqlıqdan ailə sevgisindən məhrum olmuş Məryəm və mehriban ailənin sevimli qızı, maraqlı və rəngarəng həyat arzusunda olan Leyla.

Onların arasında ümumi heç nə yoxdur, ayrı-ayrı dünyalarda yaşayırlar, amma müharibə onların həyat yolunu birləşdirir. Özləri də bilmir onlar kimdir – rəqib, rəfiqə, yoxsa bacı. Təklikdə orta əsr desportizminə, amansızlığa qarşı dura bilməyəcəklərini başa düşüb birlikdə mübarizə aparırlar, ağır sınaqlardan keçirlər.

“Min möhtəşəm günəş” güclü, dramatik, lirik romandır – oxucu qəlbini riqqətə gətirən ağrısı, sevinci ilə, nəcib məqsədi, sonsuz lütfü ilə.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (26, 32, 2, N'Eyfel Kulesi Kadar Kocaman Bir Bulutu Yutan Küçük Kız', N'60cf6003-db9d-48f8-984f-81623b55fc73EyfelKulesiKadarKocamanBir.jpg', 12, CAST(7.00 AS Decimal(18, 2)), 10, CAST(6.30 AS Decimal(18, 2)), N'Tebligat Noktagil, babasından kalan mayonez tarifini mükemmelleştirmekten başka bir hırsı olmayan, altı ayak parmaklı, Parisli genç bir kadın postacıdır. Günün birinde, Marakeş''e yaptığı seyahatte tanıştığı ve evlat edinmek istediği hasta, küçük kız Zehra''yı almak üzere yola çıkmasıyla birlikte tüm hayatı derinden sarsılır. O talihsiz gün, İzlanda''daki kimsenin adını söyleyemediği yanardağ patlar ve kül bulutları Avrupa''da tüm uçuşların iptal olmasına neden olur. Farklı bir ulaşım yolu arayan Tebligat''ın nefes kesen macerası da böylece başlar. Julio Iglesias dinlemeye meraklı Budist rahiplerden devlet başkanlarına, çok farklı insanlarla karşılaştığı bu macera, sürekli daha garip bir hal alır.
<br>
Yayımlanır yayımlanmaz büyük bir başarı elde eden Bir Ikea Dolabında Mahsur Kalan Hint Fakiri''nin Olağanüstü Yolculuğu''nun yazarı Romain Puértolas''ın bu kitabı fantezilerle dolu, duygusal ve bir o kadar da eğlenceli bir peri masalı, sevginin kanatlandırdığı bir kadının hikâyesi.
<br>
Peki ya siz, uçmaya hazır mısınız?')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (27, 33, 2, N'Bir Sınav Komedisi', N'43b3f162-c758-4828-b405-e1101e59bf3bbirsinavkomedisi.jpg', 7, CAST(5.00 AS Decimal(18, 2)), 1, CAST(4.99 AS Decimal(18, 2)), N'
Bir Sınav Komedisi
Doğru strateji ile hazırlanıldığında tüm sınavlar kazanılabilir. Biz de bu kitapta öğrencilerimize sınavı kazandıracak stratejiler öğretmek istedik. Diğer taraftan hayatın kendisi de bir sınavdır. Bu bilinçle, adı ne olursa olsun tek bir sınavın hayatın kendisi olmadığının altını çizen hikayelerimiz sizlerle paylaşmaya devam ettik.

Umarız, bizleri okkumaya, kitap okumaya devam edersiniz. En iyi geçen sınavınız, hayat sınavınız olsun. Sevgiyle kalın.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (28, 34, 3, N'Harry Poter ve Felsefe taşı', N'35526de2-d61a-4652-97b9-1373941cca5afelsefetasi.jpg', 12, CAST(21.00 AS Decimal(18, 2)), 0, CAST(21.00 AS Decimal(18, 2)), N'Küçük yaşta ailesini kaybeden Harry Potter, anne (Lilly Potter) ve babasının (James potter) da mezun olduğu Hogwarts Cadılık ve Büyücülük Okulu müdürü Albus Dumbledore tarafından kapılarına bırakıldığı günden beri teyzesi, eniştesi ve kuzeni Dudley ile birlikte büyünün gerçek olduğundan dahi habersiz bir şekilde yaşamaktadır. Eniştesi, (Vernon Dursley) teyzesi (Petunia Dursley) ve kuzeni Harry’e çok kötü davranmaktadırlar ve Harry merdiven boşluğunun altındaki bir odada yaşamaktadır. Çok mutsuz bir çocukluk geçiren Harry’nin 11. doğum günü yaklaşmaktadır.

Bir gün Harry''ye Hogwarts''dan bir kabul mektubu gelir fakat büyücüleri birer ucube ve utanç kaynağı olarak gören eniştesi ve teyzesi Harry''nin mektubu okumasına izin vermez. Fakat mektupların arkası kesilmez hatta giderek artan sayıda mektuplar gelmeye devam eder. Bir gün evin Şöminesinden mektup yağmaya başlar. Eniştesi evdekileri de alarak evden ayrılırlar ve çok uzak bir yere giderler. Denizin ortasındaki bir kayalıkta, küçük bir kulübede yaşamaya başlarlar. Bir akşam kulübeye Hagrid adında bir yarı dev gelir. Hagrid, Hogwarts Cadılık ve Büyücülük Okulu’nun anahtar sorumlusu ve bekçisidir. Hagrid, Harry’nin mektupları okuyamadığını öğrenir ve Harry''e her şeyi anlatır. Anne ve babası trafik kazasında ölmemişlerdir. Onlar büyücüdürler ve karanlık büyücü Lord Voldemort tarafından öldürülmüşlerdir. Harry de bir büyücü adayıdır. Kendisi bilmese de daha 1 yaşındayken o güne kadarki en büyük kara büyücü Lord Voldemort''u yenmişti. Her ne kadar Voldemort ölümsüzlük konusunda herkesten daha fazla ilerlemiş olsa da. Harry, bugüne kadar tüm gerçekleri kendisinden saklayan teyzesi ve eniştesine çok kızar. Hogwarts Büyücülük Okuluna gitmeye karar verir. Okul öncesi alışverişi için Hagrid ile birlikte Çatlak Kazan adlı bir bardan Diagon Yolu’na giderler. Burada önce büyücü bankası Gringotts''a girerler. Annesi ve babası Harry''ye bir servet bırakmıştır. Ardından bir asa, (28 santim Defne Dikeni, Anka Kuşu Teleği) büyücülük kitapları, parşömen, mürekkep, okul cüppesi gibi okulda ihtiyacı olacak şeyleri alırlar. Hagrid Harry''ye doğum günü hediyesi olarak bir baykuş (karbeyazı rengindeki baykuşu Hedwig) alır.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (29, 36, 3, N'Yüzüklerin efendisi', N'34ed224d-3575-41d7-bd5a-657a96d18552yuzuklerinefendisi.jpg', 11, CAST(25.00 AS Decimal(18, 2)), 20, CAST(20.00 AS Decimal(18, 2)), N'Yüzüklerin Efendisi son yüzyılın en çok okunan yüz kitabı arasında en başta geliyor. Türkçe basımının ilk iki kitabı Yüzük Kardeşliği ve İki Kule, bu ilginin evrenselliğini kanıtladı. Polisiye ya da bilimkurgu meraklıları, şiir, roman ve öykü okurları, hep birlikte Frodo, Sam, Merry, Pippin, Aragorn ve Gandalf''ın maceralarını okumaya, ''Orta Dünya''da yaşamaya başladılar.Üçüncü kitap Kralın Dönüşü ile birlikte Yüzüklerin Efendisi tamamlanıyor: Bu kısımda Karanlıklar Efendisi ile Yüzük Kardeşliği, iki cephede karşı karşıya geliyorlar. Frodo ve Sam ellerinde hepsine hükmedecek Tek Yüzük ile Mordor''un içine, karanlığın kalbine doğru bir yolculuk yaparken, diğerleri de karanlığa karşı son cephe olan Gondor''da umutsuz bir savunmaya girişiyorlar...')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (30, 35, 3, N'Taht oyunları', N'c81ae6c6-c63e-46fc-a751-2878e1819e45tahtoyunlari.jpg', 2, CAST(20.00 AS Decimal(18, 2)), 10, CAST(18.00 AS Decimal(18, 2)), N'1. ve 2. Kisim Tek Kitapta Yazlarin on yillar, kislarin bir insan omru surebildigi diyarda, dehsetli ve soguk zamanlar yaklasmaktadir. Kisyari''nin kuzeyindeki buzul topraklarda, Yedi Krallik''i koruyan Sur''un otesinde tehditkâr dogaustu gucler toplanmaktadir. Savasin tam ortasinda, dogduklari topraklar kadar sert, boyun egmez Starklar vardir. Acimasiz sogugun hukum surdugu kuzeyden, uzak guneydeki sicak zevk yurduna uzanan, leydiler, lordlar, savascilar, buyuculer ve katillerle dolu oyku, korkunc kehanetlerin isaret ettigi bir devirde baslamaktadir. Komplo, trajedi, ihanet, zafer ve dehset dolu olaylarin ortasinda Starklar''in, dostlarinin ve dusmanlarinin kaderi bicak sirtindadir. Hedef, en olumcul savas olan taht oyununda muzaffer olmaktir. George R. R. Martin turunun sinirlarini zorladigi Taht Oyunlari ile bir saheser ortaya koyuyor. Dunyanin dort bir yanindaki fantastik edebiyat okurlarini kesinlikle memnun edecek epik serinin ilk cildi gizem, entrika, ask ve macera dolu sayfalariyla buyuluyor. "Kendisinden her zaman en iyi isleri bekledigim George R. R. Martin beni asla sasirtmiyor." Robert Jordan "Muhtesem bir oyku, muhtesem bir tarihi fantastik yapit! Goz kamastirici. " Anne McCaffrey "Muhtemelen gelmis gecmis en iyi epik fantastik eser. " Marion Zimmer Bradle "Doneminin basat fantastik kitabi Okumamak mumkun degil. " The Denver Post "George R. R. Martin en iyi bilim kurgu yazarlarimizdan. Taht Oyunlari da onun en iyi kitaplarindan biri.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (31, 37, 4, N'1984', N'1ce26dd7-dbce-4969-865a-f5a0f87df9f91984.jpg', 12, CAST(9.99 AS Decimal(18, 2)), 0, CAST(9.99 AS Decimal(18, 2)), N'Bin Dokuz Yüz Seksen Dört, George Orwell tarafından kaleme alınmış alegorik bir politik romandır. Hikâyesi distopik bir dünyada geçer. Distopya romanlarının ünlülerindendir. Özellikle kitapta tanımlanan Big Brother (Büyük Birader) kavramı günümüzde de sıklıkla kullanılmaktadır. Aynı zamanda kitapta geçen "düşünce polisi" gibi kavramları da George Orwell günümüze kazandırmıştır.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (32, 38, 4, N'Martin Eden', N'25837772-b938-4d7d-b7f3-7580ec76874dMartin_Eden-kapak.jpg', 1, CAST(10.00 AS Decimal(18, 2)), 10, CAST(9.00 AS Decimal(18, 2)), N'Yazdıklarıyla çağdaş edebiyatının en kıymetli temsilcilerinden biri olan Jack London, Martin Eden ile ölmeyen bir eser meydana getirmiştir. Yazar olma tutkusuyla tüm zorluklara, yoksulluklara göğüs geren, içine girdiği ortamların kültür seviyesine yetişmek için durmadan okuyan, sonra da aslında o çevrelerin sahtekârlıklarına tanık olan Martin, büyük oranda Jack London’un kendisidir. Tek farkla ki; Jack London işçi sınıfı yazınında önemli bir edebiyatçı iken, yarattığı Martin Eden karakteri bireyci bir tiptir ve bu bireyciliği onu kötü bir sona götürmektedir.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (33, 11, 4, N'Simyacı', N'eafaf351-e4ce-486b-8860-8013ce8e9247simyaci.jpg', 77, CAST(9.00 AS Decimal(18, 2)), 0, CAST(9.00 AS Decimal(18, 2)), N'Dünya edebiyatının fenomenleri arasında yer alan Simyacı, yayımlandığı günden bugüne pek çok hayata dokunmaya devam ediyor. Brezilyalı yazar Paulo Coelho tarafından 1988 yılında yayımlanan eser, Doğu ve Batı dünyasına aynı pencereden ışık tutuyor. Coelho’nun Mesnevi’deki bir kıssadan hareketle kaleme aldığı Simyacı, macera dolu öyküsü ve felsefi yönüyle başucu kitabınız olmaya aday!

Etkileyici hikayesi, sade anlatımı ve derinliğiyle Simyacı, dünya klasiklerinin en sevilen eserlerinden biri. Yayımlandıktan kısa süre sonra 42 ülkede basılan ve 26 dile çevrilen eser, 1996’dan günümüze Türkiye’de de en çok okunan romanlar arasındaki yerini koruyor. Eğer hem bir macera tutkunu hem de felsefe meraklısıysanız Simyacı, sizi de etkisi altına alacak. 

Simyacı, Santiago adındaki Endülüslü bir çobanın İspanya’dan başlayıp Mısır’da sona eren yolculuğunu konu ediniyor. Gördüğü bir rüya üzerine sahip olduğu her şeyi ardında bırakan Santiago’nun bu serüveni, onu düşlerine kavuşturduğu kadar hayatın hakikatine de ulaştırıyor. Simyacı’nın sayfalarını çevirdikçe siz de Santiago’yla birlikte kendi içinize doğru bir yolculuğa çıkacaksınız.

Kendi Kişisel Menkıbenizi Keşfetmeye Hazır Olun!

Gezgin olma isteğiyle çobanlık yapmaya başlayan Santiago, uzun bir müddet yalnızca koyunlarının onu götürdüğü yöne gidiyor. Böylelikle farklı yerler keşfeden Santiago, bir gün koyunlarıyla birlikte sığındığı eski bir kilisenin bahçesinde uyurken rüya görüyor. Mısır’a gittiğini ve orada bir hazine bulduğunu gördüğü bu rüyaya başta aldırış etmese de sonrasında yaşadığı ilginç olaylar, Santiago’yu bu gizemli yolculuğa ikna ediyor.

Afrika’ya adım atar atmaz seyahati için biriktirdiği tüm parayı kaybeden Santiago, çalışmak durumunda kalıyor. Bir yandan para kazanmak için çabalarken diğer yandan kendisini zorlu yolculuk şartlarına hazırlayan tecrübeler ediniyor. Tekrar yola koyulan ve çölleri aşan Santiago, bu çetin seyahatte hem savaşı hem de aşkı deneyimliyor. Yolun sonuna vardığında ise aradığı hazineye beklenmedik bir şekilde ulaşıyor.

Bunu Biliyor muydunuz?

Latin Amerika edebiyatının başarısıyla adından söz ettiren yazarlarından Paulo Coelho, romancılık kariyerine başlamadan önce şarkı sözü yazarı olarak ünlenmiştir. ')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (34, 39, 5, N'Düşün və varlan', N'8c90365d-1174-4afb-8335-acd091e8f040dusunvevarlan.png', 22, CAST(17.00 AS Decimal(18, 2)), 20, CAST(12.60 AS Decimal(18, 2)), N'Yəqin ki, dünyada ən əhəmiyyətli və nüfuzlu kitab uğura, zənginliyə, maneələri aşa bilən həyat

enerjisinə və məqsədyönlülüyə yönləndirən dərslik sayılır. “Düşün və varlan” kitabı 70 il ərzində

zənginliyin yaradılması üzrə klassik dərslik sayılır. Napoleon Hill hər fəsildə pulun əldə edilməsinin

sirlərini açır və bu sirlərdən istifadə edən minlərlə insan nəinki zənginlik əldə edir, üstəlik

dayanmadan onu artırır və eyni zamanda öz şəxsi potensiallarını inkişaf etdirir, zənginləşdirir.

Qarşınızdakı Napoleon Hillin möhtəşəm işinin əlavələr edilmiş, müasir həyata uyğun yenidən

işlənib-hazırlanmış təzə klassik nəşridi.

Kitab geniş oxucu kütləsi üçün nəzərdə tutulub.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (35, 40, 5, N'Akıllı yatırımcı', N'0e01dca6-7ae8-4e4c-a4e2-f2f2c471fd82akilliyatirimci.jpg', 1, CAST(27.00 AS Decimal(18, 2)), 0, CAST(27.00 AS Decimal(18, 2)), N'Warren Buffett’ın önsözü ve sonsözü ile, Jason Zweig’in güncel yorumlarıyla Amazon’un en çok satan 100 kitap listesinden hiç düşmeyen bu efsane kitaptaki ilkeleri dikkat ve istikrarla uygulayarak: Yatırımcılıkla spekülasyonun farkını öğrenerek spekülasyondan korunacak, Yatırımcı profilinizi, riske bakış açınızı öğrenerek kendiniz için doğru yatırım stratejisini oluşturacak, Özel emeklilik fonlarınızı etkili ve verimli yönetmeyi öğrenecek, Birikimlerinizi krizlere, enflasyona ve panik dalgalarına karşı koruyacak, Orta ve uzun vadede akılcı, sürdürülebilir ve reel getiriler elde edecek, Niteliği ne olursa olsun varlıkların doğru değer ve fiyatlarını güvenilir şekilde bilecek, Akıllı bir yatırımcı için panik dalgalarının ve fiyat düşüşlerinin fırsat olduğunun bilincine varacak, Doğru zaman ve koşullarda alım-satım yapmanın ilkelerini kavrayacak, Gereksiz alım-satım ve pozisyon alımların daima zarar getirdiğini bilecek, Değerli ve doğru fiyattan alınmış varlıkları furyalara kapılmadan elde tutmanın önemini anlayacaksınız.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (36, 41, 5, N'Biznes macəraları', N'27975b07-e155-42a7-a4e5-1417157e139fbusinessadventures.jpg', 1, CAST(12.00 AS Decimal(18, 2)), 10, CAST(10.80 AS Decimal(18, 2)), N'New Yorker jurnalının populyar jurnalisti John Brooks tərəfindən qələmə alınan bu kitabda Wall Street şirkətləri haqqında 12 ibrətamiz hekayə qələmə alınıb. Bill Gates və Warren Buffet şiddətlə tövsiyə edir.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (37, 42, 5, N'Niyə ilə başla', N'd4251f0d-5066-41b4-b582-29e37d482371startwithwhy.jpg', 1, CAST(17.00 AS Decimal(18, 2)), 0, CAST(17.00 AS Decimal(18, 2)), N'In 2009, Simon Sinek started a movement to help people become more inspired at work, and in turn inspire their colleagues and customers. Since then, millions have been touched by the power of his ideas, including more than 28 million who’ve watched his TED Talk based on START WITH WHY -- the third most popular TED video of all time.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (38, 44, 6, N'Toz Gibi Yıldızlar', N'63206873-2a82-4325-82d8-d5c0ee933e92tozgibiyildizlar.jpg', 12, CAST(11.00 AS Decimal(18, 2)), 0, CAST(11.00 AS Decimal(18, 2)), N'Kitap, Asimov''un Galaktik İmparatorluk serisinin bir parçası ve Galaktik İmparatorluğun gerçek kuruluşundan önce, hatta Trantor bile önemli hale gelmeden önce geçiyor . Dünya Üniversitesi''ne devam eden genç bir adamla başlar. Biron Farrill, Nebula Krallıklarından biri olan Nephelos gezegenindeki en büyük asilzadenin oğludur . Hikaye, babasının Tyranni''ye karşı komplo kurarken yakalandığı haberiyle başlar.

Tyrann gezegeninden gelen Tyranniler, Atbaşı Bulutsusu yakınında 50 gezegenden oluşan küçük bir imparatorluğu yönetirler . Tyrann, söz konusu dünyalar üzerinde kontrolü korumaya yardımcı olmak için krallıklarda bilim ve uzay navigasyonu eğitimini bastırdı. Hikayedeki Tyrann hükümdarına "Han" deniyor, bu da Asimov''un Vakıf serisi için gerileyen Roma İmparatorluğu''nu kullanması gibi, Rus beylikleri üzerindeki Moğol egemenliğini model olarak aldığını öne sürüyor . ( Asimov''un çizdiği ve uyarladığı gerçek dünya tarihi için " Altın Orda "ya bakın .)

Asimov bir keresinde onu "en az sevilen romanı" olarak adlandırmıştı.')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (39, 43, 6, N'Fahrenheit 451', N'74d1039c-8d3e-4eae-97cf-d92dfdf72a2dfahrenheit451.jpg', 1, CAST(15.00 AS Decimal(18, 2)), 0, CAST(15.00 AS Decimal(18, 2)), N'Amerikan edebiyatının öne çıkan yazarlarından Ray Bradbury’nin 1953 yılında yayımlanan eseri Fahrenheit 451, on yıllar öncesinden bugünün ve uzak geleceğin dünyasına sert eleştiriler savuruyor. Distopik bir kurgusal düzlemde ilerleyen eser, teknolojinin gelişmesiyle birlikte toplumun gerileyen sanat ve düşünce dünyasını ele alıyor.

Ray Bradbury’nin karanlık bir geleceği konu aldığı Fahrenheit 451 romanı, bilim kurgu ögelerini baskı rejimi ve robotlaşmış bir toplumla harmanlıyor. Kitabın olay örgüsü, itfaiyecilerin yangın söndürmek yerine kitap yakmakla görevlendirildiği totaliter bir düzen etrafında şekilleniyor. Roman, adını ise kitapların yanma derecesi olan ısı ölçüsünden alıyor.

24’üncü yüzyılda geçen Fahrenheit 451’de toplum yaşamı, skolastik düşüncenin hakim olduğu Orta Çağ’la büyük benzerlik gösteriyor. Bradbury, kitabına yönelik yaptığı açıklamalarda romanı yazmaktaki amacının, televizyonun okumaya olan ilgisini körelttiğini vurgulamak olduğunu dile getiriyor. Yazar, bu noktada eleştirisinin herhangi bir yönetimden ziyade doğrudan halka yönelik olduğunu açıklıyor. Eserinde kitapları yakanlarla okumayanlara aynı suçu yükleyen yazar, topluma zarar veren asıl unsurun düşünmeyi reddetmek olduğunun altını çiziyor.
<br>
<b>“Okumak” Hiç Bu Kadar Yasak ve Keyifli Gelmemişti!</b>
<br>
Romanın baş kahramanı Guy Montag, geçimini itfaiyecilikle sağlıyor. Daha öncesinde yalnızca ona verilen işleri yapan Montag, bir gün dehşet verici bir olaya tanık oluyor. Kitaplarıyla birlikte bir adamın diri diri yakıldığını gören Montag, bu olay sonrasında artık eskisi gibi olamıyor. 

Adamın yakılması üzerine kitaplara karşı ilgi duymaya başlayan Montag’in bu aydınlanma sürecinde, komşusu Clarisse’in de etkisi oluyor. Genç bir kız olan Clarisse, başta herkese olduğu gibi Montag’e de garip görünüyor. Okuyan ve sorgulayan genç kız, Montag’in aklında yeni ufuklar açıyor. Ancak Montag bir gün onun da öldüğünü öğreniyor ve bu son olay, onu okumaya daha çok sevk ediyor. 

Montag, iş yerindeki ortamından ve yakın çevresinden kitaplarını saklamak durumunda kalıyor. Ancak onu ele veren, herkesten önce karısı Mildred oluyor. Bundan sonrasında ise Montag, yoluna daha önceki hayatından çok farklı şekilde devam ediyor. ')
GO
INSERT [dbo].[Books] ([BookId], [WriterId], [GenreId], [BookName], [ImageUrl], [Stock], [Price], [SalePercent], [DiscountedPrice], [Description]) VALUES (40, 12, 7, N'Da Vinci Şifresi', N'c727c612-fa12-4ee0-8c9b-d2a5e1c9171fdavincisifresi.jpg', 1, CAST(14.00 AS Decimal(18, 2)), 0, CAST(14.00 AS Decimal(18, 2)), N'Harvard Universitetinin dini simvolizm üzrə professoru Robert Lenqdon Parisə mühazirə söyləməyə gəlib. Mühazirə qurtarandan sonra o bütün dünyada məşhur olan Luvr muzeyinin hörmətli kuratoru ilə də görüşməyi planlaşdırır. Amma kurator görüşə gəlmir. Həmin gecə Lenqdonu yerli polisin nümayəndələri oyadır, ona deyirlər ki, kuratoru qətlə yetiriblər, onu Luvr muzeyinə, cinayət baş verən yerə aparırlar. Robert cinayət yerində çaşdırıcı kodlarla rastlaşır. Polislər kuratorun qətlində Robertdən şübhələnir. Robert isə kuratorun nəvəsi, kriptologist Sofinin köməyilə çaşdırıcı kodları açmağa çalışır. Əgər onlar bu kodu vaxtında aça bilməsələr qədim bir həqiqət əbədi olaraq açılmamış qalacaq.')
GO
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210930204326_InitialCreate', N'5.0.9')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211004052043_createDatabase2', N'5.0.9')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211009203343_ChangeBookModelIdColumnToBookId', N'5.0.9')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211009212120_test', N'5.0.9')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211012193120_DescriptionColumnAddedToBook', N'5.0.9')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211026175824_CarouselTableAdded', N'5.0.9')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211110110944_changeUsertableColumn', N'5.0.9')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211110114100_usertablechanged', N'5.0.9')
GO
SET IDENTITY_INSERT [dbo].[Carousels] ON 
GO
INSERT [dbo].[Carousels] ([CarouselId], [Text], [ImageUrl]) VALUES (2, N'test1213efghg', N'69fd92b0-f54d-4171-b69b-869681a9aefeslide1.jpg')
GO
INSERT [dbo].[Carousels] ([CarouselId], [Text], [ImageUrl]) VALUES (3, N'test2', N'87ab06e1-6c48-4952-8c17-17a1de6e1c03slide2.png')
GO
INSERT [dbo].[Carousels] ([CarouselId], [Text], [ImageUrl]) VALUES (4, N'test3', N'8cb14c71-3f95-4d17-83f8-3da9527e1edeslide3.jpg')
GO
SET IDENTITY_INSERT [dbo].[Carousels] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Password], [UserName], [Email], [TelephoneNumber], [Address]) VALUES (2, N'123', N'Hulya', N'qeriblih@gmail.com', 0, NULL)
GO
INSERT [dbo].[Users] ([Id], [Password], [UserName], [Email], [TelephoneNumber], [Address]) VALUES (4, N'232', N'werthree', N'321', 312, N'123')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
