class SpecialOption {
  final String name;
  // TODO: ChoiceModel has {'name' : x, 'price' : '10000.0'}
  final List choice;

  SpecialOption({required this.name, required this.choice});

  factory SpecialOption.fromJson(Map<String, dynamic> json) {
    return SpecialOption(
      name: json['name'],
      choice: json['choice'],
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'choice': choice,
      };
}
