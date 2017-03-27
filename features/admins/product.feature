#language: ru

Функционал: Управление продуктами
	Как администратор
	Я хочу иметь возможность управлять продуктами
	Чтобы выставить актуальные продукты на продажу

@javascript

	Сценарий: Создание продукта
		Допустим залогинен пользователь с email "adm@a.r" и паролем "adminadmin"
		Если перейдет на страницу создания нового продукта
		И создаст продукт с данным:
		| category        | name        | desc        | price |
		| Kebab           | Plov        | only plovs  | 100   |
