.class Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AccountFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/AccountFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/common/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 119
    iput-object p1, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/contacts/common/list/AccountFilterActivity;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/common/list/AccountFilterActivity;->access$000(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->onStopLoading()V

    .line 140
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->forceLoad()V

    .line 130
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;->cancelLoad()Z

    .line 135
    return-void
.end method
