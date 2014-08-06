.class public Lcom/android/contacts/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final DATE_FORMATS:[Ljava/text/SimpleDateFormat;

.field public static final UTC_TIMEZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 36
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    sput-object v4, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 46
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/text/SimpleDateFormat;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/contacts/common/util/CommonDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/contacts/common/util/CommonDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v5, v4, v9

    const/4 v5, 0x2

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmm\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 57
    sget-object v0, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .local v0, "arr$":[Ljava/text/SimpleDateFormat;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 58
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 59
    sget-object v4, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    :cond_0
    sget-object v4, Lcom/android/contacts/common/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "longForm"    # Z

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    const/4 v3, 0x0

    .line 181
    :goto_0
    return-object v3

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    move-object v3, p1

    .line 161
    goto :goto_0

    .line 163
    :cond_1
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;Z)Ljava/util/Calendar;

    move-result-object v0

    .line 166
    .local v0, "cal":Ljava/util/Calendar;
    if-nez v0, :cond_2

    move-object v3, p1

    .line 167
    goto :goto_0

    .line 170
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/util/DateUtils;->isYearSet(Ljava/util/Calendar;)Z

    move-result v1

    .line 172
    .local v1, "isYearSet":Z
    if-nez v1, :cond_3

    .line 173
    invoke-static {p0}, Lcom/android/contacts/util/DateUtils;->getLocalizedDateFormatWithoutYear(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 179
    .local v2, "outFormat":Ljava/text/DateFormat;
    :goto_1
    monitor-enter v2

    .line 180
    :try_start_0
    sget-object v3, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 181
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v2

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 175
    .end local v2    # "outFormat":Ljava/text/DateFormat;
    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .restart local v2    # "outFormat":Ljava/text/DateFormat;
    :goto_2
    goto :goto_1

    .end local v2    # "outFormat":Ljava/text/DateFormat;
    :cond_4
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_2
.end method

.method public static getLocalizedDateFormatWithoutYear(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "pattern":Ljava/lang/String;
    const-string v3, "de"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "[^Mm]*[Yy]+[^Mm]*"

    .line 214
    .local v2, "yearPattern":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_1
    return-object v3

    .line 210
    .end local v2    # "yearPattern":Ljava/lang/String;
    :cond_0
    const-string v2, "[^DdMm]*[Yy]+[^DdMm]*"

    goto :goto_0

    .line 215
    .restart local v2    # "yearPattern":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Lcom/android/contacts/util/DateUtils;->isMonthBeforeDay(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "MMMM dd"

    :goto_2
    invoke-direct {v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_1

    :cond_1
    const-string v3, "dd MMMM"

    goto :goto_2
.end method

.method public static getNextAnnualDate(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 10
    .param p0, "target"    # Ljava/util/Calendar;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 234
    .local v7, "today":Ljava/util/Calendar;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 238
    const/16 v9, 0xb

    invoke-virtual {v7, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 239
    const/16 v9, 0xc

    invoke-virtual {v7, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 240
    const/16 v9, 0xd

    invoke-virtual {v7, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 241
    const/16 v9, 0xe

    invoke-virtual {v7, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 243
    invoke-static {p0}, Lcom/android/contacts/util/DateUtils;->isYearSet(Ljava/util/Calendar;)Z

    move-result v3

    .line 244
    .local v3, "isYearSet":Z
    invoke-virtual {p0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 245
    .local v6, "targetYear":I
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 246
    .local v5, "targetMonth":I
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 247
    .local v4, "targetDay":I
    if-ne v5, v8, :cond_0

    const/16 v9, 0x1d

    if-ne v4, v9, :cond_0

    move v2, v8

    .line 248
    .local v2, "isFeb29":Z
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 251
    .local v0, "anniversary":Ljava/util/GregorianCalendar;
    if-nez v3, :cond_1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .end local v6    # "targetYear":I
    :cond_1
    invoke-virtual {v0, v6, v5, v4}, Ljava/util/GregorianCalendar;->set(III)V

    .line 257
    if-nez v3, :cond_4

    .line 258
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 259
    .local v1, "anniversaryYear":I
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 265
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 266
    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 267
    :cond_3
    invoke-virtual {v0, v1, v5, v4}, Ljava/util/GregorianCalendar;->set(III)V

    .line 270
    .end local v1    # "anniversaryYear":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v8

    return-object v8
.end method

.method private static final getUtcDate(III)Ljava/util/Calendar;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 115
    sget-object v1, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 116
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 118
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 119
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 120
    return-object v0
.end method

.method private static final getUtcDate(Ljava/util/Date;Z)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "noYear"    # Z

    .prologue
    .line 106
    sget-object v1, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 107
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 111
    :cond_0
    return-object v0
.end method

.method public static isMonthBeforeDay(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 187
    .local v0, "dateFormatOrder":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 188
    aget-char v3, v0, v1

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 195
    :cond_0
    :goto_1
    return v2

    .line 191
    :cond_1
    aget-char v3, v0, v1

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_2

    .line 192
    const/4 v2, 0x1

    goto :goto_1

    .line 187
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isYearSet(Ljava/util/Calendar;)Z
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;Z)Ljava/util/Calendar;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "mustContainYear"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 76
    .local v4, "parsePosition":Ljava/text/ParsePosition;
    if-nez p1, :cond_2

    .line 79
    const-string v6, "--02-29"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    const/16 v6, 0x1d

    invoke-static {v3, v5, v6}, Lcom/android/contacts/util/DateUtils;->getUtcDate(III)Ljava/util/Calendar;

    move-result-object v5

    .line 102
    :goto_0
    return-object v5

    .line 82
    :cond_0
    sget-object v6, Lcom/android/contacts/common/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v6

    .line 83
    :try_start_0
    sget-object v7, Lcom/android/contacts/common/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, p0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 84
    .local v0, "date":Ljava/util/Date;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_1

    move v3, v5

    .line 88
    .local v3, "noYearParsed":Z
    :cond_1
    if-eqz v3, :cond_2

    .line 89
    invoke-static {v0, v5}, Lcom/android/contacts/util/DateUtils;->getUtcDate(Ljava/util/Date;Z)Ljava/util/Calendar;

    move-result-object v5

    goto :goto_0

    .line 84
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "noYearParsed":Z
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 92
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v5, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 93
    sget-object v5, Lcom/android/contacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v1, v5, v2

    .line 94
    .local v1, "f":Ljava/text/SimpleDateFormat;
    monitor-enter v1

    .line 95
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v4, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 96
    invoke-virtual {v1, p0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 97
    .restart local v0    # "date":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 98
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/contacts/util/DateUtils;->getUtcDate(Ljava/util/Date;Z)Ljava/util/Calendar;

    move-result-object v5

    monitor-exit v1

    goto :goto_0

    .line 100
    .end local v0    # "date":Ljava/util/Date;
    :catchall_1
    move-exception v5

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .restart local v0    # "date":Ljava/util/Date;
    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "f":Ljava/text/SimpleDateFormat;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method
