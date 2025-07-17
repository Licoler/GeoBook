//
//  DataStore.swift
//  GeoBook
//
//  Created by Alexandr Artemov (Mac Mini) on 15.07.2025.
//

final class DataStore {
    static let shared = DataStore()
    
    let countries: [Continent] = [
        Continent(
            name: "Европа",
            countries: [
                Country(
                    name: "Россия",
                    image: "FlagRussia",
                    capital: "Москва",
                    countryPhoneCode: "+7",
                    countryArea: "17 125 191",
                    currency: "RUB"
                ),
                Country(
                    name: "Германия",
                    image: "FlagGermany",
                    capital: "Берлин",
                    countryPhoneCode: "+49",
                    countryArea: "357 578",
                    currency: "EUR"
                ),
                Country(
                    name: "Франция",
                    image: "FlagFrance",
                    capital: "Париж",
                    countryPhoneCode: "+33",
                    countryArea: "643 801",
                    currency: "EUR"
                ),
                Country(
                    name: "Великобритания",
                    image: "FlagUK",
                    capital: "Лондон",
                    countryPhoneCode: "+44",
                    countryArea: "242 495",
                    currency: "GBP"
                ),
                Country(
                    name: "Италия",
                    image: "FlagItaly",
                    capital: "Рим",
                    countryPhoneCode: "+39",
                    countryArea: "301 338",
                    currency: "EUR"
                ),
                Country(
                    name: "Испания",
                    image: "FlagSpain",
                    capital: "Мадрид",
                    countryPhoneCode: "+34",
                    countryArea: "505 990",
                    currency: "EUR"
                ),
                Country(
                    name: "Украина",
                    image: "FlagUkraine",
                    capital: "Киев",
                    countryPhoneCode: "+380",
                    countryArea: "603 628",
                    currency: "UAH"
                ),
                Country(
                    name: "Швейцария",
                    image: "FlagSwitzerland",
                    capital: "Берн",
                    countryPhoneCode: "+41",
                    countryArea: "41 285",
                    currency: "CHF"
                ),
                Country(
                    name: "Белоруссия",
                    image: "FlagBelarus",
                    capital: "Минск",
                    countryPhoneCode: "+375",
                    countryArea: "207 600",
                    currency: "BYN"
                ),
                Country(
                    name: "Нидерланды",
                    image: "FlagNetherlands",
                    capital: "Амстердам",
                    countryPhoneCode: "+31",
                    countryArea: "41 543",
                    currency: "EUR"
                ),
                Country(
                    name: "Швеция",
                    image: "FlagSweden",
                    capital: "Стокгольм",
                    countryPhoneCode: "+46",
                    countryArea: "450 295",
                    currency: "SEK"
                ),
                Country(
                    name: "Финляндия",
                    image: "FlagFinland",
                    capital: "Хельсинки",
                    countryPhoneCode: "+358",
                    countryArea: "338 424",
                    currency: "EUR"
                ),
                Country(
                    name: "Норвегия",
                    image: "FlagNorway",
                    capital: "Осло",
                    countryPhoneCode: "+47",
                    countryArea: "385 207",
                    currency: "NOK"
                ),
                Country(
                    name: "Португалия",
                    image: "FlagPortugal",
                    capital: "Лиссабон",
                    countryPhoneCode: "+351",
                    countryArea: "92 090",
                    currency: "EUR"
                ),
                Country(
                    name: "Польша",
                    image: "FlagPoland",
                    capital: "Варшава",
                    countryPhoneCode: "+48",
                    countryArea: "312 685",
                    currency: "PLN"
                )
            ]
        ),
        Continent(
            name: "Азия",
            countries: [
                Country(
                    name: "Китай",
                    image: "FlagChina",
                    capital: "Пекин",
                    countryPhoneCode: "+86",
                    countryArea: "9 598 962",
                    currency: "CNY"
                ),
                Country(
                    name: "Индия",
                    image: "FlagIndia",
                    capital: "Нью-Дели",
                    countryPhoneCode: "+91",
                    countryArea: "3 287 263",
                    currency: "INR"
                ),
                Country(
                    name: "Япония",
                    image: "FlagJapan",
                    capital: "Токио",
                    countryPhoneCode: "+81",
                    countryArea: "377 972",
                    currency: "JPY"
                ),
                Country(
                    name: "Индонезия",
                    image: "FlagIndonesia",
                    capital: "Джакарта",
                    countryPhoneCode: "+62",
                    countryArea: "1 904 569",
                    currency: "IDR"
                ),
                Country(
                    name: "Саудовская Аравия",
                    image: "FlagSaudiArabia",
                    capital: "Эр-Рияд",
                    countryPhoneCode: "+966",
                    countryArea: "2 149 690",
                    currency: "SAR"
                ),
                Country(
                    name: "Таиланд",
                    image: "FlagThailand",
                    capital: "Бангкок",
                    countryPhoneCode: "+66",
                    countryArea: "513 120",
                    currency: "THB"
                ),
                Country(
                    name: "Южная Корея",
                    image: "FlagSouthKorea",
                    capital: "Сеул",
                    countryPhoneCode: "+82",
                    countryArea: "100 210",
                    currency: "KRW"
                ),
                Country(
                    name: "Вьетнам",
                    image: "FlagVietnam",
                    capital: "Ханой",
                    countryPhoneCode: "+84",
                    countryArea: "331 212",
                    currency: "VND"
                ),
                Country(
                    name: "Малайзия",
                    image: "FlagMalaysia",
                    capital: "Куала-Лумпур",
                    countryPhoneCode: "+60",
                    countryArea: "330 803",
                    currency: "MYR"
                ),
                Country(
                    name: "Турция",
                    image: "FlagTurkey",
                    capital: "Анкара",
                    countryPhoneCode: "+90",
                    countryArea: "783 562",
                    currency: "TRY"
                ),
                Country(
                    name: "Пакистан",
                    image: "FlagPakistan",
                    capital: "Исламабад",
                    countryPhoneCode: "+92",
                    countryArea: "881 913",
                    currency: "PKR"
                ),
                Country(
                    name: "Филиппины",
                    image: "FlagPhilippines",
                    capital: "Манила",
                    countryPhoneCode: "+63",
                    countryArea: "300 000",
                    currency: "PHP"
                ),
                Country(
                    name: "Тайвань",
                    image: "FlagTaiwan",
                    capital: "Тайбей",
                    countryPhoneCode: "+886",
                    countryArea: "36 193",
                    currency: "TWD"
                ),
                Country(
                    name: "Казахстан",
                    image: "FlagKazakhstan",
                    capital: "Астана",
                    countryPhoneCode: "+7",
                    countryArea: "2 724 900",
                    currency: "KZT"
                ),
                Country(
                    name: "Бирма (Мьянма)",
                    image: "FlagMyanmar",
                    capital: "Нейпьидо",
                    countryPhoneCode: "+95",
                    countryArea: "676 578",
                    currency: "MMK"
                )
            ]
        ),
        Continent(
            name: "Северная Америка",
            countries: [
                Country(
                    name: "Соединённые Штаты Америки (США)",
                    image: "FlagUSA",
                    capital: "Вашингтон",
                    countryPhoneCode: "+1",
                    countryArea: "9 833 517",
                    currency: "USD"
                ),
                Country(
                    name: "Канада",
                    image: "FlagCanada",
                    capital: "Оттава",
                    countryPhoneCode: "+1",
                    countryArea: "9 984 670",
                    currency: "CAD"
                ),
                Country(
                    name: "Мексика",
                    image: "FlagMexico",
                    capital: "Мехико",
                    countryPhoneCode: "+52",
                    countryArea: "1 964 375",
                    currency: "MXN"
                ),
                Country(
                    name: "Куба",
                    image: "FlagCuba",
                    capital: "Гавана",
                    countryPhoneCode: "+53",
                    countryArea: "110 860",
                    currency: "CUP"
                ),
                Country(
                    name: "Доминиканская Республика",
                    image: "FlagDominicanRepublic",
                    capital: "Санто-Доминго",
                    countryPhoneCode: "+1",
                    countryArea: "48 671",
                    currency: "DOP"
                ),
                Country(
                    name: "Гаити",
                    image: "FlagHaiti",
                    capital: "Порт-о-Пренс",
                    countryPhoneCode: "+509",
                    countryArea: "27 750",
                    currency: "HTG"
                ),
                Country(
                    name: "Ямайка",
                    image: "FlagJamaica",
                    capital: "Кингстон",
                    countryPhoneCode: "+1",
                    countryArea: "10 991",
                    currency: "JMD"
                ),
                Country(
                    name: "Гондурас",
                    image: "FlagHonduras",
                    capital: "Тегусигальпа",
                    countryPhoneCode: "+504",
                    countryArea: "112 492",
                    currency: "HNL"
                ),
                Country(
                    name: "Гватемала",
                    image: "FlagGuatemala",
                    capital: "Гватемала-Сити",
                    countryPhoneCode: "+502",
                    countryArea: "108 889",
                    currency: "GTQ"
                ),
                Country(
                    name: "Никарагуа",
                    image: "FlagNicaragua",
                    capital: "Манагуа",
                    countryPhoneCode: "+505",
                    countryArea: "130 373",
                    currency: "NIO"
                ),
                Country(
                    name: "Панама",
                    image: "FlagPanama",
                    capital: "Панама-Сити",
                    countryPhoneCode: "+507",
                    countryArea: "75 417",
                    currency: "PAB"
                ),
                Country(
                    name: "Коста-Рика",
                    image: "FlagCostaRica",
                    capital: "Сан-Хосе",
                    countryPhoneCode: "+506",
                    countryArea: "51 100",
                    currency: "CRC"
                ),
                Country(
                    name: "Тринидад и Тобаго",
                    image: "FlagTrinidadAndTobago",
                    capital: "Порт-оф-Спейн",
                    countryPhoneCode: "+1",
                    countryArea: "5 128",
                    currency: "TTD"
                ),
                Country(
                    name: "Сальвадор",
                    image: "FlagElSalvador",
                    capital: "Сан-Сальвадор",
                    countryPhoneCode: "+503",
                    countryArea: "21 041",
                    currency: "USD"
                ),
                Country(
                    name: "Барбадос",
                    image: "FlagBarbados",
                    capital: "Бриджтаун",
                    countryPhoneCode: "+1",
                    countryArea: "430",
                    currency: "BBD"
                )
            ]
        ),
        Continent(
            name: "Южная Америка",
            countries: [
                Country(
                    name: "Бразилия",
                    image: "FlagBrazil",
                    capital: "Бразилиа",
                    countryPhoneCode: "+55",
                    countryArea: "8 515 767",
                    currency: "BRL"
                ),
                Country(
                    name: "Аргентина",
                    image: "FlagArgentina",
                    capital: "Буэнос-Айрес",
                    countryPhoneCode: "+54",
                    countryArea: "2 780 400",
                    currency: "ARS"
                ),
                Country(
                    name: "Колумбия",
                    image: "FlagColombia",
                    capital: "Богота",
                    countryPhoneCode: "+57",
                    countryArea: "1 141 748",
                    currency: "COP"
                ),
                Country(
                    name: "Чили",
                    image: "FlagChile",
                    capital: "Сантьяго",
                    countryPhoneCode: "+56",
                    countryArea: "756 102",
                    currency: "CLP"
                ),
                Country(
                    name: "Перу",
                    image: "FlagPeru",
                    capital: "Лима",
                    countryPhoneCode: "+51",
                    countryArea: "1 285 216",
                    currency: "PEN"
                ),
                Country(
                    name: "Венесуэла",
                    image: "FlagVenezuela",
                    capital: "Каркас",
                    countryPhoneCode: "+58",
                    countryArea: "916 445",
                    currency: "VEF"
                ),
                Country(
                    name: "Эквадор",
                    image: "FlagEcuador",
                    capital: "Кито",
                    countryPhoneCode: "+593",
                    countryArea: "283 561",
                    currency: "USD"
                ),
                Country(
                    name: "Боливия",
                    image: "FlagBolivia",
                    capital: "Ла-Пас",
                    countryPhoneCode: "+591",
                    countryArea: "1 098 581",
                    currency: "BOB"
                ),
                Country(
                    name: "Парагвай",
                    image: "FlagParaguay",
                    capital: "Асунсьон",
                    countryPhoneCode: "+595",
                    countryArea: "406 752",
                    currency: "PYG"
                ),
                Country(
                    name: "Уругвай",
                    image: "FlagUruguay",
                    capital: "Монтевидео",
                    countryPhoneCode: "+598",
                    countryArea: "176 215",
                    currency: "UYU"
                ),
                Country(
                    name: "Суринам",
                    image: "FlagSuriname",
                    capital: "Парамарибо",
                    countryPhoneCode: "+597",
                    countryArea: "163 820",
                    currency: "SRD"
                ),
                Country(
                    name: "Гайана",
                    image: "FlagGuyana",
                    capital: "Джорджтаун",
                    countryPhoneCode: "+592",
                    countryArea: "214 969",
                    currency: "GYD"
                ),
                Country(
                    name: "Фолклендские острова",
                    image: "FlagFalklands",
                    capital: "Стэнли",
                    countryPhoneCode: "+500",
                    countryArea: "12 173",
                    currency: "FKP"
                ),
                Country(
                    name: "Французская Гвиана",
                    image: "FlagFrance",
                    capital: "Кайенна",
                    countryPhoneCode: "+594",
                    countryArea: "83 534",
                    currency: "EUR"
                ),
                Country(
                    name: "Перуанские островные владения",
                    image: "FlagPeru",
                    capital: "-",
                    countryPhoneCode: "-",
                    countryArea: "5",
                    currency: "-"
                )
            ]
        ),
        Continent(
            name: "Африка",
            countries: [
                Country(
                    name: "Нигерия",
                    image: "FlagNigeria",
                    capital: "Абуджа",
                    countryPhoneCode: "+234",
                    countryArea: "923 768",
                    currency: "NGN"
                ),
                Country(
                    name: "Эфиопия",
                    image: "FlagEthiopia",
                    capital: "Аддис-Абеба",
                    countryPhoneCode: "+251",
                    countryArea: "1 104 300",
                    currency: "ETB"
                ),
                Country(
                    name: "Египет",
                    image: "FlagEgypt",
                    capital: "Каир",
                    countryPhoneCode: "+20",
                    countryArea: "1 001 450",
                    currency: "EGP"
                ),
                Country(
                    name: "Конго (Республика)",
                    image: "FlagCongo",
                    capital: "Браззавиль",
                    countryPhoneCode: "+242",
                    countryArea: "342 000",
                    currency: "XAF"
                ),
                Country(
                    name: "Марокко",
                    image: "FlagMorocco",
                    capital: "Рабат",
                    countryPhoneCode: "+212",
                    countryArea: "446 550",
                    currency: "MAD"
                ),
                Country(
                    name: "Алжир",
                    image: "FlagAlgeria",
                    capital: "Алжир",
                    countryPhoneCode: "+213",
                    countryArea: "2 381 741",
                    currency: "DZD"
                ),
                Country(
                    name: "Ангола",
                    image: "FlagAngola",
                    capital: "Луанда",
                    countryPhoneCode: "+244",
                    countryArea: "1 246 700",
                    currency: "AOA"
                ),
                Country(
                    name: "Камерун",
                    image: "FlagCameroon",
                    capital: "Яунде",
                    countryPhoneCode: "+237",
                    countryArea: "475 442",
                    currency: "XAF"
                ),
                Country(
                    name: "Судан",
                    image: "FlagSudan",
                    capital: "Хартум",
                    countryPhoneCode: "+249",
                    countryArea: "1 861 484",
                    currency: "SDG"
                ),
                Country(
                    name: "Зимбабве",
                    image: "FlagZimbabwe",
                    capital: "Хараре",
                    countryPhoneCode: "+263",
                    countryArea: "390 757",
                    currency: "ZWL"
                ),
                Country(
                    name: "Кения",
                    image: "FlagKenya",
                    capital: "Найроби",
                    countryPhoneCode: "+254",
                    countryArea: "580 367",
                    currency: "KES"
                ),
                Country(
                    name: "Сомали",
                    image: "FlagSomalia",
                    capital: "Могадишо",
                    countryPhoneCode: "+252",
                    countryArea: "637 657",
                    currency: "SOS"
                ),
                Country(
                    name: "ЮАР",
                    image: "FlagSouthAfrica",
                    capital: "Претория",
                    countryPhoneCode: "+27",
                    countryArea: "1 221 037",
                    currency: "ZAR"
                ),
                Country(
                    name: "Танзания",
                    image: "FlagTanzania",
                    capital: "Додома",
                    countryPhoneCode: "+255",
                    countryArea: "947 300",
                    currency: "TZS"
                ),
                Country(
                    name: "Гана",
                    image: "FlagGhana",
                    capital: "Аккра",
                    countryPhoneCode: "+233",
                    countryArea: "238 533",
                    currency: "GHS"
                )
            ]
        ),
        Continent(
            name: "Австралия и Океания",
            countries: [
                Country(
                    name: "Австралия",
                    image: "FlagAustralia",
                    capital: "Канберра",
                    countryPhoneCode: "+61",
                    countryArea: "7 692 024",
                    currency: "AUD"
                ),
                Country(
                    name: "Новая Зеландия",
                    image: "FlagNewZealand",
                    capital: "Веллингтон",
                    countryPhoneCode: "+64",
                    countryArea: "268 021",
                    currency: "NZD"
                ),
                Country(
                    name: "Папуа-Новая Гвинея",
                    image: "FlagPNG",
                    capital: "Порт-Морсби",
                    countryPhoneCode: "+675",
                    countryArea: "462 840",
                    currency: "PGK"
                ),
                Country(
                    name: "Фиджи",
                    image: "FlagFiji",
                    capital: "Сува",
                    countryPhoneCode: "+679",
                    countryArea: "18 274",
                    currency: "FJD"
                ),
                Country(
                    name: "Самоа",
                    image: "FlagSamoa",
                    capital: "Апия",
                    countryPhoneCode: "+685",
                    countryArea: "2 842",
                    currency: "WST"
                ),
                Country(
                    name: "Тонга",
                    image: "FlagTonga",
                    capital: "Нукуалофа",
                    countryPhoneCode: "+676",
                    countryArea: "747",
                    currency: "TOP"
                ),
                Country(
                    name: "Вануату",
                    image: "FlagVanuatu",
                    capital: "Порт-Вила",
                    countryPhoneCode: "+678",
                    countryArea: "12 189",
                    currency: "VUV"
                ),
                Country(
                    name: "Микронезия",
                    image: "FlagMicronesia",
                    capital: "Паликир",
                    countryPhoneCode: "+691",
                    countryArea: "702",
                    currency: "USD"
                ),
                Country(
                    name: "Ниуэ",
                    image: "FlagNiue",
                    capital: "Алофи",
                    countryPhoneCode: "+683",
                    countryArea: "260",
                    currency: "NZD"
                ),
                Country(
                    name: "Кирибати",
                    image: "FlagKiribati",
                    capital: "Южная Тарава",
                    countryPhoneCode: "+686",
                    countryArea: "811",
                    currency: "AUD"
                ),
                Country(
                    name: "Соломоновы Острова",
                    image: "FlagSolomonIslands",
                    capital: "Хониара",
                    countryPhoneCode: "+677",
                    countryArea: "28 896",
                    currency: "SBD"
                )
            ]
        )
    ]
        
    private init() {}
}
