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
    <h1>Registrace na letní dětský tábor</h1>
    <form method="post" action="/">
        <div class="mb-3">
            <label for="name" class="form-label">Jméno táborníka:</label>
            [@spring.formInput path="form.jmeno" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>
        </div>
        <div class="mb-3">
            <label for="surname" class="form-label">Přijmení táborníka:</label>
            [@spring.formInput path="form.prijmeni" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>
        </div>
        <div class="mb-3">
            <label for="date_of_birth" class="form-label">Datum narození:</label>
            [@spring.formInput path="form.datumNarozeni" fieldType="date"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>
        </div>
        <div class="radek">Pohlaví:</div>
        <div class="skupina">
            <div>
                <input id="pohlaviMuz" type="radio" name="pohlavi" value="MUZ"/>
                <label for="pohlaviMuz">Chlapeček</label>
            </div>
            <div>
                <input id="pohlaviZena" type="radio" name="pohlavi" value="ZENA"/>
                <label for="pohlaviZena">Holčička</label>
            </div>
        </div>
        [@spring.bind "form.pohlavi"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="turnus" class="radek">Turnus:</label>
        [@spring.formSingleSelect path="form.turnus" options={
        "": "",
        "1": "Harry Potter na koštěti 1.7-6.7.2024",
        "2": "Červená karkula peče pro babičku 3.6-9.6.2024",
        "3": "Flaco se učí létat 10.7.2024 - 17.7.2024"} /]
        <div class="error">[@spring.showErrors "<br>"/]</div>
        <div class="mb-3">
            <label for="email" class="form-label">email:</label>
            [@spring.formInput path="form.email" fieldType="email" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>
        </div>
        <div class="mb-3">
            <label for="phone" class="form-label">Telefon</label>
            [@spring.formInput path="form.telefon"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</main>
</body>
</html>