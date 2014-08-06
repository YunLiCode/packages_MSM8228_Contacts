.class Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/AccountFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterListAdapter"
.end annotation


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "current"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "current"    # Lcom/android/contacts/common/list/ContactListFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/list/ContactListFilter;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 243
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 245
    iput-object p2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    .line 246
    iput-object p3, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 247
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 248
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->getItem(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 261
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 271
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 272
    check-cast v1, Lcom/android/contacts/common/list/ContactListFilterView;

    .line 277
    .local v1, "view":Lcom/android/contacts/common/list/ContactListFilterView;
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->setSingleAccount(Z)V

    .line 278
    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    .line 279
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 280
    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->bindView(Lcom/android/contacts/common/model/AccountTypeManager;)V

    .line 281
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListFilterView;->setTag(Ljava/lang/Object;)V

    .line 282
    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactListFilterView;->setActivated(Z)V

    .line 283
    return-object v1

    .line 274
    .end local v0    # "filter":Lcom/android/contacts/common/list/ContactListFilter;
    .end local v1    # "view":Lcom/android/contacts/common/list/ContactListFilterView;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04001f

    invoke-virtual {v4, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListFilterView;

    .restart local v1    # "view":Lcom/android/contacts/common/list/ContactListFilterView;
    goto :goto_0

    :cond_1
    move v2, v3

    .line 277
    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/list/ContactListFilter;>;"
    iput-object p1, p0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    .line 252
    return-void
.end method
