//
//  DataStore.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 19.06.2025.
//
final class DataStore {
    static let shared = DataStore()
    
    let names = [
        "Александр",
        "Иван",
        "Дмитрий",
        "Сергей",
        "Никита",
        "Андрей",
        "Владимир",
        "Артем",
        "Михаил",
        "Роман",
        "Егор",
        "Виктор",
        "Олег",
        "Тимофей",
        "Константин"
    ]

    let surnames = [
        "Иванов",
        "Петров",
        "Соколов",
        "Лебедев",
        "Новиков",
        "Федоров",
        "Кравцов",
        "Зайцев",
        "Ершов",
        "Куликов",
        "Гаврилов",
        "Макаров",
        "Бобров",
        "Комаров",
        "Беляев"
    ]

    let phone = [
        "+7 (901) 123-45-67",
        "+7 (902) 234-56-78",
        "+7 (903) 345-67-89",
        "+7 (904) 456-78-90",
        "+7 (905) 567-89-01",
        "+7 (906) 678-90-12",
        "+7 (907) 789-01-23",
        "+7 (908) 890-12-34",
        "+7 (909) 901-23-45",
        "+7 (910) 012-34-56",
        "+7 (911) 123-45-00",
        "+7 (912) 234-56-00",
        "+7 (913) 345-67-00",
        "+7 (914) 456-78-00",
        "+7 (915) 567-89-00"
    ]

    let emails = [
        "user1974@mail.ru",
        "alpha_x9@yandex.ru",
        "cool321@gmail.com",
        "skywave24@mail.ru",
        "xrunner81@yandex.ru",
        "zeta003@gmail.com",
        "fasttrack12@mail.ru",
        "nova_pixel@yandex.ru",
        "ghostline88@gmail.com",
        "nightowl22@mail.ru",
        "storm753@yandex.ru",
        "randomcube43@gmail.com",
        "silentfox1@mail.ru",
        "trackzone76@yandex.ru",
        "cybercat99@gmail.com"
    ]
    
    private init() {}
}
