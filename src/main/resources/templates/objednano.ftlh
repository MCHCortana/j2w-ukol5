[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<main>
    <h2>Objednáno</h2>
    <h3>${name} pojede na tábor:</h3>
    <h3>Vybraný turnus: ${turnus}</h3>
    <h3>Kód objednávky: ${kod}</h3>
    <h3>Kontaktní email, kam Vám přijdou podrobnosti o táboru:</h3>
    <h3>${email}</h3>
    <h3>${vek}</h3>
</main>
</body>
</html>