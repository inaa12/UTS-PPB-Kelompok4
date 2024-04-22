class WeatherModel {
  WeatherModel({
    this.name,
    this.weeklyWeather,
  });

  String? name;
  List<WeeklyWeather>? weeklyWeather; // Menggunakan List<WeeklyWeather>? agar tidak nullable

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        name: json["name"],
        weeklyWeather: json["weekly_weather"] == null
            ? []
            : List<WeeklyWeather>.from(json["weekly_weather"]!.map((x) => WeeklyWeather.fromJson(x))),
      );
}

class WeeklyWeather {
  WeeklyWeather({
    this.mainTemp,
    this.mainWind,
    this.mainHumidity,
    this.mainImg,
    this.day,
    this.allTime,
  });

  String? mainTemp;
  String? mainWind;
  String? mainHumidity;
  String? mainImg;
  String? day;
  AllTime? allTime;

  factory WeeklyWeather.fromJson(Map<String, dynamic> json) => WeeklyWeather(
        mainTemp: json["main_temp"],
        mainWind: json["main_wind"],
        mainHumidity: json["main_humidity"],
        mainImg: json["main_img"],
        day: json["day"],
        allTime: AllTime.fromJson(json["all_time"]),
      );
}

class AllTime {
  AllTime({
    this.hour,
    this.wind,
    this.img,
    this.temps,
  });

  List<String>? hour; // Menggunakan List<String>? agar tidak nullable
  List<String>? wind; // Menggunakan List<String>? agar tidak nullable
  List<String>? img; // Menggunakan List<String>? agar tidak nullable
  List<String>? temps; // Menggunakan List<String>? agar tidak nullable

  factory AllTime.fromJson(Map<String, dynamic> json) => AllTime(
        hour: json["hour"] == null ? [] : List<String>.from(json["hour"].map((x) => x)),
        wind: json["wind"] == null ? [] : List<String>.from(json["wind"].map((x) => x)),
        img: json["img"] == null ? [] : List<String>.from(json["img"].map((x) => x)),
        temps: json["temps"] == null ? [] : List<String>.from(json["temps"].map((x) => x)),
      );
}
