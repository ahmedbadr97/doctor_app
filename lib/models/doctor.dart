class Doctor
{
  String id;
  String name;
  String speciality;
  String address;
  double rating;
  String shortDescription;
  String urlPhoto;
  Doctor(this.id, this.name, this.speciality, this.address, this.rating,
      this.shortDescription,this.urlPhoto);
}
List<Doctor> doctors=[ Doctor("1","Matheus Ferrero","eye specialist","miam,Alexadria",4.9,"Diatrias persuadere, tanquam grandis detrius.Vae.Rusticus, barbatus habitios unus anhelare de alter, secundus brodium.","assets/images/1.jpg"
), Doctor("2","panitan punpuang","eye specialist","miam,Alexadria",4.1,"Diatrias persuadere, tanquam grandis detrius.Vae.Rusticus, barbatus habitios unus anhelare de alter, secundus brodium.",  "assets/images/2.jpg"),
  Doctor("3","Cris Brandon ","eye specialist","miam,Alexadria",4.2,"Diatrias persuadere, tanquam grandis detrius.Vae.Rusticus, barbatus habitios unus anhelare de alter, secundus brodium.",  "assets/images/3.jpg"),
  Doctor("4","Diding Sulidinger","eye specialist","miam,Alexadria",2.5,"Diatrias persuadere, tanquam grandis detrius.Vae.Rusticus, barbatus habitios unus anhelare de alter, secundus brodium.",  "assets/images/4.jpg"),
  Doctor("5","Cucup joentravo","eye specialist","miam,Alexadria",3.7,"Diatrias persuadere, tanquam grandis detrius.Vae.Rusticus, barbatus habitios unus anhelare de alter, secundus brodium.",  "assets/images/5.jpg")
];