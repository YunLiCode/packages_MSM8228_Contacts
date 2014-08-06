.class public Lcom/android/contacts/common/list/AccountFilterActivity;
.super Landroid/app/Activity;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;,
        Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/common/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFilterListAdapter:Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;

.field private volatile mIsLoaded:Z

.field private mListView:Landroid/widget/ListView;

.field private mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/contacts/common/list/AccountFilterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 308
    new-instance v0, Lcom/android/contacts/common/list/AccountFilterActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/AccountFilterActivity$1;-><init>(Lcom/android/contacts/common/list/AccountFilterActivity;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/contacts/common/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 144
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 145
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactListFilter;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 146
    .local v1, "accountFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactListFilter;>;"
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    .line 147
    .local v3, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 148
    .local v4, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 149
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    .line 150
    .local v2, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/account/AccountType;->isExtension()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 154
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 155
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v9, v10, v11, v7}, Lcom/android/contacts/common/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 160
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v2    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_3
    const/4 v9, -0x2

    invoke-static {v9}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 164
    .local v5, "count":I
    if-lt v5, v12, :cond_5

    .line 166
    if-le v5, v12, :cond_4

    .line 167
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    :cond_4
    const/4 v9, -0x3

    invoke-static {v9}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_5
    return-object v8
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 214
    if-eq p2, v3, :cond_0

    .line 229
    :goto_0
    return-void

    .line 218
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 220
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 223
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->finish()V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnyStautsChange()V
    .locals 3

    .prologue
    .line 323
    sget-object v0, Lcom/android/contacts/common/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnyStatusChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mIsLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-boolean v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 327
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v1, 0x7f04001d

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->setContentView(I)V

    .line 73
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    .line 74
    iget-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 77
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentFilter"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 83
    new-instance v1, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;

    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListFilter;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mFilterListAdapter:Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;

    .line 84
    iget-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mFilterListAdapter:Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    invoke-static {p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ProviderStatusWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    .line 87
    iget-object v1, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v1, p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 90
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mIsLoaded:Z

    .line 178
    new-instance v0, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 112
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    .line 199
    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 200
    :cond_0
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 205
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 206
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/AccountFilterActivity;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/common/list/ContactListFilter;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/list/ContactListFilter;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mIsLoaded:Z

    .line 184
    if-nez p2, :cond_0

    .line 185
    sget-object v0, Lcom/android/contacts/common/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    const-string v1, "Failed to load filters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mFilterListAdapter:Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->setData(Ljava/util/List;)V

    .line 189
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mFilterListAdapter:Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/AccountFilterActivity$FilterListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/common/list/ContactListFilter;>;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 299
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 294
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->onBackPressed()V

    .line 295
    const/4 v0, 0x1

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->stop()V

    .line 104
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/AccountFilterActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-void
.end method

.method public onProviderStatusChange()V
    .locals 3

    .prologue
    .line 304
    sget-object v0, Lcom/android/contacts/common/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderStatusChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mIsLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AccountFilterActivity;->onAnyStautsChange()V

    .line 306
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mProviderStatusWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->start()V

    .line 96
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountFilterActivity;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/AccountFilterActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method
