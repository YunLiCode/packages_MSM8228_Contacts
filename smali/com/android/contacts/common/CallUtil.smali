.class public Lcom/android/contacts/common/CallUtil;
.super Ljava/lang/Object;
.source "CallUtil.java"


# static fields
.field public static final CALL_INTENT_DESTINATION:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.PrivilegedOutgoingCallBroadcaster"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/contacts/common/CallUtil;->CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "callOrigin"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v1, "com.android.phone.CALL_ORIGIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_0
    sget-object v1, Lcom/android/contacts/common/CallUtil;->CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 81
    return-object v0
.end method

.method public static getCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "callOrigin"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "sip"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tel"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ip_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getVTCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.borqs.videocall.action.LaunchVideoCallScreen"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    const-string v1, "IsCallOrAnswer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const-string v1, "LaunchMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v1, "call_number_key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    return-object v0
.end method
