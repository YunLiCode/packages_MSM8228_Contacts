.class public Lcom/android/contacts/external/CardLoadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CardLoadReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsNeedShowTips:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/contacts/external/CardLoadReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/external/CardLoadReceiver;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/external/CardLoadReceiver;->mIsNeedShowTips:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getCardLoadState(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 113
    const-string v2, "card_load_state"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 115
    .local v1, "sp":Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :pswitch_0
    const-string v0, "card_uim_state"

    .line 126
    .local v0, "key":Ljava/lang/String;
    :goto_0
    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 121
    .end local v0    # "key":Ljava/lang/String;
    :pswitch_1
    const-string v0, "card_sim_state"

    .line 122
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isAllCardLoaded(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, v1}, Lcom/android/contacts/external/CardLoadReceiver;->isCardLoaded(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/external/CardLoadReceiver;->isCardLoaded(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isCardLoaded(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const-string v5, "card_load_state"

    invoke-virtual {p0, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 78
    .local v2, "sp":Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 80
    :pswitch_1
    const-string v1, "card_uim_state"

    .line 89
    .local v1, "key":Ljava/lang/String;
    :goto_1
    const/4 v5, -0x1

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, "cardState":I
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-static {p1}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasEnabledIccCard(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 101
    goto :goto_0

    .line 83
    .end local v0    # "cardState":I
    .end local v1    # "key":Ljava/lang/String;
    :pswitch_3
    const-string v1, "card_sim_state"

    .line 84
    .restart local v1    # "key":Ljava/lang/String;
    goto :goto_1

    .restart local v0    # "cardState":I
    :pswitch_4
    move v3, v4

    .line 92
    goto :goto_0

    :pswitch_5
    move v3, v4

    .line 96
    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 90
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static isNeedShowTips()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/contacts/external/CardLoadReceiver;->mIsNeedShowTips:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    if-nez p2, :cond_0

    .line 37
    sget-object v2, Lcom/android/contacts/external/CardLoadReceiver;->TAG:Ljava/lang/String;

    const-string v3, "May be a malicious attack..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v2, "card_load_state"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 43
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/android/contacts/external/CardLoadReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 63
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 48
    :cond_2
    const-string v2, "com.android.simcontacts.ACTION_UIM_ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    const-string v2, "card_uim_state"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 50
    :cond_3
    const-string v2, "com.android.simcontacts.ACTION_UIM_INIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 51
    const-string v2, "card_uim_state"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 52
    :cond_4
    const-string v2, "com.android.simcontacts.ACTION_UIM_LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 53
    const-string v2, "card_uim_state"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 54
    :cond_5
    const-string v2, "com.android.simcontacts.ACTION_SIM_ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 55
    const-string v2, "card_sim_state"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 56
    :cond_6
    const-string v2, "com.android.simcontacts.ACTION_SIM_INIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 57
    const-string v2, "card_sim_state"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 58
    :cond_7
    const-string v2, "com.android.simcontacts.ACTION_SIM_LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 59
    const-string v2, "card_sim_state"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 60
    :cond_8
    const-string v2, "android.intent.action.ACTION_SIM_REFRESH_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    sput-boolean v6, Lcom/android/contacts/external/CardLoadReceiver;->mIsNeedShowTips:Z

    goto :goto_1
.end method
