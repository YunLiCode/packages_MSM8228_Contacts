.class public Lcom/android/contacts/common/CommonApplication;
.super Landroid/app/Application;
.source "CommonApplication.java"


# static fields
.field private static mInstance:Lcom/android/contacts/common/CommonApplication;


# instance fields
.field public SINGLE_TASK_SERVICE:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/CommonApplication;->SINGLE_TASK_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/android/contacts/common/CommonApplication;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/contacts/common/CommonApplication;->mInstance:Lcom/android/contacts/common/CommonApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    sput-object p0, Lcom/android/contacts/common/CommonApplication;->mInstance:Lcom/android/contacts/common/CommonApplication;

    .line 21
    return-void
.end method
