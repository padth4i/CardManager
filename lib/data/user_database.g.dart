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

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $StatementsTable _statements;
  $StatementsTable get statements => _statements ??= $StatementsTable(this);
  $AccountsTable _accounts;
  $AccountsTable get accounts => _accounts ??= $AccountsTable(this);
  UserDao _userDao;
  UserDao get userDao => _userDao ??= UserDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [statements, accounts];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$UserDaoMixin on DatabaseAccessor<AppDatabase> {
  $StatementsTable get statements => db.statements;
  $AccountsTable get accounts => db.accounts;
}
