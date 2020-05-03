// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Statement extends DataClass implements Insertable<Statement> {
  final DateTime created_at;
  final DateTime updated_at;
  final String sms_id;
  final String statement_id;
  final String account_type;
  final String account_number;
  final String org_name;
  final double min_due;
  final double total_due;
  final DateTime due_date;
  final bool is_active;
  Statement(
      {@required this.created_at,
      @required this.updated_at,
      this.sms_id,
      @required this.statement_id,
      @required this.account_type,
      @required this.account_number,
      @required this.org_name,
      this.min_due,
      this.total_due,
      this.due_date,
      @required this.is_active});
  factory Statement.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Statement(
      created_at: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updated_at: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      sms_id:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}sms_id']),
      statement_id: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}statement_id']),
      account_type: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}account_type']),
      account_number: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}account_number']),
      org_name: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}org_name']),
      min_due:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}min_due']),
      total_due: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}total_due']),
      due_date: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}due_date']),
      is_active:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_active']),
    );
  }
  factory Statement.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Statement(
      created_at: serializer.fromJson<DateTime>(json['created_at']),
      updated_at: serializer.fromJson<DateTime>(json['updated_at']),
      sms_id: serializer.fromJson<String>(json['sms_id']),
      statement_id: serializer.fromJson<String>(json['statement_id']),
      account_type: serializer.fromJson<String>(json['account_type']),
      account_number: serializer.fromJson<String>(json['account_number']),
      org_name: serializer.fromJson<String>(json['org_name']),
      min_due: serializer.fromJson<double>(json['min_due']),
      total_due: serializer.fromJson<double>(json['total_due']),
      due_date: serializer.fromJson<DateTime>(json['due_date']),
      is_active: serializer.fromJson<bool>(json['is_active']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'created_at': serializer.toJson<DateTime>(created_at),
      'updated_at': serializer.toJson<DateTime>(updated_at),
      'sms_id': serializer.toJson<String>(sms_id),
      'statement_id': serializer.toJson<String>(statement_id),
      'account_type': serializer.toJson<String>(account_type),
      'account_number': serializer.toJson<String>(account_number),
      'org_name': serializer.toJson<String>(org_name),
      'min_due': serializer.toJson<double>(min_due),
      'total_due': serializer.toJson<double>(total_due),
      'due_date': serializer.toJson<DateTime>(due_date),
      'is_active': serializer.toJson<bool>(is_active),
    };
  }

  @override
  StatementsCompanion createCompanion(bool nullToAbsent) {
    return StatementsCompanion(
      created_at: created_at == null && nullToAbsent
          ? const Value.absent()
          : Value(created_at),
      updated_at: updated_at == null && nullToAbsent
          ? const Value.absent()
          : Value(updated_at),
      sms_id:
          sms_id == null && nullToAbsent ? const Value.absent() : Value(sms_id),
      statement_id: statement_id == null && nullToAbsent
          ? const Value.absent()
          : Value(statement_id),
      account_type: account_type == null && nullToAbsent
          ? const Value.absent()
          : Value(account_type),
      account_number: account_number == null && nullToAbsent
          ? const Value.absent()
          : Value(account_number),
      org_name: org_name == null && nullToAbsent
          ? const Value.absent()
          : Value(org_name),
      min_due: min_due == null && nullToAbsent
          ? const Value.absent()
          : Value(min_due),
      total_due: total_due == null && nullToAbsent
          ? const Value.absent()
          : Value(total_due),
      due_date: due_date == null && nullToAbsent
          ? const Value.absent()
          : Value(due_date),
      is_active: is_active == null && nullToAbsent
          ? const Value.absent()
          : Value(is_active),
    );
  }

  Statement copyWith(
          {DateTime created_at,
          DateTime updated_at,
          String sms_id,
          String statement_id,
          String account_type,
          String account_number,
          String org_name,
          double min_due,
          double total_due,
          DateTime due_date,
          bool is_active}) =>
      Statement(
        created_at: created_at ?? this.created_at,
        updated_at: updated_at ?? this.updated_at,
        sms_id: sms_id ?? this.sms_id,
        statement_id: statement_id ?? this.statement_id,
        account_type: account_type ?? this.account_type,
        account_number: account_number ?? this.account_number,
        org_name: org_name ?? this.org_name,
        min_due: min_due ?? this.min_due,
        total_due: total_due ?? this.total_due,
        due_date: due_date ?? this.due_date,
        is_active: is_active ?? this.is_active,
      );
  @override
  String toString() {
    return (StringBuffer('Statement(')
          ..write('created_at: $created_at, ')
          ..write('updated_at: $updated_at, ')
          ..write('sms_id: $sms_id, ')
          ..write('statement_id: $statement_id, ')
          ..write('account_type: $account_type, ')
          ..write('account_number: $account_number, ')
          ..write('org_name: $org_name, ')
          ..write('min_due: $min_due, ')
          ..write('total_due: $total_due, ')
          ..write('due_date: $due_date, ')
          ..write('is_active: $is_active')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      created_at.hashCode,
      $mrjc(
          updated_at.hashCode,
          $mrjc(
              sms_id.hashCode,
              $mrjc(
                  statement_id.hashCode,
                  $mrjc(
                      account_type.hashCode,
                      $mrjc(
                          account_number.hashCode,
                          $mrjc(
                              org_name.hashCode,
                              $mrjc(
                                  min_due.hashCode,
                                  $mrjc(
                                      total_due.hashCode,
                                      $mrjc(due_date.hashCode,
                                          is_active.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Statement &&
          other.created_at == this.created_at &&
          other.updated_at == this.updated_at &&
          other.sms_id == this.sms_id &&
          other.statement_id == this.statement_id &&
          other.account_type == this.account_type &&
          other.account_number == this.account_number &&
          other.org_name == this.org_name &&
          other.min_due == this.min_due &&
          other.total_due == this.total_due &&
          other.due_date == this.due_date &&
          other.is_active == this.is_active);
}

class StatementsCompanion extends UpdateCompanion<Statement> {
  final Value<DateTime> created_at;
  final Value<DateTime> updated_at;
  final Value<String> sms_id;
  final Value<String> statement_id;
  final Value<String> account_type;
  final Value<String> account_number;
  final Value<String> org_name;
  final Value<double> min_due;
  final Value<double> total_due;
  final Value<DateTime> due_date;
  final Value<bool> is_active;
  const StatementsCompanion({
    this.created_at = const Value.absent(),
    this.updated_at = const Value.absent(),
    this.sms_id = const Value.absent(),
    this.statement_id = const Value.absent(),
    this.account_type = const Value.absent(),
    this.account_number = const Value.absent(),
    this.org_name = const Value.absent(),
    this.min_due = const Value.absent(),
    this.total_due = const Value.absent(),
    this.due_date = const Value.absent(),
    this.is_active = const Value.absent(),
  });
  StatementsCompanion.insert({
    @required DateTime created_at,
    @required DateTime updated_at,
    this.sms_id = const Value.absent(),
    @required String statement_id,
    @required String account_type,
    @required String account_number,
    @required String org_name,
    this.min_due = const Value.absent(),
    this.total_due = const Value.absent(),
    this.due_date = const Value.absent(),
    this.is_active = const Value.absent(),
  })  : created_at = Value(created_at),
        updated_at = Value(updated_at),
        statement_id = Value(statement_id),
        account_type = Value(account_type),
        account_number = Value(account_number),
        org_name = Value(org_name);
  StatementsCompanion copyWith(
      {Value<DateTime> created_at,
      Value<DateTime> updated_at,
      Value<String> sms_id,
      Value<String> statement_id,
      Value<String> account_type,
      Value<String> account_number,
      Value<String> org_name,
      Value<double> min_due,
      Value<double> total_due,
      Value<DateTime> due_date,
      Value<bool> is_active}) {
    return StatementsCompanion(
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      sms_id: sms_id ?? this.sms_id,
      statement_id: statement_id ?? this.statement_id,
      account_type: account_type ?? this.account_type,
      account_number: account_number ?? this.account_number,
      org_name: org_name ?? this.org_name,
      min_due: min_due ?? this.min_due,
      total_due: total_due ?? this.total_due,
      due_date: due_date ?? this.due_date,
      is_active: is_active ?? this.is_active,
    );
  }
}

class $StatementsTable extends Statements
    with TableInfo<$StatementsTable, Statement> {
  final GeneratedDatabase _db;
  final String _alias;
  $StatementsTable(this._db, [this._alias]);
  final VerificationMeta _created_atMeta = const VerificationMeta('created_at');
  GeneratedDateTimeColumn _created_at;
  @override
  GeneratedDateTimeColumn get created_at =>
      _created_at ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updated_atMeta = const VerificationMeta('updated_at');
  GeneratedDateTimeColumn _updated_at;
  @override
  GeneratedDateTimeColumn get updated_at =>
      _updated_at ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sms_idMeta = const VerificationMeta('sms_id');
  GeneratedTextColumn _sms_id;
  @override
  GeneratedTextColumn get sms_id => _sms_id ??= _constructSmsId();
  GeneratedTextColumn _constructSmsId() {
    return GeneratedTextColumn(
      'sms_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _statement_idMeta =
      const VerificationMeta('statement_id');
  GeneratedTextColumn _statement_id;
  @override
  GeneratedTextColumn get statement_id =>
      _statement_id ??= _constructStatementId();
  GeneratedTextColumn _constructStatementId() {
    return GeneratedTextColumn(
      'statement_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _account_typeMeta =
      const VerificationMeta('account_type');
  GeneratedTextColumn _account_type;
  @override
  GeneratedTextColumn get account_type =>
      _account_type ??= _constructAccountType();
  GeneratedTextColumn _constructAccountType() {
    return GeneratedTextColumn(
      'account_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _account_numberMeta =
      const VerificationMeta('account_number');
  GeneratedTextColumn _account_number;
  @override
  GeneratedTextColumn get account_number =>
      _account_number ??= _constructAccountNumber();
  GeneratedTextColumn _constructAccountNumber() {
    return GeneratedTextColumn(
      'account_number',
      $tableName,
      false,
    );
  }

  final VerificationMeta _org_nameMeta = const VerificationMeta('org_name');
  GeneratedTextColumn _org_name;
  @override
  GeneratedTextColumn get org_name => _org_name ??= _constructOrgName();
  GeneratedTextColumn _constructOrgName() {
    return GeneratedTextColumn(
      'org_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _min_dueMeta = const VerificationMeta('min_due');
  GeneratedRealColumn _min_due;
  @override
  GeneratedRealColumn get min_due => _min_due ??= _constructMinDue();
  GeneratedRealColumn _constructMinDue() {
    return GeneratedRealColumn(
      'min_due',
      $tableName,
      true,
    );
  }

  final VerificationMeta _total_dueMeta = const VerificationMeta('total_due');
  GeneratedRealColumn _total_due;
  @override
  GeneratedRealColumn get total_due => _total_due ??= _constructTotalDue();
  GeneratedRealColumn _constructTotalDue() {
    return GeneratedRealColumn(
      'total_due',
      $tableName,
      true,
    );
  }

  final VerificationMeta _due_dateMeta = const VerificationMeta('due_date');
  GeneratedDateTimeColumn _due_date;
  @override
  GeneratedDateTimeColumn get due_date => _due_date ??= _constructDueDate();
  GeneratedDateTimeColumn _constructDueDate() {
    return GeneratedDateTimeColumn(
      'due_date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_activeMeta = const VerificationMeta('is_active');
  GeneratedBoolColumn _is_active;
  @override
  GeneratedBoolColumn get is_active => _is_active ??= _constructIsActive();
  GeneratedBoolColumn _constructIsActive() {
    return GeneratedBoolColumn('is_active', $tableName, false,
        defaultValue: const Constant(true));
  }

  @override
  List<GeneratedColumn> get $columns => [
        created_at,
        updated_at,
        sms_id,
        statement_id,
        account_type,
        account_number,
        org_name,
        min_due,
        total_due,
        due_date,
        is_active
      ];
  @override
  $StatementsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'statements';
  @override
  final String actualTableName = 'statements';
  @override
  VerificationContext validateIntegrity(StatementsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.created_at.present) {
      context.handle(_created_atMeta,
          created_at.isAcceptableValue(d.created_at.value, _created_atMeta));
    } else if (isInserting) {
      context.missing(_created_atMeta);
    }
    if (d.updated_at.present) {
      context.handle(_updated_atMeta,
          updated_at.isAcceptableValue(d.updated_at.value, _updated_atMeta));
    } else if (isInserting) {
      context.missing(_updated_atMeta);
    }
    if (d.sms_id.present) {
      context.handle(
          _sms_idMeta, sms_id.isAcceptableValue(d.sms_id.value, _sms_idMeta));
    }
    if (d.statement_id.present) {
      context.handle(
          _statement_idMeta,
          statement_id.isAcceptableValue(
              d.statement_id.value, _statement_idMeta));
    } else if (isInserting) {
      context.missing(_statement_idMeta);
    }
    if (d.account_type.present) {
      context.handle(
          _account_typeMeta,
          account_type.isAcceptableValue(
              d.account_type.value, _account_typeMeta));
    } else if (isInserting) {
      context.missing(_account_typeMeta);
    }
    if (d.account_number.present) {
      context.handle(
          _account_numberMeta,
          account_number.isAcceptableValue(
              d.account_number.value, _account_numberMeta));
    } else if (isInserting) {
      context.missing(_account_numberMeta);
    }
    if (d.org_name.present) {
      context.handle(_org_nameMeta,
          org_name.isAcceptableValue(d.org_name.value, _org_nameMeta));
    } else if (isInserting) {
      context.missing(_org_nameMeta);
    }
    if (d.min_due.present) {
      context.handle(_min_dueMeta,
          min_due.isAcceptableValue(d.min_due.value, _min_dueMeta));
    }
    if (d.total_due.present) {
      context.handle(_total_dueMeta,
          total_due.isAcceptableValue(d.total_due.value, _total_dueMeta));
    }
    if (d.due_date.present) {
      context.handle(_due_dateMeta,
          due_date.isAcceptableValue(d.due_date.value, _due_dateMeta));
    }
    if (d.is_active.present) {
      context.handle(_is_activeMeta,
          is_active.isAcceptableValue(d.is_active.value, _is_activeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {statement_id, is_active};
  @override
  Statement map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Statement.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(StatementsCompanion d) {
    final map = <String, Variable>{};
    if (d.created_at.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.created_at.value);
    }
    if (d.updated_at.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updated_at.value);
    }
    if (d.sms_id.present) {
      map['sms_id'] = Variable<String, StringType>(d.sms_id.value);
    }
    if (d.statement_id.present) {
      map['statement_id'] = Variable<String, StringType>(d.statement_id.value);
    }
    if (d.account_type.present) {
      map['account_type'] = Variable<String, StringType>(d.account_type.value);
    }
    if (d.account_number.present) {
      map['account_number'] =
          Variable<String, StringType>(d.account_number.value);
    }
    if (d.org_name.present) {
      map['org_name'] = Variable<String, StringType>(d.org_name.value);
    }
    if (d.min_due.present) {
      map['min_due'] = Variable<double, RealType>(d.min_due.value);
    }
    if (d.total_due.present) {
      map['total_due'] = Variable<double, RealType>(d.total_due.value);
    }
    if (d.due_date.present) {
      map['due_date'] = Variable<DateTime, DateTimeType>(d.due_date.value);
    }
    if (d.is_active.present) {
      map['is_active'] = Variable<bool, BoolType>(d.is_active.value);
    }
    return map;
  }

  @override
  $StatementsTable createAlias(String alias) {
    return $StatementsTable(_db, alias);
  }
}

class Account extends DataClass implements Insertable<Account> {
  final DateTime created_at;
  final DateTime updated_at;
  final String account_type;
  final String account_number;
  final String org_name;
  final double spent_this_month;
  final double balance;
  final double outstanding_balance;
  Account(
      {@required this.created_at,
      @required this.updated_at,
      @required this.account_type,
      @required this.account_number,
      @required this.org_name,
      this.spent_this_month,
      this.balance,
      this.outstanding_balance});
  factory Account.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return Account(
      created_at: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updated_at: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      account_type: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}account_type']),
      account_number: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}account_number']),
      org_name: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}org_name']),
      spent_this_month: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}spent_this_month']),
      balance:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}balance']),
      outstanding_balance: doubleType.mapFromDatabaseResponse(
          data['${effectivePrefix}outstanding_balance']),
    );
  }
  factory Account.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Account(
      created_at: serializer.fromJson<DateTime>(json['created_at']),
      updated_at: serializer.fromJson<DateTime>(json['updated_at']),
      account_type: serializer.fromJson<String>(json['account_type']),
      account_number: serializer.fromJson<String>(json['account_number']),
      org_name: serializer.fromJson<String>(json['org_name']),
      spent_this_month: serializer.fromJson<double>(json['spent_this_month']),
      balance: serializer.fromJson<double>(json['balance']),
      outstanding_balance:
          serializer.fromJson<double>(json['outstanding_balance']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'created_at': serializer.toJson<DateTime>(created_at),
      'updated_at': serializer.toJson<DateTime>(updated_at),
      'account_type': serializer.toJson<String>(account_type),
      'account_number': serializer.toJson<String>(account_number),
      'org_name': serializer.toJson<String>(org_name),
      'spent_this_month': serializer.toJson<double>(spent_this_month),
      'balance': serializer.toJson<double>(balance),
      'outstanding_balance': serializer.toJson<double>(outstanding_balance),
    };
  }

  @override
  AccountsCompanion createCompanion(bool nullToAbsent) {
    return AccountsCompanion(
      created_at: created_at == null && nullToAbsent
          ? const Value.absent()
          : Value(created_at),
      updated_at: updated_at == null && nullToAbsent
          ? const Value.absent()
          : Value(updated_at),
      account_type: account_type == null && nullToAbsent
          ? const Value.absent()
          : Value(account_type),
      account_number: account_number == null && nullToAbsent
          ? const Value.absent()
          : Value(account_number),
      org_name: org_name == null && nullToAbsent
          ? const Value.absent()
          : Value(org_name),
      spent_this_month: spent_this_month == null && nullToAbsent
          ? const Value.absent()
          : Value(spent_this_month),
      balance: balance == null && nullToAbsent
          ? const Value.absent()
          : Value(balance),
      outstanding_balance: outstanding_balance == null && nullToAbsent
          ? const Value.absent()
          : Value(outstanding_balance),
    );
  }

  Account copyWith(
          {DateTime created_at,
          DateTime updated_at,
          String account_type,
          String account_number,
          String org_name,
          double spent_this_month,
          double balance,
          double outstanding_balance}) =>
      Account(
        created_at: created_at ?? this.created_at,
        updated_at: updated_at ?? this.updated_at,
        account_type: account_type ?? this.account_type,
        account_number: account_number ?? this.account_number,
        org_name: org_name ?? this.org_name,
        spent_this_month: spent_this_month ?? this.spent_this_month,
        balance: balance ?? this.balance,
        outstanding_balance: outstanding_balance ?? this.outstanding_balance,
      );
  @override
  String toString() {
    return (StringBuffer('Account(')
          ..write('created_at: $created_at, ')
          ..write('updated_at: $updated_at, ')
          ..write('account_type: $account_type, ')
          ..write('account_number: $account_number, ')
          ..write('org_name: $org_name, ')
          ..write('spent_this_month: $spent_this_month, ')
          ..write('balance: $balance, ')
          ..write('outstanding_balance: $outstanding_balance')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      created_at.hashCode,
      $mrjc(
          updated_at.hashCode,
          $mrjc(
              account_type.hashCode,
              $mrjc(
                  account_number.hashCode,
                  $mrjc(
                      org_name.hashCode,
                      $mrjc(
                          spent_this_month.hashCode,
                          $mrjc(balance.hashCode,
                              outstanding_balance.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Account &&
          other.created_at == this.created_at &&
          other.updated_at == this.updated_at &&
          other.account_type == this.account_type &&
          other.account_number == this.account_number &&
          other.org_name == this.org_name &&
          other.spent_this_month == this.spent_this_month &&
          other.balance == this.balance &&
          other.outstanding_balance == this.outstanding_balance);
}

class AccountsCompanion extends UpdateCompanion<Account> {
  final Value<DateTime> created_at;
  final Value<DateTime> updated_at;
  final Value<String> account_type;
  final Value<String> account_number;
  final Value<String> org_name;
  final Value<double> spent_this_month;
  final Value<double> balance;
  final Value<double> outstanding_balance;
  const AccountsCompanion({
    this.created_at = const Value.absent(),
    this.updated_at = const Value.absent(),
    this.account_type = const Value.absent(),
    this.account_number = const Value.absent(),
    this.org_name = const Value.absent(),
    this.spent_this_month = const Value.absent(),
    this.balance = const Value.absent(),
    this.outstanding_balance = const Value.absent(),
  });
  AccountsCompanion.insert({
    @required DateTime created_at,
    @required DateTime updated_at,
    @required String account_type,
    @required String account_number,
    @required String org_name,
    this.spent_this_month = const Value.absent(),
    this.balance = const Value.absent(),
    this.outstanding_balance = const Value.absent(),
  })  : created_at = Value(created_at),
        updated_at = Value(updated_at),
        account_type = Value(account_type),
        account_number = Value(account_number),
        org_name = Value(org_name);
  AccountsCompanion copyWith(
      {Value<DateTime> created_at,
      Value<DateTime> updated_at,
      Value<String> account_type,
      Value<String> account_number,
      Value<String> org_name,
      Value<double> spent_this_month,
      Value<double> balance,
      Value<double> outstanding_balance}) {
    return AccountsCompanion(
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      account_type: account_type ?? this.account_type,
      account_number: account_number ?? this.account_number,
      org_name: org_name ?? this.org_name,
      spent_this_month: spent_this_month ?? this.spent_this_month,
      balance: balance ?? this.balance,
      outstanding_balance: outstanding_balance ?? this.outstanding_balance,
    );
  }
}

class $AccountsTable extends Accounts with TableInfo<$AccountsTable, Account> {
  final GeneratedDatabase _db;
  final String _alias;
  $AccountsTable(this._db, [this._alias]);
  final VerificationMeta _created_atMeta = const VerificationMeta('created_at');
  GeneratedDateTimeColumn _created_at;
  @override
  GeneratedDateTimeColumn get created_at =>
      _created_at ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updated_atMeta = const VerificationMeta('updated_at');
  GeneratedDateTimeColumn _updated_at;
  @override
  GeneratedDateTimeColumn get updated_at =>
      _updated_at ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _account_typeMeta =
      const VerificationMeta('account_type');
  GeneratedTextColumn _account_type;
  @override
  GeneratedTextColumn get account_type =>
      _account_type ??= _constructAccountType();
  GeneratedTextColumn _constructAccountType() {
    return GeneratedTextColumn(
      'account_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _account_numberMeta =
      const VerificationMeta('account_number');
  GeneratedTextColumn _account_number;
  @override
  GeneratedTextColumn get account_number =>
      _account_number ??= _constructAccountNumber();
  GeneratedTextColumn _constructAccountNumber() {
    return GeneratedTextColumn(
      'account_number',
      $tableName,
      false,
    );
  }

  final VerificationMeta _org_nameMeta = const VerificationMeta('org_name');
  GeneratedTextColumn _org_name;
  @override
  GeneratedTextColumn get org_name => _org_name ??= _constructOrgName();
  GeneratedTextColumn _constructOrgName() {
    return GeneratedTextColumn(
      'org_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _spent_this_monthMeta =
      const VerificationMeta('spent_this_month');
  GeneratedRealColumn _spent_this_month;
  @override
  GeneratedRealColumn get spent_this_month =>
      _spent_this_month ??= _constructSpentThisMonth();
  GeneratedRealColumn _constructSpentThisMonth() {
    return GeneratedRealColumn(
      'spent_this_month',
      $tableName,
      true,
    );
  }

  final VerificationMeta _balanceMeta = const VerificationMeta('balance');
  GeneratedRealColumn _balance;
  @override
  GeneratedRealColumn get balance => _balance ??= _constructBalance();
  GeneratedRealColumn _constructBalance() {
    return GeneratedRealColumn(
      'balance',
      $tableName,
      true,
    );
  }

  final VerificationMeta _outstanding_balanceMeta =
      const VerificationMeta('outstanding_balance');
  GeneratedRealColumn _outstanding_balance;
  @override
  GeneratedRealColumn get outstanding_balance =>
      _outstanding_balance ??= _constructOutstandingBalance();
  GeneratedRealColumn _constructOutstandingBalance() {
    return GeneratedRealColumn(
      'outstanding_balance',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        created_at,
        updated_at,
        account_type,
        account_number,
        org_name,
        spent_this_month,
        balance,
        outstanding_balance
      ];
  @override
  $AccountsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'accounts';
  @override
  final String actualTableName = 'accounts';
  @override
  VerificationContext validateIntegrity(AccountsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.created_at.present) {
      context.handle(_created_atMeta,
          created_at.isAcceptableValue(d.created_at.value, _created_atMeta));
    } else if (isInserting) {
      context.missing(_created_atMeta);
    }
    if (d.updated_at.present) {
      context.handle(_updated_atMeta,
          updated_at.isAcceptableValue(d.updated_at.value, _updated_atMeta));
    } else if (isInserting) {
      context.missing(_updated_atMeta);
    }
    if (d.account_type.present) {
      context.handle(
          _account_typeMeta,
          account_type.isAcceptableValue(
              d.account_type.value, _account_typeMeta));
    } else if (isInserting) {
      context.missing(_account_typeMeta);
    }
    if (d.account_number.present) {
      context.handle(
          _account_numberMeta,
          account_number.isAcceptableValue(
              d.account_number.value, _account_numberMeta));
    } else if (isInserting) {
      context.missing(_account_numberMeta);
    }
    if (d.org_name.present) {
      context.handle(_org_nameMeta,
          org_name.isAcceptableValue(d.org_name.value, _org_nameMeta));
    } else if (isInserting) {
      context.missing(_org_nameMeta);
    }
    if (d.spent_this_month.present) {
      context.handle(
          _spent_this_monthMeta,
          spent_this_month.isAcceptableValue(
              d.spent_this_month.value, _spent_this_monthMeta));
    }
    if (d.balance.present) {
      context.handle(_balanceMeta,
          balance.isAcceptableValue(d.balance.value, _balanceMeta));
    }
    if (d.outstanding_balance.present) {
      context.handle(
          _outstanding_balanceMeta,
          outstanding_balance.isAcceptableValue(
              d.outstanding_balance.value, _outstanding_balanceMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Account map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Account.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(AccountsCompanion d) {
    final map = <String, Variable>{};
    if (d.created_at.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.created_at.value);
    }
    if (d.updated_at.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updated_at.value);
    }
    if (d.account_type.present) {
      map['account_type'] = Variable<String, StringType>(d.account_type.value);
    }
    if (d.account_number.present) {
      map['account_number'] =
          Variable<String, StringType>(d.account_number.value);
    }
    if (d.org_name.present) {
      map['org_name'] = Variable<String, StringType>(d.org_name.value);
    }
    if (d.spent_this_month.present) {
      map['spent_this_month'] =
          Variable<double, RealType>(d.spent_this_month.value);
    }
    if (d.balance.present) {
      map['balance'] = Variable<double, RealType>(d.balance.value);
    }
    if (d.outstanding_balance.present) {
      map['outstanding_balance'] =
          Variable<double, RealType>(d.outstanding_balance.value);
    }
    return map;
  }

  @override
  $AccountsTable createAlias(String alias) {
    return $AccountsTable(_db, alias);
  }
}

class Expense extends DataClass implements Insertable<Expense> {
  final DateTime created_at;
  final DateTime updated_at;
  final String uid;
  final String sms_uid;
  final String smsMessage;
  final bool is_expense;
  final bool successful;
  final double amount_in_sms;
  final double expense_amount;
  final double account_number;
  final double account_balance;
  final bool is_debit;
  final bool is_credit;
  final bool is_salary;
  final bool is_upi;
  final bool is_wallet;
  final bool is_card;
  final bool is_bank_transfer;
  final bool is_refund;
  final String merchant_name;
  final String category;
  final String wallet_name;
  final bool is_withdrawal;
  final bool is_bill;
  final double minimum_due;
  final double total_due;
  final DateTime spend_date;
  final String source;
  final double splurge_amount;
  final double parser_version;
  Expense(
      {@required this.created_at,
      @required this.updated_at,
      @required this.uid,
      this.sms_uid,
      @required this.smsMessage,
      @required this.is_expense,
      this.successful,
      @required this.amount_in_sms,
      @required this.expense_amount,
      this.account_number,
      this.account_balance,
      this.is_debit,
      this.is_credit,
      this.is_salary,
      this.is_upi,
      this.is_wallet,
      this.is_card,
      this.is_bank_transfer,
      this.is_refund,
      this.merchant_name,
      this.category,
      this.wallet_name,
      this.is_withdrawal,
      this.is_bill,
      this.minimum_due,
      this.total_due,
      @required this.spend_date,
      this.source,
      this.splurge_amount,
      this.parser_version});
  factory Expense.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final doubleType = db.typeSystem.forDartType<double>();
    return Expense(
      created_at: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updated_at: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      uid: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uid']),
      sms_uid:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}sms_uid']),
      smsMessage: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sms_message']),
      is_expense: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_expense']),
      successful: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}successful']),
      amount_in_sms: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}amount_in_sms']),
      expense_amount: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}expense_amount']),
      account_number: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}account_number']),
      account_balance: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}account_balance']),
      is_debit:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_debit']),
      is_credit:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_credit']),
      is_salary:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_salary']),
      is_upi:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_upi']),
      is_wallet:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_wallet']),
      is_card:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_card']),
      is_bank_transfer: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_bank_transfer']),
      is_refund:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_refund']),
      merchant_name: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}merchant_name']),
      category: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}category']),
      wallet_name: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}wallet_name']),
      is_withdrawal: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_withdrawal']),
      is_bill:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_bill']),
      minimum_due: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}minimum_due']),
      total_due: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}total_due']),
      spend_date: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}spend_date']),
      source:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}source']),
      splurge_amount: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}splurge_amount']),
      parser_version: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}parser_version']),
    );
  }
  factory Expense.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Expense(
      created_at: serializer.fromJson<DateTime>(json['created_at']),
      updated_at: serializer.fromJson<DateTime>(json['updated_at']),
      uid: serializer.fromJson<String>(json['uid']),
      sms_uid: serializer.fromJson<String>(json['sms_uid']),
      smsMessage: serializer.fromJson<String>(json['smsMessage']),
      is_expense: serializer.fromJson<bool>(json['is_expense']),
      successful: serializer.fromJson<bool>(json['successful']),
      amount_in_sms: serializer.fromJson<double>(json['amount_in_sms']),
      expense_amount: serializer.fromJson<double>(json['expense_amount']),
      account_number: serializer.fromJson<double>(json['account_number']),
      account_balance: serializer.fromJson<double>(json['account_balance']),
      is_debit: serializer.fromJson<bool>(json['is_debit']),
      is_credit: serializer.fromJson<bool>(json['is_credit']),
      is_salary: serializer.fromJson<bool>(json['is_salary']),
      is_upi: serializer.fromJson<bool>(json['is_upi']),
      is_wallet: serializer.fromJson<bool>(json['is_wallet']),
      is_card: serializer.fromJson<bool>(json['is_card']),
      is_bank_transfer: serializer.fromJson<bool>(json['is_bank_transfer']),
      is_refund: serializer.fromJson<bool>(json['is_refund']),
      merchant_name: serializer.fromJson<String>(json['merchant_name']),
      category: serializer.fromJson<String>(json['category']),
      wallet_name: serializer.fromJson<String>(json['wallet_name']),
      is_withdrawal: serializer.fromJson<bool>(json['is_withdrawal']),
      is_bill: serializer.fromJson<bool>(json['is_bill']),
      minimum_due: serializer.fromJson<double>(json['minimum_due']),
      total_due: serializer.fromJson<double>(json['total_due']),
      spend_date: serializer.fromJson<DateTime>(json['spend_date']),
      source: serializer.fromJson<String>(json['source']),
      splurge_amount: serializer.fromJson<double>(json['splurge_amount']),
      parser_version: serializer.fromJson<double>(json['parser_version']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'created_at': serializer.toJson<DateTime>(created_at),
      'updated_at': serializer.toJson<DateTime>(updated_at),
      'uid': serializer.toJson<String>(uid),
      'sms_uid': serializer.toJson<String>(sms_uid),
      'smsMessage': serializer.toJson<String>(smsMessage),
      'is_expense': serializer.toJson<bool>(is_expense),
      'successful': serializer.toJson<bool>(successful),
      'amount_in_sms': serializer.toJson<double>(amount_in_sms),
      'expense_amount': serializer.toJson<double>(expense_amount),
      'account_number': serializer.toJson<double>(account_number),
      'account_balance': serializer.toJson<double>(account_balance),
      'is_debit': serializer.toJson<bool>(is_debit),
      'is_credit': serializer.toJson<bool>(is_credit),
      'is_salary': serializer.toJson<bool>(is_salary),
      'is_upi': serializer.toJson<bool>(is_upi),
      'is_wallet': serializer.toJson<bool>(is_wallet),
      'is_card': serializer.toJson<bool>(is_card),
      'is_bank_transfer': serializer.toJson<bool>(is_bank_transfer),
      'is_refund': serializer.toJson<bool>(is_refund),
      'merchant_name': serializer.toJson<String>(merchant_name),
      'category': serializer.toJson<String>(category),
      'wallet_name': serializer.toJson<String>(wallet_name),
      'is_withdrawal': serializer.toJson<bool>(is_withdrawal),
      'is_bill': serializer.toJson<bool>(is_bill),
      'minimum_due': serializer.toJson<double>(minimum_due),
      'total_due': serializer.toJson<double>(total_due),
      'spend_date': serializer.toJson<DateTime>(spend_date),
      'source': serializer.toJson<String>(source),
      'splurge_amount': serializer.toJson<double>(splurge_amount),
      'parser_version': serializer.toJson<double>(parser_version),
    };
  }

  @override
  ExpensesCompanion createCompanion(bool nullToAbsent) {
    return ExpensesCompanion(
      created_at: created_at == null && nullToAbsent
          ? const Value.absent()
          : Value(created_at),
      updated_at: updated_at == null && nullToAbsent
          ? const Value.absent()
          : Value(updated_at),
      uid: uid == null && nullToAbsent ? const Value.absent() : Value(uid),
      sms_uid: sms_uid == null && nullToAbsent
          ? const Value.absent()
          : Value(sms_uid),
      smsMessage: smsMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(smsMessage),
      is_expense: is_expense == null && nullToAbsent
          ? const Value.absent()
          : Value(is_expense),
      successful: successful == null && nullToAbsent
          ? const Value.absent()
          : Value(successful),
      amount_in_sms: amount_in_sms == null && nullToAbsent
          ? const Value.absent()
          : Value(amount_in_sms),
      expense_amount: expense_amount == null && nullToAbsent
          ? const Value.absent()
          : Value(expense_amount),
      account_number: account_number == null && nullToAbsent
          ? const Value.absent()
          : Value(account_number),
      account_balance: account_balance == null && nullToAbsent
          ? const Value.absent()
          : Value(account_balance),
      is_debit: is_debit == null && nullToAbsent
          ? const Value.absent()
          : Value(is_debit),
      is_credit: is_credit == null && nullToAbsent
          ? const Value.absent()
          : Value(is_credit),
      is_salary: is_salary == null && nullToAbsent
          ? const Value.absent()
          : Value(is_salary),
      is_upi:
          is_upi == null && nullToAbsent ? const Value.absent() : Value(is_upi),
      is_wallet: is_wallet == null && nullToAbsent
          ? const Value.absent()
          : Value(is_wallet),
      is_card: is_card == null && nullToAbsent
          ? const Value.absent()
          : Value(is_card),
      is_bank_transfer: is_bank_transfer == null && nullToAbsent
          ? const Value.absent()
          : Value(is_bank_transfer),
      is_refund: is_refund == null && nullToAbsent
          ? const Value.absent()
          : Value(is_refund),
      merchant_name: merchant_name == null && nullToAbsent
          ? const Value.absent()
          : Value(merchant_name),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      wallet_name: wallet_name == null && nullToAbsent
          ? const Value.absent()
          : Value(wallet_name),
      is_withdrawal: is_withdrawal == null && nullToAbsent
          ? const Value.absent()
          : Value(is_withdrawal),
      is_bill: is_bill == null && nullToAbsent
          ? const Value.absent()
          : Value(is_bill),
      minimum_due: minimum_due == null && nullToAbsent
          ? const Value.absent()
          : Value(minimum_due),
      total_due: total_due == null && nullToAbsent
          ? const Value.absent()
          : Value(total_due),
      spend_date: spend_date == null && nullToAbsent
          ? const Value.absent()
          : Value(spend_date),
      source:
          source == null && nullToAbsent ? const Value.absent() : Value(source),
      splurge_amount: splurge_amount == null && nullToAbsent
          ? const Value.absent()
          : Value(splurge_amount),
      parser_version: parser_version == null && nullToAbsent
          ? const Value.absent()
          : Value(parser_version),
    );
  }

  Expense copyWith(
          {DateTime created_at,
          DateTime updated_at,
          String uid,
          String sms_uid,
          String smsMessage,
          bool is_expense,
          bool successful,
          double amount_in_sms,
          double expense_amount,
          double account_number,
          double account_balance,
          bool is_debit,
          bool is_credit,
          bool is_salary,
          bool is_upi,
          bool is_wallet,
          bool is_card,
          bool is_bank_transfer,
          bool is_refund,
          String merchant_name,
          String category,
          String wallet_name,
          bool is_withdrawal,
          bool is_bill,
          double minimum_due,
          double total_due,
          DateTime spend_date,
          String source,
          double splurge_amount,
          double parser_version}) =>
      Expense(
        created_at: created_at ?? this.created_at,
        updated_at: updated_at ?? this.updated_at,
        uid: uid ?? this.uid,
        sms_uid: sms_uid ?? this.sms_uid,
        smsMessage: smsMessage ?? this.smsMessage,
        is_expense: is_expense ?? this.is_expense,
        successful: successful ?? this.successful,
        amount_in_sms: amount_in_sms ?? this.amount_in_sms,
        expense_amount: expense_amount ?? this.expense_amount,
        account_number: account_number ?? this.account_number,
        account_balance: account_balance ?? this.account_balance,
        is_debit: is_debit ?? this.is_debit,
        is_credit: is_credit ?? this.is_credit,
        is_salary: is_salary ?? this.is_salary,
        is_upi: is_upi ?? this.is_upi,
        is_wallet: is_wallet ?? this.is_wallet,
        is_card: is_card ?? this.is_card,
        is_bank_transfer: is_bank_transfer ?? this.is_bank_transfer,
        is_refund: is_refund ?? this.is_refund,
        merchant_name: merchant_name ?? this.merchant_name,
        category: category ?? this.category,
        wallet_name: wallet_name ?? this.wallet_name,
        is_withdrawal: is_withdrawal ?? this.is_withdrawal,
        is_bill: is_bill ?? this.is_bill,
        minimum_due: minimum_due ?? this.minimum_due,
        total_due: total_due ?? this.total_due,
        spend_date: spend_date ?? this.spend_date,
        source: source ?? this.source,
        splurge_amount: splurge_amount ?? this.splurge_amount,
        parser_version: parser_version ?? this.parser_version,
      );
  @override
  String toString() {
    return (StringBuffer('Expense(')
          ..write('created_at: $created_at, ')
          ..write('updated_at: $updated_at, ')
          ..write('uid: $uid, ')
          ..write('sms_uid: $sms_uid, ')
          ..write('smsMessage: $smsMessage, ')
          ..write('is_expense: $is_expense, ')
          ..write('successful: $successful, ')
          ..write('amount_in_sms: $amount_in_sms, ')
          ..write('expense_amount: $expense_amount, ')
          ..write('account_number: $account_number, ')
          ..write('account_balance: $account_balance, ')
          ..write('is_debit: $is_debit, ')
          ..write('is_credit: $is_credit, ')
          ..write('is_salary: $is_salary, ')
          ..write('is_upi: $is_upi, ')
          ..write('is_wallet: $is_wallet, ')
          ..write('is_card: $is_card, ')
          ..write('is_bank_transfer: $is_bank_transfer, ')
          ..write('is_refund: $is_refund, ')
          ..write('merchant_name: $merchant_name, ')
          ..write('category: $category, ')
          ..write('wallet_name: $wallet_name, ')
          ..write('is_withdrawal: $is_withdrawal, ')
          ..write('is_bill: $is_bill, ')
          ..write('minimum_due: $minimum_due, ')
          ..write('total_due: $total_due, ')
          ..write('spend_date: $spend_date, ')
          ..write('source: $source, ')
          ..write('splurge_amount: $splurge_amount, ')
          ..write('parser_version: $parser_version')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      created_at.hashCode,
      $mrjc(
          updated_at.hashCode,
          $mrjc(
              uid.hashCode,
              $mrjc(
                  sms_uid.hashCode,
                  $mrjc(
                      smsMessage.hashCode,
                      $mrjc(
                          is_expense.hashCode,
                          $mrjc(
                              successful.hashCode,
                              $mrjc(
                                  amount_in_sms.hashCode,
                                  $mrjc(
                                      expense_amount.hashCode,
                                      $mrjc(
                                          account_number.hashCode,
                                          $mrjc(
                                              account_balance.hashCode,
                                              $mrjc(
                                                  is_debit.hashCode,
                                                  $mrjc(
                                                      is_credit.hashCode,
                                                      $mrjc(
                                                          is_salary.hashCode,
                                                          $mrjc(
                                                              is_upi.hashCode,
                                                              $mrjc(
                                                                  is_wallet
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      is_card
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          is_bank_transfer
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              is_refund.hashCode,
                                                                              $mrjc(merchant_name.hashCode, $mrjc(category.hashCode, $mrjc(wallet_name.hashCode, $mrjc(is_withdrawal.hashCode, $mrjc(is_bill.hashCode, $mrjc(minimum_due.hashCode, $mrjc(total_due.hashCode, $mrjc(spend_date.hashCode, $mrjc(source.hashCode, $mrjc(splurge_amount.hashCode, parser_version.hashCode))))))))))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Expense &&
          other.created_at == this.created_at &&
          other.updated_at == this.updated_at &&
          other.uid == this.uid &&
          other.sms_uid == this.sms_uid &&
          other.smsMessage == this.smsMessage &&
          other.is_expense == this.is_expense &&
          other.successful == this.successful &&
          other.amount_in_sms == this.amount_in_sms &&
          other.expense_amount == this.expense_amount &&
          other.account_number == this.account_number &&
          other.account_balance == this.account_balance &&
          other.is_debit == this.is_debit &&
          other.is_credit == this.is_credit &&
          other.is_salary == this.is_salary &&
          other.is_upi == this.is_upi &&
          other.is_wallet == this.is_wallet &&
          other.is_card == this.is_card &&
          other.is_bank_transfer == this.is_bank_transfer &&
          other.is_refund == this.is_refund &&
          other.merchant_name == this.merchant_name &&
          other.category == this.category &&
          other.wallet_name == this.wallet_name &&
          other.is_withdrawal == this.is_withdrawal &&
          other.is_bill == this.is_bill &&
          other.minimum_due == this.minimum_due &&
          other.total_due == this.total_due &&
          other.spend_date == this.spend_date &&
          other.source == this.source &&
          other.splurge_amount == this.splurge_amount &&
          other.parser_version == this.parser_version);
}

class ExpensesCompanion extends UpdateCompanion<Expense> {
  final Value<DateTime> created_at;
  final Value<DateTime> updated_at;
  final Value<String> uid;
  final Value<String> sms_uid;
  final Value<String> smsMessage;
  final Value<bool> is_expense;
  final Value<bool> successful;
  final Value<double> amount_in_sms;
  final Value<double> expense_amount;
  final Value<double> account_number;
  final Value<double> account_balance;
  final Value<bool> is_debit;
  final Value<bool> is_credit;
  final Value<bool> is_salary;
  final Value<bool> is_upi;
  final Value<bool> is_wallet;
  final Value<bool> is_card;
  final Value<bool> is_bank_transfer;
  final Value<bool> is_refund;
  final Value<String> merchant_name;
  final Value<String> category;
  final Value<String> wallet_name;
  final Value<bool> is_withdrawal;
  final Value<bool> is_bill;
  final Value<double> minimum_due;
  final Value<double> total_due;
  final Value<DateTime> spend_date;
  final Value<String> source;
  final Value<double> splurge_amount;
  final Value<double> parser_version;
  const ExpensesCompanion({
    this.created_at = const Value.absent(),
    this.updated_at = const Value.absent(),
    this.uid = const Value.absent(),
    this.sms_uid = const Value.absent(),
    this.smsMessage = const Value.absent(),
    this.is_expense = const Value.absent(),
    this.successful = const Value.absent(),
    this.amount_in_sms = const Value.absent(),
    this.expense_amount = const Value.absent(),
    this.account_number = const Value.absent(),
    this.account_balance = const Value.absent(),
    this.is_debit = const Value.absent(),
    this.is_credit = const Value.absent(),
    this.is_salary = const Value.absent(),
    this.is_upi = const Value.absent(),
    this.is_wallet = const Value.absent(),
    this.is_card = const Value.absent(),
    this.is_bank_transfer = const Value.absent(),
    this.is_refund = const Value.absent(),
    this.merchant_name = const Value.absent(),
    this.category = const Value.absent(),
    this.wallet_name = const Value.absent(),
    this.is_withdrawal = const Value.absent(),
    this.is_bill = const Value.absent(),
    this.minimum_due = const Value.absent(),
    this.total_due = const Value.absent(),
    this.spend_date = const Value.absent(),
    this.source = const Value.absent(),
    this.splurge_amount = const Value.absent(),
    this.parser_version = const Value.absent(),
  });
  ExpensesCompanion.insert({
    @required DateTime created_at,
    @required DateTime updated_at,
    @required String uid,
    this.sms_uid = const Value.absent(),
    @required String smsMessage,
    @required bool is_expense,
    this.successful = const Value.absent(),
    @required double amount_in_sms,
    @required double expense_amount,
    this.account_number = const Value.absent(),
    this.account_balance = const Value.absent(),
    this.is_debit = const Value.absent(),
    this.is_credit = const Value.absent(),
    this.is_salary = const Value.absent(),
    this.is_upi = const Value.absent(),
    this.is_wallet = const Value.absent(),
    this.is_card = const Value.absent(),
    this.is_bank_transfer = const Value.absent(),
    this.is_refund = const Value.absent(),
    this.merchant_name = const Value.absent(),
    this.category = const Value.absent(),
    this.wallet_name = const Value.absent(),
    this.is_withdrawal = const Value.absent(),
    this.is_bill = const Value.absent(),
    this.minimum_due = const Value.absent(),
    this.total_due = const Value.absent(),
    @required DateTime spend_date,
    this.source = const Value.absent(),
    this.splurge_amount = const Value.absent(),
    this.parser_version = const Value.absent(),
  })  : created_at = Value(created_at),
        updated_at = Value(updated_at),
        uid = Value(uid),
        smsMessage = Value(smsMessage),
        is_expense = Value(is_expense),
        amount_in_sms = Value(amount_in_sms),
        expense_amount = Value(expense_amount),
        spend_date = Value(spend_date);
  ExpensesCompanion copyWith(
      {Value<DateTime> created_at,
      Value<DateTime> updated_at,
      Value<String> uid,
      Value<String> sms_uid,
      Value<String> smsMessage,
      Value<bool> is_expense,
      Value<bool> successful,
      Value<double> amount_in_sms,
      Value<double> expense_amount,
      Value<double> account_number,
      Value<double> account_balance,
      Value<bool> is_debit,
      Value<bool> is_credit,
      Value<bool> is_salary,
      Value<bool> is_upi,
      Value<bool> is_wallet,
      Value<bool> is_card,
      Value<bool> is_bank_transfer,
      Value<bool> is_refund,
      Value<String> merchant_name,
      Value<String> category,
      Value<String> wallet_name,
      Value<bool> is_withdrawal,
      Value<bool> is_bill,
      Value<double> minimum_due,
      Value<double> total_due,
      Value<DateTime> spend_date,
      Value<String> source,
      Value<double> splurge_amount,
      Value<double> parser_version}) {
    return ExpensesCompanion(
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      uid: uid ?? this.uid,
      sms_uid: sms_uid ?? this.sms_uid,
      smsMessage: smsMessage ?? this.smsMessage,
      is_expense: is_expense ?? this.is_expense,
      successful: successful ?? this.successful,
      amount_in_sms: amount_in_sms ?? this.amount_in_sms,
      expense_amount: expense_amount ?? this.expense_amount,
      account_number: account_number ?? this.account_number,
      account_balance: account_balance ?? this.account_balance,
      is_debit: is_debit ?? this.is_debit,
      is_credit: is_credit ?? this.is_credit,
      is_salary: is_salary ?? this.is_salary,
      is_upi: is_upi ?? this.is_upi,
      is_wallet: is_wallet ?? this.is_wallet,
      is_card: is_card ?? this.is_card,
      is_bank_transfer: is_bank_transfer ?? this.is_bank_transfer,
      is_refund: is_refund ?? this.is_refund,
      merchant_name: merchant_name ?? this.merchant_name,
      category: category ?? this.category,
      wallet_name: wallet_name ?? this.wallet_name,
      is_withdrawal: is_withdrawal ?? this.is_withdrawal,
      is_bill: is_bill ?? this.is_bill,
      minimum_due: minimum_due ?? this.minimum_due,
      total_due: total_due ?? this.total_due,
      spend_date: spend_date ?? this.spend_date,
      source: source ?? this.source,
      splurge_amount: splurge_amount ?? this.splurge_amount,
      parser_version: parser_version ?? this.parser_version,
    );
  }
}

class $ExpensesTable extends Expenses with TableInfo<$ExpensesTable, Expense> {
  final GeneratedDatabase _db;
  final String _alias;
  $ExpensesTable(this._db, [this._alias]);
  final VerificationMeta _created_atMeta = const VerificationMeta('created_at');
  GeneratedDateTimeColumn _created_at;
  @override
  GeneratedDateTimeColumn get created_at =>
      _created_at ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updated_atMeta = const VerificationMeta('updated_at');
  GeneratedDateTimeColumn _updated_at;
  @override
  GeneratedDateTimeColumn get updated_at =>
      _updated_at ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _uidMeta = const VerificationMeta('uid');
  GeneratedTextColumn _uid;
  @override
  GeneratedTextColumn get uid => _uid ??= _constructUid();
  GeneratedTextColumn _constructUid() {
    return GeneratedTextColumn(
      'uid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sms_uidMeta = const VerificationMeta('sms_uid');
  GeneratedTextColumn _sms_uid;
  @override
  GeneratedTextColumn get sms_uid => _sms_uid ??= _constructSmsUid();
  GeneratedTextColumn _constructSmsUid() {
    return GeneratedTextColumn(
      'sms_uid',
      $tableName,
      true,
    );
  }

  final VerificationMeta _smsMessageMeta = const VerificationMeta('smsMessage');
  GeneratedTextColumn _smsMessage;
  @override
  GeneratedTextColumn get smsMessage => _smsMessage ??= _constructSmsMessage();
  GeneratedTextColumn _constructSmsMessage() {
    return GeneratedTextColumn(
      'sms_message',
      $tableName,
      false,
    );
  }

  final VerificationMeta _is_expenseMeta = const VerificationMeta('is_expense');
  GeneratedBoolColumn _is_expense;
  @override
  GeneratedBoolColumn get is_expense => _is_expense ??= _constructIsExpense();
  GeneratedBoolColumn _constructIsExpense() {
    return GeneratedBoolColumn(
      'is_expense',
      $tableName,
      false,
    );
  }

  final VerificationMeta _successfulMeta = const VerificationMeta('successful');
  GeneratedBoolColumn _successful;
  @override
  GeneratedBoolColumn get successful => _successful ??= _constructSuccessful();
  GeneratedBoolColumn _constructSuccessful() {
    return GeneratedBoolColumn(
      'successful',
      $tableName,
      true,
    );
  }

  final VerificationMeta _amount_in_smsMeta =
      const VerificationMeta('amount_in_sms');
  GeneratedRealColumn _amount_in_sms;
  @override
  GeneratedRealColumn get amount_in_sms =>
      _amount_in_sms ??= _constructAmountInSms();
  GeneratedRealColumn _constructAmountInSms() {
    return GeneratedRealColumn(
      'amount_in_sms',
      $tableName,
      false,
    );
  }

  final VerificationMeta _expense_amountMeta =
      const VerificationMeta('expense_amount');
  GeneratedRealColumn _expense_amount;
  @override
  GeneratedRealColumn get expense_amount =>
      _expense_amount ??= _constructExpenseAmount();
  GeneratedRealColumn _constructExpenseAmount() {
    return GeneratedRealColumn(
      'expense_amount',
      $tableName,
      false,
    );
  }

  final VerificationMeta _account_numberMeta =
      const VerificationMeta('account_number');
  GeneratedRealColumn _account_number;
  @override
  GeneratedRealColumn get account_number =>
      _account_number ??= _constructAccountNumber();
  GeneratedRealColumn _constructAccountNumber() {
    return GeneratedRealColumn(
      'account_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _account_balanceMeta =
      const VerificationMeta('account_balance');
  GeneratedRealColumn _account_balance;
  @override
  GeneratedRealColumn get account_balance =>
      _account_balance ??= _constructAccountBalance();
  GeneratedRealColumn _constructAccountBalance() {
    return GeneratedRealColumn(
      'account_balance',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_debitMeta = const VerificationMeta('is_debit');
  GeneratedBoolColumn _is_debit;
  @override
  GeneratedBoolColumn get is_debit => _is_debit ??= _constructIsDebit();
  GeneratedBoolColumn _constructIsDebit() {
    return GeneratedBoolColumn(
      'is_debit',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_creditMeta = const VerificationMeta('is_credit');
  GeneratedBoolColumn _is_credit;
  @override
  GeneratedBoolColumn get is_credit => _is_credit ??= _constructIsCredit();
  GeneratedBoolColumn _constructIsCredit() {
    return GeneratedBoolColumn(
      'is_credit',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_salaryMeta = const VerificationMeta('is_salary');
  GeneratedBoolColumn _is_salary;
  @override
  GeneratedBoolColumn get is_salary => _is_salary ??= _constructIsSalary();
  GeneratedBoolColumn _constructIsSalary() {
    return GeneratedBoolColumn(
      'is_salary',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_upiMeta = const VerificationMeta('is_upi');
  GeneratedBoolColumn _is_upi;
  @override
  GeneratedBoolColumn get is_upi => _is_upi ??= _constructIsUpi();
  GeneratedBoolColumn _constructIsUpi() {
    return GeneratedBoolColumn(
      'is_upi',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_walletMeta = const VerificationMeta('is_wallet');
  GeneratedBoolColumn _is_wallet;
  @override
  GeneratedBoolColumn get is_wallet => _is_wallet ??= _constructIsWallet();
  GeneratedBoolColumn _constructIsWallet() {
    return GeneratedBoolColumn(
      'is_wallet',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_cardMeta = const VerificationMeta('is_card');
  GeneratedBoolColumn _is_card;
  @override
  GeneratedBoolColumn get is_card => _is_card ??= _constructIsCard();
  GeneratedBoolColumn _constructIsCard() {
    return GeneratedBoolColumn(
      'is_card',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_bank_transferMeta =
      const VerificationMeta('is_bank_transfer');
  GeneratedBoolColumn _is_bank_transfer;
  @override
  GeneratedBoolColumn get is_bank_transfer =>
      _is_bank_transfer ??= _constructIsBankTransfer();
  GeneratedBoolColumn _constructIsBankTransfer() {
    return GeneratedBoolColumn(
      'is_bank_transfer',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_refundMeta = const VerificationMeta('is_refund');
  GeneratedBoolColumn _is_refund;
  @override
  GeneratedBoolColumn get is_refund => _is_refund ??= _constructIsRefund();
  GeneratedBoolColumn _constructIsRefund() {
    return GeneratedBoolColumn(
      'is_refund',
      $tableName,
      true,
    );
  }

  final VerificationMeta _merchant_nameMeta =
      const VerificationMeta('merchant_name');
  GeneratedTextColumn _merchant_name;
  @override
  GeneratedTextColumn get merchant_name =>
      _merchant_name ??= _constructMerchantName();
  GeneratedTextColumn _constructMerchantName() {
    return GeneratedTextColumn(
      'merchant_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  GeneratedTextColumn _category;
  @override
  GeneratedTextColumn get category => _category ??= _constructCategory();
  GeneratedTextColumn _constructCategory() {
    return GeneratedTextColumn(
      'category',
      $tableName,
      true,
    );
  }

  final VerificationMeta _wallet_nameMeta =
      const VerificationMeta('wallet_name');
  GeneratedTextColumn _wallet_name;
  @override
  GeneratedTextColumn get wallet_name =>
      _wallet_name ??= _constructWalletName();
  GeneratedTextColumn _constructWalletName() {
    return GeneratedTextColumn(
      'wallet_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_withdrawalMeta =
      const VerificationMeta('is_withdrawal');
  GeneratedBoolColumn _is_withdrawal;
  @override
  GeneratedBoolColumn get is_withdrawal =>
      _is_withdrawal ??= _constructIsWithdrawal();
  GeneratedBoolColumn _constructIsWithdrawal() {
    return GeneratedBoolColumn(
      'is_withdrawal',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_billMeta = const VerificationMeta('is_bill');
  GeneratedBoolColumn _is_bill;
  @override
  GeneratedBoolColumn get is_bill => _is_bill ??= _constructIsBill();
  GeneratedBoolColumn _constructIsBill() {
    return GeneratedBoolColumn(
      'is_bill',
      $tableName,
      true,
    );
  }

  final VerificationMeta _minimum_dueMeta =
      const VerificationMeta('minimum_due');
  GeneratedRealColumn _minimum_due;
  @override
  GeneratedRealColumn get minimum_due =>
      _minimum_due ??= _constructMinimumDue();
  GeneratedRealColumn _constructMinimumDue() {
    return GeneratedRealColumn(
      'minimum_due',
      $tableName,
      true,
    );
  }

  final VerificationMeta _total_dueMeta = const VerificationMeta('total_due');
  GeneratedRealColumn _total_due;
  @override
  GeneratedRealColumn get total_due => _total_due ??= _constructTotalDue();
  GeneratedRealColumn _constructTotalDue() {
    return GeneratedRealColumn(
      'total_due',
      $tableName,
      true,
    );
  }

  final VerificationMeta _spend_dateMeta = const VerificationMeta('spend_date');
  GeneratedDateTimeColumn _spend_date;
  @override
  GeneratedDateTimeColumn get spend_date =>
      _spend_date ??= _constructSpendDate();
  GeneratedDateTimeColumn _constructSpendDate() {
    return GeneratedDateTimeColumn(
      'spend_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sourceMeta = const VerificationMeta('source');
  GeneratedTextColumn _source;
  @override
  GeneratedTextColumn get source => _source ??= _constructSource();
  GeneratedTextColumn _constructSource() {
    return GeneratedTextColumn(
      'source',
      $tableName,
      true,
    );
  }

  final VerificationMeta _splurge_amountMeta =
      const VerificationMeta('splurge_amount');
  GeneratedRealColumn _splurge_amount;
  @override
  GeneratedRealColumn get splurge_amount =>
      _splurge_amount ??= _constructSplurgeAmount();
  GeneratedRealColumn _constructSplurgeAmount() {
    return GeneratedRealColumn(
      'splurge_amount',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parser_versionMeta =
      const VerificationMeta('parser_version');
  GeneratedRealColumn _parser_version;
  @override
  GeneratedRealColumn get parser_version =>
      _parser_version ??= _constructParserVersion();
  GeneratedRealColumn _constructParserVersion() {
    return GeneratedRealColumn(
      'parser_version',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        created_at,
        updated_at,
        uid,
        sms_uid,
        smsMessage,
        is_expense,
        successful,
        amount_in_sms,
        expense_amount,
        account_number,
        account_balance,
        is_debit,
        is_credit,
        is_salary,
        is_upi,
        is_wallet,
        is_card,
        is_bank_transfer,
        is_refund,
        merchant_name,
        category,
        wallet_name,
        is_withdrawal,
        is_bill,
        minimum_due,
        total_due,
        spend_date,
        source,
        splurge_amount,
        parser_version
      ];
  @override
  $ExpensesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'expenses';
  @override
  final String actualTableName = 'expenses';
  @override
  VerificationContext validateIntegrity(ExpensesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.created_at.present) {
      context.handle(_created_atMeta,
          created_at.isAcceptableValue(d.created_at.value, _created_atMeta));
    } else if (isInserting) {
      context.missing(_created_atMeta);
    }
    if (d.updated_at.present) {
      context.handle(_updated_atMeta,
          updated_at.isAcceptableValue(d.updated_at.value, _updated_atMeta));
    } else if (isInserting) {
      context.missing(_updated_atMeta);
    }
    if (d.uid.present) {
      context.handle(_uidMeta, uid.isAcceptableValue(d.uid.value, _uidMeta));
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (d.sms_uid.present) {
      context.handle(_sms_uidMeta,
          sms_uid.isAcceptableValue(d.sms_uid.value, _sms_uidMeta));
    }
    if (d.smsMessage.present) {
      context.handle(_smsMessageMeta,
          smsMessage.isAcceptableValue(d.smsMessage.value, _smsMessageMeta));
    } else if (isInserting) {
      context.missing(_smsMessageMeta);
    }
    if (d.is_expense.present) {
      context.handle(_is_expenseMeta,
          is_expense.isAcceptableValue(d.is_expense.value, _is_expenseMeta));
    } else if (isInserting) {
      context.missing(_is_expenseMeta);
    }
    if (d.successful.present) {
      context.handle(_successfulMeta,
          successful.isAcceptableValue(d.successful.value, _successfulMeta));
    }
    if (d.amount_in_sms.present) {
      context.handle(
          _amount_in_smsMeta,
          amount_in_sms.isAcceptableValue(
              d.amount_in_sms.value, _amount_in_smsMeta));
    } else if (isInserting) {
      context.missing(_amount_in_smsMeta);
    }
    if (d.expense_amount.present) {
      context.handle(
          _expense_amountMeta,
          expense_amount.isAcceptableValue(
              d.expense_amount.value, _expense_amountMeta));
    } else if (isInserting) {
      context.missing(_expense_amountMeta);
    }
    if (d.account_number.present) {
      context.handle(
          _account_numberMeta,
          account_number.isAcceptableValue(
              d.account_number.value, _account_numberMeta));
    }
    if (d.account_balance.present) {
      context.handle(
          _account_balanceMeta,
          account_balance.isAcceptableValue(
              d.account_balance.value, _account_balanceMeta));
    }
    if (d.is_debit.present) {
      context.handle(_is_debitMeta,
          is_debit.isAcceptableValue(d.is_debit.value, _is_debitMeta));
    }
    if (d.is_credit.present) {
      context.handle(_is_creditMeta,
          is_credit.isAcceptableValue(d.is_credit.value, _is_creditMeta));
    }
    if (d.is_salary.present) {
      context.handle(_is_salaryMeta,
          is_salary.isAcceptableValue(d.is_salary.value, _is_salaryMeta));
    }
    if (d.is_upi.present) {
      context.handle(
          _is_upiMeta, is_upi.isAcceptableValue(d.is_upi.value, _is_upiMeta));
    }
    if (d.is_wallet.present) {
      context.handle(_is_walletMeta,
          is_wallet.isAcceptableValue(d.is_wallet.value, _is_walletMeta));
    }
    if (d.is_card.present) {
      context.handle(_is_cardMeta,
          is_card.isAcceptableValue(d.is_card.value, _is_cardMeta));
    }
    if (d.is_bank_transfer.present) {
      context.handle(
          _is_bank_transferMeta,
          is_bank_transfer.isAcceptableValue(
              d.is_bank_transfer.value, _is_bank_transferMeta));
    }
    if (d.is_refund.present) {
      context.handle(_is_refundMeta,
          is_refund.isAcceptableValue(d.is_refund.value, _is_refundMeta));
    }
    if (d.merchant_name.present) {
      context.handle(
          _merchant_nameMeta,
          merchant_name.isAcceptableValue(
              d.merchant_name.value, _merchant_nameMeta));
    }
    if (d.category.present) {
      context.handle(_categoryMeta,
          category.isAcceptableValue(d.category.value, _categoryMeta));
    }
    if (d.wallet_name.present) {
      context.handle(_wallet_nameMeta,
          wallet_name.isAcceptableValue(d.wallet_name.value, _wallet_nameMeta));
    }
    if (d.is_withdrawal.present) {
      context.handle(
          _is_withdrawalMeta,
          is_withdrawal.isAcceptableValue(
              d.is_withdrawal.value, _is_withdrawalMeta));
    }
    if (d.is_bill.present) {
      context.handle(_is_billMeta,
          is_bill.isAcceptableValue(d.is_bill.value, _is_billMeta));
    }
    if (d.minimum_due.present) {
      context.handle(_minimum_dueMeta,
          minimum_due.isAcceptableValue(d.minimum_due.value, _minimum_dueMeta));
    }
    if (d.total_due.present) {
      context.handle(_total_dueMeta,
          total_due.isAcceptableValue(d.total_due.value, _total_dueMeta));
    }
    if (d.spend_date.present) {
      context.handle(_spend_dateMeta,
          spend_date.isAcceptableValue(d.spend_date.value, _spend_dateMeta));
    } else if (isInserting) {
      context.missing(_spend_dateMeta);
    }
    if (d.source.present) {
      context.handle(
          _sourceMeta, source.isAcceptableValue(d.source.value, _sourceMeta));
    }
    if (d.splurge_amount.present) {
      context.handle(
          _splurge_amountMeta,
          splurge_amount.isAcceptableValue(
              d.splurge_amount.value, _splurge_amountMeta));
    }
    if (d.parser_version.present) {
      context.handle(
          _parser_versionMeta,
          parser_version.isAcceptableValue(
              d.parser_version.value, _parser_versionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Expense map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Expense.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ExpensesCompanion d) {
    final map = <String, Variable>{};
    if (d.created_at.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.created_at.value);
    }
    if (d.updated_at.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updated_at.value);
    }
    if (d.uid.present) {
      map['uid'] = Variable<String, StringType>(d.uid.value);
    }
    if (d.sms_uid.present) {
      map['sms_uid'] = Variable<String, StringType>(d.sms_uid.value);
    }
    if (d.smsMessage.present) {
      map['sms_message'] = Variable<String, StringType>(d.smsMessage.value);
    }
    if (d.is_expense.present) {
      map['is_expense'] = Variable<bool, BoolType>(d.is_expense.value);
    }
    if (d.successful.present) {
      map['successful'] = Variable<bool, BoolType>(d.successful.value);
    }
    if (d.amount_in_sms.present) {
      map['amount_in_sms'] = Variable<double, RealType>(d.amount_in_sms.value);
    }
    if (d.expense_amount.present) {
      map['expense_amount'] =
          Variable<double, RealType>(d.expense_amount.value);
    }
    if (d.account_number.present) {
      map['account_number'] =
          Variable<double, RealType>(d.account_number.value);
    }
    if (d.account_balance.present) {
      map['account_balance'] =
          Variable<double, RealType>(d.account_balance.value);
    }
    if (d.is_debit.present) {
      map['is_debit'] = Variable<bool, BoolType>(d.is_debit.value);
    }
    if (d.is_credit.present) {
      map['is_credit'] = Variable<bool, BoolType>(d.is_credit.value);
    }
    if (d.is_salary.present) {
      map['is_salary'] = Variable<bool, BoolType>(d.is_salary.value);
    }
    if (d.is_upi.present) {
      map['is_upi'] = Variable<bool, BoolType>(d.is_upi.value);
    }
    if (d.is_wallet.present) {
      map['is_wallet'] = Variable<bool, BoolType>(d.is_wallet.value);
    }
    if (d.is_card.present) {
      map['is_card'] = Variable<bool, BoolType>(d.is_card.value);
    }
    if (d.is_bank_transfer.present) {
      map['is_bank_transfer'] =
          Variable<bool, BoolType>(d.is_bank_transfer.value);
    }
    if (d.is_refund.present) {
      map['is_refund'] = Variable<bool, BoolType>(d.is_refund.value);
    }
    if (d.merchant_name.present) {
      map['merchant_name'] =
          Variable<String, StringType>(d.merchant_name.value);
    }
    if (d.category.present) {
      map['category'] = Variable<String, StringType>(d.category.value);
    }
    if (d.wallet_name.present) {
      map['wallet_name'] = Variable<String, StringType>(d.wallet_name.value);
    }
    if (d.is_withdrawal.present) {
      map['is_withdrawal'] = Variable<bool, BoolType>(d.is_withdrawal.value);
    }
    if (d.is_bill.present) {
      map['is_bill'] = Variable<bool, BoolType>(d.is_bill.value);
    }
    if (d.minimum_due.present) {
      map['minimum_due'] = Variable<double, RealType>(d.minimum_due.value);
    }
    if (d.total_due.present) {
      map['total_due'] = Variable<double, RealType>(d.total_due.value);
    }
    if (d.spend_date.present) {
      map['spend_date'] = Variable<DateTime, DateTimeType>(d.spend_date.value);
    }
    if (d.source.present) {
      map['source'] = Variable<String, StringType>(d.source.value);
    }
    if (d.splurge_amount.present) {
      map['splurge_amount'] =
          Variable<double, RealType>(d.splurge_amount.value);
    }
    if (d.parser_version.present) {
      map['parser_version'] =
          Variable<double, RealType>(d.parser_version.value);
    }
    return map;
  }

  @override
  $ExpensesTable createAlias(String alias) {
    return $ExpensesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $StatementsTable _statements;
  $StatementsTable get statements => _statements ??= $StatementsTable(this);
  $AccountsTable _accounts;
  $AccountsTable get accounts => _accounts ??= $AccountsTable(this);
  $ExpensesTable _expenses;
  $ExpensesTable get expenses => _expenses ??= $ExpensesTable(this);
  UserDao _userDao;
  UserDao get userDao => _userDao ??= UserDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [statements, accounts, expenses];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$UserDaoMixin on DatabaseAccessor<AppDatabase> {
  $StatementsTable get statements => db.statements;
  $AccountsTable get accounts => db.accounts;
  $ExpensesTable get expenses => db.expenses;
  GetSumExpensesResult _rowToGetSumExpensesResult(QueryRow row) {
    return GetSumExpensesResult(
      category: row.readString('category'),
      amount: row.readDouble('amount'),
    );
  }

  Selectable<GetSumExpensesResult> getSumExpensesQuery(
      DateTime date1, DateTime date2) {
    return customSelectQuery(
        'SELECT category, sum(expense_amount) AS amount FROM expenses WHERE spend_date >= :date1 and spend_date <= :date2 GROUP BY category ORDER BY sum(expense_amount) DESC;',
        variables: [Variable.withDateTime(date1), Variable.withDateTime(date2)],
        readsFrom: {expenses}).map(_rowToGetSumExpensesResult);
  }

  Future<List<GetSumExpensesResult>> getSumExpenses(
      DateTime date1, DateTime date2) {
    return getSumExpensesQuery(date1, date2).get();
  }

  Stream<List<GetSumExpensesResult>> watchGetSumExpenses(
      DateTime date1, DateTime date2) {
    return getSumExpensesQuery(date1, date2).watch();
  }
}

class GetSumExpensesResult {
  final String category;
  final double amount;
  GetSumExpensesResult({
    this.category,
    this.amount,
  });
}
