.class public Lcom/android/contacts/common/list/AccountCapacityLoader;
.super Landroid/content/BroadcastReceiver;
.source "AccountCapacityLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/contacts/common/list/AccountCapacityLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/contacts/common/list/AccountCapacityLoader;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/AccountCapacityLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/list/AccountCapacityLoader;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountCapacityLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 31
    invoke-static {p0}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getSpecifiedKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContactCountByAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v8, "selection":Ljava/lang/StringBuilder;
    const-string v0, "deleted = 0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string v0, "account_type = \'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :goto_0
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    const-string v0, "account_name = \'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :goto_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 121
    .local v6, "contactIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 123
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 127
    :goto_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 132
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 110
    .end local v6    # "contactIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v0, "account_type IS NULL "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "account_name IS NULL "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 130
    .restart local v6    # "contactIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 132
    if-eqz v7, :cond_4

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    return v0
.end method

.method private static getSpecifiedKey(I)Ljava/lang/String;
    .locals 1
    .param p0, "subscription"    # I

    .prologue
    .line 275
    packed-switch p0, :pswitch_data_0

    .line 281
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "uim_capacity"

    .line 284
    :goto_0
    return-object v0

    .line 277
    :pswitch_0
    const-string v0, "uim_capacity"

    goto :goto_0

    .line 279
    :pswitch_1
    const-string v0, "sim_capacity"

    goto :goto_0

    .line 284
    :cond_0
    const-string v0, "single_card_capacity"

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getStoredUSIMCapacity(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 206
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getSpecifiedKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getUSIMCapacity()I
    .locals 7

    .prologue
    const/16 v3, 0xfa

    .line 216
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 218
    .local v2, "spb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-nez v2, :cond_0

    .line 219
    sget-object v4, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    const-string v5, "IIccPhoneBook is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return v3

    .line 224
    :cond_0
    const/16 v4, 0x6f3a

    :try_start_0
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v0

    .line 226
    .local v0, "adnRecords":[I
    if-eqz v0, :cond_1

    .line 227
    sget-object v4, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The capacity of card is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v4, 0x2

    aget v3, v0, v4

    goto :goto_0

    .line 230
    :cond_1
    sget-object v4, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    const-string v5, "Cannot get ADN records size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    .end local v0    # "adnRecords":[I
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getUSIMCapacity(I)I
    .locals 7
    .param p0, "subscription"    # I

    .prologue
    const/16 v3, 0xfa

    .line 240
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    invoke-static {}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getUSIMCapacity()I

    move-result v3

    .line 263
    :goto_0
    return v3

    .line 244
    :cond_0
    const-string v4, "simphonebook_msim"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v2

    .line 246
    .local v2, "spb":Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-nez v2, :cond_1

    .line 247
    sget-object v4, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    const-string v5, "IIccPhoneBookMSim is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_1
    const/16 v4, 0x6f3a

    :try_start_0
    invoke-interface {v2, v4, p0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->getAdnRecordsSize(II)[I

    move-result-object v0

    .line 254
    .local v0, "adnRecords":[I
    if-eqz v0, :cond_2

    .line 255
    sget-object v4, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The capacity of card("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v4, 0x2

    aget v3, v0, v4

    goto :goto_0

    .line 258
    :cond_2
    sget-object v4, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    const-string v5, "Cannot get ADN records size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    .end local v0    # "adnRecords":[I
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getUSIMCapacity(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 197
    invoke-static {p0, p1}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getStoredUSIMCapacity(Landroid/content/Context;I)I

    move-result v0

    .line 198
    .local v0, "storedCapacity":I
    const/16 v1, 0xfa

    if-ge v0, v1, :cond_0

    .line 199
    invoke-static {p1}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getUSIMCapacity(I)I

    move-result v0

    .line 200
    invoke-static {p0, p1, v0}, Lcom/android/contacts/common/list/AccountCapacityLoader;->updateStoredUSIMCapacity(Landroid/content/Context;II)V

    .line 202
    :cond_0
    return v0
.end method

.method public static updateStoredUSIMCapacity(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 211
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getSpecifiedKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    return-void
.end method


# virtual methods
.method public loadAccountCapacity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/android/contacts/common/list/AccountCapacityLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/list/AccountCapacityLoader$1;-><init>(Lcom/android/contacts/common/list/AccountCapacityLoader;Landroid/widget/TextView;)V

    .line 69
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/contacts/common/list/AccountCapacityLoader$2;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/contacts/common/list/AccountCapacityLoader$2;-><init>(Lcom/android/contacts/common/list/AccountCapacityLoader;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/android/contacts/common/list/AccountCapacityLoader$2;->start()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    if-nez p2, :cond_0

    .line 142
    sget-object v2, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    const-string v3, "May be a malicious attack..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 151
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    const-string v2, "uim_capacity"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v2, "sim_capacity"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v2, "single_card_capacity"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    :cond_1
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    const-string v2, "com.android.simcontacts.ACTION_UIM_LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    new-instance v2, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;

    invoke-direct {v2, p0, p1, v7}, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;-><init>(Lcom/android/contacts/common/list/AccountCapacityLoader;Landroid/content/Context;Lcom/android/contacts/common/list/AccountCapacityLoader$1;)V

    new-array v3, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 170
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 160
    :cond_3
    const-string v2, "com.android.simcontacts.ACTION_SIM_LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    new-instance v2, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;

    invoke-direct {v2, p0, p1, v7}, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;-><init>(Lcom/android/contacts/common/list/AccountCapacityLoader;Landroid/content/Context;Lcom/android/contacts/common/list/AccountCapacityLoader$1;)V

    new-array v3, v6, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 164
    :cond_4
    const-string v2, "com.android.simcontacts.ACTION_UIM_LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    new-instance v2, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;

    invoke-direct {v2, p0, p1, v7}, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;-><init>(Lcom/android/contacts/common/list/AccountCapacityLoader;Landroid/content/Context;Lcom/android/contacts/common/list/AccountCapacityLoader$1;)V

    new-array v3, v6, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 166
    :cond_5
    const-string v2, "com.android.simcontacts.ACTION_SIM_LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    new-instance v2, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;

    invoke-direct {v2, p0, p1, v7}, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;-><init>(Lcom/android/contacts/common/list/AccountCapacityLoader;Landroid/content/Context;Lcom/android/contacts/common/list/AccountCapacityLoader$1;)V

    new-array v3, v6, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
