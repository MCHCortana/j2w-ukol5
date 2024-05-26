package cz.czechitas.java2webapps.ukol5.registration;

import jakarta.validation.constraints.*;

import java.time.LocalDate;
import java.time.Period;

public class RegistrationForm {
    @NotBlank(message = "Prosím vyplňte jméno")
    private String jmeno;
    @NotBlank(message = "Prosím vyplňte příjmení")
    private String prijmeni;
    @NotNull(message = "Prosím vyplňte datum narození")
    private LocalDate datumNarozeni;
    @NotNull(message = "Prosím zvolte pohlaví")
    private Pohlavi pohlavi;
    @NotBlank(message = "Prosím vyberte turnus, na který vaše dítko pojede.")
    private String turnus;
    @Email
    private String email;
    private String telefon;
    @Min(5)
    @Max(12)
    private int vek;

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String getPrijmeni() {
        return prijmeni;
    }

    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public LocalDate getDatumNarozeni() {
        return datumNarozeni;
    }

    public void setDatumNarozeni(LocalDate datumNarozeni) {
        this.datumNarozeni = datumNarozeni;
        setVek();
    }

    public Pohlavi getPohlavi() {
        return pohlavi;
    }

    public void setPohlavi(Pohlavi pohlavi) {
        this.pohlavi = pohlavi;
    }

    public String getTurnus() {
        return turnus;
    }

    public void setTurnus(String turnus) {
        this.turnus = turnus;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public int getVek() {
        return vek;
    }

    public void setVek() {
        this.vek = Period.between(this.datumNarozeni, LocalDate.now()).getYears();
    }
}
