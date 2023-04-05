# Учебный проект "Интернет магазин (InternetShop)"

Клиент-серверное web-приложение c использованием микросервисной архитектуры.

Микросервисы:

    1. Auth-Service - сервис авторизации, выполняет функции авторизации пользователей
    
    2. Cart-Service - сервис обслуживания ползовательской карзины. Построен с использованием быстрого кэша на основе Redis.
    
    3. Core-Service - основной сервис, выполняющий функции по запросу данных из БД, подготовка списков товаров и формирование заказов.
    
    4. Front-Service - сервис, обслуживающий Front.
    
    5. GateWay-Service - сервис, выполняющий функцию централизованной адресации запросов между микросервисами.

При создании использованы:

    OracleJDK 17,
    SpringBoot,
    SpringData JPA,
    SpringSecurity,
    Angular JS,
    FlyWay,
    H2 database

Для запуска микросервисов:
                            
                            ./auth-service/ru/gb/internetshop/InternetShopAuth

                            ./cart-service/ru/gb/internetshop/cart/InternetShopCart
                            
                            ./core-service/ru/gb/internetshop/InternetShopCore
                            
                            ./front-service/ru/gb/internetshop/InternetShopFront


