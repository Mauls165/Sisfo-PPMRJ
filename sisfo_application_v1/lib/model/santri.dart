class Santri {
  int? id;
  String? fkUser_id;
  String? fkLorong_id;
  String? angkatan;
  String? nis;
  String? nama_ortu;
  String? join_at;
  String? exit_at;
  String? created_at;
  String? updated_at;

  Santri({
    this.id,
    this.fkUser_id,
    this.fkLorong_id,
    this.angkatan,
    this.nis,
    this.created_at,
    this.updated_at,
  });

  Santri.fromJson(Map<String, dynamic> json) {
    id = json['id'] is String ? int.tryParse(json['id']) : json['id'];
    fkUser_id = json['fkUser_id'];
    fkLorong_id = json['fkLorong_id'];
    angkatan = json['angkatan'];
    nis = json['nis'];
    nama_ortu = json['nama_ortu'];
    join_at = json['join_at'];
    exit_at = json['exit_at'];
    created_at = json['created_at'];
    updated_at = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['fkUser_id'] = fkUser_id;
    data['fkLorong_id'] = fkLorong_id;
    data['angkatan'] = angkatan;
    data['nis'] = nis;
    data['nama_ortu'] = nama_ortu;
    data['join_at'] = join_at;
    data['exit_at'] = exit_at;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    return data;
  }
}
