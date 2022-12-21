package model;

public class weatherBean {

	private String cityStr;

	private String countryStr;

	private String cloudsStr;
	
	private String date;
	
	private String wind;

	public weatherBean(String cityStr, String countryStr) {

		this.cityStr = cityStr;
		this.countryStr = countryStr;

	}

	public String getCityStr() {
		return cityStr;
	}

	public String getCountryStr() {
		return countryStr;
	}

	public String getCloudsStr() {
		return cloudsStr;
	}

		public void setCloudsStr(String cloudsStr) {
		this.cloudsStr = cloudsStr;
	}

		public String getDate() {
			String result = date.substring(0, 10);
			return result;
		}

		public void setDate(String date) {
			this.date = date;
		}

		public String getWind() {
		return wind;
		}

		public void setWind(String wind) {
			this.wind = wind;
		}


		


		
		
		
		
		
		
		
		
		
		

}