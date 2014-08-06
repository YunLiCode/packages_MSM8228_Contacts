.class public Lcom/android/contacts/ViewNotificationService;
.super Landroid/app/Service;
.source "ViewNotificationService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/contacts/ViewNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ViewNotificationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/contacts/ViewNotificationService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x1

    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 46
    :cond_0
    sget-object v2, Lcom/android/contacts/ViewNotificationService;->TAG:Ljava/lang/String;

    const-string v3, "May be a malicious attack..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return v1

    .line 53
    :cond_1
    new-instance v0, Lcom/android/contacts/model/ContactLoader;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 54
    .local v0, "contactLoader":Lcom/android/contacts/model/ContactLoader;
    const/4 v1, 0x0

    new-instance v2, Lcom/android/contacts/ViewNotificationService$1;

    invoke-direct {v2, p0, p3}, Lcom/android/contacts/ViewNotificationService$1;-><init>(Lcom/android/contacts/ViewNotificationService;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 75
    invoke-virtual {v0}, Lcom/android/contacts/model/ContactLoader;->startLoading()V

    .line 76
    const/4 v1, 0x3

    goto :goto_0
.end method
