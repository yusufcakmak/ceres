class PluginModel {
  final String id;
  final String name;
  final String description;
  final String version;
  final bool enabled;

  const PluginModel({
    required this.id,
    required this.name,
    required this.description,
    required this.version,
    this.enabled = true,
  });

  PluginModel copyWith({
    String? id,
    String? name,
    String? description,
    String? version,
    bool? enabled,
  }) {
    return PluginModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      version: version ?? this.version,
      enabled: enabled ?? this.enabled,
    );
  }
}