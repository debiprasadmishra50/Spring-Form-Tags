package demo.mvc;

import java.util.LinkedHashMap;

public class Student {
	
	private String firstName;
	private String lastName;
	private String country;
	private String favouriteLanguage;
	private String[] operatingSystem;
	
	// Instead of Hard coding, if you want to read the country options from Java class, do this
	// It can read data from a list/database/web service/properties file etc..
	private LinkedHashMap<String, String> countryOptions;
	
	// Instead of hard-coding if you wanna read the radiobutton options from java class then do this
	private LinkedHashMap<String, String> favouriteLanguageOptions;
	
	public Student() {
		// populate country options : used ISO country code
		countryOptions = new LinkedHashMap<String, String>();
		countryOptions.put("Null", "Country"); 
		countryOptions.put("IND", "India");
		countryOptions.put("FRN", "France");
		countryOptions.put("GER", "Germany");
		countryOptions.put("RUS", "Russia");
		
		// populate favorite language options
		favouriteLanguageOptions = new LinkedHashMap<>();
		favouriteLanguageOptions.put("Java", "Java");
		favouriteLanguageOptions.put("C#", "C#");
		favouriteLanguageOptions.put("PHP", "PHP");
		favouriteLanguageOptions.put("Ruby", "Ruby");     
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public LinkedHashMap<String, String> getCountryOptions() {
		return countryOptions;
	}

	public String getFavouriteLanguage() {
		return favouriteLanguage;
	}

	public void setFavouriteLanguage(String favouriteLanguage) {
		this.favouriteLanguage = favouriteLanguage;
	}

	public LinkedHashMap<String, String> getFavouriteLanguageOptions() {
		return favouriteLanguageOptions;
	}

	public String[] getOperatingSystem() {
		return operatingSystem;
	}

	public void setOperatingSystem(String[] operatingSystem) {
		this.operatingSystem = operatingSystem;
	}

	
}
