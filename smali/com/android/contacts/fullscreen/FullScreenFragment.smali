.class public Lcom/android/contacts/fullscreen/FullScreenFragment;
.super Landroid/app/Fragment;
.source "FullScreenFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;
.implements Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsLoading:Z

.field private mListView:Lcom/android/contacts/common/list/LetterListView;

.field private mProviderWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/contacts/fullscreen/FullScreenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/fullscreen/FullScreenFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    new-instance v0, Lcom/android/contacts/fullscreen/FullScreenFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/fullscreen/FullScreenFragment$1;-><init>(Lcom/android/contacts/fullscreen/FullScreenFragment;)V

    iput-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Lcom/android/contacts/fullscreen/FullScreenFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/fullscreen/FullScreenFragment$2;-><init>(Lcom/android/contacts/fullscreen/FullScreenFragment;)V

    iput-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/fullscreen/FullScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/FullScreenFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/contacts/fullscreen/FullScreenFragment;->startQuery()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/contacts/fullscreen/FullScreenFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private startQuery()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mIsLoading:Z

    .line 145
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mAdapter:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->startQuery()V

    .line 146
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 149
    :cond_0
    return-void
.end method

.method private stopQuery()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mIsLoading:Z

    .line 153
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mAdapter:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->stopQuery()V

    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public areContactsAvailable()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mProviderWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mProviderWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;

    move-result-object v0

    iget v0, v0, Lcom/android/contacts/common/list/ProviderStatusWatcher$Status;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mIsLoading:Z

    return v0
.end method

.method public onAnyStautsChange()V
    .locals 4

    .prologue
    const/16 v3, 0x7dc

    .line 138
    sget-object v0, Lcom/android/contacts/fullscreen/FullScreenFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAnyStatusChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    iget-object v1, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mAdapter:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    .line 57
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mAdapter:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->setActionCallback(Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;)V

    .line 58
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ProviderStatusWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mProviderWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    .line 59
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mProviderWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const v0, 0x7f040045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 65
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mProviderWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/common/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 66
    return-void
.end method

.method public onItemClicked(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/fullscreen/FullScreenFragment;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onProviderStatusChange()V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/android/contacts/fullscreen/FullScreenFragment;->TAG:Ljava/lang/String;

    const-string v1, "onProviderStatusChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenFragment;->onAnyStautsChange()V

    .line 134
    return-void
.end method

.method public onQueryComplete(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    const/4 v3, 0x0

    .line 107
    sget-object v0, Lcom/android/contacts/fullscreen/FullScreenFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-boolean v3, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mIsLoading:Z

    .line 109
    if-eqz p1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mListView:Lcom/android/contacts/common/list/LetterListView;

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/LetterListView;->setLetterBarEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/FullScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 120
    :cond_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mListView:Lcom/android/contacts/common/list/LetterListView;

    iget-object v1, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/LetterListView;->setLetterBarEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 86
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mProviderWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->start()V

    .line 87
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    invoke-direct {p0}, Lcom/android/contacts/fullscreen/FullScreenFragment;->startQuery()V

    .line 90
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 95
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mProviderWatcher:Lcom/android/contacts/common/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ProviderStatusWatcher;->stop()V

    .line 96
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    invoke-direct {p0}, Lcom/android/contacts/fullscreen/FullScreenFragment;->stopQuery()V

    .line 98
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f0b00ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mEmptyView:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/LetterListView;

    iput-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mListView:Lcom/android/contacts/common/list/LetterListView;

    .line 80
    iget-object v0, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mListView:Lcom/android/contacts/common/list/LetterListView;

    iget-object v1, p0, Lcom/android/contacts/fullscreen/FullScreenFragment;->mAdapter:Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/LetterListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    return-void
.end method
